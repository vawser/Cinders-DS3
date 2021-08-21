RegisterTableGoal(GOAL_EnemyFlexibleApproach, "GOAL_EnemyFlexibleApproach")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyFlexibleApproach, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 0, "対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 1, "旋回対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 2, "到達最小距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 3, "到達最大距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 4, "強制歩行距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 5, "強制走行距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 6, "走行確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 7, "防御確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 8, "後ステップ確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 9, "前ステップ確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 10, "ステップ間隔", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 11, "後退可狽ｩ", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(0)
    local local1 = arg2:GetParam(1)
    local local2 = arg2:GetParam(2)
    local local3 = arg2:GetParam(3)
    local local4 = arg2:GetParam(8)
    local local5 = arg2:GetParam(11)
    if local5 == nil then
        local5 = 0
    end
    if local2 < 0 then
        local2 = 0
    end
    local local6 = arg1:GetDist(local0)
    local local7 = -1
    local local8 = true
    if arg1:GetIdTimer(7110005) <= 0 then
        arg1:StartIdTimerSpecifyTime(7110005, arg2:GetParam(10))
    end
    if arg1:GetRandam_Float(0.1, 100) < arg2:GetParam(7) then
        local7 = 9910
    end
    local local9 = (local3 + local2) / 2 + 1
    if local6 < local2 then
        if local5 == 0 then
            return 
        else
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), local0, local2, TARGET_ENE_0, local8, local7)
            local10:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            return 
        end
    elseif local3 < local6 then
        if arg2:GetParam(5) < local6 or arg2:GetParam(4) < local6 and arg1:GetRandam_Float(0.1, 100) < arg2:GetParam(6) then
            local8 = false
        end
        if arg1:GetRandam_Float(0.1, 100) < arg2:GetParam(9) then

        end
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), local0, local3, TARGET_SELF, local8, local7)
        if local8 then
            arg2:SetNumber(4, 1)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    local local0 = arg2:GetParam(1)
    local local1 = arg2:GetParam(2)
    local local2 = arg2:GetParam(3)
    local local3 = arg2:GetParam(5)
    local local4 = arg2:GetParam(8)
    local local5 = arg2:GetParam(9)
    local local6 = arg2:GetParam(10)
    local local7 = arg1:GetDist(arg2:GetParam(0))
    local local8 = -1
    local local9 = false
    if arg1:GetRandam_Float(0.1, 100) < arg2:GetParam(7) then
        local8 = 9910
    end
    if arg1:IsActiveGoal(GOAL_COMMON_ApproachTarget) then

    end
    if arg1:IsActiveGoal(GOAL_COMMON_LeaveTarget) then

    end
    return GOAL_RESULT_Continue
end

return 
