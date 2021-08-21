RegisterTableGoal(GOAL_COMMON_ContinueKeepDist, "GOAL_COMMON_ContinueKeepDist")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_ContinueKeepDist, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 0, "ターゲット", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 1, "最低距離", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 2, "最大距離", 2)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 3, "強制走行距離", 3)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 4, "接近ガード確率", 4)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 5, "間合いガード確率", 5)
Goal.Activate = function (arg0, arg1, arg2)
    arg0:ContinueKeepDist(arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(Target)
    if arg2:GetLife() <= 0 then
        return GOAL_RESULT_Success
    elseif arg2:GetSubGoalNum() <= 0 then
        arg0:ContinueKeepDist(arg1, arg2)
        return GOAL_RESULT_Continue
    elseif arg1:IsActiveGoal(GOAL_COMMON_SidewayMove) and (arg2:GetParam(2) <= local0 or arg2:GetParam(1) <= local0) then
        arg2:ClearSubGoal()
        arg0:ContinueKeepDist(arg1, arg2)
        return GOAL_RESULT_Continue
    else
        return GOAL_RESULT_Continue
    end
end

Goal.ContinueKeepDist = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(0)
    local local1 = arg2:GetParam(1)
    local local2 = arg2:GetParam(2)
    local local3 = arg2:GetParam(3)
    local local4 = arg1:GetDist(local0)
    if local2 <= local4 then
        local local5 = -1
        if arg1:GetRandam_Int(1, 100) <= arg2:GetParam(4) then
            local5 = 9910
        end
        if local2 <= local0 then
            local local6 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), TARGET_ENE_0, (local2 + local1) / 2, TARGET_SELF, false, local5)
            local6:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        else
            local local6 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), TARGET_ENE_0, (local2 + local1) / 2, TARGET_SELF, true, local5)
            local6:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        end
    elseif local4 <= local1 then
        local local5 = -1
        if arg1:GetRandam_Int(1, 100) <= arg2:GetParam(5) then
            local5 = 9910
        end
        local local6 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), TARGET_ENE_0, (local2 + local1) / 2, TARGET_ENE_0, true, local5)
        local6:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(3, 5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, Guard)
    return 
end

return 
