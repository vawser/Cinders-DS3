RegisterTableGoal(GOAL_CrowKnight_Rapier_607000_Battle, "GOAL_CrowKnight_Rapier_607000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_CrowKnight_Rapier_607000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 13251) and 7 <= arg1:GetDist(TARGET_EVENT) then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_EVENT, 7, TARGET_SELF, true, -1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13250) then
        if local6 == 300 then
            local0[32] = 100
        elseif local6 == 200 then
            local0[31] = 100
        else
            local0[30] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13252) and not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        local0[35] = 100
    elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 4) then
        local0[2] = 60
        local0[6] = 30
        local0[25] = 10
    elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 4) then
        local0[10] = 60
        local0[6] = 30
        local0[25] = 10
    elseif 6 <= local3 then
        local0[1] = 10
        local0[2] = 5
        local0[4] = 0
        local0[6] = 0
        local0[7] = 55
        local0[5] = 0
        local0[8] = 30
    elseif 4.5 <= local3 then
        local0[1] = 30
        local0[2] = 10
        local0[10] = 5
        local0[11] = 20
        local0[4] = 0
        local0[6] = 35
        local0[20] = 0
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[8] = 200
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[4] = 100
        end
    elseif 2 <= local3 then
        local0[1] = 5
        local0[2] = 20
        local0[10] = 10
        local0[11] = 25
        local0[3] = 10
        local0[6] = 20
        local0[26] = 10
    else
        local0[1] = 0
        local0[2] = 10
        local0[10] = 10
        local0[11] = 0
        local0[3] = 50
        local0[26] = 30
    end
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3007, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3018, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3023, 11, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3020, 5, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3016, 8, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3017, 8, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3012, 5, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3026, 15, local0[8], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3031, 5, local0[11], 1)
    local0[26] = SetCoolTime(arg1, arg2, 3016, 8, local0[26], 0)
    local0[26] = SetCoolTime(arg1, arg2, 3017, 8, local0[26], 0)
    local0[26] = SetCoolTime(arg1, arg2, 3018, 8, local0[26], 0)
    if not arg1:IsFinishTimer(2) then
        local0[26] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act22)
    local1[25] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act27)
    local1[30] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act32)
    local1[35] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act35)
    local1[40] = REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_Act40)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CrowKnight_Rapier_607000_ActAfter_AdjustSpace), local2)
    return 
end

