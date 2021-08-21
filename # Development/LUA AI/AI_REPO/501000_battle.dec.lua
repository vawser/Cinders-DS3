RegisterTableGoal(GOAL_StormyKing501000_Battle, "StormyKing501000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormyKing501000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 9)
    arg1:SetStringIndexedNumber("Dist_BackStep", 9)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:SetNumber(0, 0)
    arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 4.7 - arg1:GetMapHitRadius(TARGET_SELF))
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:GetHpRate(TARGET_SELF) <= 0.6 and arg1:GetNumber(1) == 0 then
        local0[47] = 100
    elseif 0.6 <= arg1:GetHpRate(TARGET_SELF) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 4 then
            local0[12] = 40
            local0[19] = 40
            local0[30] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 7 then
            local0[3] = 20
            local0[17] = 10
            local0[30] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 7 then
            local0[1] = 20
            local0[18] = 10
            local0[30] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 7 < local3 then
            local0[13] = 25
            local0[14] = 25
            local0[30] = 40
            local0[17] = 10
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 7 < local3 then
            local0[13] = 25
            local0[14] = 25
            local0[30] = 40
            local0[18] = 10
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[30] = 100
        elseif 20 <= local3 then
            local0[1] = 0
            local0[2] = 45
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[10] = 30
            local0[11] = 10
            local0[12] = 0
            local0[13] = 10
            local0[14] = 5
            local0[15] = 30
            local0[16] = 0
        elseif 15 <= local3 then
            local0[1] = 0
            local0[2] = 15
            local0[3] = 0
            local0[4] = 0
            local0[5] = 5
            local0[6] = 0
            local0[10] = 15
            local0[11] = 15
            local0[13] = 40
            local0[14] = 10
            local0[15] = 15
            local0[16] = 0
        elseif 10 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 20
            local0[6] = 0
            local0[10] = 0
            local0[11] = 25
            local0[13] = 20
            local0[14] = 35
            local0[15] = 0
            local0[16] = 0
        elseif 5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 20
            local0[6] = 25
            local0[10] = 0
            local0[11] = 15
            local0[13] = 15
            local0[14] = 10
            local0[15] = 15
            local0[16] = 5
        elseif 3 <= local3 then
            local0[1] = 15
            local0[2] = 0
            local0[3] = 15
            local0[4] = 15
            local0[5] = 10
            local0[6] = 10
            local0[10] = 0
            local0[11] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 15
            local0[16] = 15
        else
            local0[1] = 15
            local0[2] = 0
            local0[3] = 15
            local0[4] = 15
            local0[5] = 10
            local0[6] = 10
            local0[10] = 0
            local0[11] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 0
            local0[16] = 15
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 4 then
        local0[12] = 30
        local0[19] = 30
        local0[30] = 10
        local0[41] = 20
        local0[43] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 7 then
        local0[3] = 10
        local0[30] = 20
        local0[17] = 10
        local0[41] = 20
        local0[43] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 7 then
        local0[1] = 10
        local0[18] = 10
        local0[30] = 20
        local0[41] = 20
        local0[43] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 7 < local3 then
        local0[13] = 20
        local0[14] = 20
        local0[30] = 30
        local0[17] = 10
        local0[41] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 7 < local3 then
        local0[13] = 20
        local0[14] = 20
        local0[30] = 30
        local0[18] = 10
        local0[41] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[30] = 80
        local0[41] = 20
    elseif 20 <= local3 then
        local0[1] = 0
        local0[2] = 35
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[10] = 20
        local0[12] = 0
        local0[13] = 10
        local0[14] = 5
        local0[15] = 10
        local0[16] = 0
        local0[40] = 0
        local0[41] = 20
        local0[42] = 0
        local0[43] = 0
        local0[44] = 0
        local0[45] = 0
        local0[46] = 10
    elseif 15 <= local3 then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 5
        local0[6] = 0
        local0[10] = 10
        local0[13] = 30
        local0[14] = 0
        local0[15] = 5
        local0[16] = 0
        local0[40] = 0
        local0[41] = 20
        local0[42] = 0
        local0[43] = 0
        local0[44] = 0
        local0[45] = 0
        local0[46] = 25
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 5
        local0[6] = 0
        local0[10] = 0
        local0[13] = 20
        local0[14] = 25
        local0[15] = 0
        local0[16] = 0
        local0[40] = 0
        local0[41] = 20
        local0[42] = 0
        local0[43] = 0
        local0[44] = 0
        local0[45] = 5
        local0[46] = 25
    elseif 5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 10
        local0[6] = 10
        local0[10] = 0
        local0[13] = 10
        local0[14] = 5
        local0[15] = 0
        local0[16] = 5
        local0[40] = 0
        local0[41] = 20
        local0[42] = 10
        local0[43] = 0
        local0[44] = 5
        local0[45] = 15
        local0[46] = 25
    elseif 3 <= local3 then
        local0[1] = 5
        local0[2] = 0
        local0[3] = 0
        local0[4] = 5
        local0[5] = 5
        local0[6] = 5
        local0[10] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 20
        local0[16] = 0
        local0[40] = 10
        local0[41] = 20
        local0[42] = 0
        local0[43] = 0
        local0[44] = 15
        local0[45] = 15
        local0[46] = 0
    else
        local0[1] = 5
        local0[2] = 0
        local0[3] = 0
        local0[4] = 5
        local0[5] = 5
        local0[6] = 5
        local0[10] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 0
        local0[40] = 15
        local0[41] = 20
        local0[42] = 0
        local0[43] = 0
        local0[44] = 15
        local0[45] = 15
        local0[46] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3003, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3000, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3016, 20, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3027, 15, local0[6], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3002, 15, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3006, 30, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3011, 5, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3018, 20, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3019, 30, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3022, 15, local0[15], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3009, 15, local0[16], 1)
    local0[20] = SetCoolTime(arg1, arg2, 3020, 15, local0[20], 1)
    local0[21] = SetCoolTime(arg1, arg2, 3021, 15, local0[21], 1)
    local0[22] = SetCoolTime(arg1, arg2, 3001, 15, local0[22], 1)
    local0[23] = SetCoolTime(arg1, arg2, 3017, 15, local0[23], 1)
    local0[33] = SetCoolTime(arg1, arg2, 6000, 25, local0[33], 1)
    local0[34] = SetCoolTime(arg1, arg2, 6001, 25, local0[34], 1)
    local0[35] = SetCoolTime(arg1, arg2, 6003, 25, local0[35], 1)
    local0[36] = SetCoolTime(arg1, arg2, 6002, 25, local0[36], 1)
    local0[40] = SetCoolTime(arg1, arg2, 3019, 25, local0[40], 1)
    local0[41] = SetCoolTime(arg1, arg2, 3027, 40, local0[41], 1)
    local0[42] = SetCoolTime(arg1, arg2, 3028, 25, local0[42], 1)
    local0[43] = SetCoolTime(arg1, arg2, 3015, 25, local0[43], 1)
    local0[44] = SetCoolTime(arg1, arg2, 3003, 25, local0[44], 1)
    local0[45] = SetCoolTime(arg1, arg2, 3016, 25, local0[45], 1)
    local0[46] = SetCoolTime(arg1, arg2, 3029, 25, local0[46], 1)
    local0[47] = SetCoolTime(arg1, arg2, 3027, 25, local0[47], 1)
    local0[47] = SetCoolTime(arg1, arg2, 3028, 25, local0[47], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act27)
    local1[30] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act30)
    local1[32] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act32)
    local1[33] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act33)
    local1[34] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act34)
    local1[35] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act35)
    local1[36] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act36)
    local1[37] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act37)
    local1[40] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, StormyKing501000_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, StormyKing501000_ActAfter_AdjustSpace), local2)
    return 
