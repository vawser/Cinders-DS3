RegisterTableGoal(GOAL_BlueMan_SpearShield, "GOAL_BlueMan_SpearShield")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_SpearShield, true)
Goal["Update"] = Update_FinishOnNoSubGoal
Goal.Initialize = function (arg0, arg1, arg2)
    _COMMON_InitEnemyAct(arg0, arg1, arg2)
    arg1:SetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE", 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    local local2 = arg1:GetDist(TARGET_ENE_0)
    local local3 = 0
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetTeamOrder(ORDER_TYPE_Role)
    if arg1:HasSpecialEffectId(TARGET_SELF, 99401) and arg1:GetNumber(1) == 0 then
        BlueMan_SpearShield_Hustle(arg0, arg1, arg2)
        arg1:SetNumber(1, 1)
    elseif arg1:GetNumber(0) == 0 and arg1:GetRandam_Int(1, 100) <= 100 and 0 <= local2 and arg1:GetNpcThinkParamID() == 121090 then
        CallFriend(arg0, arg1, arg2)
        arg1:SetNumber(0, 1)
    elseif local4 == 1 and local5 == ROLE_TYPE_Torimaki then
        Torimaki_Act(arg1, arg2, 80)
    elseif local4 == 1 and local5 == ROLE_TYPE_Kankyaku then
        Kankyaku_Act(arg1, arg2, 80)
    elseif 11 <= local2 and arg1:GetRandam_Int(1, 100) <= 60 then
        arg0:AfterAction(arg1, arg2, BlueMan_SpearShield_ATT3004(arg0, arg1, arg2))
    else
        _COMMON_SetEnemyActRate(arg0, arg1, arg2, 1)
        local local6 = _COMMON_SelectEnemyAct(arg0, arg1, arg2, false)
        if local6 ~= nil then
            local3 = local6(arg0, arg1, arg2, nil)
        else
            local3 = 100
        end
        arg0:AfterAction(arg1, arg2, local3)
    end
    return 
end

function BlueMan_SpearShield_Hustle(arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 1500, TARGET_ENE_0, DIST_None, 0, -1)
    return 0
end

function CallFriend(arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 4700, TARGET_ENE_0, DIST_None, 0, -1)
    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 9910)
    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(15, 30), true, true, 9910)
    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 9910)
    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(15, 30), true, true, 9910)
    return 0
end

function BlueMan_SpearShield_ATT3004(arg0, arg1, arg2)
    Approach_Act(arg1, arg2, 11, 13, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, 3004)
    return 100
end

Goal["ActBase01"] = 3000
Goal.Act01 = function (arg0, arg1, arg2, arg3)
    local local0 = 3000
    local local1 = 60
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 30, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase02"] = 3001
Goal.Act02 = function (arg0, arg1, arg2, arg3)
    local local0 = 3001
    local local1 = 60
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 30, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase03"] = 3002
Goal.Act03 = function (arg0, arg1, arg2, arg3)
    local local0 = 3002
    local local1 = 60
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 30, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 85, local0, 3003)
    return 100
end

Goal["ActBase04"] = 3004
Goal.Act04 = function (arg0, arg1, arg2, arg3)
    local local0 = 3004
    local local1 = 60
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase05"] = 3005
Goal.Act05 = function (arg0, arg1, arg2, arg3)
    local local0 = 3005
    local local1 = 60
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 30, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase06"] = 3006
Goal.Act06 = function (arg0, arg1, arg2, arg3)
    local local0 = 3006
    local local1 = 0
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 9999, 100, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 30, TARGET_ENE_0, 90, local0, 3007)
    return 100
end

Goal.AfterAction = function (arg0, arg1, arg2, arg3)
    if arg3 ~= nil and arg1:GetRandam_Float(0, 100) <= arg3 then
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 85, 25, 50, 25, 0, 0, 0)
    end
    return 
end

Goal.Interrupt_UseItem = function (arg0, arg1, arg2)
    return false
end

Goal.Interrupt_MovedEnd_OnFailedPath = function (arg0, arg1, arg2)
    return false
end

Goal.Interrupt_FindAttack = function (arg0, arg1, arg2)
    return false
end

