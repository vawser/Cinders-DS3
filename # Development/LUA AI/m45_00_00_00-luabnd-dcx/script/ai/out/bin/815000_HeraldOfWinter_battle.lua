RegisterTableGoal(GOAL_HeraldOfWinter_815000_Battle, "GOAL_HeraldOfWinter_815000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HeraldOfWinter_815000_Battle, true)
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
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 230) then
        if local3 <= 3 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[4] = 800
                local0[20] = 200
            else
                local0[5] = 800
                local0[20] = 200
            end
        else
            local0[20] = 900
            local0[21] = 100
        end
    elseif 8 <= local3 then
        local0[1] = 400
        local0[2] = 200
        local0[3] = 0
        local0[6] = 300
        local0[7] = 100
        local0[21] = 0
        local0[22] = 0
    elseif 4.5 <= local3 then
        local0[1] = 250
        local0[2] = 200
        local0[3] = 0
        local0[6] = 250
        local0[7] = 100
        local0[21] = 200
        local0[22] = 0
    elseif 2.5 < local3 then
        local0[1] = 300
        local0[2] = 300
        local0[3] = 0
        local0[6] = 300
        local0[7] = 100
        local0[21] = 0
        local0[22] = 0
    else
        local0[1] = 350
        local0[2] = 0
        local0[3] = 350
        local0[6] = 200
        local0[7] = 100
        local0[21] = 0
        local0[22] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
        local0[2] = local0[2] + 300
        local0[6] = local0[6] + 200
        local0[7] = local0[7] + 200
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 12, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3004, 12, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3009, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3012, 12, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3014, 12, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3200, 12, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3201, 12, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3204, 12, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3024, 20, local0[7], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act07)
    local1[19] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HeraldOfWinter_815000_ActAfter_AdjustSpace), local2)
    return 
end

function HeraldOfWinter_815000_Act01(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 3.44, 3.44 + 6, 3.44 + 12, 40, 0, 4, 6)
    local local1 = 3000
    local local2 = 3001
    local local3 = 4.42 + 1.5
    local local4 = 999
    local local5 = 0
    local local6 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 3.63 + 1.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4.59, 4.59 + 6, 4.59 + 12, 40, 0, 3, 6)
    local local1 = 3004
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 4.84 + 1.5, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 999, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act03(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = 3008
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act04(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act05(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 3.78 + 1.5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act06(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.77, 5.77 + 6, 5.77 + 12, 40, 0, 3, 6)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 2, TARGET_ENE_0, 999, TARGET_SELF, false, 9920)
    local1:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act07(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.77, 5.77 + 6, 5.77 + 12, 40, 0, 4, 6)
    local local1 = 3024
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 4.84 + 1.5, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 999, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act19(arg0, arg1, arg2)
    local local0 = 3019
    local local1 = 3002
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HeraldOfWinter_815000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
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
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and local0 <= 10 then
        local local1 = 0
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local1 = local1 + 50
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            local1 = local1 + 30
        else
            local1 = local1 + 10
        end
        if 5 <= local0 then
            local1 = local1 + 50
        elseif 3 <= local0 then
            local1 = local1 + 30
        else
            local1 = local1 + 10
        end
        if arg1:GetRandam_Int(1, 100) <= local1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
        local local1 = arg1:GetDist(TARGET_ENE_0)
        local local2 = arg1:GetRandam_Int(1, 100)
        local local3 = 3.63 + 2
        local local4 = 4.84 + 2
        local local5 = 2.6 + 2
        local local6 = 5.77 + 2
        local local7 = 8.89
        local local8 = 3.24 + 0.5
        local local9 = 2.6 + 0.5
        local local10 = 5.77 + 0.5
        local local11 = 999
        local local12 = 0
        local local13 = 0
        arg1:SetTimer(1, 8)
        arg2:ClearSubGoal()
        if 5 <= local1 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3200, TARGET_ENE_0, local5, 0, 0, 0, 0)
        elseif 3 <= local1 then
            if not SpaceCheck(arg1, arg2, 0, 13) then
                local local14 = 0
            end
            if local2 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3201, TARGET_ENE_0, local5, 0, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3204, TARGET_ENE_0, local11, local12, local13, 0, 0)
            end
        else
            if not SpaceCheck(arg1, arg2, 0, 13) then
                local local14 = 0
            end
            if local2 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3201, TARGET_ENE_0, local5, 0, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3204, TARGET_ENE_0, local11, local12, local13, 0, 0)
            end
        end
        return true
    else
        return false
    end
end

function HeraldOfWinter_815000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HeraldOfWinter_815000_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_HeraldOfWinter_815000_AfterAttackAct, "GOAL_HeraldOfWinter_815000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HeraldOfWinter_815000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if (local0 > 5 or local1 > 20) and local0 <= 8 and local1 <= 20 then
        HeraldOfWinter_815000_Act21(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
