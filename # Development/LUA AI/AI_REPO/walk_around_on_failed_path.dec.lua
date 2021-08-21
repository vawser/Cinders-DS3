function WalkAroundOnFailedPath_Activate(arg0, arg1)
    arg1:SetTimer(0, arg1:GetParam(0))
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, 0, 0, 0, 0)
    arg0:BeginWalkAroundFree()
    return 
end

function WalkAroundOnFailedPath_Update(arg0, arg1)
    local local0 = GOAL_RESULT_Continue
    if true == arg1:IsFinishTimer(0) then
        if true == arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_L, 0.5, 0) then
            local0 = GOAL_RESULT_Success
        else
            arg1:SetTimer(0, arg1:GetParam(0))
        end
    end
    if arg1:GetSubGoalNum() <= 0 then
        WalkAroundFailedPath_AddInnerGoal(arg0, arg1)
    end
    return local0
end

function WalkAroundOnFailedPath_Terminate(arg0, arg1)
    arg0:EndWalkAroundFree()
    return 
end

function WalkAroundOnFailedPath_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        return true
    else
        return false
    end
end

function WalkAroundFailedPath_AddInnerGoal(arg0, arg1)
    local local0 = POINT_WalkAroundPosition_Free
    arg0:ChangeWalkAroundFreePoint()
    if 2 <= arg0:GetDist(local0) then
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 30, local0, AI_DIR_TYPE_CENTER, 1, TARGET_ENE_0, true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 6), TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    end
    return 
end

return 