Goal.Interrupt_Damaged = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    local local2 = arg1:GetDist(TARGET_ENE_0)
    local local3 = 20 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")
    local local4 = 0 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")
    if not (local2 > 2.5 or local0 > 20 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")) or local2 <= 5 and local0 <= 0 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE") then
        arg2:ClearSubGoal()
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 100, 0, 60, 40, 0, 0, 0)
        return true
    else
        arg1:SetStringIndexedNumber("HIR_DAMAGE_AVOID", arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID") + 30)
        return false
    end
end

Goal.Interrupt_Shoot = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if 8 <= local1 and local1 <= 30 and local2 <= 7 and -7 <= local2 and arg1:GetToTargetAngle(TARGET_ENE_0) <= 15 and -15 <= local2 and arg1:GetRandam_Int(1, 100) <= 30 then
        arg2:ClearSubGoal()
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 100, 0, 60, 40, 0, 0, 0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_BlueMan_DirectSword, "GOAL_BlueMan_DirectSword")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_DirectSword, true)
Goal["Update"] = Update_FinishOnNoSubGoal
Goal.Initialize = function (arg0, arg1, arg2)
    _COMMON_InitEnemyAct(arg0, arg1, arg2)
    arg1:SetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE", 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetHpRate(TARGET_SELF)
    local local4 = arg1:GetDist(TARGET_ENE_0)
    local local5 = 0
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg1:GetTeamOrder(ORDER_TYPE_Role)
    if local6 == 1 and local7 == ROLE_TYPE_Torimaki then
        Torimaki_Act(arg1, arg2, 0)
    elseif local6 == 1 and local7 == ROLE_TYPE_Kankyaku then
        Kankyaku_Act(arg1, arg2, 0)
    else
        _COMMON_SetEnemyActRate(arg0, arg1, arg2, 1)
        local local8 = _COMMON_SelectEnemyAct(arg0, arg1, arg2, false)
        if local8 ~= nil then
            local5 = local8(arg0, arg1, arg2, nil)
        else
            local5 = 100
        end
        arg0:AfterAction(arg1, arg2, local5)
    end
    return 
end

Goal["ActBase01"] = 1003000
Goal.Act01 = function (arg0, arg1, arg2, arg3)
    local local0 = 3000
    local local1 = 60
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 80, local0, 3001)
    return 100
end

Goal["ActBase02"] = 1003002
Goal.Act02 = function (arg0, arg1, arg2, arg3)
    local local0 = 3002
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 90, local0, 3003, 3004)
    return 100
end

Goal["ActBase03"] = 1003005
Goal.Act03 = function (arg0, arg1, arg2, arg3)
    local local0 = 3005
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase04"] = 1003007
Goal.Act04 = function (arg0, arg1, arg2, arg3)
    local local0 = 3007
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 30, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase05"] = 1003008
Goal.Act05 = function (arg0, arg1, arg2, arg3)
    local local0 = 3008
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 30)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 30, TARGET_ENE_0, 0, local0)
    return 100
end

Goal.AfterAction = function (arg0, arg1, arg2, arg3)
    if arg3 ~= nil and arg1:GetRandam_Float(0, 100) <= arg3 then
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 0, 30, 30, 20, 0, 13, 7)
    end
    return 
end

Goal.Interrupt_UseItem = function (arg0, arg1, arg2)
    return false
end

Goal.Interrupt_MovedEnd_OnFailedPath = function (arg0, arg1, arg2)
    return false
end

Goal.Interrupt_FindAttack = function (arg0, arg1, arg2)
    return false
end

