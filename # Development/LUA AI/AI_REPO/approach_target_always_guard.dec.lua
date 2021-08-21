REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_AlwaysGuard, 0, "à⁄ìÆëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_AlwaysGuard, 1, "ìûíBîªíËãóó£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_AlwaysGuard, 2, "ê˘âÒëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_AlwaysGuard, 3, "ï‡Ç≠?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_AlwaysGuard, 4, "ÉKÅ[ÉhEzStateî‘çÜ", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTarget_AlwaysGuard, 0, 0)
function ApproachTarget_AlwaysGuard_Activate(arg0, arg1)
    local local0 = arg1:GetLife()
    local local1 = AI_DIR_TYPE_CENTER
    local local2 = arg1:GetParam(5)
    local local3 = arg1:GetParam(6)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, local0, arg1:GetParam(0), local1, arg1:GetParam(1), arg1:GetParam(2), arg1:GetParam(3), local1, 0, arg1:GetParam(7))
    GuardGoalSubFunc_Activate(arg0, local0, arg1:GetParam(4))
    return 
end

function ApproachTarget_AlwaysGuard_Update(arg0, arg1, arg2)
    return GuardGoalSubFunc_Update(arg0, arg1, arg1:GetParam(4), arg1:GetParam(5), arg1:GetParam(6))
end

function ApproachTarget_AlwaysGuard_Terminate(arg0, arg1)
    return 
end

function ApproachTarget_AlwaysGuard_Interupt(arg0, arg1)
    return GuardGoalSubFunc_Interrupt(arg0, arg1, arg1:GetParam(4), arg1:GetParam(5))
end

return 
