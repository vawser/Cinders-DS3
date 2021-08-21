RegisterTableGoal(GOAL_PursuitHeroine527000_Battle, "PursuitHeroineNormalBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PursuitHeroine527000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:StartAttackPassedTimer(3003, 0)
    arg1:StartAttackPassedTimer(3014, 0)
    arg1:StartAttackPassedTimer(3023, 0)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0 + 1)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:GetHpRate(TARGET_SELF) <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0, 180, 0)
        return false
    elseif arg1:GetNumber(0) == 0 then
        local0[30] = 100
    else
        if InsideRange(arg1, arg2, 180, 180, 6, 999) then
            local0[5] = 20
            local0[7] = 20
            local0[12] = 30
            local0[13] = 30
        elseif InsideRange(arg1, arg2, 180, 150, -10, 6) then
            local0[2] = 20
            local0[9] = 0
            local0[12] = 5
            local0[19] = 0
            local0[22] = 0
        elseif 8 <= local3 then
            local0[1] = 10
            local0[4] = 0
            local0[5] = 10
            local0[6] = 0
            local0[7] = 10
            local0[12] = 5
            local0[13] = 5
            local0[14] = 10
            local0[18] = 10
        elseif 4.5 <= local3 then
            local0[5] = 10
            local0[7] = 10
            local0[10] = 5
            local0[12] = 15
            local0[13] = 15
        else
            local0[3] = 10
            local0[4] = 10
            local0[6] = 0
            local0[8] = 5
            local0[9] = 0
            local0[10] = 10
            local0[11] = 10
            local0[15] = 10
            local0[16] = 10
            local0[17] = 20
            local0[19] = 10
        end
        if local3 < 3.5 then
            local0[8] = local0[8] + 10
        end
        if InsideRange(arg1, arg2, 270, 180, -10, 3) then
            local0[9] = local0[9] + 20
        end
        if InsideRange(arg1, arg2, 135, 150, 0, 3) then
            local0[22] = local0[22] + 20
        end
        if InsideRange(arg1, arg2, 270, 120, 0, 2) then
            local0[19] = local0[19] + 20
        end
        if arg1:IsFinishTimer(0) == true then
            local0[17] = local0[17] + 10
        end
        if arg1:GetNumber(1) == 1 then
            arg1:SetNumber(1, 0)
            local0[17] = local0[17] + 10
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 11103) == true then
            local0[17] = local0[17] - 20
        end
        if InsideRange(arg1, arg2, 270, 120, 0, 2) then
            local0[19] = local0[19] + 20
        end
    end
    local0[30] = 5
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3007, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3009, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3010, 10, local0[5], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3013, 10, local0[7], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3015, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3016, 10, local0[3], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3019, 10, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3020, 10, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3021, 10, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3022, 15, local0[14], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3024, 10, local0[16], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3027, 10, local0[17], 1)
    local0[18] = SetCoolTime(arg1, arg2, 3028, 15, local0[18], 1)
    local0[19] = SetCoolTime(arg1, arg2, 3033, 10, local0[19], 1)
    local0[22] = SetCoolTime(arg1, arg2, 3006, 10, local0[22], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 20, local0[2], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3014, 25, local0[8], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3023, 25, local0[15], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act22)
    local1[30] = REGIST_FUNC(arg1, arg2, PursuitHeroine_Act30)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, PursuitHeroine_ActAfter_AdjustSpace), local2)
    return 
end

function PursuitHeroine_Act01(arg0, arg1, arg2)
    local local0 = 2
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 7.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 90, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 60, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 11.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 45, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 11.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3019, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 7.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 90, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 9.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act17(arg0, arg1, arg2)
    arg0:SetTimer(0, 15)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act18(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
    local0 = local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    local0:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3033, TARGET_ENE_0, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 90, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 9.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act20(arg0, arg1, arg2)
    local local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    if InsideRange(arg0, arg1, 30, 150, 0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local0, 0, 0)
    elseif InsideRange(arg0, arg1, 0, 180, 3, 8) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local0, 0, 0)
    else
        arg0:Replaning()
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act21(arg0, arg1, arg2)
    local local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    if InsideRange(arg0, arg1, 255, 105, 0, 4) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local0, 0, 0)
    elseif InsideRange(arg0, arg1, 0, 105, 0, 6) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local0, 0, 0)
    elseif InsideRange(arg0, arg1, 105, 105, 0, 4) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local0, 0, 0)
    else
        arg0:Replaning()
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 360, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), arg0:GetRandam_Float(5, 7))
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PursuitHeroine_ActAfter_AdjustSpace(arg0, arg1, arg2)
    if arg0:GetHpRate(TARGET_SELF) > 0.7 and arg0:GetRandam_Int(1, 100) > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, 7, TARGET_ENE_0, true, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), arg0:GetRandam_Float(5, 7))
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5025) and arg1:GetRandam_Int(1, 100) <= 30 and arg1:IsInterupt(INTERUPT_Damaged) then
        arg1:SetNumber(1, 1)
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local2 = arg1:GetDist(TARGET_ENE_0)
        local local3 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(arg1, arg2, 45, 270, -1, 13.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            PursuitHeroine_Act20(arg1, arg2, paramTbl)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and InsideRange(arg1, arg2, 0, 270, -1, 8.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            PursuitHeroine_Act21(arg1, arg2, paramTbl)
            return true
        end
    end
    return false
end

return 