end

function StormyKing501000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.9 - arg0:GetMapHitRadius(TARGET_SELF), 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3003
    local local1 = 3012
    local local2 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 12.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act02(arg0, arg1, arg2)
    local local0 = 3000
    local local1 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 71.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3004
    local local1 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.9 - arg0:GetMapHitRadius(TARGET_SELF), 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3008
    local local1 = 3014
    local local2 = 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if local6 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.1 - arg0:GetMapHitRadius(TARGET_SELF), 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3016
    local local1 = 3017
    local local2 = 14.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9 - arg0:GetMapHitRadius(TARGET_SELF), 9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 9 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3023
    local local1 = 3017
    local local2 = 14.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 110.6 - arg0:GetMapHitRadius(TARGET_SELF), 110.6 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 110.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 16.2 - arg0:GetMapHitRadius(TARGET_SELF), 16.2 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 16.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.8 - arg0:GetMapHitRadius(TARGET_SELF), 13.8 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 13.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12 - arg0:GetMapHitRadius(TARGET_SELF), 12 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 12 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act15(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 22.6 - arg0:GetMapHitRadius(TARGET_SELF), 22.6 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 22.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act16(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act20(arg0, arg1, arg2)
    arg0:SetNumber(0, arg0:GetNumber(0) + 1)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act21(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act22(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act23(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act24(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act25(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act26(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act27(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormyKing501000_Act31(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function StormyKing501000_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function StormyKing501000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepFront, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormyKing501000_Act34(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormyKing501000_Act35(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormyKing501000_Act36(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormyKing501000_Act37(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormyKing501000_Act38(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act40(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.4 - arg0:GetMapHitRadius(TARGET_SELF), 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3019, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act42(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10 - arg0:GetMapHitRadius(TARGET_SELF), 10 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3028, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act44(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.9 - arg0:GetMapHitRadius(TARGET_SELF), 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3003
    local local1 = 3012
    local local2 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act45(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.1 - arg0:GetMapHitRadius(TARGET_SELF), 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act46(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 22.6 - arg0:GetMapHitRadius(TARGET_SELF), 22.6 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 22.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3029, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormyKing501000_Act47(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10 - arg0:GetMapHitRadius(TARGET_SELF), 10 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, local0, local1, 0, 0)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1, 0, 0)
    local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    return 
end

function StormyKing501000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_StormyKing501000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:IsStartAttack() == false and 4.5 <= local0 then
        arg2:ClearSubGoal()
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_StormyKing501000_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false and arg1:GetNumber(0) <= 2 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 9.5 and local1 <= 50 then
                arg2:ClearSubGoal()
                StormyKing501000_Act20(arg1, arg2, paramTbl)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 11 then
                if local1 <= 50 then
                    arg2:ClearSubGoal()
                    StormyKing501000_Act21(arg1, arg2, paramTbl)
                else
                    arg2:ClearSubGoal()
                    StormyKing501000_Act22(arg1, arg2, paramTbl)
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 14.5 then
                arg2:ClearSubGoal()
                StormyKing501000_Act23(arg1, arg2, paramTbl)
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 110.5 then
                arg2:ClearSubGoal()
                StormyKing501000_Act24(arg1, arg2, paramTbl)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 15 <= local0 then
                arg2:ClearSubGoal()
                StormyKing501000_Act25(arg1, arg2, paramTbl)
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local0 <= 5.5 then
                arg2:ClearSubGoal()
                StormyKing501000_Act26(arg1, arg2, paramTbl)
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local0 <= 5.3 then
                arg2:ClearSubGoal()
                StormyKing501000_Act27(arg1, arg2, paramTbl)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 11 <= local0 then
                arg2:ClearSubGoal()
                StormyKing501000_Act23(arg1, arg2, paramTbl)
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 14.5 <= local0 then
                arg2:ClearSubGoal()
                StormyKing501000_Act24(arg1, arg2, paramTbl)
            end
        end
    end
    return 
end

RegisterTableGoal(GOAL_StormyKing501000_AfterAttackAct, "StormyKing501000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormyKing501000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    if 15 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
