RegisterTableGoal(GOAL_SnakeAssasin139030_Battle, "GOAL_SnakeAssasin139030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg1:GetRandam_Int(1, 100)
    local local8 = arg1:GetRandam_Int(1, 100)
    local local9 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[21] = 40
        local0[22] = 60
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[6] = 15
        local0[21] = 35
        local0[22] = 50
    else
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[20] = 100
        elseif arg1:GetNumber(0) == 0 then
            local0[6] = 100
            arg1:SetNumber(0, 1)
        else
            local local10 = 0
            local local11 = 0
            local local12 = 0
            local local13 = 0
            local local14 = 0
            if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 3) then
                local10 = 30
                local11 = 10
                local12 = 0
                local13 = 70
                local14 = 15
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 5.5) then
                local10 = 30
                local11 = 10
                local12 = 0
                local13 = 30
                local14 = 15
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 10) then
                local10 = 10
                local11 = 10
                local12 = 30
                local13 = 10
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 45, 5) then
                local10 = 0
                local11 = 0
                local12 = 0
                local13 = 0
            end
            if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                local14 = 40
            end
            if 10 <= local3 then
                local0[1] = 0 + local10
                local0[2] = 0 + local11
                local0[3] = 15 + local12
                local0[6] = 70
                local0[8] = 0 + local13
            elseif 5.5 <= local3 then
                local0[1] = 10 + local10
                local0[2] = 0 + local11
                local0[3] = 20 + local12
                local0[6] = 70
                local0[8] = 0 + local13
            elseif 3.5 <= local3 then
                local0[1] = 15 + local10
                local0[2] = 0 + local11
                local0[3] = 10 + local12
                local0[5] = 5 + local14
                local0[6] = 65
                local0[8] = 5 + local13
            elseif 2.5 <= local3 then
                local0[1] = 15 + local10
                local0[2] = 5 + local11
                local0[5] = 8 + local14
                local0[6] = 65
                local0[8] = 5 + local13
            else
                local0[1] = 15 + local10
                local0[2] = 5 + local11
                local0[5] = 15 + local14
                local0[6] = 65
                local0[8] = 0 + local13
            end
        end
        local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
        local0[2] = SetCoolTime(arg1, arg2, 3002, 8, local0[2], 1)
        local0[3] = SetCoolTime(arg1, arg2, 3005, 10, local0[3], 1)
        local0[5] = SetCoolTime(arg1, arg2, 3010, 10, local0[5], 1)
        local0[7] = SetCoolTime(arg1, arg2, 3015, 10, local0[7], 1)
        local0[8] = SetCoolTime(arg1, arg2, 3016, 15, local0[8], 1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act010)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnakeAssasin139030_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnakeAssasin139030_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeAssasin139030_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = 3000
    local local1 = 3001
    local local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0)
    elseif local6 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    elseif local6 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = 3002
    local local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    if local4 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    elseif local4 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    elseif local4 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = 3005
    local local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.6 - arg0:GetMapHitRadius(TARGET_SELF), 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 100, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act06(arg0, arg1, arg2)
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

function SnakeAssasin139030_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 50 - arg0:GetMapHitRadius(TARGET_SELF), 50 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 50 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 100, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = 3016
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(10, 15))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139030_Act21(arg0, arg1, arg2)
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

function SnakeAssasin139030_Act22(arg0, arg1, arg2)
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
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnakeAssasin139030_AfterAttackAct, 10)
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
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and local0 <= 1.5 and arg1:GetToTargetAngle(TARGET_ENE_0) <= 60 and local1 <= 65 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 6, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 7 - arg1:GetMapHitRadius(TARGET_SELF), 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        if not (not InsideRange(arg1, arg2, 0, 360, -99, 3) or local1 > 70) or InsideRange(arg1, arg2, 0, 360, 3, 99) and local1 <= 85 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(3, 4), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
            return true
        else
            return false
        end
    elseif arg1:IsInterupt(INTERUPT_Shoot) and 5 <= local0 and local1 <= 35 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(3, 4), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SnakeAssasin139030_AfterAttackAct, "GOAL_SnakeAssasin139030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139030_AfterAttackAct, true)
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
