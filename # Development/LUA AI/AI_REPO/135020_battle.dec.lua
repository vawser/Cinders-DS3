RegisterTableGoal(GOAL_SlaveSpirits_135020_Battle, "GOAL_115SlaveSpirits_135020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SlaveSpirits_135020_Battle, true)
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
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 3.5 <= local3 then
        local0[1] = 80
        local0[2] = 50
        local0[3] = 100
        local0[4] = 10
        local0[5] = 100
    elseif 2 <= local3 then
        local0[1] = 60
        local0[2] = 40
        local0[3] = 60
        local0[4] = 30
        local0[5] = 100
    elseif 0.5 <= local3 then
        local0[1] = 70
        local0[2] = 70
        local0[3] = 70
        local0[4] = 70
        local0[5] = 100
    else
        local0[1] = 100
        local0[2] = 100
        local0[3] = 20
        local0[4] = 100
        local0[5] = 100
    end
    if arg1:GetNpcThinkParamID() == 135021 then
        local0[5] = local0[5] - 80
    end
    local1[1] = REGIST_FUNC(arg1, arg2, SlaveSpirits135020_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SlaveSpirits135020_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SlaveSpirits135020_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SlaveSpirits135020_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SlaveSpirits135020_Act05)
    local1[10] = REGIST_FUNC(arg1, arg2, SlaveSpirits135020_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SlaveSpirits135020_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, SlaveSpirits135020_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SlaveSpirits135020_ActAfter_AdjustSpace), local2)
    return 
end

function SlaveSpirits135020_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3000, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135020_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.9 - arg0:GetMapHitRadius(TARGET_SELF), 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3001, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135020_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3002, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135020_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3003, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135020_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3004, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135020_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function SlaveSpirits135020_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function SlaveSpirits135020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SlaveSpirits135020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SlaveSpirits_135020_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_SlaveSpirits_135020_AfterAttackAct, "GOAL_SlaveSpirits_135020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SlaveSpirits_135020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 8)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= arg1:GetDist(TARGET_ENE_0) then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSs_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSs_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
