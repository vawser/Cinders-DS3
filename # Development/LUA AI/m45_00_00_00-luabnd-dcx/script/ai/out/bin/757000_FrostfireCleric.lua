RegisterTableGoal(GOAL_FrostfireCleric_757000_Battle, "GOAL_FrostfireCleric_757000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrostfireCleric_757000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetHpRate(TARGET_SELF)
    local f2_local7 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 10812) and not arg1:HasSpecialEffectId(TARGET_SELF, 12204) then -- Changed 10512 to 10812
        if arg1:HasSpecialEffectId(TARGET_SELF, 12201) then
            f2_local0[7] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12202) then
            f2_local0[10] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12203) then
            f2_local0[11] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 <= 5 then
        f2_local0[8] = 70
        f2_local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 <= 4 then
        f2_local0[9] = 70
        f2_local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 5 < f2_local3 then
        f2_local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 4 < f2_local3 then
        f2_local0[20] = 100
    elseif 6 <= f2_local3 then
        f2_local0[1] = 45
        f2_local0[2] = 45
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[21] = 10
    elseif 3 <= f2_local3 then
        f2_local0[1] = 15
        f2_local0[2] = 15
        f2_local0[3] = 0
        f2_local0[4] = 35
        f2_local0[5] = 35
        f2_local0[6] = 0
        f2_local0[21] = 0
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 35
        f2_local0[4] = 15
        f2_local0[5] = 15
        f2_local0[6] = 35
        f2_local0[21] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[6], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act11)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, FrostfireCleric757000_Act21)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, REGIST_FUNC(arg1, arg2, FrostfireCleric757000_ActAfter_AdjustSpace), f2_local2)
    return 
end

function FrostfireCleric757000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 4)
    local f6_local0 = 3005
    local f6_local1 = 3006
    local f6_local2 = 3008
    local f6_local3 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = arg0:GetRandam_Int(1, 100)
    if f6_local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f6_local4, f6_local5, 0, 0)
    elseif f6_local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local0, TARGET_ENE_0, f6_local3, f6_local4, f6_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local1, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local0, TARGET_ENE_0, f6_local3, f6_local4, f6_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f6_local2, TARGET_ENE_0, DistToAtt5, f6_local4, f6_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f6_local1, TARGET_ENE_0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, f6_local4, f6_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local2, TARGET_ENE_0, 6, 0)
    end
    return 
end

function FrostfireCleric757000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 4)
    local f7_local0 = 3009
    local f7_local1 = 0
    local f7_local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f7_local1, f7_local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local0, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, f7_local1, f7_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 6, 0)
    end
    return 
end

function FrostfireCleric757000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act07(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireCleric757000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireCleric757000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DemonBishop_307000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_DemonBishop_307000_AfterAttackAct, "GOAL_DemonBishop_307000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemonBishop_307000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetDist(TARGET_ENE_0)
    local f20_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 15)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 360)
    if 5 <= f20_local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 100)
    elseif 2 <= f20_local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 1.5)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
