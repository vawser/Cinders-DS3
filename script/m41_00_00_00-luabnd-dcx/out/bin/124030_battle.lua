RegisterTableGoal(GOAL_HinminMouja_Hammer_124030_Battle, "HinminMouja_Hammer_124030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HinminMouja_Hammer_124030_Battle, true)
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
        local0[3] = 3
        local0[4] = 0
        local0[11] = 35
        local0[14] = 55
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 8 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 30
        local0[4] = 0
        local0[11] = 10
        local0[12] = 20
        local0[13] = 10
    elseif 2.2 <= local3 then
        local0[1] = 25
        local0[2] = 25
        local0[3] = 15
        local0[4] = 0
        local0[11] = 20
        local0[12] = 0
        local0[13] = 15
    else
        local0[1] = 10
        local0[2] = 20
        local0[3] = 5
        local0[4] = 25
        local0[11] = 0
        local0[12] = 0
        local0[13] = 40
    end
    local1[1] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act04)
    local1[11] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HinminMouja_Hammer_124030_ActAfter_AdjustSpace), local2)
    return 
end

function HinminMouja_Hammer_124030_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.9 - arg0:GetMapHitRadius(TARGET_SELF), 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 0, 0, 4, 8)
    local local0 = 3000
    local local1 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.2 - arg0:GetMapHitRadius(TARGET_SELF), 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Float(6, 8), TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 1.4, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMouja_Hammer_124030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HinminMouja_Hammer_124030_AfterAttackAct, 10)
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
    elseif GuardBreak_Act(arg1, arg2, 2.6, 30) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_HinminMouja_Hammer_124030_AfterAttackAct, "HinminMouja_Hammer_124030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HinminMouja_Hammer_124030_AfterAttackAct, true)
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
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
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
