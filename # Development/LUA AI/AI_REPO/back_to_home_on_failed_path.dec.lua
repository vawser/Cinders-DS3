function BackToHomeOnFailedPath_Activate(arg0, arg1)
    arg1:SetTimer(0, arg1:GetParam(0))
    arg1:AddSubGoal(GOAL_COMMON_BackToHome, 100, arg1:GetParam(1))
    return 
end

function BackToHomeOnFailedPath_Update(arg0, arg1)
    local local0 = GOAL_RESULT_Continue
    if true == arg1:IsFinishTimer(0) then
        local local1 = false
        if true == arg0:IsLookToTarget(TARGET_ENE_0, 40) then
            local1 = arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_L, 0.5, 0)
        end
        if true == local1 then
            local0 = GOAL_RESULT_Success
        else
            arg1:SetTimer(0, arg1:GetParam(0))
        end
    end
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return local0
    end
end

function BackToHomeOnFailedPath_Terminate(arg0, arg1)
    return 
end

function BackToHomeOnFailedPath_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        return true
    else
        return false
    end
end

return 
