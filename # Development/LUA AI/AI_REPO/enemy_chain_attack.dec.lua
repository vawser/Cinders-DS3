RegisterTableGoal(GOAL_EnemyChainAttack, "GOAL_EnemyChainAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyChainAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyChainAttack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyChainAttack, 0, "ëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyChainAttack, 1, "ÉRÉìÉ{ämó¶", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyChainAttack, 2, "çUåÇ1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyChainAttack, 3, "çUåÇ2", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyChainAttack, 4, "çUåÇ3", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyChainAttack, 5, "çUåÇ4", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyChainAttack, 6, "çUåÇ5", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyChainAttack, 7, "çUåÇ6", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(1)
    arg2:AddSubGoal(GOAL_EnemyHandyAttack, arg2:GetLife(), arg2:GetParam(0), 1, arg2:GetParam(2), arg2:GetParam(3), arg2:GetParam(4), arg2:GetParam(5), arg2:GetParam(6), arg2:GetParam(7), local0, local0, local0, local0, local0)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

return 
