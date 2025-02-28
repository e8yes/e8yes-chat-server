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

#ifndef HEURISTICS_H
#define HEURISTICS_H

#include <cstdint>
#include <optional>
#include <unordered_map>

#include "gomoku/agent/search/mct_node.h"
#include "gomoku/game/board_state.h"

namespace e8 {

/**
 * @brief The GomokuEvaluatorInterface class A gomoku agent heuristics is responsible for
 * estimating the reward and policy at a given game state.
 */
class GomokuEvaluatorInterface {
  public:
    GomokuEvaluatorInterface() = default;
    virtual ~GomokuEvaluatorInterface() = default;

    /**
     * @brief EvaluateReward Estimate the Q value in the perspective of the current player at the
     * given state.
     *
     * @param parent_state_id ID of the parent state. This ID is supplied to this function just to
     * save computation by implementing incremental operations. The function should not depend on
     * this field for correct resuult.
     * @param state_id Different states are guaranteed to have different state_id.
     */
    virtual float EvaluateReward(GomokuBoardState const &state,
                                 std::optional<MctNodeId> parent_state_id, MctNodeId state_id) = 0;

    /**
     * @brief EvaluatePolicy Estimate the optimal policy for the set of legal actions in the
     * perspective of the current player at the given state.
     *
     * @param parent_state_id ID of the parent state. This ID is supplied to this function just to
     * save computation by implementing incremental operations. The function should not depend on
     * this field for correct resuult.
     * @param state_id Different states are guaranteed to have different state_id.
     */
    virtual std::unordered_map<GomokuActionId, float>
    EvaluatePolicy(GomokuBoardState const &state, std::optional<MctNodeId> parent_state_id,
                   MctNodeId state_id) = 0;

    /**
     * @brief ExplorationFactor How exaggerated the upper confidence bound should it be for this
     * heuristics.
     */
    virtual float ExplorationFactor() const = 0;

    /**
     * @brief NumSimulations The number of simulations desired to produce a decent stochastic policy
     * for this heuristics.
     */
    virtual unsigned NumSimulations() const = 0;

    /**
     * @brief ClearCache Clears any cached information.
     */
    virtual void ClearCache() = 0;
};

} // namespace e8

#endif // HEURISTICS_H
