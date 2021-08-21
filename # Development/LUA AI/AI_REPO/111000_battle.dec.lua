RegisterTableGoal(GOAL_DarkKnight_111000_Battle, "DarkKnight_Sword_111000")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    local local0 = false
    _COMMON_InitEnemyAct(arg0, arg1, arg2)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    arg0["ApproachDist"] = -1
    arg0["ThresholdDist"] = 5
    arg0["RateRunNear"] = 50
    arg0["RateRunFar"] = 80
    arg0["GuardRate"] = 50
    local local0 = _COMMON_SetEnemyActRate
    local local1 = arg0
    local local2 = arg1
    local local3 = arg2
    local local4 = 0
    _COMMON_SetEnemyActRate(arg0, arg1, arg2, 0)
    local0 = print
    local1 = "test"
    print("test")
    local1 = arg1
    local0 = arg1["GetDist"]
    local2 = TARGET_ENE_0
    local0 = arg1:GetDist(TARGET_ENE_0)
    local2 = arg1
    local1 = arg1["GetHpRate"]
    local3 = TARGET_SELF
    local1 = arg1:GetHpRate(TARGET_SELF)
    local3 = arg1
    local2 = arg1["GetNpcThinkParamID"]
    local2 = arg1:GetNpcThinkParamID()
    local4 = arg1
    local3 = arg1["GetMapHitRadius"]
    local local5 = TARGET_SELF
    local3 = arg1:GetMapHitRadius(TARGET_SELF)
    local5 = arg1
    local4 = arg1["GetExistMeshOnLineDistEx"]
    local local6 = TARGET_SELF
    local local7 = AI_DIR_TYPE_F
    local local8 = 3
    local local9 = local3
    local local10 = local3
    local4 = arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 3, local3, local3)
    local6 = arg1
    local5 = arg1["IsInsideTarget"]
    local7 = TARGET_ENE_0
    local8 = AI_DIR_TYPE_B
    local9 = 80
    local5 = arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 80)
    local6 = true
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 80) == true and local0 < 3 then
        arg1:SetStringIndexedNumber("ActRate08", 1)
    elseif 8 < local0 then
        arg1:SetStringIndexedNumber("ActRate01", 2)
        arg1:SetStringIndexedNumber("ActRate02", 1.5)
        arg1:SetStringIndexedNumber("ActRate05", 6)
    elseif 4.1 < local0 then
        arg1:SetStringIndexedNumber("ActRate01", 3)
        arg1:SetStringIndexedNumber("ActRate02", 2)
        arg1:SetStringIndexedNumber("ActRate05", 2)
        arg1:SetStringIndexedNumber("ActRate12", 1)
        arg1:SetStringIndexedNumber("ActRate11", 1)
    elseif 2.3 < local0 then
        arg1:SetStringIndexedNumber("ActRate01", 3)
        arg1:SetStringIndexedNumber("ActRate02", 2)
        arg1:SetStringIndexedNumber("ActRate06", 1)
        arg1:SetStringIndexedNumber("ActRate12", 1)
    elseif 1 < local0 then
        arg1:SetStringIndexedNumber("ActRate01", 2)
        arg1:SetStringIndexedNumber("ActRate02", 1)
        arg1:SetStringIndexedNumber("ActRate03", 3)
        arg1:SetStringIndexedNumber("ActRate12", 0.5)
    else
        arg1:SetStringIndexedNumber("ActRate01", 2.5)
        arg1:SetStringIndexedNumber("ActRate02", 1.5)
        arg1:SetStringIndexedNumber("ActRate03", 4.5)
    end
    if flag_Step == true then
        flag_Step = false
        arg1:SetStringIndexedNumber("ActRate05", arg1:GetStringIndexedNumber("ActRate05") * 2)
        arg1:SetStringIndexedNumber("ActRate06", arg1:GetStringIndexedNumber("ActRate06") * 2)
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
        arg1:SetStringIndexedNumber("ActRate07", 1)
    end
    local5 = _COMMON_SelectEnemyAct(arg0, arg1, arg2, TARGET_ENE_0, 0, 0)
    if local5 ~= nil then
        odds = local5(arg0, arg1, arg2, nil)
    else
        print("ŠÖ”‚ª‘I‚Î‚ê‚Ä‚È‚¢‚æifunc == nil j")
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    end
    arg0:AfterAction(arg1, arg2, odds)
    return 
end

Goal.Interrupt_GuardBreak = function (arg0, arg1, arg2)
    if arg1:GetDist(TARGET_ENE_0) < 3 and arg1:GetRandam_Int(0, 100) < 80 then
        arg2:ClearSubGoal()
        local local0 = arg1:TurnTo(TRAGET_SELF)
        local0("DarkKnight_Sword111000Battle:GuardBreak")
        arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3003)
    end
    return 
end

