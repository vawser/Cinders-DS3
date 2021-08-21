RegisterTableGoal(GOAL_DarkBloodSlugDango_113200_Battle, "GOAL_DarkBloodSlugDango_113200_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkBloodSlugDango_113200_Battle, true)
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 5304) == true then
        local0[1] = 0
        local0[2] = 100
    else
        local0[1] = 100
        local0[2] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, DarkBloodSlugDango_113200_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DarkBloodSlugDango_113200_Act02)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DarkBloodSlugDango_113200_ActAfter_AdjustSpace), local2)
    return 
end

function DarkBloodSlugDango_113200_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 1, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBloodSlugDango_113200_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 1, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBloodSlugDango_113200_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DarkBloodSlugDango_113200_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_DarkBloodSlugDango_113200_AfterAttackAct, "DarkBloodSlugDango_113200_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkBloodSlugDango_113200_AfterAttackAct, true)
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
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
