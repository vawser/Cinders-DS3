REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ComeDown, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComeDown, true)
function ComeDown_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Attack, arg1:GetLife(), 9510, TARGET_NONE, DIST_None)
    return 
end

function ComeDown_Update(arg0, arg1)
    arg0:SetNumber(0, 0)
    local local0 = arg1:GetParam(0)
    if arg0:IsLanding() then
        return GOAL_RESULT_Failed
    end
    local local1 = arg1:GetLastSubGoalResult()
    if (local1 == GOAL_RESULT_Success or local1 == GOAL_RESULT_Failed) and arg0:GetDistY(TARGET_ENE_0) < local0 then
        arg1:AddSubGoal(GOAL_COMMON_Attack, arg1:GetLife(), 9510, TARGET_NONE, DIST_None)
    end
    if arg0:GetDistY(TARGET_ENE_0) <= local0 then
        arg0:SetNumber(0, 1)
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function ComeDown_Terminate(arg0, arg1)
    return 
end

function ComeDown_Interupt(arg0, arg1)
    return false
end

return 
