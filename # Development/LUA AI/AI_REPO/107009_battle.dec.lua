RegisterTableGoal(GOAL_ProtoSkeleton_107009_Battle, "ProtoSkeleton_107009_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProtoSkeleton_107009_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetNumber(0)
    if local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[21] = 50
        local0[26] = 50
    elseif local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 40
        local0[21] = 30
        local0[26] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        local0[20] = 30
        local0[23] = 70
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        local0[20] = 30
        local0[22] = 70
    elseif 15 <= arg1:GetDist(TARGET_ENE_0) then
        local0[1] = 0
        local0[27] = 100
    else
        local0[1] = 100
        local0[27] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act01)
    local1[20] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_Act27)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ProtoSkeleton_107009_ActAfter_AdjustSpace), local2)
    return 
end

function ProtoSkeleton_107009_Act01(arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local local3 = 50
    local local4 = 0
    local local5 = 4
    local local6 = 4
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107009_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107009_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107009_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107009_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107009_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepFront, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107009_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107009_Act26(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function ProtoSkeleton_107009_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107009_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ProtoSkeleton_107009_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_ProtoSkeleton_107009_AfterAttackAct, "ProtoSkeleton_107009_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProtoSkeleton_107009_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_AAA", 20)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 20)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 10 <= arg1:GetDist(TARGET_ENE_0) then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 80)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 55)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
