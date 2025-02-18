/**
 * e8yes demo web.
 *
 * <p>Copyright (C) 2020 Chifeng Wen {daviesx66@gmail.com}
 *
 * <p>This program is free software: you can redistribute it and/or modify it under the terms of the
 * GNU General Public License as published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * <p>This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * <p>You should have received a copy of the GNU General Public License along with this program. If
 * not, see <http://www.gnu.org/licenses/>.
 */

#include <cassert>
#include <cstdint>
#include <memory>
#include <optional>
#include <vector>

#include "common/time_util/time_util.h"
#include "demoweb_service/demoweb/common_entity/contact_relation_entity.h"
#include "demoweb_service/demoweb/common_entity/user_entity.h"
#include "demoweb_service/demoweb/constant/demoweb_database.h"
#include "demoweb_service/demoweb/module/contact_invitation.h"
#include "demoweb_service/demoweb/module/contact_storage.h"
#include "demoweb_service/demoweb/module/push_message.h"
#include "demoweb_service/demoweb/module/user_profile.h"
#include "demoweb_service/demoweb/module/user_storage.h"
#include "message_queue/publisher/publisher.h"
#include "postgres/query_runner/connection/connection_reservoir_interface.h"
#include "postgres/query_runner/sql_runner.h"
#include "proto_cc/real_time_message.pb.h"
#include "proto_cc/user_relation.pb.h"

namespace e8 {
namespace {

UserPublicProfile FetchUserProfile(UserId const viewer_id, UserId const user_id,
                                   KeyGeneratorInterface *key_gen,
                                   ConnectionReservoirInterface *conns) {
    std::optional<UserEntity> user = FetchUser(user_id, conns);
    assert(user.has_value());

    std::vector<UserPublicProfile> inviter_profile =
        BuildPublicProfiles(viewer_id, std::vector<UserEntity>{*user}, key_gen, conns);
    assert(inviter_profile.size() == 1);

    return inviter_profile[0];
}

} // namespace

bool SendInvitation(UserId inviter_id, UserId invitee_id, bool send_message_anyway,
                    HostId const host_id,
                    std::vector<MessagePublisherInterface *> const &publishers,
                    KeyGeneratorInterface *key_gen, ConnectionReservoirInterface *conns) {
    bool first_time_invitation = true;

    TimestampMicros timestamp = CurrentTimestampMicros();

    ContactRelationEntity forward_relation;
    *forward_relation.src_user_id.ValuePtr() = inviter_id;
    *forward_relation.dst_user_id.ValuePtr() = invitee_id;
    *forward_relation.relation.ValuePtr() = URL_INVITATION_SENT;
    *forward_relation.created_at.ValuePtr() = timestamp;
    *forward_relation.last_interaction_at.ValuePtr() = timestamp;

    int64_t updated_rows =
        Update(forward_relation, TableNames::ContactRelation(), /*replace=*/false, conns);
    if (updated_rows == 0) {
        first_time_invitation = false;
    }

    ContactRelationEntity backward_relation;
    *backward_relation.src_user_id.ValuePtr() = invitee_id;
    *backward_relation.dst_user_id.ValuePtr() = inviter_id;
    *backward_relation.relation.ValuePtr() = URL_INVITATION_RECEIVED;
    *backward_relation.created_at.ValuePtr() = timestamp;
    *backward_relation.last_interaction_at.ValuePtr() = timestamp;

    Update(backward_relation, TableNames::ContactRelation(), /*replace=*/false, conns);

    // Send the invitation message.
    if (send_message_anyway || first_time_invitation) {
        RealTimeMessageContent message;
        *message.mutable_invitation_received()->mutable_inviter() =
            FetchUserProfile(invitee_id, inviter_id, key_gen, conns);

        PushMessageContent(invitee_id, message, host_id, publishers);
    }

    return first_time_invitation;
}

bool ProcessInvitation(UserId invitee_id, UserId inviter_id, bool accept, HostId const host_id,
                       std::vector<MessagePublisherInterface *> const &publishers,
                       KeyGeneratorInterface *key_gen, ConnectionReservoirInterface *conns) {
    SqlQueryBuilder::Placeholder<SqlLong> invitee_id_ph;
    SqlQueryBuilder::Placeholder<SqlLong> inviter_id_ph;
    SqlQueryBuilder::Placeholder<SqlInt> foward_relation_ph;
    SqlQueryBuilder::Placeholder<SqlInt> backward_relation_ph;

    SqlQueryBuilder query;
    query.QueryPiece("WHERE (src_user_id=")
        .Holder(&inviter_id_ph)
        .QueryPiece(" AND dst_user_id=")
        .Holder(&invitee_id_ph)
        .QueryPiece(" AND relation=")
        .Holder(&foward_relation_ph)
        .QueryPiece(") OR (src_user_id=")
        .Holder(&invitee_id_ph)
        .QueryPiece(" AND dst_user_id=")
        .Holder(&inviter_id_ph)
        .QueryPiece(" AND relation=")
        .Holder(&backward_relation_ph)
        .QueryPiece(")");

    query.SetValueToPlaceholder(invitee_id_ph, std::make_shared<SqlLong>(invitee_id));
    query.SetValueToPlaceholder(inviter_id_ph, std::make_shared<SqlLong>(inviter_id));
    query.SetValueToPlaceholder(foward_relation_ph,
                                std::make_shared<SqlInt>(UserRelation::URL_INVITATION_SENT));
    query.SetValueToPlaceholder(backward_relation_ph,
                                std::make_shared<SqlInt>(UserRelation::URL_INVITATION_RECEIVED));

    uint64_t num_deleted = Delete(TableNames::ContactRelation(), query, conns);
    if (num_deleted != 2) {
        return false;
    }

    if (accept) {
        CreateContact(inviter_id, invitee_id, conns);
    } else {
        RejectContact(inviter_id, invitee_id, conns);
    }

    // Send the invitation accepted message.
    RealTimeMessageContent message;
    *message.mutable_invitation_accepted()->mutable_invitee() =
        FetchUserProfile(inviter_id, invitee_id, key_gen, conns);

    PushMessageContent(inviter_id, message, host_id, publishers);

    return true;
}

} // namespace e8
