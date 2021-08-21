RegisterTableGoal(GOAL_MoujaSoldier_SwordShield_110000_Battle, "MoujaSoldier_SwordShield_110000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_SwordShield_110000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    local local4 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local5 = arg1:GetEventRequest(0)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg1:GetRandam_Int(1, 100)
    local local8 = arg1:GetRandam_Int(1, 100)
    local local9 = 0
    local local10 = 0
    local local11 = 0
    local local12 = 0
    if arg1:GetNpcThinkParamID() == 144010 and arg1:GetHpRate(TARGET_SELF) <= 0.5 then
        local12 = 1
    end
    if arg1:GetNpcThinkParamID() == 110001 then
        local9 = 1
    elseif arg1:GetNpcThinkParamID() == 110003 then
        local10 = 1
    end
    if arg1:GetNpcThinkParamID() == 110004 then
        local11 = 1
        local10 = 1
    end
    if arg1:GetEventRequest(1) == 100 then
        local0[20] = 100
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 60
        local0[12] = 40
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 3
        local0[4] = 3
        local0[7] = 6
        local0[8] = 3
        local0[11] = 50
        local0[12] = 35
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[13] = 100
    elseif local9 == 1 and 8 <= arg1:GetAttackPassedTime(3007) and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local7 <= 65 then
        local0[6] = 100
    elseif local11 == 1 and 13 - arg1:GetMapHitRadius(TARGET_SELF) + math.abs(local4) <= local3 and local4 < -2 then
        local0[16] = 100
    elseif local11 == 1 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local4 < -2 then
        local0[15] = 100
    elseif local11 == 1 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local7 <= 85 then
        local0[9] = 100
    elseif local10 == 1 and 8 <= arg1:GetAttackPassedTime(3011) and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local7 <= 65 then
        local0[9] = 100
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and 2.5 < local3 and local3 <= 5 and local8 <= 40 then
        local0[10] = 100
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and local3 <= 2.5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local8 <= 50 then
        local0[10] = 100
    elseif 10 <= local3 then
        local0[1] = 15
        local0[2] = 30
        local0[4] = 5
        local0[7] = 15
        local0[8] = 10
        local0[12] = 15
        local0[14] = 10
        local0[20] = 10 * local12
        local0[21] = 5 * local12
    elseif 5.5 <= local3 then
        local0[1] = 5
        local0[2] = 20
        local0[4] = 5
        local0[7] = 10
        local0[8] = 10
        local0[12] = 20
        local0[14] = 15
        local0[20] = 5 * local12
        local0[21] = 10 * local12
    elseif 3 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[4] = 5
        local0[7] = 10
        local0[8] = 10
        local0[12] = 30
        local0[20] = 0 * local12
        local0[21] = 15 * local12
    elseif 1 <= local3 then
        local0[1] = 15
        local0[2] = 0
        local0[4] = 5
        local0[7] = 10
        local0[8] = 15
        local0[12] = 30
        local0[14] = 20
        local0[20] = 0 * local12
        local0[21] = 5 * local12
    else
        local0[1] = 30
        local0[2] = 0
        local0[4] = 15
        local0[7] = 15
        local0[8] = 20
        local0[12] = 0
        local0[14] = 20
        local0[20] = 0 * local12
        local0[21] = 0 * local12
    end
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act02)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act16)
    local1[20] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, MoujaSoldier110000_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaSoldier110000_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldier110000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = 3000
    local local1 = 3001
    local local2 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF), 7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 50, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local1:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 50, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local1:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.8 - arg0:GetMapHitRadius(TARGET_SELF), 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3004, TARGET_ENE_0, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 75, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act12(arg0, arg1, arg2)
    local local0 = 100
    if 8 <= arg0:GetDist(TARGET_ENE_0) then
        local0 = 75
    end
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= local0 then
        local1 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.8 - arg0:GetMapHitRadius(TARGET_SELF), 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, -1, 45, 0, 0)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act16(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act20(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20 - arg0:GetMapHitRadius(TARGET_SELF), 20 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 20 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20005, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_Act21(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20006, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_SwordShield_110000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local local0 = arg1:GetDist(TARGET_ENE_0)
        local local1 = arg1:GetDistYSigned(TARGET_ENE_0)
        if (arg1:GetNpcThinkParamID() == 110004 or arg1:GetNpcThinkParamID() == 110006) and 13 - arg1:GetMapHitRadius(TARGET_SELF) + math.abs(local1) <= local0 and local1 < -2 then
            arg2:ClearSubGoal()
            Approach_Act_Flex(arg1, arg2, 13 - arg1:GetMapHitRadius(TARGET_SELF) - 1, 13 - arg1:GetMapHitRadius(TARGET_SELF) + 0, 13 - arg1:GetMapHitRadius(TARGET_SELF) + 10, 100, 100, 4, 8)
            return true
        elseif local0 <= 3.5 and arg1:GetRandam_Int(1, 100) <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(1, 2), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), 45, true, true, 9910)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_MoujaSoldier_SwordShield_110000_AfterAttackAct, "MoujaSoldier_SwordShield_110000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_SwordShield_110000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = 100
    local local3 = arg1:GetRandam_Float(2.5, 4.5)
    local local4 = arg1:GetRandam_Int(0, 1)
    local local5 = arg1:GetRandam_Int(30, 45)
    local local6 = arg1:GetRandam_Float(2.5, 4.5)
    local local7 = local0 + arg1:GetRandam_Float(2.5, 4.5)
    if 8 <= local0 then
        local2 = 75
    end
    local local8 = -1
    if arg1:GetRandam_Int(1, 100) <= local2 then
        local8 = 9910
    end
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 8, TARGET_ENE_0, true, local8)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 8, TARGET_ENE_0, true, local8)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        end
    elseif 6 <= local0 then
        if local1 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        else
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
        end
    elseif 4 <= local0 then
        if local1 <= 55 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        end
    elseif 2 <= local0 then
        if local1 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        elseif local1 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, local7, TARGET_ENE_0, true, local8)
        end
    elseif 0.5 <= local0 then
        if local1 <= 10 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        elseif local1 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, local7, TARGET_ENE_0, true, local8)
        end
    elseif local1 <= 0 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
    elseif local1 <= 35 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, local7, TARGET_ENE_0, true, local8)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
