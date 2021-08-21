RegisterTableGoal(GOAL_Roller_117000_Battle, "Roller_117000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Roller_117000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[4] = 80
        local0[20] = 20
    else
        if 5 <= local3 then
            local0[1] = 10
            local0[2] = 5
            local0[3] = 20
            local0[4] = 60
            local0[5] = 0
            local0[6] = 5
            local0[21] = 0
            local0[22] = 0
        elseif 3 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 0
            local0[6] = 10
            local0[21] = 40
            local0[22] = 0
        elseif 0.7 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 0
            local0[4] = 20
            local0[5] = 0
            local0[6] = 20
            local0[21] = 20
            local0[22] = 10
        else
            local0[1] = 5
            local0[2] = 5
            local0[3] = 0
            local0[4] = 10
            local0[5] = 40
            local0[6] = 10
            local0[21] = 0
            local0[22] = 30
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
            local0[4] = local0[4] + 20
        end
        local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
        local0[2] = SetCoolTime(arg1, arg2, 3003, 5, local0[2], 1)
        local0[3] = SetCoolTime(arg1, arg2, 3005, 5, local0[3], 1)
        local0[4] = SetCoolTime(arg1, arg2, 3010, 7, local0[4], 1)
        local0[5] = SetCoolTime(arg1, arg2, 3008, 5, local0[5], 1)
        local0[6] = SetCoolTime(arg1, arg2, 3007, 5, local0[6], 1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Roller_117000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Roller_117000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Roller_117000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Roller_117000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Roller_117000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Roller_117000_Act06)
    local1[20] = REGIST_FUNC(arg1, arg2, Roller_117000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Roller_117000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Roller_117000_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Roller_117000_ActAfter_AdjustSpace), local2)
    return 
end

function Roller_117000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 100, 2, 2)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 70 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local local10 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 9910)
            local10:SetLifeEndSuccess(true)
        else
            local local10 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 9910)
            local10:SetLifeEndSuccess(true)
        end
    end
    if local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local6, local7, 0, 0)
    elseif local8 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 100, 2, 2)
    local local0 = 3003
    local local1 = 3012
    local local2 = 3004
    local local3 = 3013
    local local4 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg0:GetDist(TARGET_ENE_0)
    if local9 <= 70 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local local11 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 9910)
            local11:SetLifeEndSuccess(true)
        else
            local local11 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 9910)
            local11:SetLifeEndSuccess(true)
        end
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if local9 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local7, local8, 0, 0)
        elseif local9 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, DistToAtt, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        end
    elseif local9 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local6, local7, local8, 0, 0)
    elseif local9 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, DistToAtt, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF), 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 100, 2, 2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local local1 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 9910)
            local1:SetLifeEndSuccess(true)
        else
            local local1 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 9910)
            local1:SetLifeEndSuccess(true)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local0 <= 5 then
                local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                local3:SetLifeEndSuccess(true)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local1, 0, 0)
            else
                local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                local3:SetLifeEndSuccess(true)
                local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                local3:SetLifeEndSuccess(true)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local1, 0, 0)
            end
        elseif local0 <= 5 then
            local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            local3:SetLifeEndSuccess(true)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local1, 0, 0)
        else
            local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            local3:SetLifeEndSuccess(true)
            local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
            local3:SetLifeEndSuccess(true)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local1, 0, 0)
        end
    elseif local0 <= 5 then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        local3:SetLifeEndSuccess(true)
        local3 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local3:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local1, 0, 0)
    else
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        local3:SetLifeEndSuccess(true)
        local3 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local3:SetLifeEndSuccess(true)
        local3 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local3:SetLifeEndSuccess(true)
        local3 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local3:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117000_Act06(arg0, arg1, arg2)
    local local0 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF)
    Approach_Act_Flex(arg0, arg1, local0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 100, 2, 2)
    local local1 = 3007
    local local2 = 3015
    local local3 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 80 and local0 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.9, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 9910)
            local8:SetLifeEndSuccess(true)
        else
            local local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.9, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 9910)
            local8:SetLifeEndSuccess(true)
        end
    end
    if local7 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local5, local6, 0, 0)
    elseif local7 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller_117000_Act21(arg0, arg1, arg2)
    if 9 < arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, 90, true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, 90, true, true, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, 90, true, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, 90, true, true, 9910)
    end
    return 
end

function Roller_117000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller_117000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Roller_117000_AfterAttackAct, 10)
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
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) and local0 <= 5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetRandam_Int(1, 100) <= 80 then
            arg2:ClearSubGoal()
            if local1 <= 30 then
                Roller_117000_Act01(arg1, arg2, paramTbl)
                return true
            elseif local1 <= 60 then
                Roller_117000_Act02(arg1, arg2, paramTbl)
                return true
            else
                Roller_117000_Act06(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and local1 <= 30 and arg1:IsFinishTimer(0) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:SetTimer(0, 15)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            return true
        else
            arg1:SetTimer(0, 15)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_SuccessGuard) and local0 < 6 and local1 < 20 and 30 < arg1:GetSp(TARGET_SELF) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2.5, TARGET_SELF, false, 9910)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Roller_117000_AfterAttackAct, "GOAL_Roller_117000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Roller_117000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    if arg1:GetDist(TARGET_ENE_0) <= 1 then
        Roller_117000_Act22(arg1, arg2, paramTbl)
    else
        Roller_117000_Act21(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
