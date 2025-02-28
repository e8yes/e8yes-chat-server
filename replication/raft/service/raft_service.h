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

#ifndef RAFT_SERVICE_H
#define RAFT_SERVICE_H

#include <grpcpp/grpcpp.h>
#include <mutex>

#include "proto_cc/service_raft.grpc.pb.h"
#include "proto_cc/service_raft.pb.h"
#include "replication/raft/context.h"

namespace e8 {

/**
 * @brief The RaftServiceImpl class Service that a single Raft peer provides.
 */
class RaftServiceImpl : public RaftService::Service {
  public:
    /**
     * @brief RaftServiceImpl The service will read/write the context whenever request arrives.
     */
    explicit RaftServiceImpl(RaftContext *context);
    virtual ~RaftServiceImpl() override;

    grpc::Status GrantVote(grpc::ServerContext *context, GrantVoteRequest const *request,
                           GrantVoteResponse *response) override;

    grpc::Status MergeLogEntries(grpc::ServerContext *context,
                                 MergeLogEntriesRequest const *request,
                                 MergeLogEntriesResponse *response) override;

    grpc::Status PushCommitProgress(grpc::ServerContext *context,
                                    PushCommitProgressRequest const *request,
                                    PushCommitProgressResponse *response) override;

  private:
    RaftContext *context_;
    std::mutex merge_log_entries_lock_;
    std::mutex set_commit_progress_lock_;
};

} // namespace e8

#endif // RAFT_SERVICE_H
