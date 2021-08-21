RegisterTableGoal(GOAL_KingAndDragon_503000_Battle, "KingAndDragon_503000_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 8)
    arg1:SetStringIndexedNumber("Dist_BackStep", 8)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if InsideRange(arg1, arg2, -40, 60, -5 - arg1:GetMapHitRadius(TARGET_SELF), 1.3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[1] = 100
    end
    if InsideRange(arg1, arg2, 115, 60, 1 - arg1:GetMapHitRadius(TARGET_SELF), 5 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[2] = 100
    end
    if InsideRange(arg1, arg2, 0, 90, 12 - arg1:GetMapHitRadius(TARGET_SELF), 16 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[3] = 100
    end
    if InsideRange(arg1, arg2, 0, 90, 11.4 - arg1:GetMapHitRadius(TARGET_SELF), 15.4 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[4] = 100
    end
    if InsideRange(arg1, arg2, 0, 90, 19 - arg1:GetMapHitRadius(TARGET_SELF), 24 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[5] = 100
    end
    if InsideRange(arg1, arg2, 10, 45, 12 - arg1:GetMapHitRadius(TARGET_SELF), 15 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[6] = 100
    end
    if InsideRange(arg1, arg2, 10, 45, 18 - arg1:GetMapHitRadius(TARGET_SELF), 22 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[7] = 100
    end
    if InsideRange(arg1, arg2, 10, 45, 24 - arg1:GetMapHitRadius(TARGET_SELF), 29 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[8] = 100
    end
    if InsideRange(arg1, arg2, 0, 45, 8 - arg1:GetMapHitRadius(TARGET_SELF), 13 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[9] = 100
    end
    if InsideRange(arg1, arg2, 0, 90, 7 - arg1:GetMapHitRadius(TARGET_SELF), 19 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[10] = 100
    end
    if InsideRange(arg1, arg2, 0, 360, 17 - arg1:GetMapHitRadius(TARGET_SELF), 67 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[11] = 100
    end
    if InsideRange(arg1, arg2, 0, 360, -999 - arg1:GetMapHitRadius(TARGET_SELF), 11 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[12] = 100
    end
    if InsideRange(arg1, arg2, 0, 360, 17 - arg1:GetMapHitRadius(TARGET_SELF), 27 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[13] = 250
    end
    if InsideRange(arg1, arg2, 0, 360, 29 - arg1:GetMapHitRadius(TARGET_SELF), 42 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[14] = 100
    end
    if InsideRange(arg1, arg2, 0, 360, 47 - arg1:GetMapHitRadius(TARGET_SELF), 67.2 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[15] = 100
    end
    if InsideRange(arg1, arg2, 0, 360, -999 - arg1:GetMapHitRadius(TARGET_SELF), 11 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[16] = 100
    end
    if InsideRange(arg1, arg2, 0, 360, 15, 20) then
        local0[16] = 100
    end
    if InsideRange(arg1, arg2, 10, 45, 22.1 - arg1:GetMapHitRadius(TARGET_SELF), 27.1 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[17] = 100
    end
    if InsideRange(arg1, arg2, 0, 45, 4 - arg1:GetMapHitRadius(TARGET_SELF), 8 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[18] = 100
    end
    if 22 <= local3 then
        local0[20] = 10
        local0[21] = 10
        local0[16] = 0
    elseif 17 <= local3 then
        local0[20] = 10
        local0[21] = 10
        local0[16] = 0
    elseif 5 <= local3 then
        local0[20] = 10
        local0[21] = 10
        local0[16] = 0
    else
        local0[20] = 10
        local0[21] = 10
        local0[16] = 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3002, 20, local0[1], 25)
    local0[2] = SetCoolTime(arg1, arg2, 3017, 20, local0[2], 25)
    local0[3] = SetCoolTime(arg1, arg2, 3013, 45, local0[3], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3000, 45, local0[3], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3006, 45, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3000, 45, local0[4], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3013, 45, local0[4], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 45, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 45, local0[5], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3013, 45, local0[5], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3000, 45, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3016, 45, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3004, 45, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3019, 45, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3004, 45, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3016, 45, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3019, 45, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3019, 45, local0[8], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3016, 45, local0[8], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3004, 45, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3007, 45, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3008, 55, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3011, 30, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3009, 30, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3001, 60, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3003, 30, local0[14], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3018, 30, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3003, 30, local0[15], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3018, 30, local0[15], 1)
    local0[22] = SetCoolTime(arg1, arg2, 6001, 10, local0[22], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3010, 30, local0[16], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3023, 30, local0[17], 1)
    local0[18] = SetCoolTime(arg1, arg2, 3030, 45, local0[18], 1)
    if local3 <= -1 then
        local0[11] = 40
        local0[12] = 20
        local0[13] = 20
        local0[16] = 20
    end
    local1[1] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, KingAndDragon_503000_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, KingAndDragon_503000_ActAfter_AdjustSpace), local2)
    return 
end

function KingAndDragon_503000_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 16 - arg0:GetMapHitRadius(TARGET_SELF), 16 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 16 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    local local0 = 3013
    local local1 = 3014
    local local2 = 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local3 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 1.5
    local local5 = 90
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    elseif local6 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 27.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15.4 - arg0:GetMapHitRadius(TARGET_SELF), 15.4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 15.4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    local local0 = 3000
    local local1 = 3014
    local local2 = 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local3 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 1.5
    local local5 = 90
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 24 - arg0:GetMapHitRadius(TARGET_SELF), 24 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 24 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    local local0 = 3006
    local local1 = 3014
    local local2 = 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local3 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 1.5
    local local5 = 90
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    local local0 = 3016
    local local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 30
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 22 - arg0:GetMapHitRadius(TARGET_SELF), 22 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 22 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 29 - arg0:GetMapHitRadius(TARGET_SELF), 29 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 29 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    local local0 = 3007
    local local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 90
    local local4 = arg0:GetRandam_Int(1, 100)
    if local4 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    elseif local4 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 27.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 19 - arg0:GetMapHitRadius(TARGET_SELF), 19 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 19 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 67 - arg0:GetMapHitRadius(TARGET_SELF), 67 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 67 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11 - arg0:GetMapHitRadius(TARGET_SELF), 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 27 - arg0:GetMapHitRadius(TARGET_SELF), 27 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 27 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3001, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 42 - arg0:GetMapHitRadius(TARGET_SELF), 42 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 42 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    local local0 = 3018
    local local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 30
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 15.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act15(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 67.2 - arg0:GetMapHitRadius(TARGET_SELF), 67.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 67.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    local local0 = 3003
    local local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 30
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 15.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act16(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11 - arg0:GetMapHitRadius(TARGET_SELF), 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 27.1 - arg0:GetMapHitRadius(TARGET_SELF), 27.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 27.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act18(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act19(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingAndDragon_503000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, arg0:GetRandam_Float(2.5, 4), TARGET_ENE_0, 1, 16, TARGET_ENE_0, true, -1)
    return 
end

function KingAndDragon_503000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
    return 
end

function KingAndDragon_503000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_KingAndDragon_503000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = 8 - arg1:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if InsideRange(arg1, arg2, 0, 10 + 45, 22.1 - arg1:GetMapHitRadius(TARGET_SELF), 27.1 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local0, local1, local2, 0, 0)
            return true
        elseif InsideRange(arg1, arg2, 0, 90 + 10, 16 - arg1:GetMapHitRadius(TARGET_SELF), 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local0, local1, local2, 0, 0)
            return true
        elseif InsideRange(arg1, arg2, 0, 10 + 45, 9 - arg1:GetMapHitRadius(TARGET_SELF), 16 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local0, local1, local2, 0, 0)
            return true
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and InsideRange(arg1, arg2, 0, 120, -3 - arg1:GetMapHitRadius(TARGET_SELF), 15 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetRandam_Int(1, 100) <= 30 then
        arg2:ClearSubGoal()
        KingAndDragon_503000_Act19(arg1, arg2, paramTbl)
    end
    return false
end

RegisterTableGoal(GOAL_KingAndDragon_503000_AfterAttackAct, "KingAndDragon_503000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingAndDragon_503000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    if local0 <= 0 then
        arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(2, 4), TARGET_ENE_0, 0, 0, 0)
    elseif local0 <= 0 then
        arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(2, 4), TARGET_NONE, 0, 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
