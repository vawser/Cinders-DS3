RegisterTableGoal(GOAL_Roller_117001_Battle, "Roller_117001_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Roller_117001_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 5)
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
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[5] = 70
        local0[20] = 30
    else
        if 5.8 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 15
            local0[4] = 15
            local0[5] = 40
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
        elseif 2.5 <= local3 then
            local0[1] = 20
            local0[2] = 20
            local0[3] = 0
            local0[4] = 10
            local0[5] = 10
            local0[6] = 20
            local0[21] = 10
            local0[22] = 0
            local0[23] = 10
            local0[24] = 0
        elseif 1.5 <= local3 then
            local0[1] = 20
            local0[2] = 20
            local0[3] = 0
            local0[4] = 20
            local0[5] = 0
            local0[6] = 20
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
        else
            local0[1] = 20
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 20
            local0[6] = 20
            local0[21] = 0
            local0[22] = 10
            local0[23] = 0
            local0[24] = 20
        end
        local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
        local0[2] = SetCoolTime(arg1, arg2, 3003, 5, local0[2], 1)
        local0[3] = SetCoolTime(arg1, arg2, 3005, 5, local0[3], 1)
        local0[4] = SetCoolTime(arg1, arg2, 3006, 5, local0[4], 1)
        local0[5] = SetCoolTime(arg1, arg2, 3010, 5, local0[5], 1)
        local0[6] = SetCoolTime(arg1, arg2, 3012, 5, local0[5], 1)
        local0[23] = SetCoolTime(arg1, arg2, 6002, 6, local0[23], 1)
        local0[23] = SetCoolTime(arg1, arg2, 6003, 6, local0[23], 1)
        local0[24] = SetCoolTime(arg1, arg2, 6001, 12, local0[24], 1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Roller_117001_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Roller_117001_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Roller_117001_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Roller_117001_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Roller_117001_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Roller_117001_Act06)
    local1[20] = REGIST_FUNC(arg1, arg2, Roller_117001_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Roller_117001_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Roller_117001_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Roller_117001_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, Roller_117001_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Roller_117001_ActAfter_AdjustSpace), local2)
    return 
end

function Roller_117001_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.8 - arg0:GetMapHitRadius(TARGET_SELF), 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    local local0 = 3000
    local local1 = 3008
    local local2 = 3001
    local local3 = 3002
    local local4 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if local9 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local7, local8, 0, 0)
        elseif local9 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        end
    elseif local9 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local6, local7, local8, 0, 0)
    elseif local9 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117001_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.3, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    local local0 = 3003
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 9.9 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117001_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10 - arg0:GetMapHitRadius(TARGET_SELF), 10 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117001_Act04(arg0, arg1, arg2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        Approach_Act_Flex(arg0, arg1, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    else
        Approach_Act_Flex(arg0, arg1, 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6.2 - arg0:GetMapHitRadius(TARGET_SELF), 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117001_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local1 <= 5 then
                local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                local2:SetLifeEndSuccess(true)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local0, 0, 0)
            else
                local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                local2:SetLifeEndSuccess(true)
                local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                local2:SetLifeEndSuccess(true)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            end
        elseif local1 <= 5 then
            local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            local2:SetLifeEndSuccess(true)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local0, 0, 0)
        else
            local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            local2:SetLifeEndSuccess(true)
            local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
            local2:SetLifeEndSuccess(true)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 <= 5 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        local2:SetLifeEndSuccess(true)
        local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local2:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local0, 0, 0)
    else
        local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        local2:SetLifeEndSuccess(true)
        local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local2:SetLifeEndSuccess(true)
        local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local2:SetLifeEndSuccess(true)
        local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local2:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117001_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.4, 5.4 + 2, 5.4 + 2, 0, 0, 2, 2)
    local local0 = 3012
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
    local4:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller_117001_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller_117001_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, 120, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, 120, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller_117001_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, 120, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, 120, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller_117001_Act23(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller_117001_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        Roller_117001_Act05(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller_117001_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Roller_117001_AfterAttackAct, 10)
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
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) and arg1:GetDist(TARGET_ENE_0) <= 5 and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 999, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetRandam_Int(1, 100) <= 30 and arg1:IsFinishTimer(0) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:SetNumber(0, 5)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            return true
        else
            arg1:SetNumber(0, 5)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            return true
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_Roller_117001_AfterAttackAct, "GOAL_Roller_117001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Roller_117001_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    if arg1:GetRandam_Int(1, 100) <= 50 then
        if arg1:GetDist(TARGET_ENE_0) <= 1.5 then
            Roller_117001_Act21(arg1, arg2, paramTbl)
        else
            Roller_117001_Act22(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
