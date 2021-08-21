function ApproachOnFailedPath_Activate(arg0, arg1)
    arg1:SetTimer(0, arg1:GetParam(0))
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, arg1:GetParam(1), arg1:GetParam(2), arg1:GetParam(3), arg1:GetParam(4), arg1:GetParam(5))
    return 
end

function ApproachOnFailedPath_Update(arg0, arg1)
    local local0 = GOAL_RESULT_Continue
    if true == arg1:IsFinishTimer(0) then
        if true == arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_L, 0.5, 0) then
            local0 = GOAL_RESULT_Success
        else
            arg1:SetTimer(0, arg1:GetParam(0))
        end
    end
    if arg1:GetSubGoalNum() <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, arg1:GetParam(1), arg1:GetParam(2), arg1:GetParam(3), arg1:GetParam(4), arg1:GetParam(5))
    end
    return local0
end

function ApproachOnFailedPath_Terminate(arg0, arg1)
    return 
end

function ApproachOnFailedPath_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        return true
    else
        return false
    end
end

return 
