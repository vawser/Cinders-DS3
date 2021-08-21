REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 0, "EzStateî‘çÜ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 1, "çUåÇëŒè€ÅyTypeÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 2, "ê˘âÒäpìx", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_SpecialTurn, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_SpecialTurn, true)
function SpecialTurn_Activate(arg0, arg1)
    local local0 = arg1:GetParam(1)
    if arg0:IsLookToTarget(local0, arg1:GetParam(2)) then
        arg1:SetNumber(0, 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg1:GetLife(), arg1:GetParam(0), local0, DIST_None, 0, -1)
    end
    return 
end

function SpecialTurn_Update(arg0, arg1)
    if arg1:GetNumber(0) == 1 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function SpecialTurn_Terminate(arg0, arg1)
    return 
end

function SpecialTurn_Interupt(arg0, arg1)
    return false
end

return 
