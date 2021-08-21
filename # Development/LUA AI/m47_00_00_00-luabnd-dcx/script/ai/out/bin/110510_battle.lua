RegisterTableGoal(GOAL_MoujaSoldier_Halberd_110510_Battle, "MoujaSoldier_Halberd_110510_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Halberd_110510_Battle, true)
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
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetRandam_Int(1, 100)
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 60
        local0[12] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 3
        local0[4] = 2
        local0[11] = 50
        local0[12] = 35
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and 2 <= local3 and local3 <= 10 then
        local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 2 then
        local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 2 then
        local0[1] = 20
        local0[7] = 20
        local0[5] = 20
        local0[13] = 45
        local0[14] = 15
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 2 then
        local0[1] = 20
        local0[8] = 20
        local0[5] = 20
        local0[13] = 45
        local0[14] = 15
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and 1.7 < local3 and local3 <= 5 and local7 <= 40 then
        local0[5] = 100
        local0[9] = 20
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and local3 <= 1.7 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local7 <= 50 then
        local0[5] = 100
        local0[9] = 20
    elseif 10 <= local3 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local7 <= 70 then
        local0[4] = 100
    elseif 8 <= local3 then
        local0[1] = 60
        local0[2] = 30
        local0[6] = 10
    elseif 6 <= local3 then
        local0[1] = 60
        local0[2] = 30
        local0[6] = 20
    elseif 4 <= local3 then
        local0[1] = 55
        local0[2] = 35
        local0[6] = 20
        local0[14] = 0
    elseif 3 <= local3 then
        local0[1] = 20
        local0[2] = 35
        local0[3] = 5
        local0[14] = 70
    elseif 2 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 5
        local0[14] = 70
    else
        local0[3] = 5
        local0[5] = 75
        local0[9] = 20
        local0[14] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 8, local0[2], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 8, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 8, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3011, 8, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3012, 8, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3013, 8, local0[9], 1)
    if arg1:IsFinishTimer(0) == false and 0 < local0[13] then
        local0[13] = 1
    end
    if arg1:IsFinishTimer(1) == false and 0 < local0[14] then
        local0[14] = 1
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act09)
    local1[11] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, Halberd_110510_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Halberd_110510_ActAfter_AdjustSpace), local2)
    return 
end

function Halberd_110510_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, 0, 3, 8)
    local local0 = 3000
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF), 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, 0, 3, 8)
    local local0 = 3002
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, 0, 3, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.5 - arg0:GetMapHitRadius(TARGET_SELF), 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 100, 0, 2, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.7 - arg0:GetMapHitRadius(TARGET_SELF), 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, 0, 3, 8)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 0, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, 0, 3, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Halberd_110510_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Halberd_110510_Act12(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    local0:SetTargetRange(1, 0.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Halberd_110510_Act13(arg0, arg1, arg2)
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Halberd_110510_Act14(arg0, arg1, arg2)
    arg0:SetTimer(1, 6)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
    local0:SetTargetRange(1, 1, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Halberd_110510_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Halberd_110510_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_Halberd_110510_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        arg2:ClearSubGoal()
        return true
    elseif Damaged_Act(arg1, arg2, 3.5, 40) then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_MoujaSoldier_Halberd_110510_AfterAttackAct, "MoujaSoldier_Halberd_110510_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Halberd_110510_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = 0
    local local4 = arg1:GetRandam_Float(2.5, 4.5)
    local local5 = arg1:GetRandam_Int(0, 1)
    local local6 = arg1:GetRandam_Int(30, 45)
    local local7 = arg1:GetRandam_Float(2.5, 4.5)
    local local8 = local0 + arg1:GetRandam_Float(2.5, 4.5)
    local local9 = -1
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, 8, TARGET_ENE_0, true, local9)
            local10:SetTargetRange(1, 1, 999)
        else
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, 8, TARGET_ENE_0, true, local9)
            local10:SetTargetRange(1, 1, 999)
        else
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif 6 <= local0 then
        if local2 <= 50 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif 4 <= local0 then
        if local2 <= 35 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif 2 <= local0 then
        if local2 <= 10 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        elseif local2 <= 15 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif 0.5 <= local0 then
        if local2 <= 0 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        elseif local2 <= 15 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif local2 <= 0 then
        local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
        local10:SetTargetRange(1, 1, 999)
    elseif local2 <= 15 then
        local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, local9)
        local10:SetTargetRange(1, 1, 999)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

return 
