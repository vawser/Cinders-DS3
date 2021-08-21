RegisterTableGoal(GOAL_MoujaSoldier_bowsword_110020_Battle, "MoujaSoldierbowsword")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_bowsword_110020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    local local3 = 0
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    local local4 = arg1:GetDist(TARGET_ENE_0)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg1:GetDistParam(DIST_Middle), TARGET_ENE_0, true, -1)
        arg2:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 1310, TARGET_ENE_0, DIST_None)
    elseif arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg1:GetDistParam(DIST_Middle), TARGET_ENE_0, true, -1)
        arg2:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 1310, TARGET_ENE_0, DIST_None)
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[7] = 100
    elseif arg1:IsLadderAct(TARGET_ENE_0) then
        local0[5] = 100
    elseif arg1:GetDistParam(DIST_Far) < local4 then
        local0[5] = 5
        local0[6] = 100
    elseif arg1:GetDistParam(DIST_Middle) < local4 then
        local0[1] = 60
        local0[3] = 20
        local0[4] = 30
        local0[6] = 30
    elseif arg1:GetDistParam(DIST_Near) < local4 then
        local0[1] = 65
        local0[3] = 10
        local0[4] = 30
        local0[5] = 10
        local0[6] = 30
    else
        local0[1] = 65
        local0[3] = 10
        local0[4] = 30
        local0[5] = 10
    end
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldierBowSword_Act01)
    local1[3] = REGIST_FUNC(arg1, arg2, MoujaSoldierBowSword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaSoldierBowSword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MoujaSoldierBowSword_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, MoujaSoldierBowSword_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, MoujaSoldierBowSword_Act07)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaSoldierBowSword_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldierBowSword_Act01(arg0, arg1, arg2)
    local local0 = 3001
    local local1 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 2.1 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    if arg0:GetRandam_Int(0, 99) < 50 then
        if arg0:GetRandam_Int(0, 99) < 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, local1, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierBowSword_Act03(arg0, arg1, arg2)
    local local0 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierBowSword_Act04(arg0, arg1, arg2)
    local local0 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierBowSword_Act05(arg0, arg1, arg2)
    local local0 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    if arg0:GetRandam_Int(0, 99) < 100 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierBowSword_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 1310, TARGET_ENE_0, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierBowSword_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierBowSword_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_bowsword_110020_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.MoujaSoldier_bowSword_110020_InterAct = function (arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg0:GetDist(target) < arg4 and arg0:GetRandam_Int(0, 99) < arg3 then
        local local0 = {arg5, arg6}
        arg1:ClearSubGoal()
        if SelectOddsIndex(arg0, local0) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_StepSafety, arg2, -1, arg0:GetRandam_Int(0, 99), arg0:GetRandam_Int(0, 99), arg0:GetRandam_Int(0, 99), TARGET_ENE_0, 4, 0, arg7)
        else
            arg1:AddSubGoal(GOAL_COMMON_Guard, arg2, 9910, TARGET_ENE_0, true, 1)
        end
    end
    return 
end

Goal.Interrupt_GuardBreak = function (arg0, arg1, arg2)
    local local0 = 10
    local local1 = 100
    local local2 = 0
    local local3 = 0
    local local4 = 0
    local local5 = 0
    local local6 = false
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack and arg1:GetRandam_Int(0, 99) < 25 and (0 >= arg1:GetTeamRecordCount(110000 + 2500 + 3000, TARGET_ENE_0, 0) or 0 >= arg1:GetTeamRecordCount(110000 + 2500 + 3001, TARGET_ENE_0, 0)) then
        arg2:ClearSubGoal()
        if arg1:GetRandam_Int(0, 99) < 50 then
            local local7 = arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, 3000, 0 + 1.5, local0, local1, local2, local3, local4, local5, local6)
            local7:AddGoalScopedTeamRecord(110000 + 2500 + 3001, TARGET_ENE_0, 0)
            local7 = arg2:AddSubGoal(GOAL_EnemyMultiAttack, 20, TARGET_ENE_0, 0, 3000)
            local7:AddGoalScopedTeamRecord(110000 + 2500 + 3000, TARGET_ENE_0, 0)
        else
            local local7 = arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, 3000, 0 + 1.5, local0, local1, local2, local3, local4, local5, local6)
            local7:AddGoalScopedTeamRecord(110000 + 2500 + 3001, TARGET_ENE_0, 0)
            local7 = arg2:AddSubGoal(GOAL_MoujaSoldierCommon_ApproachAndAttack, 10, 3006, 9999999, 9999999, 0, 0, true, true)
            local7:AddGoalScopedTeamRecord(110000 + 2500 + 3000, TARGET_ENE_0, 0)
        end
    end
    return 
end

Goal.Interrupt_FindAttack = function (arg0, arg1, arg2)
    local local0 = arg1:GetHpRate(TARGET_SELF)
    arg0.MoujaSoldier_bowSword_110020_InterAct(arg1, arg2, 2, 30, 2.5, 100, 0, true)
    return 
end

Goal.Interrupt_Damaged = function (arg0, arg1, arg2)
    local local0 = 0.5
    local local1 = arg1:GetHpRate(TARGET_SELF)
    arg0.MoujaSoldier_bowSword_110020_InterAct(arg1, arg2, 2, 50, 3.5, 100, 0, true)
    return 
end

Goal.Interrupt_Shoot = function (arg0, arg1, arg2)
    arg0.MoujaSoldier_bowSword_110020_InterAct(arg1, arg2, 2, 30, 3.5, 100, 0, true)
    return 
end

Goal.Interrupt_ReboundByOpponentGuard = function (arg0, arg1, arg2)
    arg0.MoujaSoldier_bowSword_110020_InterAct(arg1, arg2, 2, 30, 3.5, 100, 0, true)
    return 
end

RegisterTableGoal(GOAL_MoujaSoldier_bowsword_110020_AfterAttackAct, "GOAL_MoujaSoldier_bowsword_110020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_bowsword_110020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 6 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
    elseif 3 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 20)
    else
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 100)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 15)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
