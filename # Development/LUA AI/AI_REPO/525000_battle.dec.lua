RegisterTableGoal(GOAL_DarknessBigBrother_525000_Battle, "DarknessBigBrotherBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessBigBrother_525000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 2)
    arg1:SetNumber(2, 0)
    arg1:SetNumber(3, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) and local3 <= 999 then
            local0[13] = 80
            local0[20] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local3 <= 999 then
            local0[12] = 80
            local0[20] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local3 <= 999 then
            local0[11] = 80
            local0[20] = 20
        else
            local0[20] = 100
        end
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 10
        local0[6] = 20
        local0[7] = 30
        local0[8] = 5
        local0[9] = 5
        local0[10] = 0
        local0[14] = 0
        local0[15] = 20
        local0[16] = 20
        local0[21] = 0
    elseif 5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 10
        local0[4] = 10
        local0[5] = 20
        local0[6] = 20
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[14] = 0
        local0[15] = 10
        local0[16] = 20
        local0[21] = 20
    else
        local0[1] = 25
        local0[2] = 25
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 10
        local0[9] = 10
        local0[10] = 20
        local0[14] = 10
        local0[15] = 0
        local0[16] = 0
        local0[21] = 0
    end
    if arg1:GetNpcThinkParamID() == 525000 then
        if arg1:GetNumber(2) == 0 then
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 100
            local0[10] = 0
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 0
            local0[16] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
        end
        local0[14] = 0
        local0[15] = 0
        local0[16] = 0
    end
    if arg1:GetNpcThinkParamID() == 525001 then
        if arg1:GetNumber(3) == 0 then
            arg1:SetNumber(3, 1)
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
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 100
            local0[16] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
        end
        if arg1:GetHpRate(TARGET_SELF) <= 0.01 then
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
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 0
            local0[16] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 100
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 9, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3011, 9, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 18, local0[3], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3032, 18, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 9, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 9, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3013, 18, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3035, 9, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3018, 20, local0[8], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3033, 20, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3003, 20, local0[9], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3004, 20, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3022, 30, local0[10], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3036, 30, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3008, 9, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3009, 9, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3019, 9, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3015, 20, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3023, 20, local0[15], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3034, 9, local0[16], 1)
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412860) == true then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 20
        local0[4] = 20
        local0[5] = 20
        local0[6] = 20
        local0[7] = 20
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
    end
    if arg1:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 0, 3412860) == true then
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
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 100
        local0[15] = 0
        local0[16] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act16)
    local1[20] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, DarknessBigBrother_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DarknessBigBrother_ActAfter_AdjustSpace), local2)
    return 
end

