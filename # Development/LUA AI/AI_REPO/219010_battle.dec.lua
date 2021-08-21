RegisterTableGoal(GOAL_Gargoyle_219010_Battle, "GOAL_Gargoyle_219010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gargoyle_219010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5.5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5.5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:SetNumber(0, 0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 20
        local0[22] = 30
    elseif local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[22] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
        if 15 <= local3 then
            local0[20] = 100
        elseif 9 <= local3 then
            local0[8] = 90
            local0[20] = 10
        elseif 7 <= local3 then
            local0[7] = 50
            local0[8] = 40
            local0[20] = 10
        elseif 6 <= local3 then
            local0[6] = 10
            local0[7] = 30
            local0[8] = 50
            local0[20] = 10
        elseif 4 <= local3 then
            local0[5] = 40
            local0[6] = 35
            local0[20] = 25
        else
            local0[6] = 75
            local0[20] = 25
        end
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.6 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11911) and arg1:GetRandam_Int(1, 100) <= 15 then
            if 10 <= local3 then
                local0[24] = 100
            elseif 5 <= local3 then
                local0[3] = 50
                local0[4] = 50
                local0[22] = 10
            elseif 3 <= local3 then
                local0[3] = 25
                local0[4] = 50
                local0[22] = 10
            else
                local0[3] = 75
                local0[4] = 25
                local0[22] = 10
            end
        elseif 10 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[5] = 10
            local0[6] = 10
            local0[7] = 10
            local0[8] = 10
            local0[22] = 80
            local0[23] = 0
            local0[25] = 100
        elseif 5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 10
            local0[8] = 10
            local0[22] = 130
            local0[23] = 0
            local0[25] = 50
        elseif 3 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 10
            local0[8] = 10
            local0[22] = 100
            local0[23] = 80
            local0[25] = 0
        else
            local0[1] = 10
            local0[2] = 10
            local0[5] = 0
            local0[6] = 10
            local0[7] = 0
            local0[8] = 0
            local0[22] = 90
            local0[23] = 90
            local0[25] = 0
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
        if 15 <= local3 then
            local0[20] = 100
        elseif 9 <= local3 then
            local0[8] = 90
            local0[20] = 10
        elseif 7 <= local3 then
            local0[7] = 50
            local0[8] = 40
            local0[20] = 10
        elseif 6 <= local3 then
            local0[6] = 10
            local0[7] = 30
            local0[8] = 50
            local0[20] = 10
        elseif 4 <= local3 then
            local0[5] = 40
            local0[6] = 35
            local0[20] = 25
        else
            local0[6] = 75
            local0[20] = 25
        end
    elseif 10 <= local3 then
        local0[2] = 20
        local0[5] = 20
        local0[6] = 20
        local0[7] = 20
        local0[8] = 10
        local0[22] = 10
    elseif 5 <= local3 then
        local0[2] = 25
        local0[5] = 5
        local0[6] = 25
        local0[7] = 25
        local0[8] = 10
        local0[22] = 10
    elseif 3 <= local3 then
        local0[1] = 30
        local0[2] = 50
        local0[22] = 20
    else
        local0[1] = 50
        local0[2] = 30
        local0[24] = 20
    end
    local0[2] = SetCoolTime(arg1, arg2, 3002, 20, local0[2], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3101, 20, local0[2], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3002, 20, local0[4], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3101, 20, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 15, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3007, 15, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 20, local0[8], 1)
    local0[24] = SetCoolTime(arg1, arg2, 6001, 10, local0[24], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act09)
    local1[20] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, Gargoyle219010_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Gargoyle219010_ActAfter_AdjustSpace), local2)
    return 
end

function Gargoyle219010_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 50, 0, 2.5, 2.5)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219010_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(23 - arg0:GetMapHitRadius(TARGET_SELF) - 3, 23 - arg0:GetMapHitRadius(TARGET_SELF)), -999, -998, 100, 0, 2.5, 2.5)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 1, 75, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219010_Act03(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 10.3 - arg0:GetMapHitRadius(TARGET_SELF), 998, 999, 0, 0, local0, local1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3100, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219010_Act04(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(25.3 - arg0:GetMapHitRadius(TARGET_SELF) - 3, 25.3 - arg0:GetMapHitRadius(TARGET_SELF)), 998, 999, 0, 0, local0, local1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3101, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 1, 75, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219010_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(11.8 - arg0:GetMapHitRadius(TARGET_SELF), 16 - arg0:GetMapHitRadius(TARGET_SELF)), 16 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 16 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 2.5, 2.5)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219010_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(11.8 - arg0:GetMapHitRadius(TARGET_SELF), 15.8 - arg0:GetMapHitRadius(TARGET_SELF)), 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 2.5, 2.5)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219010_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(8.8 - arg0:GetMapHitRadius(TARGET_SELF), 19.4 - arg0:GetMapHitRadius(TARGET_SELF)), 19.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 19.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 2.5, 2.5)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219010_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(7.3 - arg0:GetMapHitRadius(TARGET_SELF), 15.8 - arg0:GetMapHitRadius(TARGET_SELF)), 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 2.5, 2.5)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gargoyle219010_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 5, TARGET_SELF, 0, -1)
    return 0
