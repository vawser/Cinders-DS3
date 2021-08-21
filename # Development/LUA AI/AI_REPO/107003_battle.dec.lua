RegisterTableGoal(GOAL_ProtoSkeleton_107003_Battle, "ProtoSkeleton_107003_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProtoSkeleton_107003_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetNumber(0)
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[21] = 50
        local0[26] = 50
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 30
        local0[21] = 40
        local0[26] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        local0[20] = 100
    elseif 30 <= local3 then
        local0[27] = 100
    elseif 3 <= local3 then
        local0[1] = 100
    else
        local0[2] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act02)
    local1[20] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_Act27)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ProtoSkeleton_107003_ActAfter_AdjustSpace), local2)
    return 
end

function ProtoSkeleton_107003_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 25 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 25 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepFront, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act26(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107003_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ProtoSkeleton_107003_AfterAttackAct, 10)
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
    elseif Parry_Act(arg1, arg2, 3, 60, 4, 60) then
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_ProtoSkeleton_107003_AfterAttackAct, "ProtoSkeleton_107003_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProtoSkeleton_107003_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_AAA", 40)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 40)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 15 <= arg1:GetDist(TARGET_ENE_0) then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 80)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 55)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 4)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
