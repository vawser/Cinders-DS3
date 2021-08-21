RegisterTableGoal(GOAL_Golem_302000_Battle, "Golem_302000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Golem_302000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[10] = 40
        local0[11] = 40
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11060) == true then
        local0[9] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        if InsideRange(arg1, arg2, 120, 120, -1, 3.6 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[7] = 10
            local0[20] = 1
        elseif InsideRange(arg1, arg2, 135, 90, 5, 10.1 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[3] = 10
            local0[20] = 1
        else
            local0[20] = 10
        end
    elseif 5.5 <= local3 then
        local0[1] = 10
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
    elseif 2.8 <= local3 then
        local0[1] = 10
        local0[2] = 5
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 10
    else
        local0[2] = 5
        local0[4] = 0
        local0[5] = 0
        local0[6] = 5
        local0[8] = 10
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local0[4] = local0[4] + 10
    else
        local0[5] = local0[5] + 10
    end
    if arg1:IsFinishTimer(0) == false then
        local0[2] = local0[2] - 50
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 30, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 15, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 15, local0[8], 1)
    if arg1:GetNpcThinkParamID() == 302020 then
        local0[8] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act20)
    local1[30] = REGIST_FUNC(arg1, arg2, Golem_302000_Battle_Act30)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Golem_302000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function Golem_302000_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11.1 - arg0:GetMapHitRadius(TARGET_SELF), 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 1.5, 60, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 6.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 6.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 5, 5)
    local local0 = 6.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.1 - arg0:GetMapHitRadius(TARGET_SELF), 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 0, 5, 5)
    local local0 = 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 0, 5, 5)
    local local0 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 1.5
    local local2 = 60
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    local4:SetTargetRange(0, -99, 5.1 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 0, 5, 5)
    local local0 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.6 - arg0:GetMapHitRadius(TARGET_SELF), 7.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.6 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 0, 5, 5)
    local local0 = 3007
    local local1 = 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act07(arg0, arg1, arg2)
    local local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, SuccessDist, 0, 0)
    local2:SetTargetRange(0, -99, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act08(arg0, arg1, arg2)
    local local0 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 0, 5, 5)
    local local0 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function Golem_302000_Battle_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Golem_302000_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Golem_302000_Battle_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 1.5, 20, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, SuccessDist, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Golem_302000_Battle_AfterAttackAct, 3)
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
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local1 = arg1:GetDist(TARGET_ENE_0)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(arg1, arg2, 0, 75, 2.1 - arg1:GetMapHitRadius(TARGET_SELF), 8.6 - arg1:GetMapHitRadius(TARGET_SELF) + 1) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(arg1, arg2, 15, 90, 2.1 - arg1:GetMapHitRadius(TARGET_SELF), 5.1 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(arg1, arg2, 120, 120, 1.1 - arg1:GetMapHitRadius(TARGET_SELF) - 1, 3.6 - arg1:GetMapHitRadius(TARGET_SELF) + 1) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(arg1, arg2, -90, 120, 1.1 - arg1:GetMapHitRadius(TARGET_SELF) - 1, 3.6 - arg1:GetMapHitRadius(TARGET_SELF) + 1) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) and arg1:IsFinishTimer(0) == true and InsideRange(arg1, arg2, 0, 90, 2.1 - arg1:GetMapHitRadius(TARGET_SELF), 6.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1) then
        arg1:SetTimer(0, 10)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, SuccessDist, 0, 0)
        return true
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) and arg1:IsInterupt(INTERUPT_Damaged) and InsideRange(arg1, arg2, 150, 240, -99, 3.6 - arg1:GetMapHitRadius(TARGET_SELF)) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_Golem_302000_Battle_AfterAttackAct, "Golem_302000_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Golem_302000_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
