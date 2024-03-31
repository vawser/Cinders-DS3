RegisterTableGoal(GOAL_HinminMouja_Fork_124040_Battle, "HinminMouja_Fork_124040_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HinminMouja_Fork_124040_Battle, true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[11] = 40
        local0[14] = 60
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 3.5
        local0[2] = 3.5
        local0[3] = 0
        local0[4] = 3
        local0[11] = 35
        local0[14] = 55
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 5.5) then
        local0[1] = 30
        local0[2] = 35
        local0[3] = 5
        local0[4] = 10
        local0[11] = 20
        local0[12] = 0
        local0[13] = 0
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 1.5) then
        local0[1] = 50
        local0[2] = 20
        local0[3] = 5
        local0[4] = 5
        local0[11] = 0
        local0[12] = 0
        local0[13] = 20
    elseif 15 <= local3 then
        local0[1] = 35
        local0[2] = 20
        local0[3] = 10
        local0[4] = 10
        local0[11] = 0
        local0[12] = 100
        local0[13] = 0
    elseif 5.5 <= local3 then
        local0[1] = 35
        local0[2] = 25
        local0[3] = 10
        local0[4] = 10
        local0[11] = 40
        local0[12] = 0
        local0[13] = 0
        local0[19] = 0
    elseif 3.5 <= local3 then
        local0[1] = 30
        local0[2] = 10
        local0[3] = 5
        local0[4] = 5
        local0[11] = 40
        local0[12] = 0
        local0[13] = 0
        local0[19] = 0
    elseif 1 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 5
        local0[4] = 5
        local0[11] = 0
        local0[12] = 0
        local0[13] = 50
        local0[19] = 10
    else
        local0[1] = 25
        local0[2] = 0
        local0[3] = 0
        local0[4] = 5
        local0[11] = 0
        local0[12] = 0
        local0[13] = 60
        local0[19] = 10
    end
    local1[1] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act04)
    local1[11] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act14)
    local1[19] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HinminMouja_Fork_124040_ActAfter_AdjustSpace), local2)
    return 
end

function HinminMouja_Fork_124040_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    local local0 = 3000
    local local1 = 3001
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF), 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 100, 0, 4, 8)
    local local0 = 3004
    local local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.1 - arg0:GetMapHitRadius(TARGET_SELF), 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function HinminMouja_Fork_124040_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Float(6, 8), TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 < 1.5 then
        local0 = local0 / 2
    else
        local0 = local0 - 1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local0 + 1.4, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, Dist_BackStep)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Fork_124040_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HinminMouja_Fork_124040_AfterAttackAct, 10)
    return 
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
    else
        return false
    end
end

RegisterTableGoal(GOAL_HinminMouja_Fork_124040_AfterAttackAct, "HinminMouja_Fork_124040_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HinminMouja_Fork_124040_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 4)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 7 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 55)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 15)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif 3.5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 75)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif 1.5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
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
