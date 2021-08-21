RegisterTableGoal(GOAL_HollowManservant_802000_Usu, "GOAL_HollowManservant_802000_Usu")
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 12230) then
        local0[4] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) and local3 < 2.5 then
        local0[3] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and local3 < 2.5 then
        local0[2] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif arg1:GetNpcThinkParamID() == 126001 then
        if 7 <= local3 then
            local0[1] = 60
            local0[5] = 25
            local0[6] = 15
        elseif 2 <= local3 then
            local0[1] = 60
            local0[5] = 20
            local0[6] = 25
        else
            local0[1] = 55
            local0[5] = 10
            local0[6] = 35
        end
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.5 then
        local0[4] = 100
    elseif 7 <= local3 then
        local0[1] = 60
        local0[5] = 25
        local0[6] = 15
    elseif 2 <= local3 then
        local0[1] = 60
        local0[5] = 20
        local0[6] = 20
    else
        local0[1] = 55
        local0[5] = 10
        local0[6] = 35
    end
    local1[1] = REGIST_FUNC(arg1, arg2, HollowManservant_Usu_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HollowManservant_Usu_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HollowManservant_Usu_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HollowManservant_Usu_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HollowManservant_Usu_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HollowManservant_Usu_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, HollowManservant_Usu_Act07)
    local1[20] = REGIST_FUNC(arg1, arg2, HollowManservant_Usu_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HollowManservant_Usu_ActAfter_AdjustSpace), local2)
    return 
end

function HollowManservant_Usu_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 8)
    local local0 = 3000
    local local1 = 3003
    local local2 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = ATT_SUCCESSDIST
    local local4 = -1
    local local5 = 45
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    elseif local6 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    elseif local6 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowManservant_Usu_Act02(arg0, arg1, arg2)
    local local0 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local1 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 998
    local local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local local3 = 0
    local local4 = 0
    local local5 = 3
    local local6 = 8
    local local7 = 3007
    local local8 = 3003
    local local9 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = ATT_SUCCESSDIST
    local local11 = 0
    local local12 = 0
    local local13 = arg0:GetRandam_Int(1, 100)
    if local13 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local7, TARGET_ENE_0, local10, local11, local12, 0, 0)
    elseif local13 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    elseif local13 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    elseif local13 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowManservant_Usu_Act03(arg0, arg1, arg2)
    local local0 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local1 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 998
    local local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local local3 = 0
    local local4 = 0
    local local5 = 3
    local local6 = 8
    local local7 = 3008
    local local8 = 3003
    local local9 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = ATT_SUCCESSDIST
    local local11 = 0
    local local12 = 0
    local local13 = arg0:GetRandam_Int(1, 100)
    if local13 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local7, TARGET_ENE_0, local10, local11, local12, 0, 0)
    elseif local13 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    elseif local13 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    elseif local13 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowManservant_Usu_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14.8 - arg0:GetMapHitRadius(TARGET_SELF), 14.8 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 14.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, -1, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowManservant_Usu_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Float(3, 6.5)
    if local1 + 2 <= local0 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 8, TARGET_ENE_0, local1, TARGET_SELF, false, 9920)
        local2:SetLifeEndSuccess(true)
    elseif local1 <= local0 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 8, TARGET_ENE_0, local1, TARGET_SELF, true, 9920)
        local2:SetLifeEndSuccess(true)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, -1, 90, 0, 0)
    end
    arg1:AddSubGoal(GOAL_HollowManservant_Usu_SelectAttack, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowManservant_Usu_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 6)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, ATT_SUCCESSDIST, -1, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowManservant_Usu_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(3, 6)
    if local0 + 1 <= arg0:GetDist(TARGET_ENE_0) then
        local local1 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 8, TARGET_ENE_0, local0, TARGET_SELF, false, 9920)
        local1:SetLifeEndSuccess(true)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, -1, 90, 0, 0)
    end
    arg1:AddSubGoal(GOAL_HollowManservant_Usu_SelectAttack, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowManservant_Usu_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowManservant_Usu_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetRandam_Int(1, 100) <= 50 then
        arg2:ClearSubGoal()
        HollowManservant_Usu_Act07(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_HollowManservant_802000_UseSelectAttack, "GOAL_HollowManservant_802000_UseSelectAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HollowManservant_802000_UseSelectAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    if arg1:GetHpRate(TARGET_SELF) <= 0.5 and not arg1:GetNpcThinkParamID() == 126001 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, ATT_SUCCESSDIST, -1, 45, 0, 0)
    elseif local0 <= 5 then
        local local1 = 3014
        local local2 = 3002
        local local3 = 3017
        local local4 = 2.9 - arg1:GetMapHitRadius(TARGET_SELF) + 2
        local local5 = 4.7 - arg1:GetMapHitRadius(TARGET_SELF) + 2
        local local6 = ATT_SUCCESSDIST
        local local7 = 0
        local local8 = 0
        local local9 = arg1:GetRandam_Int(1, 100)
        if local9 <= 0 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local6, local7, local8, 0, 0)
        elseif local9 <= 25 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        elseif local9 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        elseif local9 <= 100 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        end
    elseif local0 <= 10 then
        local local1 = 3004
        local local2 = 3002
        local local3 = 3017
        local local4 = 2.9 - arg1:GetMapHitRadius(TARGET_SELF) + 2
        local local5 = 4.7 - arg1:GetMapHitRadius(TARGET_SELF) + 2
        local local6 = ATT_SUCCESSDIST
        local local7 = 0
        local local8 = 0
        local local9 = arg1:GetRandam_Int(1, 100)
        if local9 <= 0 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local6, local7, local8, 0, 0)
        elseif local9 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        elseif local9 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        elseif local9 <= 100 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        end
    else
        local local1 = 3004
        local local2 = 3002
        local local3 = 3017
        local local4 = 2.9 - arg1:GetMapHitRadius(TARGET_SELF) + 2
        local local5 = 4.7 - arg1:GetMapHitRadius(TARGET_SELF) + 2
        local local6 = ATT_SUCCESSDIST
        local local7 = 0
        local local8 = 0
        local local9 = arg1:GetRandam_Int(1, 100)
        if local9 <= 0 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local6, local7, local8, 0, 0)
        elseif local9 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        elseif local9 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        elseif local9 <= 100 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
