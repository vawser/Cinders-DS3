RegisterTableGoal(GOAL_MoujaSoldier_LanceShiled_110010_Battle, "MoujaSoldier_LanceShiled_110010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_LanceShiled_110010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 5)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local5 = arg1:GetEventRequest(0)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg1:GetRandam_Int(1, 100)
    local local8 = arg1:GetRandam_Int(1, 100)
    local local9 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local local10 = 0
    if arg1:GetNpcThinkParamID() == 144020 and arg1:GetHpRate(TARGET_SELF) <= 0.5 then
        local10 = 1
    end
    if arg1:GetEventRequest(1) == 100 then
        local0[20] = 100
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 60
        local0[12] = 40
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 0
        local0[2] = 0
        local0[7] = 15
        local0[11] = 50
        local0[12] = 35
    else
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[13] = 100
        elseif arg1:GetNumber(0) == 0 then
            local0[7] = 100
            arg1:SetNumber(0, 1)
        else
            local local11 = 1
            local local12 = 1
            local local13 = 1
            local local14 = 0
            local local15 = 0
            if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 3) then
                local11 = 5
                local12 = 5
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 5.5) then
                local11 = 2.5
                local12 = 5
                local14 = 1
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 10) then
                local11 = 1.5
                local12 = 1.5
                local14 = 1
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 45, 5) then
                local11 = 0.6
                local12 = 0.6
            end
            if InsideDir(arg1, arg2, 0, 60) == false then
                local13 = 10
            end
            if arg1:GetHpRate(TARGET_SELF) <= 0.2 then
                local15 = 1.5
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.4 then
                local15 = 1
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.6 then
                local15 = 0.5
            end
            if arg1:GetNumber(1) <= 0 then
                local15 = 0
            end
            if 10 <= local3 then
                local0[1] = 7 * local11
                local0[2] = 3 * local12
                local0[4] = 5
                local0[7] = 70
                local0[14] = 75 * local15
                local0[20] = 10 * local10
                local0[21] = 5 * local10
            elseif 5.5 <= local3 then
                local0[1] = 10 * local11
                local0[2] = 5 * local12
                local0[4] = 5
                local0[7] = 70
                local0[11] = 0
                local0[14] = 75 * local15
                local0[20] = 5 * local10
                local0[21] = 10 * local10
            elseif 3.5 <= local3 then
                local0[1] = 16 * local11
                local0[2] = 7 * local12
                local0[4] = 10
                local0[7] = 70
                local0[11] = 0
                local0[14] = 55 * local15
                local0[20] = 0 * local10
                local0[21] = 15 * local10
            elseif 2.5 <= local3 then
                local0[1] = 16 * local11
                local0[2] = 9 * local12
                local0[4] = 5
                local0[7] = 70
                local0[11] = 0
                local0[20] = 0 * local10
                local0[21] = 5 * local10
            else
                local0[1] = 12 * local11
                local0[2] = 10 * local12
                local0[3] = 8 * local13
                local0[7] = 70
                local0[11] = 0
                local0[20] = 0 * local10
                local0[21] = 0 * local10
            end
        end
        local0[14] = SetCoolTime(arg1, arg2, 4600, 20, local0[14], 0)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act04)
    local1[7] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act07)
    local1[11] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, MoujaSoldier110010_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaSoldier110010_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldier110010_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = 3000
    local local1 = 7.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    if local4 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    elseif local4 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    local local2 = 3
    local local3 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local3 = 9910
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    if local1 <= local0 and local4 <= 80 then
        local local5 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, local1 - 2, TARGET_SELF, true, local3)
        local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif local0 <= local2 and local4 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, local2 + 2, TARGET_ENE_0, true, local3)
    else
        local local5 = arg0:GetDist(TARGET_FRI_0)
        if local5 == -1 then
            local5 = 999
        end
        local local6 = arg0:GetRandam_Int(0, 1)
        if local5 <= 3 and arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
            local6 = 1
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, local6, arg0:GetRandam_Int(30, 45), true, true, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act11(arg0, arg1, arg2)
    local local0 = 10
    local local1 = 100
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, local1, 3)
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= local1 then
        local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_FRI_0)
    if local0 == -1 then
        local0 = 999
    end
    local local1 = arg0:GetRandam_Int(0, 1)
    if local0 <= 3 and arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
        local1 = 1
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(10, 15))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act14(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 6, TARGET_ENE_0, true, 9910)
        local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 4600, TARGET_ENE_0, 100, 0, 90, 0, 0)
    arg0:SetNumber(1, arg0:GetNumber(1) - 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act20(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20 - arg0:GetMapHitRadius(TARGET_SELF), 20 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 20 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20005, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act21(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20006, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_LanceShield_110010_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local0 <= 3 and local1 <= 60 and local2 <= 75 then
        arg2:ClearSubGoal()
        if local3 <= 10 then
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 7.4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 6, 0, 0, 0, 0)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_SuccessGuard) and local0 <= 3 and local1 <= 60 and local2 <= 80 then
        arg2:ClearSubGoal()
        if local3 <= 45 then
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 7.4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        elseif local3 <= 90 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 6, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 7.4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 7.4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
        end
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_MoujaSoldier_LanceShield_110010_AfterAttackAct, "MoujaSoldier_LanceShield_110010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_LanceShield_110010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Float(3, 4)
    local local3 = arg1:GetRandam_Int(0, 1)
    local local4 = arg1:GetRandam_Int(30, 45)
    local local5 = arg1:GetRandam_Float(3, 4)
    local local6 = local0 + arg1:GetRandam_Float(2, 4)
    local local7 = -1
    if arg1:GetRandam_Int(1, 100) <= 100 then
        local7 = 9910
    end
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 8, TARGET_ENE_0, true, local7)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 8, TARGET_ENE_0, true, local7)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 6 <= local0 then
        if local1 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 4 <= local0 then
        if local1 <= 55 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 2 <= local0 then
        if local1 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        elseif local1 <= 55 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
        end
    elseif 0.5 <= local0 then
        if local1 <= 15 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        elseif local1 <= 35 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
        end
    elseif local1 <= 0 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
    elseif local1 <= 40 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