end

function Gargoyle219010_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(0, 1)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 5), TARGET_ENE_0, local0, arg0:GetRandam_Int(40, 65), true, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, local0, arg0:GetRandam_Int(30, 45), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gargoyle219010_Act23(arg0, arg1, arg2)
    local local0 = 13
    local local1 = 0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if local2 <= 0.6 then
        local1 = 100
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 15, local1, 3)
    end
    if local2 <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, local0, TARGET_ENE_0, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gargoyle219010_Act24(arg0, arg1, arg2)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gargoyle219010_Act25(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3, 3, 999, 0, 100, arg0:GetRandam_Float(1, 3), 1)
    return 0
end

function Gargoyle219010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            return Gargoyle219010_Combo3000(arg1, arg2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            return Gargoyle219010_Combo3001(arg1, arg2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            return Gargoyle219010_Combo3002(arg1, arg2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
            return Gargoyle219010_ComboBackStep(arg1, arg2)
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:GetNumber(0) ~= 1 then
        return Gargoyle219010_SuccessGuardAttack(arg1, arg2)
    else
        return false
    end
end

function Gargoyle219010_Combo3000(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 60, -99, 10 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 75 then
            arg1:ClearSubGoal()
            local local0 = arg0:GetRandam_Int(1, 100)
            if local0 <= 65 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif local0 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
            return true
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 180, -99, 9.4 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
                local local1 = arg1
                local local2 = arg1["AddSubGoal"]
                local local3 = GOAL_Gargoyle_219010_AfterAttackAct
                local local4 = 10
                arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
                local2 = true
                return true
            else
                return true
            end
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 120, -99, 17.8 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 75 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
                local local1 = arg1
                local local2 = arg1["AddSubGoal"]
                local local3 = GOAL_Gargoyle_219010_AfterAttackAct
                local local4 = 10
                arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
                local2 = true
                return true
            else
                return true
            end
        else
            return false
        end
    else
        return false
    end
end

function Gargoyle219010_Combo3001(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 60, -99, 5) then
        if arg0:GetRandam_Int(1, 100) <= 75 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
            return true
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 180, -99, 9.4 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
                local local0 = arg1
                local local1 = arg1["AddSubGoal"]
                local local2 = GOAL_Gargoyle_219010_AfterAttackAct
                local local3 = 10
                arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
                local1 = true
                return true
            else
                return true
            end
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 120, -99, 17.8 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 75 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
                local local0 = arg1
                local local1 = arg1["AddSubGoal"]
                local local2 = GOAL_Gargoyle_219010_AfterAttackAct
                local local3 = 10
                arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
                local1 = true
                return true
            else
                return true
            end
        else
            return false
        end
    else
        return false
    end
end

function Gargoyle219010_Combo3002(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 60, -99, 10 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 40 then
            arg1:ClearSubGoal()
            local local0 = arg0:GetRandam_Int(1, 100)
            if local0 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif local0 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
            return true
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 180, -99, 9.4 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 25 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
                local local1 = arg1
                local local2 = arg1["AddSubGoal"]
                local local3 = GOAL_Gargoyle_219010_AfterAttackAct
                local local4 = 10
                arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
                local2 = true
                return true
            else
                return true
            end
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 120, -99, 17.8 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 10 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
            return true
        else
            return false
        end
    else
        return false
    end
end

function Gargoyle219010_SuccessGuardAttack(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 90, -99, 10.3 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 60 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 85 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3100, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3101, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
            return true
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 90, -99, 25.3 - arg0:GetMapHitRadius(TARGET_SELF) - 3) then
        if arg0:GetRandam_Int(1, 100) <= 35 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3101, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            arg1:AddSubGoal(GOAL_Gargoyle_219010_AfterAttackAct, 10)
            return true
        else
            return false
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_Gargoyle_219010_AfterAttackAct, "GOAL_Gargoyle_219010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gargoyle_219010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if arg1:HasSpecialEffectId(TARGET_SELF, 11911) then
        if 4 <= local0 then
            local2[1] = 0
            local2[2] = 0
            local2[3] = 100
        else
            local2[1] = 0
            local2[2] = 50
            local2[3] = 50
        end
    elseif 5 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
    elseif 3 <= local0 then
        local2[1] = 80
        local2[2] = 0
        local2[3] = 0
        local2[4] = 20
    else
        local2[1] = 70
        local2[2] = 0
        local2[3] = 0
        local2[4] = 30
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            Gargoyle219010_Act23(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            Gargoyle219010_Act22(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            Gargoyle219010_Act24(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
