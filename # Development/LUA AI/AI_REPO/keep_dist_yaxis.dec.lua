REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_KeepDistYAxis, 0.5, 0.6)
function KeepDistYAxis_Activate(arg0, arg1)
    arg1:SetNumber(0, 0)
    arg0:TurnTo(arg1:GetParam(3))
    local local0 = arg0:GetDistYSigned(arg1:GetParam(0))
    if arg1:GetParam(1) <= -local0 and -local0 <= arg1:GetParam(2) then
        arg1:SetNumber(0, 2)
    end
    return 
end

function KeepDistYAxis_Update(arg0, arg1)
    if arg1:GetNumber(0) == 2 then
        return GOAL_RESULT_Success
    end
    arg0:TurnTo(arg1:GetParam(3))
    local local0 = arg0:GetDistYSigned(arg1:GetParam(0))
    local local1 = arg1:GetParam(1)
    local local2 = arg1:GetParam(2)
    if local1 <= -local0 and -local0 <= local2 then
        arg1:SetNumber(0, 1)
    end
    if arg0:IsStartAttack() == false or arg0:IsEnableCancelMove() then
        if arg1:GetNumber(0) ~= 0 then
            arg1:SetNumber(0, 0)
            return GOAL_RESULT_Success
        elseif -local0 < local1 then
            arg0:SetAttackRequest(705)
        elseif local2 < -local0 then
            arg0:SetAttackRequest(706)
        end
    end
    return GOAL_RESULT_Continue
end

function KeepDistYAxis_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_KeepDistYAxis, true)
function KeepDistYAxis_Interupt(arg0, arg1)
    return false
end

return 
