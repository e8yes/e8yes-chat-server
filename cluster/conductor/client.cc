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

#include <string>

#include "cluster/conductor/client.h"
#include "proto_cc/cluster_conductor_command.pb.h"
#include "replication/runner/client.h"

namespace e8 {

ClusterConductorClient::ClusterConductorClient(ReplicationClientConfig const &config)
    : replication_client_(config) {}

ClusterConductorCommandResult
ClusterConductorClient::RunCommand(ClusterConductorCommand const &command) {
    std::string result_bytes = replication_client_.RunCommand(command.SerializeAsString());

    ClusterConductorCommandResult result;
    result.ParseFromString(result_bytes);

    return result;
}

} // namespace e8
