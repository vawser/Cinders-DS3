RegisterTableGoal(GOAL_610000_PowerKnight_MagicAxe_Battle, "GOAL_610000_PowerKnight_MagicAxe")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_610000_PowerKnight_MagicAxe_Battle, true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetHpRate(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if 20 <= local3 then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 4680) then
            local0[9] = 1000
        else
            local0[29] = 1000
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 220) then
        if local3 <= 2 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[4] = 600
                local0[20] = 400
            else
                local0[5] = 600
                local0[20] = 400
            end
        else
            local0[20] = 900
            local0[21] = 100
        end
    elseif 7 < local3 then
        local0[1] = 200
        local0[2] = 0
        local0[3] = 300
        local0[6] = 300
        local0[7] = 200
        local0[8] = 0
    elseif 5 < local3 then
        local0[1] = 300
        local0[2] = 0
        local0[3] = 0
        local0[6] = 300
        local0[7] = 300
        local0[8] = 100
    elseif 2.5 < local3 then
        local0[1] = 300
        local0[2] = 300
        local0[3] = 0
        local0[6] = 0
        local0[7] = 300
        local0[8] = 100
    else
        local0[1] = 400
        local0[2] = 400
        local0[3] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 200
    end
    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        local0[6] = local0[6] + 500
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 9, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3004, 9, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3008, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3012, 9, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3014, 9, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3021, 11, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3018, 11, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3019, 11, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3025, 15, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3026, 15, local0[8], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
        local0[7] = local0[7] + 300
        local0[8] = local0[8] + 300
    end
    if 10 <= arg1:GetDistYSigned(TARGET_ENE_0) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        if arg1:GetDist(TARGET_EVENT) <= 50 and arg1:HasSpecialEffectId(TARGET_EVENT, 4680) then
            local0[11] = 1000
        end
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act11)
    local1[19] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act23)
    local1[29] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_Act29)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_MagicAxe_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_610000_PowerKnight_MagicAxe_Act01(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    Approach_Act_Flex(arg0, arg1, 4.88, 4.88 + 6, 4.88 + 12, 40, 0, 3, 6)
    local local0 = 4.26
    local local1 = 6.64
    local local2 = 999
    local local3 = 0
    local local4 = 0
    if 1.5 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 3.2, 3.2 + 6, 3.2 + 12, 40, 0, 3, 6)
    local local1 = 3004
    local local2 = 3005
    local local3 = 3006
    local local4 = 5
    local local5 = 5
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    if local8 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4.61, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act03(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 7.75, 7.75 + 6, 7.75 + 12, 40, 0, 3, 6)
    local local1 = 4.84 + 1.5
    local local2 = 999
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 4.26 + 1.5, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act04(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.92 + 1.5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act05(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 3.97 + 1.5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act07(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.81, 5.81 + 6, 5.81 + 12, 40, 0, 4, 6)
    local local1 = 999
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 5, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act08(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4.17, 4.17 + 6, 4.17 + 12, 40, 0, 3, 6)
    local local1 = 999
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 4.26, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_EVENT, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act19(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = 3019
    local local1 = 3002
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, 60, true, true, 0)
        local0:SetTargetRange(1, 3, 999)
    else
        local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, 60, true, true, 0)
        local0:SetTargetRange(1, 3, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act22(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
    local0:SetTargetRange(1, 3, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act23(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(2, 5), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(1, 10, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_MagicAxe_Act29(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 0, TARGET_SELF, true, -1)
    local0:SetTargetRange(1, 10, 999)
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
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and local1 < 10 then
        arg2:ClearSubGoal()
        arg1:Replaning()
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        local local4 = 3002
        if 6 <= local0 then
            local4 = 3009
        elseif 4 <= local0 then
            if local2 <= 25 then
                local4 = 3002
            elseif local2 <= 50 then
                local4 = 3026
            else
                local4 = 3009
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local2 <= 50 then
                local4 = 3002
            else
                local4 = 3026
            end
        else
            return false
        end
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and local0 <= 5.5 and not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and 3 <= local0 and 13 <= arg1:GetAttackPassedTime(3021) and arg1:GetRandam_Int(1, 100) <= 70 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(1) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) and 6 <= local0 then
        arg2:ClearSubGoal()
        if 10 <= local1 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            GOAL_610000_PowerKnight_MagicAxe_Act10(arg1, arg2, paramTbl)
        end
        return true
    else
        return false
    end
end

function GOAL_610000_PowerKnight_MagicAxe_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_610000_PowerKnight_MagicAxe_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_610000_PowerKnight_MagicAxe_AfterAttackAct, "GOAL_610000_PowerKnight_MagicAxe_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_610000_PowerKnight_MagicAxe_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if 20 <= local0 then
        GOAL_610000_PowerKnight_MagicAxe_Act23(arg1, arg2, paramTbl)
    elseif 3 <= local0 then
        if local1 <= 33 then
            GOAL_610000_PowerKnight_MagicAxe_Act21(arg1, arg2, paramTbl)
        end
    elseif local1 <= 33 then
        GOAL_610000_PowerKnight_MagicAxe_Act22(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