function CrowKnight_Rapier_607000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    CrowKnight_Rapier_607000_Approach_Act(arg0, arg1, 4.38)
    local local1 = 3000
    local local2 = 3001
    local local3 = 3002
    local local4 = 3003
    local local5 = 3.38 + 1
    local local6 = 5.51 + 1
    local local7 = 2.73 + 1
    local local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local9 = 0
    local local10 = 0
    local local11 = arg0:GetRandam_Int(1, 100)
    local local12 = arg0:GetRandam_Int(1, 100)
    if local11 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local9, local10, 0, 0)
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6, local9, local10, 0, 0)
        local13:SetTargetRange(1, 1, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 4, 0)
    elseif local11 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7, local9, local10, 0, 0)
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local6, local9, local10, 0, 0)
        local13:SetTargetRange(1, 1, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local7, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 3.37 + 1, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 4, 0)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act02(arg0, arg1, arg2)
    CrowKnight_Rapier_607000_Approach_Act(arg0, arg1, 3.75)
    local local0 = 3007
    local local1 = 3008
    local local2 = 2.63 + 1
    local local3 = 5.51 + 1
    local local4 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if local7 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local5, local6, 0, 0)
        local local8 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.37 + 1, local5, local6, 0, 0)
        local8:SetTargetRange(1, 1, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 4, 0)
    elseif local7 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local5, local6, 0, 0)
        local local8 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        local8:SetTargetRange(1, 1, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act04(arg0, arg1, arg2)
    CrowKnight_Rapier_607000_Approach_Act(arg0, arg1, 6)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.7, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act05(arg0, arg1, arg2)
    CrowKnight_Rapier_607000_Approach_Act(arg0, arg1, 10.59)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3017
    local local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and SpaceCheck(arg0, arg1, -90, 6) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, local2, local3, local4, 0, 0)
    elseif SpaceCheck(arg0, arg1, 90, 6) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act07(arg0, arg1, arg2)
    local local0 = 3012
    local local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 999, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, local1, local2, local3, 0, 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act08(arg0, arg1, arg2)
    CrowKnight_Rapier_607000_Approach_Act(arg0, arg1, 2.71 * 2 + 3.42)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 0, 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act10(arg0, arg1, arg2)
    CrowKnight_Rapier_607000_Approach_Act(arg0, arg1, 2.63)
    local local0 = 3008
    local local1 = 3002
    local local2 = 5.51 + 1.5
    local local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.22 + 1.5, local4, local5, 0, 0)
        local local7 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local2, local4, local5, 0, 0)
        local7:SetTargetRange(1, 1, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, local4, local5, 0, 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    elseif local6 <= 60 then
        local local7 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        local7:SetTargetRange(1, 1, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, local4, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.37 + 1.5, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local3, local4, local5, 0, 0)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act11(arg0, arg1, arg2)
    CrowKnight_Rapier_607000_Approach_Act(arg0, arg1, 3.42)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, 3.42 + 1, local1, local2, 0, 0)
    local4:SetTargetRange(1, 1, 999)
    local4 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3032, TARGET_ENE_0, 3.56 + 1, local1, local2, 0, 0)
    local4:SetTargetRange(1, 1, 999)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3033, TARGET_ENE_0, 4, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        local2:SetTargetRange(0, 4.2, 999)
    else
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        local2:SetTargetRange(0, 4.2, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 6, TARGET_SELF, true, 0)
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 6, TARGET_SELF, false, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act25(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    end
    arg0:SetTimer(2, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    arg0:SetTimer(2, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_EVENT, 2.63, TARGET_SELF, false, -1)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_EVENT, local0, local1, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_EVENT, local0, local1, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_EVENT, local0, local1, local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_EVENT, 6, TARGET_SELF, false, -1)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_EVENT, local0, local1, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_EVENT, 2.63, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_EVENT, local0, local1, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_EVENT, local0, local1, local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_EVENT, 10.59, TARGET_SELF, false, -1)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_EVENT, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act35(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 8, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 8
    local local2 = local1
    local local3 = local1 + arg0:GetStringIndexedNumber("AddDistRun")
    local local4 = 100
    local local5 = 0
    local local6 = 4
    local local7 = 5.5
    local local8 = 3000
    local local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = arg0:GetRandam_Int(1, 100)
    local local11 = arg0:GetRandam_Int(1, 100)
    local local12 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, 3.38, 0, 60, 0, 0)
    local12:SetTargetRange(1, 1, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Rapier_607000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrowKnight_Rapier_607000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

function NKM_GuardBreakThrow_Act(arg0, arg1, arg2, arg3)
    if arg0:IsInterupt(INTERUPT_GuardBreak) and arg0:GetDist(TARGET_ENE_0) <= arg2 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, arg3) then
        arg1:ClearSubGoal()
        local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.45, TARGET_ENE_0, -1, TARGET_SELF, false, -1)
        local0:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3110, TARGET_ENE_0, 3, 0, -1)
        return true
    else
        return 
    end
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    if local0 < 3 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and Counter_Act(arg1, arg2, 7, 3028) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3035, TARGET_ENE_0, 6.2, 0)
        return true
    end
    NKM_GuardBreakThrow_Act(arg1, arg2, 5, 120)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if 11 < arg1:GetAttackPassedTime(3023) and arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and local0 < 6 and 1 < local0 and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 999) then
            local local3 = 15
            if arg1:IsTargetGuard(TARGET_ENE_0) then
                local3 = 70
            end
            if local1 <= local3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 4, 0)
                arg2:AddSubGoal(GOAL_COMMON_Wait, 0.6, TARGET_NONE, 0, 0, 0)
                arg2:AddSubGoal(GOAL_CrowKnight_Rapier_607000_AfterAttackAct, 10)
                return true
            end
        end
        if (arg1:GetSpecialEffectActivateInterruptType(0) == 5025 or arg1:GetSpecialEffectActivateInterruptType(0) == 5026 or arg1:GetSpecialEffectActivateInterruptType(0) == 5030) and 8 <= arg1:GetAttackPassedTime(3015) and 4.5 < local0 and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 999) then
            arg2:ClearSubGoal()
            if 6.5 <= local0 and local1 <= 65 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and local0 < 5.51 + 1.5 and 2 < local0 and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 45, 10) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 4, 0)
            arg2:AddSubGoal(GOAL_CrowKnight_Rapier_607000_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and local0 < 10.59 + 0 and 6 < local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 4, 0)
            arg2:AddSubGoal(GOAL_CrowKnight_Rapier_607000_AfterAttackAct, 10)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if arg1:IsTargetOutOfRangeInterruptSlot(0) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(1) and arg1:IsFinishTimer(1) then
            if (local1 <= 20 or arg1:IsTargetGuard(TARGET_ENE_0)) and 11 < arg1:GetAttackPassedTime(3023) and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 999) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 4, 0)
                arg2:AddSubGoal(GOAL_COMMON_Wait, 0.7, TARGET_NONE, 0, 0, 0)
                arg2:AddSubGoal(GOAL_CrowKnight_Rapier_607000_AfterAttackAct, 10)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
                arg1:Replaning()
            end
            arg1:SetTimer(1, 2)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_CrowKnight_Rapier_607000_AfterAttackAct, "GOAL_CrowKnight_Rapier_607000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrowKnight_Rapier_607000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 6 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
    elseif 4.5 <= local0 then
        local2[1] = 25
        local2[2] = 0
        local2[3] = 20
        local2[4] = 55
    else
        local2[1] = 55
        local2[2] = 10
        local2[3] = 35
        local2[4] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            CrowKnight_Rapier_607000_Act26(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            CrowKnight_Rapier_607000_Act25(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            CrowKnight_Rapier_607000_Act20(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function CrowKnight_Rapier_607000_Approach_Act(arg0, arg1, arg2)
    local local0 = arg2 + 1.5
    if 8 <= arg0:GetDist(TARGET_ENE_0) and arg0:IsFinishTimer(0) then
        arg0:SetTimer(0, 5)
        local0 = 999
    end
    Approach_Act_Flex(arg0, arg1, arg2, 0, local0, 100, 0, 2, 5.5)
    return 
end

return 
