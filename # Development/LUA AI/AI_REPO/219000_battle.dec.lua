RegisterTableGoal(GOAL_Gargoyle_219000_Battle, "GOAL_Gargoyle_219000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gargoyle_219000_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 20
        local0[22] = 30
    elseif local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[22] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
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
            local0[8] = 10
            local0[9] = 0
            local0[22] = 80
            local0[23] = 0
            local0[24] = 100
        elseif 5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[6] = 10
            local0[7] = 10
            local0[8] = 10
            local0[9] = 0
            local0[22] = 130
            local0[23] = 0
            local0[24] = 50
        elseif 3 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[7] = 10
            local0[8] = 0
            local0[9] = 10
            local0[22] = 100
            local0[23] = 80
        else
            local0[1] = 10
            local0[2] = 10
            local0[7] = 10
            local0[8] = 0
            local0[9] = 10
            local0[22] = 90
            local0[23] = 90
        end
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[5] = 30
        local0[6] = 30
        local0[8] = 20
        local0[9] = 0
        local0[22] = 20
    elseif 5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[6] = 20
        local0[7] = 20
        local0[8] = 10
        local0[9] = 0
        local0[22] = 10
    elseif 3 <= local3 then
        local0[1] = 25
        local0[2] = 25
        local0[7] = 30
        local0[8] = 0
        local0[9] = 20
        local0[22] = 0
    else
        local0[1] = 25
        local0[2] = 20
        local0[7] = 15
        local0[8] = 0
        local0[9] = 30
        local0[22] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[1] = SetCoolTime(arg1, arg2, 3007, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3100, 25, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3101, 25, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 15, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 15, local0[7], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3009, 30, local0[9], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act09)
    local1[20] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, Gargoyle219000_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Gargoyle219000_ActAfter_AdjustSpace), local2)
    return 
end

function Gargoyle219000_Act01(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 9.5 - arg0:GetMapHitRadius(TARGET_SELF), 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 50, 0, local0, local1)
    local local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, local3, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, local3, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF))
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act02(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF), 7 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 50, 0, local0, local1)
    local local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DistToAtt2, 1.5, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act03(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF), 998, 999, 0, 100, local0, local1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3100, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act04(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF), 998, 999, 0, 100, local0, local1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3101, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act05(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(10 - arg0:GetMapHitRadius(TARGET_SELF), 23 - arg0:GetMapHitRadius(TARGET_SELF)), -999, -998, 100, 0, local0, local1)
    local local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DistToAtt2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act06(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(10 - arg0:GetMapHitRadius(TARGET_SELF), 20 - arg0:GetMapHitRadius(TARGET_SELF)), -999, -998, 100, 0, local0, local1)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act07(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(3 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF)), -999, -998, 100, 0, local0, local1)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act08(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 16 - arg0:GetMapHitRadius(TARGET_SELF), 7 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 100, 0, local0, local1)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act09(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 50, 0, local0, local1)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gargoyle219000_Act20(arg0, arg1, arg2)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    return 0
end

function Gargoyle219000_Act21(arg0, arg1, arg2)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 5, TARGET_SELF, 0, 9910)
    return 0
end

function Gargoyle219000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(0, 1)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 5), TARGET_ENE_0, local0, arg0:GetRandam_Int(40, 65), true, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, local0, arg0:GetRandam_Int(30, 45), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gargoyle219000_Act23(arg0, arg1, arg2)
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

function Gargoyle219000_Act24(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3, 3, 999, 0, 100, arg0:GetRandam_Float(1, 3), 1)
    return 0
end

function Gargoyle219000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Gargoyle_219000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:GetNumber(0) ~= 1 then
        return Gargoyle219000_SuccessGuardAttack(arg1, arg2)
    else
        return false
    end
end

function Gargoyle219000_SuccessGuardAttack(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 90, -99, 7 - arg0:GetMapHitRadius(TARGET_SELF)) then
        local local0 = arg0:GetRandam_Int(1, 100)
        if local0 <= 25 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3100, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            arg1:AddSubGoal(GOAL_Gargoyle_219000_AfterAttackAct, 10)
            return true
        elseif local0 <= 50 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3101, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            arg1:AddSubGoal(GOAL_Gargoyle_219000_AfterAttackAct, 10)
            return true
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 240, -99, 6) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3101, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            arg1:AddSubGoal(GOAL_Gargoyle_219000_AfterAttackAct, 10)
            return true
        else
            return false
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_Gargoyle_219000_AfterAttackAct, "GOAL_Gargoyle_219000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gargoyle_219000_AfterAttackAct, true)
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
    elseif 3 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
    else
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            Gargoyle219000_Act23(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            Gargoyle219000_Act22(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
