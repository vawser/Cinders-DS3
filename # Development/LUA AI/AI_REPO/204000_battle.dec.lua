RegisterTableGoal(GOAL_HungryJack_204000_Battle, "HungryJack_204000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HungryJack_204000_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
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
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if InsideRange(arg1, arg2, 150, 60, 0, 4.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[5] = 10
        elseif InsideRange(arg1, arg2, 270, 60, 0, 3.4 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[4] = 10
        elseif InsideRange(arg1, arg2, 90, 60, 0, 3.4 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[3] = 10
        else
            local0[20] = 10
        end
    elseif 6 <= local3 then
        local0[1] = 0
        local0[2] = 30
        local0[7] = 30
        local0[20] = 1
    elseif 2 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[6] = 30
        local0[7] = 0
        local0[8] = 20
        local0[20] = 1
    else
        local0[1] = 20
        local0[6] = 20
        local0[7] = 20
        local0[8] = 30
        local0[9] = 10
        local0[20] = 1
    end
    local0[2] = SetCoolTime(arg1, arg2, 3003, 8, local0[2], 10)
    local0[7] = SetCoolTime(arg1, arg2, 3010, 8, local0[7], 10)
    local1[1] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HungryJack_204000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function HungryJack_204000_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.8 - arg0:GetMapHitRadius(TARGET_SELF), 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 1.5
    local local5 = 120
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.3 - arg0:GetMapHitRadius(TARGET_SELF), 8.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 8.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 120, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act03(arg0, arg1, arg2)
    local local0 = 3005
    local local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act04(arg0, arg1, arg2)
    local local0 = 3007
    local local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act05(arg0, arg1, arg2)
    local local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 120, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 150, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HungryJack_204000_Battle_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function HungryJack_204000_Battle_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function HungryJack_204000_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    return 
end

function HungryJack_204000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HungryJack_204000_Battle_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local0 = arg1:GetDist(TARGET_ENE_0)
        local local1 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(arg1, arg2, 270, 60, 0, 2.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(arg1, arg2, 90, 60, 0, 2.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            if InsideRange(arg1, arg2, 180, 90, -1, 5.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            elseif InsideRange(arg1, arg2, 135, 60, -1, 5.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            elseif InsideRange(arg1, arg2, 225, 60, -1, 5.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            elseif InsideRange(arg1, arg2, 180, 120, 5.5, 999) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_HungryJack_204000_Battle_AfterAttackAct, "HungryJack_204000_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HungryJack_204000_Battle_AfterAttackAct, true)
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
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
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
