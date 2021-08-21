REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 0, "EzStateî‘çÜ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 1, "çUåÇëŒè€ÅyTypeÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 2, "ê¨å˜ãóó£ÅyÇçÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 3, "ñΩíÜÇµÇΩÇÁê¨å˜ÅH", 0)
function ContinueAttack_Activate(arg0, arg1)
    local local0 = arg1:GetParam(1)
    arg0:TurnTo(local0)
    arg0:SetAttackRequest(arg1:GetParam(0))
    arg1:AddGoalScopedTeamRecord(COORDINATE_TYPE_Attack, local0, 0)
    return 
end

function ContinueAttack_Update(arg0, arg1)
    local local0 = arg1:GetParam(1)
    if arg1:GetParam(2) <= arg0:GetDist(local0) then
        return GOAL_RESULT_Failed
    elseif arg1:GetLife() <= 0 then
        return GOAL_RESULT_Success
    elseif arg1:GetParam(3) == true and arg0:IsHitAttack() == true then
        return GOAL_RESULT_Success
    else
        arg0:TurnTo(local0)
        arg0:SetAttackRequest(arg1:GetParam(0))
        return GOAL_RESULT_Continue
    end
end

function ContinueAttack_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ContinueAttack, true)
function ContinueAttack_Interupt(arg0, arg1)
    return false
end

return 
