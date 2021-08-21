RegisterTableGoal(GOAL_SlaveSpirits_135030_Battle, "GOAL_TTSlaveSpirits_135030_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SlaveSpirits_135030_Battle, true)
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
    elseif 10 <= local3 then
        local0[1] = 50
        local0[3] = 80
        local0[4] = 100
        local0[5] = 0
        local0[6] = 10
    elseif 3.5 <= local3 then
        local0[1] = 80
        local0[2] = 50
        local0[3] = 100
        local0[4] = 100
        local0[5] = 20
        local0[6] = 80
    elseif 2 <= local3 then
        local0[1] = 100
        local0[2] = 80
        local0[3] = 100
        local0[4] = 100
        local0[5] = 80
        local0[6] = 110
    else
        local0[1] = 100
        local0[2] = 100
        local0[3] = 100
        local0[5] = 100
        local0[6] = 120
    end
    local1[1] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, SlaveSpirits135030_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SlaveSpirits135030_ActAfter_AdjustSpace), local2)
    return 
end

function SlaveSpirits135030_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 80, 0, 4, 8)
    local local0 = 3000
    local local1 = 3001
    local local2 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135030_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 80, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135030_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135030_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.2 - arg0:GetMapHitRadius(TARGET_SELF), 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 80, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135030_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF), 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 60, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135030_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 80, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SlaveSpirits135030_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function SlaveSpirits135030_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function SlaveSpirits135030_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SlaveSpirits135030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SlaveSpirits_135030_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_SlaveSpirits_135030_AfterAttackAct, "GOAL_TTSlaveSpirits_135030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SlaveSpirits_135030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        arg2:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    elseif arg1:GetDist(TARGET_ENE_0) <= 2 and local0 <= 70 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        return true
    elseif local0 <= 80 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
        return true
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
