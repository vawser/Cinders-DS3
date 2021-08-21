RegisterTableGoal(GOAL_DemonBishop_307000_Battle, "GOAL_DemonBishop_307000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemonBishop_307000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetHpRate(TARGET_SELF)
    local local7 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 10512) and not arg1:HasSpecialEffectId(TARGET_SELF, 12204) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12201) then
            local0[7] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12202) then
            local0[10] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12203) then
            local0[11] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 5 then
        local0[8] = 70
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 4 then
        local0[9] = 70
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 5 < local3 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 4 < local3 then
        local0[20] = 100
    elseif 6 <= local3 then
        local0[1] = 45
        local0[2] = 45
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[21] = 10
    elseif 3 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 0
        local0[4] = 35
        local0[5] = 35
        local0[6] = 0
        local0[21] = 0
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 35
        local0[4] = 15
        local0[5] = 15
        local0[6] = 35
        local0[21] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3009, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3011, 10, local0[6], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, DemonBishop307000_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DemonBishop307000_ActAfter_AdjustSpace), local2)
    return 
end

function DemonBishop307000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 4)
    local local0 = 3005
    local local1 = 3006
    local local2 = 3008
    local local3 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), local4, local5, 0, 0)
    elseif local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, DistToAtt5, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 6, 0)
    end
    return 
end

function DemonBishop307000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 4)
    local local0 = 3009
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 6, 0)
    end
    return 
end

function DemonBishop307000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act07(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishop307000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DemonBishop307000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DemonBishop307000_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 15)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 360)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 100)
    elseif 2 <= local0 then
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