Goal.Interrupt_UseItem = function (arg0, arg1, arg2)
    if arg1:GetDist(TARGET_ENE_0) < 3.8 then
        arg2:ClearSubGoal()
        local local0 = arg1:TurnTo(TRAGET_SELF)
        local0("DarkKnight_Sword111000Battle:UseItem")
        arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3008)
    elseif arg1:GetDist(TARGET_ENE_0) < 6 then
        arg2:ClearSubGoal()
        local local0 = arg1:TurnTo(TRAGET_SELF)
        local0("DarkKnight_Sword111000Battle:UseItem")
        arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3007)
    end
    return 
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal["ActBase01"] = 3000
Goal.Act01 = function (arg0, arg1, arg2, arg3)
    local local0 = 3000
    arg0["approachDist"] = 3.5
    KAY_ApproachAct_Threshold(arg0, arg1, arg2, local0, TARGET_ENE_0, arg0["approachDist"], arg0["ThresholdDist"], arg0["RateRunNear"], arg0["RateRunFar"], arg0["GuardRate"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 80, local0, 3001, 3002)
    return 100
end

Goal["ActBase02"] = 3004
Goal.Act02 = function (arg0, arg1, arg2, arg3)
    local local0 = 3004
    arg0["approachDist"] = 3.8
    KAY_ApproachAct_Threshold(arg0, arg1, arg2, local0, TARGET_ENE_0, arg0["approachDist"], arg0["ThresholdDist"], arg0["RateRunNear"], arg0["RateRunFar"], arg0["GuardRate"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 80, local0, 3009)
    return 100
end

Goal["ActBase03"] = 3010
Goal.Act03 = function (arg0, arg1, arg2, arg3)
    local local0 = 3010
    arg0["approachDist"] = 3.5
    KAY_ApproachAct_Threshold(arg0, arg1, arg2, local0, TARGET_ENE_0, arg0["approachDist"], arg0["ThresholdDist"], arg0["RateRunNear"], arg0["RateRunFar"], arg0["GuardRate"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 80, local0, 3011, 3012)
    return 100
end

Goal["ActBase04"] = 3003
Goal.Act04 = function (arg0, arg1, arg2, arg3)
    local local0 = 3003
    arg0["approachDist"] = 3
    KAY_ApproachAct_Threshold(arg0, arg1, arg2, local0, TARGET_ENE_0, arg0["approachDist"], arg0["ThresholdDist"], arg0["RateRunNear"], arg0["RateRunFar"], arg0["GuardRate"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase05"] = 3007
Goal.Act05 = function (arg0, arg1, arg2, arg3)
    local local0 = 3007
    arg0["approachDist"] = 6
    KAY_ApproachAct_Threshold(arg0, arg1, arg2, local0, TARGET_ENE_0, arg0["approachDist"], arg0["ThresholdDist"], arg0["RateRunNear"], arg0["RateRunFar"], arg0["GuardRate"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase06"] = 3008
Goal.Act06 = function (arg0, arg1, arg2, arg3)
    local local0 = 3008
    arg0["approachDist"] = 6
    KAY_ApproachAct_Threshold(arg0, arg1, arg2, local0, TARGET_ENE_0, arg0["approachDist"], arg0["ThresholdDist"], arg0["RateRunNear"], arg0["RateRunFar"], arg0["GuardRate"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase07"] = 3006
Goal.Act07 = function (arg0, arg1, arg2, arg3)
    local local0 = 3006
    arg0["approachDist"] = 1.5
    KAY_ApproachAct_Threshold(arg0, arg1, arg2, local0, TARGET_ENE_0, arg0["approachDist"], arg0["ThresholdDist"], arg0["RateRunNear"], arg0["RateRunFar"], arg0["GuardRate"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase08"] = 3013
Goal.Act08 = function (arg0, arg1, arg2, arg3)
    local local0 = TARGET_ENE_0
    arg0["approachDist"] = 2.5
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3013)
    return 100
end

Goal["ActBase11"] = 5000
Goal.Act11 = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_DarkKnight_111000_FrontStep, 10)
    return -1
end

Goal["ActBase12"] = 5001
Goal.Act12 = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_DarkKnight_111000_SideWalk, 10)
    return -1
end

Goal.AfterAction = function (arg0, arg1, arg2, arg3)
    if arg3 ~= nil and arg1:GetRandam_Float(0, 100) <= arg3 then
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 0, 70, 0, 0, 0, 0, 0)
    end
    return 
end

RegisterTableGoal(GOAL_DarkKnight_111000_SideWalk, "DarkKnight_111000_SideWalk")
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = -1
    if arg1:GetRandam_Int(0, 3) ~= 0 then
        local1 = 9910
    end
    if arg1:GetRandam_Int(1, 100) < 50 then
        if arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 5) < 1 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_LEFT, arg1:GetRandam_Int(30, 60), true, true, 9910)
            local local2 = arg2:GetLatestAddGoalFunc()
            local2:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_RIGHT, arg1:GetRandam_Int(30, 60), true, true, 9910)
            local local2 = arg2:GetLatestAddGoalFunc()
            local2:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 0)
        end
    elseif arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 5) < 1 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_RIGHT, arg1:GetRandam_Int(30, 60), true, true, 9910)
        local local2 = arg2:GetLatestAddGoalFunc()
        local2:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 0)
    else
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_LEFT, arg1:GetRandam_Int(30, 60), true, true, 9910)
        local local2 = arg2:GetLatestAddGoalFunc()
        local2:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 0)
    end
    return 
end

Goal.Interrupt_FindAttack = function (arg0, arg1, arg2)
    local local0 = 0
    local local1 = 50
    local local2 = 3.5
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:GetDist(TARGET_ENE_0) <= 4 and arg1:GetRandam_Int(1, 100) <= 80 then
        arg2:ClearSubGoal()
        local local4 = arg1:TurnTo(TRAGET_SELF)
        local4("DarkKnight_111000_Battle:Attack Fined Step")
        if local3 <= local0 then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, local2)
        elseif local3 <= local0 + 50 then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local2)
        else
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local2)
        end
        flag_Step = true
        return true
    else
        return 
    end
end

RegisterTableGoal(GOAL_DarkKnight_111000_FrontStep, "DarkKnight_111000_FrontStep")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkKnight_Sword_111000_FrontStep, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = 0
    if local0 < 8 and 5 < local0 then
        local1 = 70
    elseif 3 < local0 then
        local1 = 30
    end
    if arg1:GetRandam_Int(1, 100) < local1 then
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
    else
        arg1:TurnTo(TARGET_ENE_0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

return 
