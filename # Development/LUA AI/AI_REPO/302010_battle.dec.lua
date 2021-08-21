RegisterTableGoal(GOAL_Golem_302010_Battle, "Golem_302010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Golem_302010_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[2] = 10
        local0[10] = 40
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
        local0[6] = 90
        local0[20] = 10
    elseif 6 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 10
        local0[6] = 10
    elseif 3 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 10
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 10
        local0[7] = 0
        local0[8] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local0[1] = local0[1] + 10
        local0[4] = local0[4] + 15
        local0[7] = local0[7] + 15
    else
        local0[2] = local0[2] + 10
        local0[5] = local0[5] + 15
        local0[8] = local0[8] + 15
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 22, local0[6], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act20)
    local1[30] = REGIST_FUNC(arg1, arg2, Golem_302010_Battle_Act30)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Golem_302010_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function Golem_302010_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.1 - arg0:GetMapHitRadius(TARGET_SELF), 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 5, 5)
    local local0 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.1 - arg0:GetMapHitRadius(TARGET_SELF), 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 5, 5)
    local local0 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.1 - arg0:GetMapHitRadius(TARGET_SELF), 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 0, 5, 5)
    local local0 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 0, 5, 5)
    local local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.1 - arg0:GetMapHitRadius(TARGET_SELF), 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 0, 5, 5)
    local local0 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act06(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 5, 5)
    end
    local local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act07(arg0, arg1, arg2)
    local local0 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act08(arg0, arg1, arg2)
    local local0 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function Golem_302010_Battle_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Golem_302010_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Golem_302010_Battle_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 1.5, 20, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, SuccessDist, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Golem_302010_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
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
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(arg1, arg2, 270, 90, -1, 5.1 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(arg1, arg2, 90, 90, -1, 5.1 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_Golem_302010_Battle_AfterAttackAct, "Golem_302010_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Golem_302010_Battle_AfterAttackAct, true)
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
