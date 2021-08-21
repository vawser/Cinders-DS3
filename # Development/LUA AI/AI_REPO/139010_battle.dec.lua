RegisterTableGoal(GOAL_SnakeAssasin139010_Battle, "GOAL_SnakeAssasin139010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[30] = 60
        local0[31] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[30] = 60
        local0[31] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if 2 <= local3 then
            local0[20] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[20] = 100
        else
            local0[20] = 70
            local0[23] = 30
        end
    elseif arg1:GetNpcThinkParamID() == 139020 then
        if 12 <= local3 then
            local0[5] = 100
        elseif 9 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 5
            local0[4] = 0
            local0[5] = 15
            local0[6] = 0
            local0[7] = 80
            local0[8] = 0
        elseif 6 <= local3 then
            local0[1] = 20
            local0[2] = 15
            local0[4] = 20
            local0[6] = 15
            local0[7] = 20
            local0[8] = 10
        elseif 2.5 <= local3 then
            local0[1] = 20
            local0[2] = 15
            local0[4] = 30
            local0[6] = 20
            local0[8] = 15
        else
            local0[1] = 40
            local0[2] = 30
            local0[4] = 10
            local0[6] = 10
            local0[8] = 10
        end
    elseif 7 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 50
        local0[4] = 5
        local0[6] = 10
        local0[8] = 10
    elseif 4.5 <= local3 then
        local0[1] = 25
        local0[2] = 15
        local0[3] = 30
        local0[4] = 10
        local0[6] = 10
        local0[8] = 10
    elseif 2.5 <= local3 then
        local0[1] = 20
        local0[2] = 15
        local0[4] = 30
        local0[6] = 20
        local0[8] = 15
    else
        local0[1] = 40
        local0[2] = 30
        local0[4] = 10
        local0[6] = 10
        local0[8] = 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 8, local0[2], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3008, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3016, 8, local0[4], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3017, 8, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3015, 15, local0[5], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act08)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act23)
    local1[30] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act31)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnakeAssasin139010_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeAssasin139010_Act01(arg0, arg1, arg2)
    local local0 = 70
    if arg0:GetNpcThinkParamID() == 139020 then
        local0 = 0
    end
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, local0, 3, 5)
    local local1 = 3000
    local local2 = 3001
    local local3 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local4 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if local7 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4)
    elseif local7 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act02(arg0, arg1, arg2)
    local local0 = 70
    if arg0:GetNpcThinkParamID() == 139020 then
        local0 = 0
    end
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, local0, 3, 5)
    local local1 = 3002
    local local2 = 3003
    local local3 = 3004
    local local4 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local5 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local6 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    if local9 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local9 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local9 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local7, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local7, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(4.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.7 - arg0:GetMapHitRadius(TARGET_SELF)), 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 3, 5)
    local local0 = 3005
    local local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act04(arg0, arg1, arg2)
    local local0 = 70
    if arg0:GetNpcThinkParamID() == 139020 then
        local0 = 0
    end
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, local0, 3, 5)
    local local1 = 3016
    local local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local3, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1.5), TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 999, -1, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act06(arg0, arg1, arg2)
    local local0 = 70
    if arg0:GetNpcThinkParamID() == 139020 then
        local0 = 0
    end
    Approach_Act_Flex(arg0, arg1, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, local0, 3, 5)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 999, -1, 60)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    local0:SetLifeEndSuccess(true)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act08(arg0, arg1, arg2)
    local local0 = 70
    if arg0:GetNpcThinkParamID() == 139020 then
        local0 = 0
    end
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, local0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, TARGET_ENE_0, 45)
    return 0
end

function SnakeAssasin139010_Act21(arg0, arg1, arg2)
    local local0 = 9910
    if arg0:GetNpcThinkParamID() == 139020 then
        local0 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local0)
    return 0
end

function SnakeAssasin139010_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 5, TARGET_SELF, 1, -1)
    return 0
end

function SnakeAssasin139010_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    elseif local0 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    end
    return 0
end

function SnakeAssasin139010_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act31(arg0, arg1, arg2)
    local local0 = 0
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnakeAssasin139011_AfterAttackAct, 10)
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
    elseif arg1:IsInterupt(INTERUPT_Shoot) and 5 <= targetDist and fate <= 35 and arg1:GetNpcThinkParamID() ~= 139020 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(3, 4), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
        return true
    elseif arg1:IsInterupt(INTERUPT_SuccessGuard) and targetDist <= 1.5 and targetAng <= 60 and fate <= 45 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 6, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg1:GetMapHitRadius(TARGET_SELF), 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        return SnakeAssasin139010_Dameged(arg1, arg2)
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            return SnakeAssasin139010_DownCanselAttack(arg1, arg2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            return SnakeAssasin139010_GuardBreakCanselAttack(arg1, arg2)
        end
    end
    return false
end

function SnakeAssasin139010_DownCanselAttack(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 180, -99, 2.5 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 80 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0)
            return true
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 180, -99, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5) then
        if arg0:GetRandam_Int(1, 100) <= 40 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0)
            return true
        else
            return false
        end
    else
        return false
    end
end

function SnakeAssasin139010_GuardBreakCanselAttack(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 90, -99, 3.7 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 55 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0)
            return true
        else
            return false
        end
    else
        return false
    end
end

function SnakeAssasin139010_Dameged(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 360, -99, 3) then
        local local0 = arg0:GetRandam_Int(1, 100)
        if arg0:GetRandam_Int(1, 100) <= 75 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 65 and arg0:GetNpcThinkParamID() ~= 139020 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
            elseif local0 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
            elseif local0 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
            end
            return true
        else
            return false
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_SnakeAssasin139011_AfterAttackAct, "GOAL_SnakeAssasin139011_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139011_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetNpcThinkParamID()
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetRandam_Int(1, 100)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if local2 == 139020 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 100)
    end
    arg1:SetStringIndexedNumber("BackDist_AAA", 4)
    arg1:SetStringIndexedNumber("BackLife_AAA", 4)
    arg1:SetStringIndexedNumber("BackAndSide_SideLife_AAA", 4)
    arg1:SetStringIndexedNumber("BackAndSide_SideDir_AAA", 45)
    if local2 == 139020 then
        if 10 <= local0 then
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        elseif 6 <= local0 then
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 15)
            arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 15)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
        elseif 2.5 <= local0 then
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 35)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 35)
        else
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 35)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 35)
        end
    elseif 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
    elseif 2.5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
    else
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
