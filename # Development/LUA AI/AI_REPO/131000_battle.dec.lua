RegisterTableGoal(GOAL_DarkKnightBeast_131000_Battle, "DarkKnightBeast_131000")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(1, 5)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = Init_Pseudo_Global
    local local1 = arg1
    local local2 = arg2
    Init_Pseudo_Global(arg1, arg2)
    local1 = arg1
    local0 = arg1["SetStringIndexedNumber"]
    local2 = "Dist_SideStep"
    local local3 = 5
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    local1 = arg1
    local0 = arg1["SetStringIndexedNumber"]
    local2 = "Dist_BackStep"
    local3 = 5
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local0 = {}
    local1 = {}
    local2 = {}
    local3 = Common_Clear_Param
    local local4 = local0
    local local5 = local1
    local local6 = local2
    Common_Clear_Param(local0, local1, local2)
    local4 = arg1
    local3 = arg1["DeleteObserveSpecialEffectAttribute"]
    local5 = TARGET_SELF
    local6 = 5025
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local4 = arg1
    local3 = arg1["DeleteObserveSpecialEffectAttribute"]
    local5 = TARGET_SELF
    local6 = 5026
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local4 = arg1
    local3 = arg1["DeleteObserveSpecialEffectAttribute"]
    local5 = TARGET_SELF
    local6 = 5027
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local4 = arg1
    local3 = arg1["DeleteObserveSpecialEffectAttribute"]
    local5 = TARGET_SELF
    local6 = 5028
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local4 = arg1
    local3 = arg1["AddObserveRegion"]
    local5 = 0
    local6 = TARGET_ENE_0
    local local7 = 3002660
    arg1:AddObserveRegion(0, TARGET_ENE_0, 3002660)
    local4 = arg1
    local3 = arg1["AddObserveRegion"]
    local5 = 1
    local6 = TARGET_SELF
    local7 = 3002661
    arg1:AddObserveRegion(1, TARGET_SELF, 3002661)
    local4 = arg1
    local3 = arg1["AddObserveRegion"]
    local5 = 2
    local6 = TARGET_ENE_0
    local7 = 3002661
    arg1:AddObserveRegion(2, TARGET_ENE_0, 3002661)
    local4 = arg1
    local3 = arg1["SetEventMoveTarget"]
    local5 = 3002661
    arg1:SetEventMoveTarget(3002661)
    local4 = arg1
    local3 = arg1["GetDist"]
    local5 = TARGET_ENE_0
    local3 = arg1:GetDist(TARGET_ENE_0)
    local5 = arg1
    local4 = arg1["GetToTargetAngle"]
    local6 = TARGET_ENE_0
    local4 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local6 = arg1
    local5 = arg1["GetHpRate"]
    local7 = TARGET_SELF
    local5 = arg1:GetHpRate(TARGET_SELF)
    local7 = arg1
    local6 = arg1["GetNpcThinkParamID"]
    local6 = arg1:GetNpcThinkParamID()
    local local8 = arg1
    local7 = arg1["IsInsideTargetEx"]
    local local9 = TARGET_SELF
    local local10 = TARGET_ENE_0
    local local11 = AI_DIR_TYPE_B
    local local12 = 120
    local local13 = arg1
    local local14 = arg1["GetMapHitRadius"]
    local local15 = TARGET_SELF
    local14 = arg1:GetMapHitRadius(TARGET_SELF)
    local14 = 5.4 - arg1:GetMapHitRadius(TARGET_SELF)
    local7 = arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 5.4 - arg1:GetMapHitRadius(TARGET_SELF))
    if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 5.4 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 240, 5.4 - arg1:GetMapHitRadius(TARGET_SELF)) then
        print("背後: ", local4, " 距離：", local3)
        local0[2] = 100
        local0[19] = 1
    elseif -160 < local4 and local4 < -80 and local3 < 4.6 - arg1:GetMapHitRadius(TARGET_SELF) then
        print("左側: ", local4, " 距離：", local3)
        local0[5] = 100
        local0[18] = 1
        local0[19] = 2
    elseif 60 < local4 and local4 < 150 and local3 < 6 - arg1:GetMapHitRadius(TARGET_SELF) then
        print("右側: ", local4, " 距離：", local3)
        local0[6] = 100
        local0[18] = 1
        local0[19] = 2
    else
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[19] = 12
        elseif 12 < local3 then
            local0[3] = 15
            local0[4] = 10
            local0[8] = 13
            local0[11] = 24 * (1 + local5)
        elseif 7 < local3 then
            local0[1] = 8
            local0[3] = 20
            local0[4] = 10
            local0[8] = 8
            local0[10] = 12
            local0[11] = 20 * (1 + local5)
            local0[17] = 20 * (1 + local5)
        elseif 3 < local3 then
            local0[1] = 8
            local0[3] = 20
            local0[4] = 10
            local0[8] = 8
            local0[11] = 20 * (1 + local5)
            local0[17] = 20 * (1 + local5)
        elseif 1.8 < local3 then
            local0[1] = 8
            local0[3] = 20
            local0[4] = 10
            local0[8] = 7
            local0[11] = 10
        else
            local0[1] = 12
            local0[3] = 15
            local0[4] = 10
            local0[18] = 30
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[11] = 0
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 300) then
            local0[17] = 0
        end
        if local3 < -0.3 then
            local0[5] = 0
        end
        if local3 < -0.3 then
            local0[6] = 0
        end
        if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3002661) then
            local0[9] = local0[9] - 100
            local0[11] = local0[11] - 100
            local0[1] = local0[1] - 100
            local0[17] = local0[17] - 100
            local0[10] = local0[10] + 30
            local0[7] = local0[7] + 30
            local0[21] = local0[21] + 30
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 12, local0[1], 0)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 5, local0[2], 0)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 3, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3011, 3, local0[4], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 3, local0[7], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 5, local0[5], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 5, local0[5], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 5, local0[6], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 5, local0[6], 0)
    local0[10] = SetCoolTime(arg1, arg2, 3010, 15, local0[10], 1)
    local0[18] = SetCoolTime(arg1, arg2, 6000, 5, local0[18], 0)
    local0[18] = SetCoolTime(arg1, arg2, 6001, 3, local0[18], 0)
    local0[17] = SetCoolTime(arg1, arg2, 6000, 5 - 2 * local5, local0[17], 0)
    local0[17] = SetCoolTime(arg1, arg2, 6001, 5 - 2 * local5, local0[17], 0)
    local0[11] = SetCoolTime(arg1, arg2, 3015, 10 - 5 * local5, local0[11], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act11)
    local1[17] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act21)
    local1[15] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_Act16)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DarkKnightBeast131000_ActAfter_AdjustSpace), local2)
    return 
