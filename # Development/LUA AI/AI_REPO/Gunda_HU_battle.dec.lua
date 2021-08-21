RegisterTableGoal(GOAL_Gunda_511000_HU_Battle, "GundaHUBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_HU_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3.8)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if 5 <= local3 then
            local0[20] = 10
        else
            local0[6] = 30
            local0[20] = 70
        end
    elseif InsideRange(arg1, arg2, 130, 30, -1, 6 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[6] = 10
        local0[11] = 30
        local0[20] = 30
    elseif InsideRange(arg1, arg2, -130, 30, -1, 6 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[6] = 10
        local0[10] = 20
        local0[20] = 30
    elseif 18 <= local3 then
        local0[3] = 10
    elseif 15 <= local3 then
        local0[3] = 10
        local0[9] = 30
    elseif 10 <= local3 then
        local0[1] = 10
        local0[3] = 10
        local0[9] = 10
    elseif 8 <= local3 then
        local0[1] = 30
        local0[9] = 20
        local0[8] = 10
    elseif 5 <= local3 then
        local0[1] = 30
        local0[9] = 20
        local0[5] = 20
        local0[8] = 10
        local0[11] = 20
    elseif 1.5 <= local3 then
        local0[5] = 20
        local0[6] = 10
        local0[8] = 10
        local0[10] = 30
        local0[11] = 20
    else
        local0[6] = 30
        local0[10] = 20
        local0[11] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3009, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3010, 10, local0[6], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3012, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3013, 8, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3014, 8, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3015, 8, local0[11], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act01)
    local1[3] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act03)
    local1[5] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act06)
    local1[8] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act20)
    local1[40] = REGIST_FUNC(arg1, arg2, GundaHUBattle_Act40)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GundaHUBattle_ActAfter_AdjustSpace), local2)
    return 
end

function GundaHUBattle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.5 - arg0:GetMapHitRadius(TARGET_SELF), 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2, 4)
    local local0 = 3006
    local local1 = 16.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function GundaHUBattle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 25.5 - arg0:GetMapHitRadius(TARGET_SELF), 25.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 25.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2, 4)
    local local0 = 3005
    local local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 16.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaHUBattle_Act04(arg0, arg1, arg2)
    local local0 = 3008
    local local1 = 3004
    local local2 = 14.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function GundaHUBattle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaHUBattle_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function GundaHUBattle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, nil)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaHUBattle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15.5 - arg0:GetMapHitRadius(TARGET_SELF), 15.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 15.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2, 4)
    local local0 = 3013
    local local1 = 3003
    local local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 14.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function GundaHUBattle_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 14.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function GundaHUBattle_Act11(arg0, arg1, arg2)
    local local0 = 3006
    local local1 = 16.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function GundaHUBattle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 90))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaHUBattle_Act40(arg0, arg1, arg2)
    local local0 = 3001
    local local1 = 3008
    local local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaHUBattle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Gunda_511000_HU_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local0 = arg1:GetDist(TARGET_ENE_0)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    return 
end

RegisterTableGoal(GOAL_Gunda_511000_HU_AfterAttackAct, "GOAL_Gunda_511000_HU_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_HU_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        local local0 = arg1:GetDist(TARGET_ENE_0)
        local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
        arg1:SetStringIndexedNumber("DistMin_AAA", 0)
        arg1:SetStringIndexedNumber("DistMax_AAA", 25)
        arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
        arg1:SetStringIndexedNumber("Angle_AAA", 180)
        arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 0)
        arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 35)
        arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
        arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
        if 10 <= local0 then
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        elseif 5 <= local0 then
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        elseif 2 <= local0 then
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        else
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        end
        arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
