local local0 = 0
RegisterTableGoal(GOAL_MaggotMan_218000_Battle, "MaggotMan_218000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaggotMan_218000_Battle, true)
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
    if arg1:IsFinishTimer(0) then
        arg1:RegisterTriggerRegionObserver(2180)
        local local3 = 0
        SETUPVAL 6 0 0
    else
        arg1:RemoveTriggerRegionObserver(2180)
        local local3 = 100
        SETUPVAL 6 0 0
    end
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 6.3 <= arg1:GetDist(TARGET_ENE_0) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 50
        local0[4] = 0
        local0[5] = 50
        local0[11] = 0
    else
        local0[1] = 35
        local0[2] = 35
        local0[3] = 0
        local0[4] = 30
        local0[5] = 0
        local0[11] = 0
    end
    if arg1:GetAttackPassedTime(3004) <= 5 then
        local0[4] = 30
    end
    if arg1:IsFinishTimer(0) == false then
        local0[11] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 10, local0[5], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, MaggotMan_218000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MaggotMan_218000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MaggotMan_218000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MaggotMan_218000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MaggotMan_218000_Act05)
    local1[11] = REGIST_FUNC(arg1, arg2, MaggotMan_218000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, MaggotMan_218000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MaggotMan_218000_ActAfter_AdjustSpace), local2)
    return 
end

function MaggotMan_218000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MaggotMan_218000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MaggotMan_218000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MaggotMan_218000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MaggotMan_218000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF), 7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MaggotMan_218000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg0:GetRandam_Float(8, 9), TARGET_ENE_0, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), 2.5, TARGET_SELF, false)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaggotMan_218000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaggotMan_218000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MaggotMan_218000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5540) then
        arg1:RegisterTriggerRegion(2180, 1, 0.1, 8, TARGET_SELF, AI_DIR_TYPE_F, 0)
    end
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
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

Goal.Interrupt_InvadeTriggerRegion = function (arg0, arg1, arg2, arg3)
    if arg3 == 2180 and arg1:HasSpecialEffectId(TARGET_SELF, 5540) == false and arg1:IsFinishTimer(0) then
        arg2:ClearSubGoal()
        arg1:SetTimer(0, 30)
    end
    return true
end

RegisterTableGoal(GOAL_MaggotMan_218000_AfterAttackAct, "GOAL_MaggotMan_218000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaggotMan_218000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
