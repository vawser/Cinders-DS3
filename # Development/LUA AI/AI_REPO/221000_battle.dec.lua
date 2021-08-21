RegisterTableGoal(GOAL_ZonbieCrow_Dagger_221000_Battle, "ZonbieCrow_Dagger_221000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ZonbieCrow_Dagger_221000_Battle, true)
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
        if arg1:HasSpecialEffectId(TARGET_SELF, 5405) == false then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12140) == true and arg1:IsVisibleTarget(TARGET_ENE_0) == true then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 100
                local0[21] = 0
                local0[22] = 0
            elseif 15 <= local7 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[21] = 100
                local0[22] = 0
            elseif 10 <= local7 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[21] = 100
                local0[22] = 0
            elseif 6 <= local7 then
                local0[1] = 6
                local0[2] = 6
                local0[3] = 6
                local0[4] = 0
                local0[21] = 20
                local0[22] = 50
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 100
                local0[21] = 0
                local0[22] = 0
            end
        elseif local10 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if 25 <= local7 then
                local0[5] = 20
                local0[6] = 20
            else
                Kankyaku_Act(arg1, arg2, 0)
            end
        elseif local10 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if 25 <= local7 then
                local0[5] = 20
                local0[6] = 20
            else
                Torimaki_Act(arg1, arg2, 0)
            end
        elseif 15 <= local7 then
            local0[5] = 20
            local0[6] = 20
            local0[7] = 20
            local0[8] = 20
            local0[9] = 20
        elseif 10 <= local7 then
            local0[5] = 20
            local0[6] = 20
            local0[7] = 20
            local0[8] = 20
            local0[9] = 20
        elseif 6 <= local7 then
            local0[5] = 28
            local0[6] = 23
            local0[7] = 23
            local0[8] = 16
            local0[9] = 10
        elseif 3.5 <= local7 then
            local0[5] = 4
            local0[6] = 10
            local0[7] = 21
            local0[8] = 22
            local0[9] = 15
        else
            local0[5] = 0
            local0[6] = 27
            local0[7] = 0
            local0[8] = 40
            local0[9] = 20
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
            local0[21] = 1 * local0[21]
            local0[22] = 1 * local0[22]
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
            local0[21] = 1 * local0[21]
            local0[22] = 1 * local0[22]
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, local9, local9) < 0.8 then
            local0[21] = 1.2 * local0[21]
        end
        local0[1] = SetCoolTime(arg1, arg2, 3000, 0, local0[1], local0[1] * 0.1)
        local0[2] = SetCoolTime(arg1, arg2, 3001, 0, local0[2], local0[2] * 0.1)
        local0[3] = SetCoolTime(arg1, arg2, 3002, 0, local0[3], local0[3] * 0.1)
        local0[4] = SetCoolTime(arg1, arg2, 3003, 0, local0[4], local0[4] * 0.1)
        local0[5] = SetCoolTime(arg1, arg2, 2003000, 0, local0[5], local0[5] * 0.1)
        local0[6] = SetCoolTime(arg1, arg2, 2003001, 0, local0[6], local0[6] * 0.1)
        local0[7] = SetCoolTime(arg1, arg2, 2003002, 0, local0[7], local0[7] * 0.1)
        local0[8] = SetCoolTime(arg1, arg2, 2003003, 0, local0[8], local0[8] * 0.1)
        local0[9] = SetCoolTime(arg1, arg2, 2003005, 0, local0[9], local0[9] * 0.1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act09)
    local1[20] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act22)
    local1[22] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act22)
    local1[22] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ZonbieCrow_Dagger_ActAfter_AdjustSpace), local2)
    return 
end

function ZonbieCrow_Dagger_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1600, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, -999, TARGET_ENE_0, true, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 12.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 2, 5)
    local local0 = 3003
    local local1 = 3004
    local local2 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act21(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5405) == false then
        local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 60), true, true, -1)
        local0:SetTargetRange(0, 6, 999)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 60), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Dagger_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5405) == false then
        local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, local0 + 1, TARGET_ENE_0, true, -1)
        local1:SetTargetRange(0, 6, 999)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, local0 + 1, TARGET_ENE_0, true, -1)
    end
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
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5405) == true then
        return false
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        ZonbieCrow_Dagger_Act04(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        arg2:ClearSubGoal()
        ZonbieCrow_Dagger_Act04(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

function ZonbieCrow_Dagger_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(ZonbieCrow_Dagger_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(ZonbieCrow_Dagger_AfterAttackAct, "ZonbieCrow_Dagger_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(ZonbieCrow_Dagger_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 999)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) == true then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 20)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
