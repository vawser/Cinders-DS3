REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 0, "à⁄ìÆëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 1, "ìûíBîªíËãóó£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 2, "ê˘âÒëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 3, "ï‡Ç≠?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 4, "ÉKÅ[ÉhEzStateî‘çÜ", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTarget, 0, 0)
function ApproachTarget_Activate(arg0, arg1)
    local local0 = arg1:GetLife()
    local local1 = arg1:GetParam(0)
    local local2 = arg1:GetParam(1)
    local local3 = AI_DIR_TYPE_CENTER
    local local4 = arg1:GetParam(5)
    local local5 = arg1:GetParam(6)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, local0, local1, local3, local2, arg1:GetParam(2), arg1:GetParam(3), local3, 0, arg1:GetParam(7))
    if local2 < arg0:GetDist(local1) then
        GuardGoalSubFunc_Activate(arg0, local0, arg1:GetParam(4))
    end
    return 
end

function ApproachTarget_Update(arg0, arg1, arg2)
    return GuardGoalSubFunc_Update(arg0, arg1, arg1:GetParam(4), arg1:GetParam(5), arg1:GetParam(6))
end

function ApproachTarget_Terminate(arg0, arg1)
    return 
end

function ApproachTarget_Interupt(arg0, arg1)
    return GuardGoalSubFunc_Interrupt(arg0, arg1, arg1:GetParam(4), arg1:GetParam(5))
end

return 
