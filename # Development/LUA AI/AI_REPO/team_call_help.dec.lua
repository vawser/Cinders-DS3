function TeamCallHelp_Activate(arg0, arg1)
    arg0:TeamHelp_ReserveCall()
    arg0:TurnTo(arg1:GetParam(0))
    if arg0:IsLookToTarget() == true then
        arg0:SetAttackRequest(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_CallActionId))
    end
    return 
end

function TeamCallHelp_Update(arg0, arg1)
    if arg1:GetLife() <= 0 then
        return GOAL_RESULT_Success
    elseif arg0:IsFinishAttack() then
        return GOAL_RESULT_Success
    elseif arg0:IsLookToTarget() == true then
        if arg0:IsStartAttack() == false then
            arg0:SetAttackRequest(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_CallActionId))
        end
    else
        arg0:TurnTo(arg1:GetParam(0))
    end
    return GOAL_RESULT_Continue
end

function TeamCallHelp_Terminate(arg0, arg1)
    arg0:TeamHelp_Call()
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TeamCallHelp, true)
function TeamCallHelp_Interupt(arg0, arg1)
    return false
end

return 
