RegisterTableGoal(GOAL_ZonbieCrow_Scythe_221001_Battle, "ZonbieCrow_Scythe_221001_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ZonbieCrow_Scythe_221001_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetEnableInterrupt_LookedTarget(true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetDist(TARGET_ENE_0)
    local local8 = arg1:GetHpRate(TARGET_SELF)
    local local9 = arg1:GetMapHitRadius(TARGET_SELF)
    local local10 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 5406) == false then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12140) == true and arg1:IsVisibleTarget(TARGET_ENE_0) == true then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 100
                local0[20] = 0
                local0[21] = 0
                local0[23] = 0
            elseif 15 <= local7 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[21] = 100
                local0[23] = 0
            elseif 10 <= local7 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[21] = 100
                local0[23] = 0
            elseif 6 <= local7 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[21] = 22
                local0[23] = 78
            elseif 6 <= local7 then
                local0[1] = 5
                local0[2] = 5
                local0[3] = 5
                local0[4] = 0
                local0[21] = 20
                local0[23] = 50
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[21] = 100
                local0[23] = 0
            end
        elseif local10 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if 25 <= local7 then
                local0[5] = 60
                local0[6] = 60
            else
                Kankyaku_Act(arg1, arg2, 0)
            end
        elseif local10 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if 25 <= local7 then
                local0[5] = 60
                local0[6] = 60
            else
                Torimaki_Act(arg1, arg2, 0)
            end
        elseif 15 <= local7 then
            local0[5] = 60
            local0[6] = 60
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[22] = 60
        elseif 10 <= local7 then
            local0[5] = 100
            local0[6] = 100
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[22] = 60
        elseif 6 <= local7 then
            local0[5] = 100
            local0[6] = 100
            local0[7] = 20
            local0[8] = 20
            local0[9] = 20
            local0[10] = 20
            local0[22] = 100
            local0[23] = 50
        elseif 3.5 <= local7 then
            local0[5] = 0
            local0[6] = 0
            local0[7] = 65
            local0[8] = 65
            local0[9] = 100
            local0[10] = 60
            local0[22] = 80
            local0[23] = 60
        elseif 2.4 <= local7 then
            local0[5] = 0
            local0[6] = 0
            local0[7] = 65
            local0[8] = 65
            local0[9] = 100
            local0[10] = 60
            local0[22] = 60
            local0[23] = 60
        else
            local0[5] = 0
            local0[6] = 0
            local0[7] = 80
            local0[8] = 80
            local0[9] = 60
            local0[10] = 60
            local0[23] = 20
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[1] = 0.1 * local0[1]
            local0[2] = 0.1 * local0[2]
            local0[3] = 0.1 * local0[3]
            local0[4] = 0.1 * local0[4]
            local0[5] = 0.1 * local0[5]
            local0[6] = 0.1 * local0[6]
            local0[7] = 0.1 * local0[7]
            local0[8] = 0.1 * local0[8]
            local0[9] = 0.1 * local0[9]
            local0[10] = 0.1 * local0[10]
            local0[20] = 1 * local0[20]
            local0[21] = 1 * local0[21]
            local0[22] = 1 * local0[22]
            local0[23] = 1 * local0[23]
            local0[24] = 1 * local0[24]
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
            local0[1] = 1 * local0[1]
            local0[2] = 1 * local0[2]
            local0[3] = 1 * local0[3]
            local0[4] = 1 * local0[4]
            local0[5] = 1 * local0[5]
            local0[6] = 1 * local0[6]
            local0[7] = 1 * local0[7]
            local0[8] = 1 * local0[8]
            local0[9] = 1 * local0[9]
            local0[10] = 1 * local0[10]
            local0[20] = 1 * local0[20]
            local0[21] = 1 * local0[21]
            local0[22] = 1 * local0[22]
            local0[23] = 1 * local0[23]
            local0[24] = 1 * local0[24]
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, local9, local9) < 0.8 then
            local0[21] = 1.2 * local0[21]
        end
        local0[1] = SetCoolTime(arg1, arg2, 1003000, 0, local0[1], local0[1] * 0.1)
        local0[2] = SetCoolTime(arg1, arg2, 1003001, 0, local0[2], local0[2] * 0.1)
        local0[3] = SetCoolTime(arg1, arg2, 1003002, 0, local0[3], local0[3] * 0.1)
        local0[4] = SetCoolTime(arg1, arg2, 1003003, 0, local0[4], local0[4] * 0.1)
        local0[5] = SetCoolTime(arg1, arg2, 3003000, 0, local0[5], local0[5] * 0.1)
        local0[6] = SetCoolTime(arg1, arg2, 3003001, 0, local0[6], local0[6] * 0.1)
        local0[7] = SetCoolTime(arg1, arg2, 3003002, 0, local0[7], local0[7] * 0.1)
        local0[8] = SetCoolTime(arg1, arg2, 3003004, 0, local0[8], local0[8] * 0.1)
        local0[9] = SetCoolTime(arg1, arg2, 3003005, 0, local0[9], local0[9] * 0.1)
        local0[10] = SetCoolTime(arg1, arg2, 3003007, 0, local0[10], local0[10] * 0.1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act10)
    local1[20] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ZonbieCrow_Scythe_ActAfter_AdjustSpace), local2)
    return 
