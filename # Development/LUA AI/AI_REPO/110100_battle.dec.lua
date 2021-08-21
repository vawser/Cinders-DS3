RegisterTableGoal(GOAL_MoujaSoldier_Sword_110100_Battle, "MoujaSoldier_Sword_110100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Sword_110100_Battle, true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetRandam_Int(1, 100)
    local local8 = 0
    local local9 = 0
    local local10 = 0
    local local11 = 0
    local local12 = 0
    if arg1:GetNpcThinkParamID() == 144000 or arg1:GetNpcThinkParamID() == 144001 then
        local12 = 1
        if arg1:GetHpRate(TARGET_SELF) <= 0.6 then
            local12 = 2
        end
    elseif arg1:GetNpcThinkParamID() == 110008 then
        local8 = 1
    elseif arg1:GetNpcThinkParamID() == 110007 then
        local9 = 1
    elseif arg1:GetNpcThinkParamID() == 110006 or arg1:HasSpecialEffectId(TARGET_SELF, 16810) then
        local10 = 1
        local9 = 1
    elseif arg1:GetNpcThinkParamID() == 110009 or arg1:GetNpcThinkParamID() == 110085 or arg1:GetNpcThinkParamID() == 144001 then
        local11 = 1
    end
    if arg1:GetEventRequest(0) == 100 then
        local0[17] = 100
    elseif arg1:GetEventRequest(1) == 100 then
        local0[20] = 100
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 60
        local0[12] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 3
        local0[4] = 3
        local0[7] = 6
        local0[8] = 3
        local0[11] = 50
        local0[12] = 35
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[13] = 100
    elseif local8 == 1 and 8 <= arg1:GetAttackPassedTime(3007) and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local6 <= 65 then
        local0[6] = 100
    elseif local10 == 1 and 13 - arg1:GetMapHitRadius(TARGET_SELF) + math.abs(local4) <= local3 and local4 < -2 then
        local0[16] = 100
    elseif local10 == 1 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local4 < -2 then
        local0[15] = 100
    elseif local10 == 1 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local6 <= 85 then
        local0[9] = 100
    elseif local9 == 1 and 8 <= arg1:GetAttackPassedTime(3011) and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local6 <= 65 then
        local0[9] = 100
    elseif arg1:GetNpcThinkParamID() == 110085 and 5.5 <= local3 then
        local0[18] = 100
    elseif local11 == 1 and arg1:HasSpecialEffectId(TARGET_ENE_0, 3151) == false and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local6 <= 30 and 10 <= arg1:GetAttackPassedTime(3015) then
        local0[17] = 100
    elseif 10 <= local3 then
        local0[1] = 15
        local0[2] = 40
        local0[4] = 5
        local0[7] = 10
        local0[8] = 15
        local0[14] = 15
        local0[20] = 20 * local12
        local0[21] = 10 * local12
    elseif 5.5 <= local3 then
        local0[1] = 20
        local0[2] = 30
        local0[4] = 10
        local0[7] = 15
        local0[8] = 10
        local0[14] = 15
        local0[20] = 10 * local12
        local0[21] = 20 * local12
    elseif 3 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[4] = 10
        local0[7] = 20
        local0[8] = 20
        local0[14] = 20
        local0[20] = 0 * local12
        local0[21] = 30 * local12
    elseif 1 <= local3 then
        local0[1] = 20
        local0[4] = 10
        local0[7] = 30
        local0[8] = 20
        local0[14] = 20
        local0[20] = 0 * local12
        local0[21] = 10 * local12
    else
        local0[1] = 20
        local0[4] = 15
        local0[7] = 25
        local0[8] = 20
        local0[14] = 20
        local0[20] = 0 * local12
        local0[21] = 0 * local12
    end
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act02)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act09)
    local1[11] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act18)
    local1[20] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaSoldier_Sword_110100_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldier_Sword_110100_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
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

function MoujaSoldier_Sword_110100_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF), 7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = 3003
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    return 
end

function MoujaSoldier_Sword_110100_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local1:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = 3008
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = 3009
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 0.8), TARGET_ENE_0, 0, 0, 0)
    local1:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act12(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = 3000
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, -1, 45, 0, 0)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 0.8), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act16(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = -1
    local local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1, local0, local1)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local2:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act18(arg0, arg1, arg2)
    local local0 = 3015
    if arg0:GetDistYSigned(TARGET_ENE_0) < -5 then
        local0 = 3016
    end
    local local1 = -1
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 50, local1, local2, local1, local2)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 3.5), TARGET_ENE_0, 0, 0, 0)
    local3:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act20(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20 - arg0:GetMapHitRadius(TARGET_SELF), 20 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 20 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20005, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_Act21(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20006, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier_Sword_110100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_Sword_110100_AfterAttackAct, 10)
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
        local local0 = arg1:GetDistYSigned(TARGET_ENE_0)
        if (arg1:GetNpcThinkParamID() == 110004 or arg1:GetNpcThinkParamID() == 110006) and 13 - arg1:GetMapHitRadius(TARGET_SELF) + math.abs(local0) <= arg1:GetDist(TARGET_ENE_0) and local0 < -2 then
            arg2:ClearSubGoal()
            Approach_Act_Flex(arg1, arg2, 13 - arg1:GetMapHitRadius(TARGET_SELF) - 1, 13 - arg1:GetMapHitRadius(TARGET_SELF) + 0, 13 - arg1:GetMapHitRadius(TARGET_SELF) + 10, 100, 0, 4, 8)
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

RegisterTableGoal(GOAL_MoujaSoldier_Sword_110100_AfterAttackAct, "MoujaSoldier_Sword_110100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Sword_110100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Float(2.5, 4.5)
    local local3 = arg1:GetRandam_Int(0, 1)
    local local4 = arg1:GetRandam_Int(30, 45)
    local local5 = arg1:GetRandam_Float(2.5, 4.5)
    local local6 = local0 + arg1:GetRandam_Float(2.5, 4.5)
    local local7 = -1
    if arg1:GetRandam_Int(1, 100) <= 0 then
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
        else
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
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
