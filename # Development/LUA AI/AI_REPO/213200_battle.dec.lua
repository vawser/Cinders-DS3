RegisterTableGoal(GOAL_WriggleRotting_213200_Battle, "GOAL_WriggleRotting_213200_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[1] = 100
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if local4 <= 50 and 3 <= local3 then
            local0[8] = 100
        else
            local0[2] = 80
            local0[3] = 20
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if local4 <= 50 and 3 <= local3 then
            local0[9] = 100
        else
            local0[5] = 70
            local0[3] = 20
            local0[4] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if local4 <= 50 and 3 <= local3 then
            local0[10] = 100
        else
            local0[6] = 70
            local0[3] = 20
            local0[4] = 10
        end
    else
        if local4 <= 50 and 3 <= local3 then
            local0[7] = 100
        end
        local0[1] = 40
        local0[3] = 10
        local0[4] = 50
    end
    local1[1] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, WriggleRotting213200_Act10)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, WriggleRotting213200_ActAfter_AdjustSpace), local2)
    return 
end

function WriggleRotting213200_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 1.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 1.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 1.3 - arg0:GetMapHitRadius(TARGET_SELF), TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 1.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 1.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, -90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, -90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, -90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, -90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, 4, TARGET_ENE_0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, -90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleRotting213200_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WriggleRotting_213200_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_WriggleRotting_213200_AfterAttackAct, "GOAL_WriggleRotting_213200_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WriggleRotting_213200_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 80)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 80)
    if 5 <= arg1:GetDist(TARGET_ENE_0) then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