Goal.Interrupt_Damaged = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    local local2 = arg1:GetDist(TARGET_ENE_0)
    local local3 = 20 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")
    local local4 = 0 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")
    if not (local2 > 2.5 or local0 > 20 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")) or local2 <= 5 and local0 <= 0 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE") then
        arg2:ClearSubGoal()
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 0, 0, 0, 0, 0, 65, 35)
        return true
    else
        arg1:SetStringIndexedNumber("HIR_DAMAGE_AVOID", arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID") + 15)
        return false
    end
end

Goal.Interrupt_Shoot = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if 8 <= local1 and local1 <= 30 and local2 <= 7 and -7 <= local2 and arg1:GetToTargetAngle(TARGET_ENE_0) <= 15 and -15 <= local2 and arg1:GetRandam_Int(1, 100) <= 30 then
        arg2:ClearSubGoal()
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 0, 0, 0, 0, 0, 65, 35)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_BlueMan_Deep, "GOAL_BlueMan_Deep")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_Deep, true)
Goal["Interrupt_FindAttack"] = Interrupt_FindAttack_Default
Goal["Update"] = Update_FinishOnNoSubGoal
Goal.Initialize = function (arg0, arg1, arg2)
    _COMMON_InitEnemyAct(arg0, arg1, arg2)
    arg1:SetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE", 0)
    arg1:SetTimer(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = 0
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetTeamOrder(ORDER_TYPE_Role)
    if arg1:GetNumber(0) == 0 and arg1:GetRandam_Int(1, 100) <= 100 and 3 <= local3 and arg1:IsFinishTimer(0) == true then
        BlueMan_Deep_Dance(arg0, arg1, arg2)
        arg1:SetNumber(0, 1)
    elseif local5 == 1 and local6 == ROLE_TYPE_Torimaki then
        BlueMan_Deep_KeepDist(arg0, arg1, arg2)
    elseif local5 == 1 and local6 == ROLE_TYPE_Kankyaku then
        Kankyaku_Act(arg1, arg2, 0)
    elseif 4 <= local3 and arg1:GetRandam_Int(1, 100) <= 65 then
        BlueMan_Deep_KeepDist(arg0, arg1, arg2)
    else
        _COMMON_SetEnemyActRate(arg0, arg1, arg2, 1)
        local local7 = _COMMON_SelectEnemyAct(arg0, arg1, arg2, false)
        if local7 ~= nil then
            local4 = local7(arg0, arg1, arg2, nil)
        else
            local4 = 100
        end
        arg0:AfterAction(arg1, arg2, local4)
    end
    return 
end

function BlueMan_Deep_ATT3002(arg0, arg1, arg2)
    Approach_Act(arg1, arg2, 9, 11, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, 3002)
    return 100
end

function BlueMan_Deep_Dance(arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3006, TARGET_NONE, DIST_None, 0, -1)
    return 100
end

function BlueMan_Deep_KeepDist(arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, -1, -1)
    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(15, 30), true, true - 1)
    return 100
end

function BlueMan_Deep_Runaway(arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3006, TARGET_ENE_0, DIST_None, 0, -1)
    return 100
end

Goal["ActBase01"] = 2003000
Goal.Act01 = function (arg0, arg1, arg2, arg3)
    local local0 = 3000
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 65, local0, 3001)
    return 100
end

Goal["ActBase02"] = 2003002
Goal.Act02 = function (arg0, arg1, arg2, arg3)
    local local0 = 3002
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase03"] = 2003003
Goal.Act03 = function (arg0, arg1, arg2, arg3)
    local local0 = 3003
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, local0)
    return 100
end

Goal["ActBase04"] = 2003004
Goal.Act04 = function (arg0, arg1, arg2, arg3)
    local local0 = 3004
    local local1 = 60
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, local0)
    return 100
end

Goal.AfterAction = function (arg0, arg1, arg2, arg3)
    if arg3 ~= nil and arg1:GetRandam_Float(0, 100) <= arg3 then
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 0, 30, 45, 25, 0, 0, 0)
    end
    return 
end

Goal.Interrupt_Damaged = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    local local2 = arg1:GetDist(TARGET_ENE_0)
    local local3 = 20 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")
    local local4 = 0 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")
    if not (local2 > 2.5 or local0 > 20 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE")) or local2 <= 5 and local0 <= 0 + arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID_FATE") then
        arg2:ClearSubGoal()
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 0, 0, 0, 0, 0, 65, 35)
        return true
    else
        arg1:SetStringIndexedNumber("HIR_DAMAGE_AVOID", arg1:GetStringIndexedNumber("HIR_DAMAGE_AVOID") + 15)
        return false
    end
end

