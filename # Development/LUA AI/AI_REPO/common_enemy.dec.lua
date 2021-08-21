RegisterTableGoal(GOAL_EnemyBeforeAttack, "GOAL_EnemyBeforeAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyBeforeAttack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 0, "対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 1, "旋回対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 2, "基準アクション番号", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 3, "強制歩行距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 4, "強制走行距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 5, "走行確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 6, "防御確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 7, "後ステップ確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 8, "前ステップ確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 9, "ステップ間隔", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 10, "後退可狽ｩ", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = 
    local local1 = arg2:GetParam(2)
    if arg2:GetParam(10) == true then
        local0 = 1
    else
        local0 = 0
    end
    arg1:TurnTo(TARGET_SELF)
    arg2:AddSubGoal(GOAL_EnemyFlexibleApproach, arg2:GetLife(), arg2:GetParam(0), arg2:GetParam(1), 0, 0, arg2:GetParam(3), arg2:GetParam(4), arg2:GetParam(5), arg2:GetParam(6), arg2:GetParam(7), arg2:GetParam(8), arg2:GetParam(9), local0)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

RegisterTableGoal(GOAL_EnemyAfterAttack, "GOAL_EnemyAfterAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyAfterAttack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 0, "対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 1, "旋回対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 2, "走行確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 3, "防御確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 4, "安全距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 5, "回避距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 6, "回避確率", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 7, "回避間隔", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(0)
    local local1 = arg2:GetParam(1)
    local local2 = arg1:GetDist(local0)
    local local3 = arg2:GetParam(2)
    local local4 = arg2:GetParam(3)
    local local5 = 1
    local local6 = -1
    local local7 = arg2:GetParam(4)
    local local8 = arg2:GetParam(6)
    local local9 = 0
    local local10 = {}
    if arg1:GetRandam_Float(0, 100) < local3 then
        local5 = 0
    end
    if arg1:GetRandam_Float(0, 100) < local4 then
        local6 = 9910
    end
    local local11 = 1
    for local12 = 7000 - local11, 7008, local11 do
        local10[local12] = 0
        local9 = local9 + local10[local12]
    end
    if local9 <= 0 then
        print("【After Action】" .. "できることなし")
        return 
    end
    local local13 = 9999999
    local11 = 0
    local local14 = 1
    for local15 = 7000 - local14, 7008, local14 do
        local11 = local11 + local10[local15]
        if arg1:GetRandam_Float(0.001, local9) <= local11 then
            local13 = local15
            arg2:SetNumber(0, local15)
            arg1:StartIdTimer(local15 + 7100000)
            break
        end
    end
    if local13 == 7000 then
        print("【After Action】" .. "ガード待機")
        arg2:AddSubGoal(GOAL_COMMON_Guard, arg2:GetLife(), 9910, local0, true, 0)
    elseif local13 == 7001 then
        print("【After Action】" .. "左右移動")
        arg2:AddSubGoal(GOAL_COMMON_FlexibleSideWayMove, arg2:GetLife(), arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), local0, local7, arg1:GetRandam_Float(45, 240), local4, 0, 0)
    elseif local13 == 7002 then
        print("【After Action】" .. "後退")
        local15 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), local0, 0, local0, local5, GuardID, 1, true)
        local15:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif local13 == 7003 then
        print("【After Action】" .. "横ステップ")
        arg2:AddSubGoal(GOAL_EnemyStepLR, arg2:GetLife(), local0, local7)
    elseif local13 == 7004 then
        print("【After Action】" .. "後ステップ")
        arg2:AddSubGoal(GOAL_EnemyStepBack, arg2:GetLife(), local0, local7)
    elseif local13 == 7006 then
        print("【After Action】" .. "距離維持")
        local15 = arg2:AddSubGoal(GOAL_EnemyKeepDist, arg2:GetLife(), local0, local1, 0, 0, local3, local4, local8, 0, arg2:GetParam(5), local8, arg2:GetParam(7), local7)
        local15:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif local13 == 7007 then
        print("【After Action】" .. "前方移動")
        local15 = 0
        if local15 < 0 then
            local15 = 0
        end
        local local16 = (local15 + 0) / 2
        if local16 < 0 then
            local16 = 0
        end
        arg2:AddSubGoal(GOAL_EnemyFlexibleApproach, arg2:GetLife(), local0, local1, local16, local16, 0, 999, local3, local4, 0, 0, 0, 0)
    elseif local13 == 7008 then
        print("【After Action】" .. "前方ステップ")
        arg2:AddSubGoal(GOAL_EnemyStepFront, arg2:GetLife(), local0, local7)
    else
        print("【After Action】" .. "何もしない")
        arg2:AddSubGoal(GOAL_COMMON_Turn, arg2:GetLife(), local0, 45, 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    local local0 = arg2:GetParam(1)
    local local1 = arg1:GetDist(arg2:GetParam(0))
    local local2 = arg2:GetNumber(0)
    if local2 == 7000 then
        if 0 == 0 and (local1 < 0 or 0 < local1) then
            return GOAL_RESULT_Success
        end
    elseif local2 ~= 7002 and local2 ~= 7003 and local2 ~= 7004 and local2 ~= 7001 and local2 ~= 7006 and local2 ~= 7007 and local2 ~= 7008 then

    end
    return GOAL_RESULT_Continue
end

RegisterTableGoal(GOAL_EnemyAfterAction, "GOAL_EnemyAfterAction")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyAfterAction, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 0, "対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 1, "旋回対象", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 2, "防御移動確率", 2)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 3, "待機", 3)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 4, "防御待機", 4)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 5, "横移動", 5)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 6, "後退", 6)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 7, "横ステップ", 7)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 8, "後ステップ", 8)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 9, "距離維持", 9)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 10, "何もしない", 10)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(0)
    local local1 = arg2:GetParam(1)
    local local2 = arg1:GetDist(local0)
    local local3 = arg2:GetParam(3)
    local local4 = 0
    local local5 = {arg2:GetParam(4), arg2:GetParam(5), arg2:GetParam(6), arg2:GetParam(7), arg2:GetParam(8), arg2:GetParam(10), arg2:GetParam(9)}
    local local6 = 1
    for local7 = 7000 - local6, 7006, local6 do
        if 0 > local2 or local2 > 0 then
            local5[local7 - 7000 + 1] = 0
        end
        local4 = local4 + local5[local7 - 7000 + 1]
    end
    local local8 = 9999999
    local6 = 0
    local local9 = 1
    for local10 = 7000 - local9, 7006, local9 do
        local6 = local6 + local5[local10 - 7000 + 1]
        if arg1:GetRandam_Float(0, local4) <= local6 then
            local8 = local10
            break
        end
    end
    if local4 ~= 0 then
        if local8 == 7002 then
            local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), local0, 0, local1, IsWalk, GuardID, 1, true)
            local10:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            return 
        elseif local8 == 7003 then
            arg2:AddSubGoal(GOAL_EnemyStepLR, arg2:GetLife(), local0, 5)
            return 
        elseif local8 == 7004 then
            print("後ステップ")
            arg2:AddSubGoal(GOAL_EnemyStepBack, arg2:GetLife(), local0, 5)
            return 
        elseif local8 == 7001 then
            arg2:SetNumber(1, 2)
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg2:GetLife(), local0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Float(30, 60), true, true, GuardID, 1)
            return 
        elseif local8 == 7000 then
            arg2:SetNumber(1, 1)
            arg2:AddSubGoal(GOAL_COMMON_Guard, arg2:GetLife(), 9910, local0, true, 1)
        elseif local8 == 7006 then
            local10 = arg2:AddSubGoal(GOAL_EnemyKeepDist, arg2:GetLife(), local0, local1, arg2:GetParam(11), arg2:GetParam(12), 50, arg2:GetParam(2), 30, 0, arg0["EmergencyDist"], arg0["EmergencyEscapeRate"], arg0["EmergencyEscapeInterval"], arg0["EmergencyCheckDist"])
            local10:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        else
            arg2:AddSubGoal(GOAL_COMMON_Turn, arg2:GetLife(), local0, 90, 0, 0)
            return 
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(arg2:GetParam(0))
    if arg2:GetNumber(1) ~= 0 then
        local local1 = -1
        if arg2:GetNumber(1) == 1 then
            local1 = 7000
        elseif arg2:GetNumber(1) == 2 then
            local1 = 7001
        end
        if local0 < 0 or 0 < local0 then
            arg1:TurnTo(TARGET_SELF)
            return GOAL_RESULT_Success
        end
    end
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