end

function ZonbieCrow_Scythe_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1600, TARGET_ENE_0, 99, 0, 0, 0, 0)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, -999, TARGET_ENE_0, true, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act05(arg0, arg1, arg2)
    ZonbieCrowScythe221001_Approach_Act_Flex(arg0, arg1, 11.2 - arg0:GetMapHitRadius(TARGET_SELF), 11.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 11.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act06(arg0, arg1, arg2)
    ZonbieCrowScythe221001_Approach_Act_Flex(arg0, arg1, 15.4 - arg0:GetMapHitRadius(TARGET_SELF), 15.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 15.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act07(arg0, arg1, arg2)
    ZonbieCrowScythe221001_Approach_Act_Flex(arg0, arg1, 6.7 - arg0:GetMapHitRadius(TARGET_SELF), 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 5)
    local local0 = 3002
    local local1 = 3003
    local local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(0, 100)
    if local6 < 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    elseif local6 < 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 7.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act08(arg0, arg1, arg2)
    ZonbieCrowScythe221001_Approach_Act_Flex(arg0, arg1, 3.7 - arg0:GetMapHitRadius(TARGET_SELF), 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 5)
    local local0 = 3004
    local local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(0, 100) < 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 7.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act09(arg0, arg1, arg2)
    ZonbieCrowScythe221001_Approach_Act_Flex(arg0, arg1, 7.6 - arg0:GetMapHitRadius(TARGET_SELF), 7.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 7.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act10(arg0, arg1, arg2)
    ZonbieCrowScythe221001_Approach_Act_Flex(arg0, arg1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 60), true, true, -1)
    local1:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(0, 1)
    if arg0:GetRandam_Int(0, 100) < 20 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.4, 4), TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 60), true, true, -1)
        local2:SetTargetRange(1, -1, local0 + 2)
    elseif local1 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0)
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 60), true, true, -1)
        local2:SetTargetRange(1, -1, local0 + 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0)
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 60), true, true, -1)
        local2:SetTargetRange(1, -1, local0 + 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act23(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 2, TARGET_ENE_0, true, -1)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Scythe_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    local1:SetTargetRange(0, local0 / 2, local0 + 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
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
    end
    local local0 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if arg1:IsTargetOutOfRangeInterruptSlot(0) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5406) == false then
                arg2:ClearSubGoal()
                ZonbieCrow_Scythe_Act04(arg1, arg2, paramTbl)
                return true
            end
        elseif arg1:IsTargetOutOfRangeInterruptSlot(1) and 8 < arg1:GetDist(TARGET_ENE_0) then
            if local0 < 30 then
                arg2:ClearSubGoal()
                ZonbieCrow_Scythe_Act06(arg1, arg2, paramTbl)
                return true
            elseif local0 < 60 then
                arg2:ClearSubGoal()
                ZonbieCrow_Scythe_Act05(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5406) == true then
        return false
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        arg2:ClearSubGoal()
        ZonbieCrow_Scythe_Act04(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

function ZonbieCrow_Scythe_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(ZonbieCrow_Scythe_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(ZonbieCrow_Scythe_AfterAttackAct, "ZonbieCrow_Scythe_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(ZonbieCrow_Scythe_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 999)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5406) == true then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 48)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 18)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 22)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 12)
        arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    elseif local3 < 20 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg1:GetDist(TARGET_ENE_0) + 2, TARGET_ENE_0, true, -1)
    elseif local3 < 40 then
        local local4 = arg1:GetDist(TARGET_ENE_0)
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 60), true, true, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function ZonbieCrowScythe221001_Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg7 == nil then
        arg7 = 3
    end
    if arg8 == nil then
        arg8 = 8
    end
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = true
    if arg4 <= local0 then
        local1 = false
    elseif arg3 <= local0 and arg0:GetRandam_Int(1, 100) <= arg5 then
        local1 = false
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= arg6 then
        local2 = 9910
    end
    if local1 == true then
        life = arg7
    else
        life = arg8
    end
    if arg2 <= local0 then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, local1, local2)
        local3:SetTargetRange(1, -1, local0 + 2)
    end
    return 
end

return 
