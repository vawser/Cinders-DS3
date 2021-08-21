RegisterTableGoal(GOAL_PursuitHeroine527000_HU_Battle, "PursuitHeroineHUBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PursuitHeroine527000_HU_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:StartAttackPassedTimer(3002, 0)
    arg1:StartAttackPassedTimer(3016, 0)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[13] = 100
    else
        if InsideRange(arg1, arg2, 180, 180, 8, 999) then
            local0[2] = 0
            local0[6] = 0
            local0[7] = 5
            local0[8] = 5
            local0[9] = 10
            local0[10] = 10
            local0[13] = 10
            local0[30] = 5
        elseif InsideRange(arg1, arg2, 180, 150, -10, 8) then
            local0[2] = 20
            local0[6] = 10
            local0[9] = 5
            local0[12] = 10
            local0[13] = 0
            local0[15] = 0
            local0[16] = 0
            local0[17] = 0
            local0[30] = 0
        elseif 8 <= local3 then
            local0[1] = 10
            local0[2] = 0
            local0[4] = 0
            local0[5] = 0
            local0[7] = 5
            local0[8] = 5
            local0[9] = 0
            local0[10] = 0
            local0[13] = 10
            local0[14] = 10
            local0[30] = 5
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 0
            local0[8] = 0
            local0[9] = 5
            local0[10] = 0
            local0[11] = 10
            local0[12] = 10
            local0[13] = 0
            local0[14] = 0
            local0[15] = 0
            local0[16] = 0
            local0[30] = 0
        end
        if 4.5 < local3 then
            local0[7] = local0[7] + 10
            local0[8] = local0[8] + 10
            local0[9] = local0[9] + 10
        end
        if InsideRange(arg1, arg2, 300, 60, 6.3 - arg1:GetMapHitRadius(TARGET_SELF), 10.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[10] = local0[10] + 15
        end
        if local3 < 3 then
            local0[3] = local0[3] + 15
        end
        if InsideRange(arg1, arg2, 90, 180, 0, 3) then
            local0[15] = local0[15] + 30
        end
        if InsideRange(arg1, arg2, 270, 180, 0, 3) then
            local0[16] = local0[16] + 30
        end
        if InsideRange(arg1, arg2, 210, 120, 0, 4) then
            local0[17] = local0[17] + 15
        end
        if InsideRange(arg1, arg2, 0, 90, -10, 2) then
            local0[11] = local0[11] + 20
        end
    end
    local0[30] = local0[30] + 1
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 10, local0[5], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 15, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3013, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3014, 15, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3015, 15, local0[10], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3017, 15, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3018, 15, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3021, 15, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3022, 10, local0[15], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3023, 10, local0[16], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3025, 10, local0[17], 1)
    local0[30] = SetCoolTime(arg1, arg2, 2000, 10, local0[30], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 25, local0[3], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 20, local0[6], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3016, 25, local0[11], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act18)
    local1[30] = REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_Act30)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, PursuitHeroine_HU_ActAfter_AdjustSpace), local2)
    return 
end

function PursuitHeroine_HU_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act07(arg0, arg1, arg2)
    local local0 = 3008
    local local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 90
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, local1, 0, 0)
        local4:SetTargetRange(0, -99, 8)
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act08(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act09(arg0, arg1, arg2)
    local local0 = 3014
    local local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 180
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, local1, 0, 0)
        local4:SetTargetRange(0, -99, 8)
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act11(arg0, arg1, arg2)
    if arg0:IsFinishTimer(0) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    else
        arg0:Replaning()
    end
    arg0:SetTimer(0, 24)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act13(arg0, arg1, arg2)
    local local0 = DIST_None
    local local1 = 3019
    local local2 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_ENE_0, local0, 0, 360)
    if InsideRange(arg0, arg1, 180, 180, -10, 999) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
    end
    if 15 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
    elseif 10 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
    elseif 6 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 360, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act18(arg0, arg1, arg2)
    local local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    if InsideRange(arg0, arg1, 240, 120, 0, 2.5) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local0, 0, 0)
    elseif InsideRange(arg0, arg1, 0, 105, 2, 5.8) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local0, 0, 0)
    elseif InsideRange(arg0, arg1, 120, 120, 0, 2.8) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local0, 0, 0)
    else
        arg0:Replaning()
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 4, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), arg0:GetRandam_Float(5, 7))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PursuitHeroine_HU_ActAfter_AdjustSpace(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if (arg0:GetHpRate(TARGET_SELF) > 0.3 or not InsideRange(arg0, arg1, 0, 360, -10, 3) and local0 > 80) and (arg0:GetHpRate(TARGET_SELF) > 0.6 or not InsideRange(arg0, arg1, 0, 360, -10, 3) and local0 > 20) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 7, TARGET_ENE_0, true, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), arg0:GetRandam_Float(5, 7))
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
    local local0 = arg1:GetDist(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5025) and arg1:GetRandam_Int(1, 100) <= 30 and arg1:IsInterupt(INTERUPT_Damaged) then
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, SuccessDist, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local1 = arg1:GetDist(TARGET_ENE_0)
        local local2 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(arg1, arg2, 0, 270, -1, 6.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            PursuitHeroine_HU_Act18(arg1, arg2, paramTbl)
            return true
        end
    end
    return false
end

return 
