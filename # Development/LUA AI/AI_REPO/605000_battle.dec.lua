RegisterTableGoal(GOAL_WolfS_605000_Battle, "GOAL_WolfS_605000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_WolfS_605000_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if not arg1:HasSpecialEffectId(TARGET_SELF, 13020) then
        if 8 <= local3 then
            local0[22] = 50
        else
            local0[21] = 50
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if 8 <= local3 then
            local0[16] = 50
        else
            local0[8] = 20
            local0[17] = 20
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then

        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if 6.5 <= local3 then
            local0[16] = 50
        else
            local0[8] = 20
            local0[17] = 20
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then

        end
    elseif 10 <= local3 then
        local0[16] = 35
    elseif 7.5 <= local3 then
        local0[16] = 35
    elseif 4 <= local3 then
        local0[31] = 5
        local0[32] = 0
        local0[3] = 25
        local0[5] = 35
        if not not arg1:IsTargetGuard(TARGET_ENE_0) or arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 9) then
            local0[3] = 50
        end
    elseif 2 <= local3 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            local0[31] = 20
            local0[32] = 15
            local0[3] = 20
            local0[5] = 0
            if not not arg1:IsTargetGuard(TARGET_ENE_0) or arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 9) then
                local0[3] = 50
            end
        else
            local0[13] = 5
        end
    elseif 1.3 <= local3 then
        local0[31] = 10
        local0[10] = 10
        local0[13] = 15
        local0[18] = 35
    else
        local0[4] = 50
        local0[10] = 15
        local0[18] = 15
    end
    if not arg1:IsFinishTimer(0) == true then
        local0[13] = 1
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 5, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 5, local0[5], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 5, local0[5], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 5, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 20, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 20, local0[9], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act13)
    local1[16] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act23)
    local1[31] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, WolfS_605000_Act32)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, WolfS_605000_ActAfter_AdjustSpace), local2)
    return 
end

function WolfS_605000_Act01(arg0, arg1, arg2)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    end
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 75, 0, 4, 5.5)
    local local0 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 75, 0, 4, 5.5)
    local local0 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 75, 0, 4, 5.5)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605000_Act04(arg0, arg1, arg2)
    local local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local3 = 75
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    local local7 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 100, 0, 0, 4, 5.5)
    local local0 = 3004
    local local1 = 4
    local local2 = 0
    local local3 = 60
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local0 = 3004
    else
        local0 = 3005
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 75, 0, 4, 5.5)
    local local0 = 13 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605000_Act07(arg0, arg1, arg2)
    local local0 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act08(arg0, arg1, arg2)
    local local0 = 5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
    end
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act13(arg0, arg1, arg2)
    local local0 = 5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
    end
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(1.5, 2.3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(0.6, 1)
    local local1 = 7
    local local2 = 1
    if 7 <= arg0:GetDist(TARGET_ENE_0) then
        local2 = 3
    else
        local2 = 1.5
    end
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local1 = 8
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local1 = 7
    else
        local1 = 6
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 999, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 999, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local1)
    end
    return 0
end

function WolfS_605000_Act17(arg0, arg1, arg2)
    local local0 = 5
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 1.1
    local local2 = 4
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local2)
    end
    return 
end

function WolfS_605000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 1.5
    local local2 = 13
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 2, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 2, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, local2)
    end
    return 
end

function WolfS_605000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(8, 8), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 180, true, true, 9920)
    local local0 = 3015
    local local1 = 0
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_Guard, 5, 9920, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act21(arg0, arg1, arg2)
    local local0 = 6.5
    local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(5, 7), TARGET_ENE_0, 999, TARGET_ENE_0, true, 9920)
    local1:SetTargetRange(0, local0, 100)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(2.5, 2.5), 9920, TARGET_ENE_0, true, 0)
    local2:SetTargetRange(0, local0, 100)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(6, 8)
    local local1 = arg0:GetDist(TARGET_ENE_0) * 0.5
    local local2 = 6.5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, local1)
        local3:SetTargetRange(0, local2, 100)
    else
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, local1)
        local3:SetTargetRange(0, local2, 100)
    end
    local local4 = arg1:AddSubGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(2.5, 2.5), 9920, TARGET_ENE_0, true, 0)
    local4:SetTargetRange(0, local2, 100)
    return 0
end

function WolfS_605000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(2.5, 3.5), 9920, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605000_Act31(arg0, arg1, arg2)
    local local0 = 5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
    end
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    end
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 75, 0, 4, 5.5)
    local local1 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605000_Act32(arg0, arg1, arg2)
    local local0 = 5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
    end
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 75, 0, 4, 5.5)
    local local1 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WolfS_605000_AfterAttackAct, 10)
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
    if not (not arg1:IsInterupt(INTERUPT_TargetOutOfRange) or not arg1:IsTargetOutOfRangeInterruptSlot(0)) or arg1:IsInterupt(INTERUPT_FindAttack) then
        arg2:ClearSubGoal()
        WolfS_605000_Act09(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then

    end
    return false
end

RegisterTableGoal(GOAL_WolfS_605000_AfterAttackAct, "GOAL_WolfS_605000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfS_605000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetDist(TARGET_ENE_0)
    local local3 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local4 = {}
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
