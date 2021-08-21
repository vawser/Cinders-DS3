RegisterTableGoal(GOAL_FallenProtector_FinalForm_818200_Battle, "GOAL_FallenProtector_FinalForm_818200_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FallenProtector_FinalForm_818200_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 < 3.5 then
        local0[8] = 70
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and 3.5 <= local3 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 < 2 then
        local0[13] = 70
        local0[20] = 20
        local0[24] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 < 2 then
        local0[13] = 70
        local0[20] = 20
        local0[23] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 4.5 <= local3 then
        local0[20] = 90
        local0[24] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 4.5 <= local3 then
        local0[20] = 90
        local0[23] = 10
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 0
        local0[10] = 50
        local0[11] = 50
        local0[12] = 0
        local0[14] = 0
    elseif 7 <= local3 then
        local0[1] = 0
        local0[2] = 25
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 25
        local0[7] = 25
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 25
        local0[14] = 0
    elseif 5 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 10
        local0[4] = 30
        local0[5] = 10
        local0[6] = 0
        local0[7] = 0
        local0[9] = 10
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[14] = 10
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 20
        local0[4] = 0
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[9] = 20
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[14] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3010, 15, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3011, 15, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3015, 15, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3020, 15, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3023, 15, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3024, 15, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3025, 15, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3030, 15, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3031, 15, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3032, 15, local0[15], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, FallenProtector_FinalForm_525200_ActAfter_AdjustSpace), local2)
    return 
end

function FallenProtector_FinalForm_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6 - arg0:GetMapHitRadius(TARGET_SELF), 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF), 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.5 - arg0:GetMapHitRadius(TARGET_SELF), 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF), 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 99 - arg0:GetMapHitRadius(TARGET_SELF), 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 23.5 - arg0:GetMapHitRadius(TARGET_SELF), 23.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 23.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.5 - arg0:GetMapHitRadius(TARGET_SELF), 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act15(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 99 - arg0:GetMapHitRadius(TARGET_SELF), 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act16(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.1 - arg0:GetMapHitRadius(TARGET_SELF), 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3035
    local local1 = 3037
    local local2 = 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act17(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act18(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3037
    local local1 = 3038
    local local2 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, DistToAtt3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, Attack3, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act19(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.7 - arg0:GetMapHitRadius(TARGET_SELF), 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3038
    local local1 = 3037
    local local2 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if local7 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local5, local6, 0, 0)
    elseif local7 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, DistToAtt1, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepFront, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FallenProtector_FinalForm_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local0 = arg1:GetDist(TARGET_ENE_0)
        local local1 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 7 and local1 <= 50 then
                arg2:ClearSubGoal()
                FallenProtector_FinalForm_Act16(arg1, arg2, paramTbl)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 110) and local0 <= 4 and local1 <= 50 then
                arg2:ClearSubGoal()
                FallenProtector_FinalForm_Act17(arg1, arg2, paramTbl)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 7 and local1 <= 50 then
                arg2:ClearSubGoal()
                FallenProtector_FinalForm_Act18(arg1, arg2, paramTbl)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 4 and local1 <= 50 then
            arg2:ClearSubGoal()
            FallenProtector_FinalForm_Act19(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
