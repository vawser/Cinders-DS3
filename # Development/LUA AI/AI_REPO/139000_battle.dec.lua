RegisterTableGoal(GOAL_SnakeAssasin139000_Battle, "GOAL_SnakeAssasin139000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139000_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local8 = arg1:GetEventRequest()
    if local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[30] = 60
        local0[31] = 40
    elseif local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[30] = 60
        local0[31] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if 2 <= local3 then
            local0[20] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[20] = 100
        else
            local0[20] = 60
            local0[5] = 25
            local0[9] = 20
        end
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and 2.5 < local3 and local3 <= 5 and local4 <= 35 then
        local0[8] = 50
        local0[10] = 50
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and local3 <= 2.5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local4 <= 50 then
        local0[8] = 50
        local0[10] = 50
    elseif 10 <= local3 then
        local0[1] = 15
        local0[2] = 50
        local0[6] = 10
        local0[7] = 10
        local0[8] = 15
        local0[10] = 5
    elseif 5 <= local3 then
        local0[1] = 15
        local0[2] = 40
        local0[6] = 15
        local0[7] = 15
        local0[8] = 15
        local0[10] = 5
    elseif 2.5 <= local3 then
        local0[1] = 40
        local0[6] = 20
        local0[7] = 20
        local0[8] = 10
        local0[10] = 10
    elseif 1.5 <= local3 then
        local0[1] = 30
        local0[5] = 10
        local0[6] = 15
        local0[7] = 15
        local0[11] = 20
        local0[21] = 10
    else
        local0[1] = 20
        local0[5] = 15
        local0[6] = 15
        local0[7] = 15
        local0[11] = 25
        local0[21] = 10
    end
    local0[9] = SpaceCheckBeforeAct(arg1, arg2, 180, 4.5, local0[9])
    local0[11] = SpaceCheckBeforeAct(arg1, arg2, 0, 7, local0[11])
    local0[4] = SetCoolTime(arg1, arg2, 3015, 20, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 6001, 12, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 6002, 12, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 6003, 12, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 6002, 12, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 6003, 12, local0[7], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3018, 10, local0[11], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act02)
    local1[4] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act21)
    local1[30] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, SnakeAssasin139000_Act31)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnakeAssasin139000_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeAssasin139000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 100, 0, 2, 5)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, local0, local1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(8 - arg0:GetMapHitRadius(TARGET_SELF) - 3.5, 8 - arg0:GetMapHitRadius(TARGET_SELF)), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 100, 0, 2, 5)
    local local0 = 3003
    local local1 = 3005
    local local2 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
    elseif local6 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, local4, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local3, local4, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 100, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2, 2.5, 2.5, 100, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    arg1:AddSubGoal(GOAL_SnakeAssasin139000_ComboBranch, 10, 6001)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5.5, 5.5, 100, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    arg1:AddSubGoal(GOAL_SnakeAssasin139000_ComboBranch, 10, 6002)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5.5, 5.5, 100, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    arg1:AddSubGoal(GOAL_SnakeAssasin139000_ComboBranch, 10, 6003)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 100, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 100, 0, 2.5, 5)
    local local0 = 3016
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_SnakeAssasin139000_ComboBranch, 10, 3018)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act21(arg0, arg1, arg2)
    Watching_Parry_Chance_Act(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9920)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139000_Act31(arg0, arg1, arg2)
    local local0 = 0
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnakeAssasin139000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        if InsideRange(arg1, arg2, 0, 180, -99, 3) and local0 <= 75 then
            arg2:ClearSubGoal()
            if local1 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif local1 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
            else
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
            end
            if local2 <= 40 then
                Watching_Parry_Chance_Act(arg1, arg2)
            end
            return true
        elseif InsideRange(arg1, arg2, 180, 180, -99, 3) and local0 <= 65 then
            arg2:ClearSubGoal()
            if local1 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif local1 <= 65 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
            else
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
            end
            if local2 <= 40 then
                Watching_Parry_Chance_Act(arg1, arg2)
            end
            return true
        else
            return false
        end
    elseif arg1:IsInterupt(INTERUPT_Shoot) and 5 <= arg1:GetDist(TARGET_ENE_0) and local0 <= 35 then
        arg2:ClearSubGoal()
        if local1 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
        else
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            return SnakeAssasin139000_DownCanselAttack(arg1, arg2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            return SnakeAssasin139000_Combo3000(arg1, arg2)
        end
    end
    if Parry_Act(arg1, arg2, 3, 60, 4, 60) then
        return true
    else
        return false
    end
end

function SnakeAssasin139000_DownCanselAttack(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 90, -99, 1.5) and arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif InsideRange(arg0, arg1, 0, 240, -99, 3) and arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        return true
    else
        return false
    end
end

function SnakeAssasin139000_Combo3000(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    if InsideRange(arg0, arg1, 45, 60, 0.5, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1) and local0 <= 55 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif InsideRange(arg0, arg1, -45, 60, 0.5, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1) and local0 <= 55 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, 0, 0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SnakeAssasin139000_AfterAttackAct, "GOAL_SnakeAssasin139000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    if arg1:GetDist(TARGET_ENE_0) <= 3.5 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 55)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSs_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 55)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSs_AAA", 10)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_SnakeAssasin139000_ComboBranch, "GOAL_SnakeAssasin139000_ComboBranch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139000_ComboBranch, true)
REGISTER_DBG_GOAL_PARAM(GOAL_SnakeAssasin139000_ComboBranch, 0, "’¼‘O‚ÌƒAƒjƒ”Ô†", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if local0 == 6001 or local0 == 6002 or local0 == 6003 then
        if InsideRange(arg1, arg2, 0, 120, -99, 2.9 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3000, TARGET_ENE_0, 3.8 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, arg2:GetLife(), 3002, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        elseif InsideRange(arg1, arg2, 0, 120, 4, 8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            if local1 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3004, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, arg2:GetLife(), 3004, TARGET_ENE_0, 4.8 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, arg2:GetLife(), 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            end
        elseif InsideRange(arg1, arg2, 0, 120, 2.5, 5 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3007, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1)
        end
    elseif local0 == 3018 then
        if InsideRange(arg1, arg2, 0, 120, -99, 2.9 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3000, TARGET_ENE_0, 3.8 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, arg2:GetLife(), 3002, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        elseif InsideRange(arg1, arg2, 0, 120, 4, 8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            if local1 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3004, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, arg2:GetLife(), 3004, TARGET_ENE_0, 4.8 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, arg2:GetLife(), 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            end
        elseif InsideRange(arg1, arg2, 0, 120, 2.5, 5 - arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3007, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1)
        end
    else
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
