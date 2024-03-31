RegisterTableGoal(GOAL_HinminMouja_DualDagger_124020_Battle, "HinminMouja_DualDagger_124020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HinminMouja_DualDagger_124020_Battle, true)
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
    local local7 = 0
    local local8 = 1
    local local9 = 1
    local local10 = 1
    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
        local8 = 1.5
        local9 = 1.5
        local10 = 1.3
    end
    if arg1:GetNpcThinkParamID() == 124021 then
        local7 = 1
    end
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[11] = 50
        local0[12] = 20
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[11] = 50
        local0[12] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif arg1:GetNumber(0) == 0 and local7 == 1 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 10) then
        local0[6] = 1000
        arg1:SetNumber(0, 1)
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 3) and local4 <= 80 then
        local0[14] = 80
        local0[16] = 20
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 8) and local4 <= 80 and 15 <= arg1:GetAttackPassedTime(3006) then
        local0[6] = 100
    elseif 4.3 <= local3 then
        local0[1] = 10 * local8
        local0[2] = 10
        local0[3] = 25
        local0[4] = 20
        local0[5] = 5 * local10
        local0[14] = 0
        local0[15] = 0
        local0[16] = 30
    elseif 1.7 <= local3 then
        local0[1] = 10 * local8
        local0[2] = 10
        local0[3] = 5
        local0[4] = 5
        local0[5] = 10 * local10
        local0[14] = 0
        local0[15] = 0
        local0[16] = 60
    else
        local0[1] = 10 * local8
        local0[2] = 15
        local0[3] = 0
        local0[4] = 0
        local0[5] = 15 * local10
        local0[14] = 0
        local0[15] = 20
        local0[16] = 40
    end
    local1[1] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act06)
    local1[11] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act16)
    local1[20] = REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HinminMouja_DualDagger_124020_ActAfter_AdjustSpace), local2)
    return 
end

function HinminMouja_DualDagger_124020_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 100, 0, 4, 8)
    local local0 = 3000
    local local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.7, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2.5, 100, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.8 - arg0:GetMapHitRadius(TARGET_SELF), 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act12(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act13(arg0, arg1, arg2)
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

function HinminMouja_DualDagger_124020_Act14(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, Dist_BackStep)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if 0 < local1 and local0 <= 5 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
        local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif local1 < 0 and local0 <= 5 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
        local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
        local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
        local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 999) then
        return 
    elseif local0 <= 2.4 - arg0:GetMapHitRadius(TARGET_SELF) then
        HinminMouja_DualDagger_124020_Act01(arg0, arg1, arg2)
    elseif local0 <= 3.8 - arg0:GetMapHitRadius(TARGET_SELF) then
        HinminMouja_DualDagger_124020_Act03(arg0, arg1, arg2)
    elseif local0 <= 4.5 - arg0:GetMapHitRadius(TARGET_SELF) then
        HinminMouja_DualDagger_124020_Act04(arg0, arg1, arg2)
    else
        HinminMouja_DualDagger_124020_Act04(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_DualDagger_124020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HinminMouja_DualDagger_124020_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_HinminMouja_DualDagger_124020_AfterAttackAct, "HinminMouja_DualDagger_124020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HinminMouja_DualDagger_124020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
