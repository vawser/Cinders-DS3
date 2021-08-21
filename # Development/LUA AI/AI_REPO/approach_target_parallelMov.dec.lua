REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 0, "移動対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 1, "到達判定距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 2, "旋回対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 3, "歩く?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 4, "ガードEzState番号", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 5, "ガードゴール終了タイプ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 6, "ガードゴール:寿命が尽きたら成功とするか", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTarget_ParallelMov, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachTarget_ParallelMov, true)
function ApproachTarget_ParallelMov_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg1:GetLife(), arg1:GetParam(0), arg1:GetParam(1), arg1:GetParam(2), arg1:GetParam(3), arg1:GetParam(4), arg1:GetParam(5), arg1:GetParam(6))
    return 
end

function ApproachTarget_ParallelMov_Update(arg0, arg1, arg2)
    arg0:RequestParallelMove()
    return GOAL_RESULT_Continue
end

function ApproachTarget_ParallelMov_Terminate(arg0, arg1)
    return 
end

function ApproachTarget_ParallelMov_Interupt(arg0, arg1)
    return false
end

return 