RegisterTableGoal(GOAL_EnemyApproachForAttack, "GOAL_EnemyApproachForAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyApproachForAttack, true)
Goal["Update"] = Update_FinishOnNoSubGoal
Goal.Activate = function (arg0, arg1, arg2)
    local local0, local1, local2 = nil
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, arg2:GetLife(), arg2:GetParam(0), arg2:GetParam(1), arg2:GetParam(2), arg2:GetParam(3), arg2:GetParam(4), arg2:GetParam(5), local0, local1, local2)
    return 
end

RegisterTableGoal(GOAL_EnemyStepRight, "GOAL_EnemyStepRight")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepRight, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepRight, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    arg1:StartIdTimer(7110004)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, arg2:GetParam(0), arg2:GetParam(1), 0, true)
    return 
end

RegisterTableGoal(GOAL_EnemyStepLeft, "GOAL_EnemyStepLeft")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepLeft, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepLeft, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), -1, -1, 1, -1, arg2:GetParam(0), arg2:GetParam(1), 0, true)
    return 
end

RegisterTableGoal(GOAL_EnemyStepBack, "GOAL_EnemyStepBack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepBack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepBack, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    arg1:StartIdTimer(7110004)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), -1, 1, -1, -1, arg2:GetParam(0), arg2:GetParam(1), 0, true)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

RegisterTableGoal(GOAL_EnemyStepLR, "GOAL_EnemyStepLR")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepLR, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepLR, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    arg1:StartIdTimer(7110004)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), -1, -1, arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), arg2:GetParam(0), arg2:GetParam(1), 0, true)
    return 
end

RegisterTableGoal(GOAL_EnemyStepBLR, "GOAL_EnemyStepBLR")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepBLR, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepBLR, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), -1, arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), arg2:GetParam(0), arg2:GetParam(1), 0, true)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

RegisterTableGoal(GOAL_EnemyStepFront, "GOAL_EnemyStepFront")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepFront, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepFront, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    arg1:StartIdTimer(7110004)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), 1, -1, -1, -1, arg2:GetParam(0), arg2:GetParam(1), 0, true)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

return 