function DarknessBigBrother_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8, 8, 8 + 999, 0, 0, 2, 2)
    local local0 = 3000
    local local1 = 3001
    local local2 = 5.96
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetDist(TARGET_ENE_0)
    if local6 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    elseif local6 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 8.42, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, local3, 0, 0)
    else
        arg0:SetNumber(1, 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 7.11, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, local4, local5, 0, 180)
        arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.25, 6.25, 6.25 + 999, 0, 0, 2, 2)
    local local0 = 3011
    local local1 = 3012
    local local2 = 3027
    local local3 = 3029
    local local4 = 8.42
    local local5 = 999
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetDist(TARGET_ENE_0)
    local local9 = arg0:GetRandam_Int(1, 100)
    if local9 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, 0, 0)
    elseif local9 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local5, 0, 0)
    elseif local9 <= 80 then
        arg0:SetNumber(1, 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 999, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    elseif local9 <= 90 then
        arg0:SetNumber(1, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.73, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    else
        arg0:SetNumber(1, 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.94, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act03(arg0, arg1, arg2)
    if arg0:GetNpcThinkParamID() == 525000 then
        Approach_Act_Flex(arg0, arg1, 8.47, 8.47, 8.47 + 999, 0, 0, 2, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    else
        Approach_Act_Flex(arg0, arg1, 8.47, 8.47, 8.47 + 999, 0, 0, 2, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0, 0, 0)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
end

function DarknessBigBrother_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.28, 5.28, 5.28 + 999, 0, 0, 2, 2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local0:SetTargetAngle(1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.96, 7.96, 7.96 + 999, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11.75, 11.75, 11.75 + 999, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.91, 10.91, 10.91 + 999, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act08(arg0, arg1, arg2)
    arg0:SetNumber(1, 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act09(arg0, arg1, arg2)
    arg0:SetNumber(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act10(arg0, arg1, arg2)
    if arg0:GetNpcThinkParamID() == 525000 then
        arg0:SetNumber(1, 6)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 180)
        arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    else
        arg0:SetNumber(1, 7)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 180)
        arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
end

function DarknessBigBrother_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act14(arg0, arg1, arg2)
    arg0:SetNumber(1, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 180)
    arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90)
    return 0
end

function DarknessBigBrother_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarknessBigBrother_Act24(arg0, arg1, arg2)
    arg0:SetNumber(1, 99)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
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
    local local0 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    else
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetDist(TARGET_ENE_0) <= 4 and local0 <= 80 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local local1 = 0
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0)
            else
                local local1 = 0
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999, 0)
            end
            return true
        else
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412890) == true then
                local local1 = 0
                arg1:SetNumber(1, 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
                return true
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
                    local local2 = 0
                    arg1:SetNumber(1, 2)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
                    return true
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
                        if local0 <= 30 then
                            arg2:ClearSubGoal()
                            DarknessBigBrother_Act08(arg1, arg2, paramTbl)
                        else
                            arg2:ClearSubGoal()
                            DarknessBigBrother_Act09(arg1, arg2, paramTbl)
                        end
                        return true
                    else
                        return false
                    end
                end
            end
        end
    end
end

RegisterTableGoal(GOAL_DarknessBigBrother_WarpAttack1, "DarknessBigBrother_WarpAttack1")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessBigBrother_WarpAttack1, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = 3016
    local local1 = 0
    local local2 = 1
    local local3 = 0
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = 0
    local local8 = 0
    local local9 = 0
    local local10 = 0
    local local11 = 0
    local local12 = 0
    local local13 = 0
    local local14 = 0
    local local15 = 0
    local local16 = 0
    local local17 = 0
    local local18 = 0
    if arg1:GetNumber(1) == 1 then
        local0 = 3028
        local1 = 3018
        local2 = 50
        local3 = 0
        local4 = 0
        local5 = 0
        local6 = 50
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 9.5
        local11 = 0
        local12 = 0
        local13 = 0
        local14 = 8.1
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    elseif arg1:GetNumber(1) == 2 then
        local0 = 3027
        local1 = 0
        local2 = 1
        local3 = 33
        local4 = 33
        local5 = 33
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 6.6
        local11 = 3.6
        local12 = 3.6
        local13 = 3.6
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    elseif arg1:GetNumber(1) == 3 then
        local0 = 3029
        local1 = 0
        local2 = 1
        local3 = 33
        local4 = 33
        local5 = 33
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 6.6
        local11 = 3.6
        local12 = 3.6
        local13 = 3.6
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 1
    elseif arg1:GetNumber(1) == 4 then
        local0 = 3018
        local1 = 3033
        local2 = 10
        local3 = 10
        local4 = 10
        local5 = 10
        local6 = 10
        local7 = 10
        local8 = 10
        local9 = 10
        local10 = 3.6
        local11 = 3.6
        local12 = 3.6
        local13 = 3.6
        local14 = 3.6
        local15 = 3.6
        local16 = 3.6
        local17 = 3.6
        local18 = 1
    elseif arg1:GetNumber(1) == 5 then
        local0 = 3003
        local1 = 3004
        local2 = 10
        local3 = 10
        local4 = 15
        local5 = 15
        local6 = 10
        local7 = 10
        local8 = 15
        local9 = 15
        local10 = 3.6
        local11 = 3.6
        local12 = 3.6
        local13 = 3.6
        local14 = 3.6
        local15 = 3.6
        local16 = 3.6
        local17 = 3.6
        local18 = 1
    elseif arg1:GetNumber(1) == 6 then
        local0 = 3022
        local1 = 0
        local2 = 1
        local3 = 33
        local4 = 33
        local5 = 33
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 15
        local11 = 15
        local12 = 15
        local13 = 15
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    elseif arg1:GetNumber(1) == 7 then
        local0 = 3036
        local1 = 0
        local2 = 85
        local3 = 5
        local4 = 5
        local5 = 5
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 15
        local11 = 15
        local12 = 15
        local13 = 15
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    elseif arg1:GetNumber(1) == 8 then
        local0 = 3017
        local1 = 0
        local2 = 97
        local3 = 1
        local4 = 1
        local5 = 1
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 15
        local11 = 15
        local12 = 15
        local13 = 15
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    else
        local0 = 3016
        local1 = 0
        local2 = 25
        local3 = 25
        local4 = 25
        local5 = 25
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 0
        local11 = 0
        local12 = 0
        local13 = 0
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    end
    local local19 = 999
    local local20 = 0
    local local21 = 0
    local local22 = arg1:GetMapHitRadius(TARGET_SELF)
    local local23 = arg1:GetDist(TARGET_ENE_0)
    local local24 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if local18 ~= 0 then
        if math.abs(local24) <= 45 then
            local2 = 0
            local6 = 0
        elseif 45 < local24 and local24 < 135 then
            local5 = 0
            local9 = 0
        elseif local24 < -45 and -135 < local24 then
            local4 = 0
            local8 = 0
        else
            local3 = 0
            local7 = 0
        end
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, local10 + local22, local22, 0) <= local10 then
        local2 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, local11 + local22, local22, 0) <= local11 then
        local3 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, local12 + local22, local22, 0) <= local12 then
        local4 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, local13 + local22, local22, 0) <= local13 then
        local5 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, local14 + local22, local22, 0) <= local14 then
        local6 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, local15 + local22, local22, 0) <= local15 then
        local7 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, local16 + local22, local22, 0) <= local16 then
        local8 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, local17 + local22, local22, 0) <= local17 then
        local7 = 0
    end
    local local25 = nil
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, local10, 3412835) == true then
        local2 = 0
    end
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, local11, 3412835) == true then
        local3 = 0
    end
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, local12, 3412835) == true then
        local4 = 0
    end
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, local13, 3412835) == true then
        local5 = 0
    end
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, local14, 3412835) == true then
        local6 = 0
    end
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, local15, 3412835) == true then
        local7 = 0
    end
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, local16, 3412835) == true then
        local8 = 0
    end
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, local17, 3412835) == true then
        local7 = 0
    end
    local local26 = 1
    for local27 = 0 - local26, 18, local26 do
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, local10, 3412870 + local27) == true then
            local2 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, local11, 3412870 + local27) == true then
            local3 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, local12, 3412870 + local27) == true then
            local4 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, local13, 3412870 + local27) == true then
            local5 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, local14, 3412870 + local27) == true then
            local6 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, local15, 3412870 + local27) == true then
            local7 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, local16, 3412870 + local27) == true then
            local8 = 0
        elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, local17, 3412870 + local27) == true then
            local9 = 0
        end
    end
    local27 = arg1:GetRandam_Int(0, local2 + local3 + local4 + local5 + local6 + local7 + local8 + local9)
    local local28 = AI_DIR_TYPE_F
    local26 = 0
    local local29 = 3016
    local local30 = TARGET_ENE_0
    if local2 + local3 + local4 + local5 + local6 + local7 + local8 + local9 == 0 then
        local28 = AI_DIR_TYPE_F
        local26 = 0
        local29 = 3016
    elseif local2 ~= 0 and local27 <= local2 then
        local28 = AI_DIR_TYPE_F
        local26 = local10
        local29 = local0
        local30 = TARGET_ENE_0
    elseif local3 ~= 0 and local27 <= local2 + local3 then
        local28 = AI_DIR_TYPE_B
        local26 = local11
        local29 = local0
        local30 = TARGET_ENE_0
    elseif local4 ~= 0 and local27 <= local2 + local3 + local4 then
        local28 = AI_DIR_TYPE_L
        local26 = local12
        local29 = local0
        local30 = TARGET_ENE_0
    elseif local5 ~= 0 and local27 <= local2 + local3 + local4 + local5 then
        local28 = AI_DIR_TYPE_R
        local26 = local13
        local29 = local0
        local30 = TARGET_ENE_0
    elseif local6 ~= 0 and local27 <= local2 + local3 + local4 + local5 + local6 then
        local28 = AI_DIR_TYPE_F
        local26 = local14
        local29 = local1
        local30 = TARGET_ENE_0
    elseif local7 ~= 0 and local27 <= local2 + local3 + local4 + local5 + local6 + local7 then
        local28 = AI_DIR_TYPE_B
        local26 = local15
        local29 = local1
        local30 = TARGET_ENE_0
    elseif local8 ~= 0 and local27 <= local2 + local3 + local4 + local5 + local6 + local7 + local8 then
        local28 = AI_DIR_TYPE_L
        local26 = local16
        local29 = local1
        local30 = TARGET_ENE_0
    else
        local28 = AI_DIR_TYPE_R
        local26 = local17
        local29 = local1
        local30 = TARGET_ENE_0
    end
    arg1:SetNumber(2, 1)
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412890) == false then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, local19, 0, 0)
    elseif arg1:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 0, 3412860) == true then
        arg1:SetEventMoveTarget(3412850)
        arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0, 5, -2)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, local19, 0, 0)
    elseif not not arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412835) or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412860) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, local19, 0, 0)
    else
        arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, local28, local26, local30, 5, -2)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local29, TARGET_ENE_0, local19, 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function DarknessBigBrother_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

return 
