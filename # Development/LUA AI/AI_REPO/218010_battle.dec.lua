local local0 = 0
RegisterTableGoal(GOAL_MaggotMan_Magic_218010_Battle, "MaggotMan_Magic_218010")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaggotMan_Magic_218010_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    else
        local0[1] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, MaggotMan_Magic_218010_Act01)
    local1[20] = REGIST_FUNC(arg1, arg2, MaggotMan_Magic_218010_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MaggotMan_Magic_218010_ActAfter_AdjustSpace), local2)
    return 
end

function MaggotMan_Magic_218010_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999 - arg0:GetMapHitRadius(TARGET_SELF), 999 - arg0:GetMapHitRadius(TARGET_SELF), 999 - arg0:GetMapHitRadius(TARGET_SELF) + 50, UPVAL0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MaggotMan_Magic_218010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaggotMan_Magic_218010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MaggotMan_Magic_218010_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_MaggotMan_Magic_218010_AfterAttackAct, "GOAL_MaggotMan_Magic_218010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaggotMan_Magic_218010_AfterAttackAct, true)
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
