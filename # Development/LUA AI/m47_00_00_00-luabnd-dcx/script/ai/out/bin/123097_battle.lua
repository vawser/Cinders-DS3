RegisterTableGoal(GOAL_Valignano_123097_Battle, "GOAL_Valignano_123097_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Valignano_123097_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and 3 <= local3 and local3 <= 10 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 3 then
        local0[1] = 40
        local0[4] = 20
        local0[20] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 2 then
        local0[2] = 20
        local0[10] = 60
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 2 then
        local0[4] = 80
        local0[20] = 20
    else
        if 8 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[11] = 80
            local0[12] = 20
        elseif 6 <= local3 then
            local0[1] = 10
            local0[2] = 15
            local0[3] = 5
            local0[4] = 15
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 30
            local0[10] = 5
            local0[12] = 20
        elseif 3 <= local3 then
            local0[1] = 20
            local0[2] = 25
            local0[3] = 10
            local0[4] = 15
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 10
            local0[9] = 0
            local0[10] = 20
        else
            local0[1] = 10
            local0[2] = 10
            local0[3] = 30
            local0[4] = 5
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 5
            local0[9] = 0
            local0[10] = 30
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[1] = 1 * local0[1]
            local0[2] = 1 * local0[2]
            local0[3] = 0 * local0[3]
            local0[4] = 1 * local0[4]
            local0[5] = 0 * local0[5]
            local0[6] = 0 * local0[6]
            local0[7] = 0 * local0[7]
            local0[8] = 2 * local0[8]
            local0[9] = 1 * local0[9]
            local0[10] = 0 * local0[10]
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[1] = 1 * local0[1]
            local0[2] = 1 * local0[2]
            local0[3] = 1 * local0[3]
            local0[4] = 1 * local0[4]
            local0[5] = 0 * local0[5]
            local0[6] = 0 * local0[6]
            local0[7] = 0 * local0[7]
            local0[8] = 1 * local0[8]
            local0[9] = 1 * local0[9]
            local0[10] = 1 * local0[10]
        end
        if arg1:IsVisibleCurrTarget() == false then
            local0[1] = 1 * local0[1]
            local0[2] = 1 * local0[2]
            local0[3] = 1 * local0[3]
            local0[4] = 1 * local0[4]
            local0[5] = 0 * local0[5]
            local0[6] = 0 * local0[6]
            local0[7] = 0 * local0[7]
            local0[8] = 1 * local0[8]
            local0[9] = 0 * local0[9]
            local0[10] = 1 * local0[10]
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], local0[1] * 0.1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 5, local0[2], local0[2] * 0.1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 15, local0[3], local0[3] * 0.1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 15, local0[4], local0[4] * 0.1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 5.9, local0[5], local0[5] * 0.1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 45, local0[6], local0[6] * 0.1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 25, local0[7], local0[7] * 0.1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 30, local0[8], local0[8] * 0.1)
    local0[9] = SetCoolTime(arg1, arg2, 3010, 5, local0[9], local0[9] * 0.1)
    local0[10] = SetCoolTime(arg1, arg2, 3011, 10, local0[10], local0[10] * 0.1)
    local0[5] = 0
    local0[6] = 0
    local0[7] = 0
    local1[1] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, Valignano_123097_Battle_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Valignano_ActAfter_AdjustSpace), local2)
    return 
end

function Valignano_123097_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 0, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6 - arg0:GetMapHitRadius(TARGET_SELF), 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 0, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9 - arg0:GetMapHitRadius(TARGET_SELF), 9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 9 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3009, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 25 - arg0:GetMapHitRadius(TARGET_SELF), 25 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 25 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 50 - arg0:GetMapHitRadius(TARGET_SELF), 50 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Valignano_123097_Battle_Act12(arg0, arg1, arg2)
    if InsideDir(arg0, arg1, 0, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 0)
    elseif InsideDir(arg0, arg1, 90, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 0)
    elseif InsideDir(arg0, arg1, -90, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
    end
    return 0
end

function Valignano_123097_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
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
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and 20 < arg1:GetDist(TARGET_ENE_0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    end
    return false
end

function Valignano_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Valignano_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_Valignano_AfterAttackAct, "GOAL_Valignano_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Valignano_AfterAttackAct, true)
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
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