end

function DarkKnightBeast131000_Act01(arg0, arg1, arg2)
    DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 40
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act02(arg0, arg1, arg2)
    DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 360, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 40
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act03(arg0, arg1, arg2)
    DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    local local0 = 3004
    local local1 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 0
    local local3 = 0
    local local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:GetRandam_Int(1, 100) <= 65 then
        local local5 = 3005
        local local6 = 3003
        local local7 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
        local local8 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local local9 = arg0:GetRandam_Int(1, 100)
        if local9 < 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local2, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local4, 0, 0)
        elseif local9 < 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local2, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local4, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local2, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DistToAtt1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local7, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local4, 0, 0)
        end
    else
        local local6 = 3012
        local local10 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local local7 = 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local local8 = arg0:GetRandam_Int(1, 100)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 40
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act04(arg0, arg1, arg2)
    DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    local local0 = 3011
    local local1 = 3010
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if arg0:GetRandam_Int(1, 100) <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 40
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act05(arg0, arg1, arg2)
    local local0 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local local3 = 0
    local local4 = 0
    local local5 = 3
    local local6 = 8
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 40
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act06(arg0, arg1, arg2)
    local local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local local3 = 0
    local local4 = 0
    local local5 = 2.5
    local local6 = 8
    local local7 = 3007
    local local8 = 3014
    local local9 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local11 = 0
    local local12 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 40
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act07(arg0, arg1, arg2)
    DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act08(arg0, arg1, arg2)
    DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, 8.4 - arg0:GetMapHitRadius(TARGET_SELF), 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act09(arg0, arg1, arg2)
    local local0 = 8.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 100
    local local4 = 0
    local local5 = 2.5
    local local6 = 8
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.9 - arg0:GetMapHitRadius(TARGET_SELF), 13.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 13.9 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 11.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11.4 - arg0:GetMapHitRadius(TARGET_SELF), 11.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 11.4 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    local local0 = 3015
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act15(arg0, arg1, arg2)
    DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    local local0 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act16(arg0, arg1, arg2)
    DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 2.5, 8)
    local local0 = 3004
    local local1 = 3003
    local local2 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DistToAtt1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act17(arg0, arg1, arg2)
    print("前ステップ")
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act18(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 50)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act20(arg0, arg1, arg2)
    local local0 = 2
    local local1 = 10
    local local2 = 99
    local local3 = 0
    local local4 = 0
    local local5 = 4
    local local6 = 4
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_Act21(arg0, arg1, arg2)
    if 0.5 <= arg0:GetDistYSigned(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, POINT_EVENT, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    elseif 2 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, POINT_EVENT, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, SuccessDist, 1.5, 60, 0, 0)
    elseif arg0:IsInsideTargetRegion(TARGET_SELF, 3002661) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, POINT_EVENT, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, POINT_EVENT, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkKnightBeast131000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DarkKnightBeast_131000_AfterAttack, 10)
    return 
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if 12 < arg1:GetDist(TARGET_ENE_0) then
            if arg1:GetAttackPassedTime(3009) >= 10 then
                arg2:ClearSubGoal()
                DarkKnightBeast131000_Act09(arg1, arg2, paramTbl)
                return true
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if arg1:GetRandam_Int(1, 100) < 50 then
                arg2:ClearSubGoal()
                DarkKnightBeast131000_Act11(arg1, arg2, paramTbl)
                return true
            else
                arg2:ClearSubGoal()
                DarkKnightBeast131000_Act17(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    local local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and 3.9 - arg1:GetMapHitRadius(TARGET_SELF) < local3 and local3 <= 11.4 - arg1:GetMapHitRadius(TARGET_SELF) and local4 <= 90 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 3002661) == false then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 5.4 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local0, 0, 0)
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and local3 <= 8.4 - arg1:GetMapHitRadius(TARGET_SELF) and local4 <= 80 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local0, 0, 0)
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and 2.9 - arg1:GetMapHitRadius(TARGET_SELF) < local3 and local3 <= 13.9 - arg1:GetMapHitRadius(TARGET_SELF) and local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local0, 0, 0)
            return true
        else
            return false
        end
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and 2.9 - arg1:GetMapHitRadius(TARGET_SELF) < local3 and local3 <= 13.9 - arg1:GetMapHitRadius(TARGET_SELF) and local4 <= 40 then
            arg2:ClearSubGoal()
            DarkKnightBeast131000_Act10(arg1, arg2, paramTbl)
            return true
        else
            return false
        end
    end
    local local5 = 2.6
    local local6 = 75
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and arg1:IsFinishTimer(1) == true then
        if 9 < local3 then
            if arg1:GetAttackPassedTime(3015) < arg1:GetAttackPassedTime(3009) then
                arg2:ClearSubGoal()
                DarkKnightBeast131000_Act09(arg1, arg2, paramTbl)
                arg1:SetTimer(1, 5)
                return true
            else
                arg2:ClearSubGoal()
                DarkKnightBeast131000_Act17(arg1, arg2, paramTbl)
                arg1:SetTimer(1, 5)
                return true
            end
        elseif 7 < local3 then
            arg2:ClearSubGoal()
            DarkKnightBeast131000_Act11(arg1, arg2, paramTbl)
            arg1:SetTimer(1, 5)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            arg2:ClearSubGoal()
            DarkKnightBeast131000_Act21(arg1, arg2, paramTbl)
            arg1:DeleteObserve(0)
            return true
        elseif arg1:IsInsideObserve(1) then
            arg2:ClearSubGoal()
            DarkKnightBeast131000_Act21(arg1, arg2, paramTbl)
            arg1:DeleteObserve(1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Outside_ObserveArea) and arg1:IsInsideObserve(2) and arg1:GetDistYSigned(TARGET_ENE_0) <= 0 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, POINT_EVENT, 0, AI_DIR_TYPE_B, 0)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
        arg1:DeleteObserve(2)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_DarkKnightBeast_131000_AfterAttack, "DarkKnightBeast_131000_AfterAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkKnightBeast_131000_AfterAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_DarkKnightBeast131000_TurnApproach, "GOAL_DarkKnightBeast131000_TurnApproach")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkKnightBeast131000_TurnApproach, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    arg1:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, arg2:GetParam(1), arg2:GetParam(0), AI_SPA_DIR_TYPE_ToTarget)
    local local1 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg1:GetRandam_Float(3, 6), POINT_AI_FIXED_POS, 1, TARGET_SELF, arg2:GetParam(2), -1)
    local1:SetTargetRange(1, local0 / 2, local0 + 20)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(0)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function DarkKnightBeast131000_Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg7 == nil then
        arg7 = 3
    end
    if arg8 == nil then
        arg8 = 8
    end
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = true
    if arg4 <= local0 then
        local1 = false
    elseif arg3 <= local0 and arg0:GetRandam_Int(1, 100) <= arg5 then
        local1 = false
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= arg6 then
        local2 = 9910
    end
    if local1 == true then
        life = arg7
    else
        life = arg8
    end
    if arg2 <= local0 then
        if local0 < 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3 then
            local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, local1, local2)
            local3:SetTargetRange(0, -1, 9.4)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, local1, local2)
        end
    end
    return 
end

return 