RegisterTableGoal(GOAL_BlueMan_Erection, "GOAL_BlueMan_Erection")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_Erection, true)
Goal["Interrupt_FindAttack"] = Interrupt_FindAttack_Default
Goal["Update"] = Update_FinishOnNoSubGoal
Goal.Activate = function (arg0, arg1, arg2)
    _COMMON_InitEnemyAct(arg0, arg1, arg2)
    arg0["GuardMoveOdds"] = 0
    arg0["WaitOdds"] = 0
    arg0["GuardWaitOdds"] = 0
    arg0["SideWayOdds"] = 10
    arg0["LeaveOdds"] = 10
    arg0["SideStepOdds"] = 0
    arg0["BackStepOdds"] = 0
    arg0["KeepDistOdds"] = 0
    arg0["NoneOdds"] = 10
    arg0["MinDist"] = 2.3
    arg0["MaxDist"] = 5.6
    _COMMON_SetEnemyActRate(arg0, arg1, arg2, 1)
    local local0 = _COMMON_SelectEnemyAct(arg0, arg1, arg2, false)
    local local1 = 100
    if local0 ~= nil then
        local1 = local0(arg0, arg1, arg2, nil)
    end
    arg0:AfterAction(arg1, arg2, local1)
    return 
end

Goal["ActBase01"] = 3003000
Goal.Act01 = function (arg0, arg1, arg2, arg3)
    local local0 = 3000
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 80, local0, 3001)
    return 100
end

Goal["ActBase02"] = 3003002
Goal.Act02 = function (arg0, arg1, arg2, arg3)
    local local0 = 3002
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 0 + 1.5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 0, local0)
    return 100
end

Goal.AfterAction = function (arg0, arg1, arg2, arg3)
    if arg3 ~= nil and arg1:GetRandam_Float(0, 100) <= arg3 then
        GetWellSpace_Act_IncludeSidestep(arg1, arg2, 0, 50, 10, 10, 0, 20, 10)
    end
    return 
end

RegisterTableGoal(GOAL_BlueMan_PlayingDead, "GOAL_BlueMan_PlayingDead")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_PlayingDead, true)
Goal["Update"] = Update_FinishOnNoSubGoal
Goal.Activate = function (arg0, arg1, arg2)
    _COMMON_InitEnemyAct(arg0, arg1, arg2)
    arg0["GuardMoveOdds"] = 0
    arg0["WaitOdds"] = 1
    arg0["GuardWaitOdds"] = 0
    arg0["SideWayOdds"] = 0
    arg0["LeaveOdds"] = 0
    arg0["SideStepOdds"] = 0
    arg0["BackStepOdds"] = 0
    arg0["KeepDistOdds"] = 0
    arg0["NoneOdds"] = 1
    arg0["MinDist"] = 2.3
    arg0["MaxDist"] = 5.6
    _COMMON_SetEnemyActRate(arg0, arg1, arg2, 1)
    local local0 = _COMMON_SelectEnemyAct(arg0, arg1, arg2, false)
    local local1 = 100
    if local0 ~= nil then
        local1 = local0(arg0, arg1, arg2, nil)
    end
    arg0:AfterAction(arg1, arg2, local1)
    return 
end

Goal["ActBase01"] = 4003000
Goal.Act01 = function (arg0, arg1, arg2, arg3)
    local local0 = 3000
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 80, local0)
    return 100
end

Goal["ActBase02"] = 4003002
Goal.Act02 = function (arg0, arg1, arg2, arg3)
    local local0 = 3002
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 90, local0)
    return 100
end

Goal["ActBase03"] = 4003003
Goal.Act03 = function (arg0, arg1, arg2, arg3)
    local local0 = 3003
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_SELF, local0, 5, 0, 0)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, -1, TARGET_ENE_0, 90, local0)
    return 100
end

Goal.AfterAction = function (arg0, arg1, arg2, arg3)
    if arg3 ~= nil and arg1:GetRandam_Float(0, 100) <= arg3 then
        arg2:AddSubGoal(GOAL_EnemyAfterAction, arg1:GetRandam_Float(2, 6), TARGET_ENE_0, TARGET_ENE_0, arg0["GuardMoveOdds"], arg0["WaitOdds"], arg0["GuardWaitOdds"], arg0["SideWayOdds"], arg0["LeaveOdds"], arg0["SideStepOdds"], arg0["BackStepOdds"], arg0["KeepDistOdds"], arg0["NoneOdds"], arg0["MinDist"], arg0["MaxDist"])
    end
    return 
end

return 
