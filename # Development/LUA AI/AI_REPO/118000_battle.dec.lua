RegisterTableGoal(GOAL_LordYupa_118000_Battle, "LordYupa_118000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_LordYupa_118000_Battle, false)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 2 then
        local0[12] = 80
        local0[5] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 5 then
        local0[10] = 33
        local0[11] = 33
        local0[8] = 33
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 10 then
        local0[5] = 50
        local0[8] = 50
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    else
        if 12 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 50
            local0[4] = 0
            local0[5] = 0
            local0[6] = 10
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[11] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 20
        elseif 6 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 30
            local0[4] = 0
            local0[5] = 20
            local0[6] = 5
            local0[7] = 5
            local0[8] = 10
            local0[9] = 0
            local0[10] = 0
            local0[11] = 0
            local0[21] = 20
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
        elseif 1.5 <= local3 then
            local0[1] = 20
            local0[2] = 0
            local0[3] = 0
            local0[4] = 20
            local0[5] = 0
            local0[6] = 15
            local0[7] = 15
            local0[8] = 20
            local0[9] = 10
            local0[10] = 5
            local0[11] = 5
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
        else
            local0[1] = 10
            local0[2] = 0
            local0[3] = 0
            local0[4] = 30
            local0[5] = 0
            local0[6] = 10
            local0[7] = 10
            local0[8] = 20
            local0[9] = 10
            local0[10] = 0
            local0[11] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 10
            local0[24] = 0
        end
        if SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_SideStep")) then
            local0[10] = 1
        end
        if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_SideStep")) then
            local0[11] = 1
        end
        local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
        local0[2] = SetCoolTime(arg1, arg2, 3005, 5, local0[2], 1)
        local0[3] = SetCoolTime(arg1, arg2, 3008, 0, local0[3], 1)
        local0[4] = SetCoolTime(arg1, arg2, 3009, 15, local0[4], 1)
        local0[5] = SetCoolTime(arg1, arg2, 3010, 7, local0[5], 1)
        local0[5] = SetCoolTime(arg1, arg2, 3011, 7, local0[5], 1)
        local0[6] = SetCoolTime(arg1, arg2, 3014, 5, local0[6], 1)
        local0[7] = SetCoolTime(arg1, arg2, 3015, 5, local0[7], 1)
        local0[9] = SetCoolTime(arg1, arg2, 3017, 5, local0[9], 1)
        local0[10] = SetCoolTime(arg1, arg2, 3013, 15, local0[10], 1)
        local0[11] = SetCoolTime(arg1, arg2, 3012, 15, local0[11], 1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, LordYupa_118000_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, LordYupa_118000_ActAfter_AdjustSpace), local2)
    return 
end

function LordYupa_118000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 2, 2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 2)
    local local0 = 3005
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 1.8, TARGET_ENE_0, AI_DIR_TYPE_ToL, 4, TARGET_SELF, false)
        local2:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_LordYupa_StepKnife, 10)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 1.8, TARGET_ENE_0, AI_DIR_TYPE_ToR, 4, TARGET_SELF, false)
        local2:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_LordYupa_StepKnife, 10)
    else
        arg1:AddSubGoal(GOAL_LordYupa_StepKnife, 10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    Approach_Act_Flex(arg0, arg1, 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 2, 2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0.8, 0.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act08(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 2, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act10(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act11(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act12(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118000_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 90), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, arg0:GetStringIndexedNumber("Dist_BackStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5032) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
    end
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(5, 10)
    local local3 = 3017
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_Damaged) and local0 <= 3 and local1 <= 20 then
        if arg1:GetRandam_Int(1, 100) <= 50 and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_SideStep")) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        elseif SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_SideStep")) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        local local4 = 3.6 - arg1:GetMapHitRadius(TARGET_SELF) + 1
        local local5 = 4.8 - arg1:GetMapHitRadius(TARGET_SELF) + 1
        local local6 = 4.4 - arg1:GetMapHitRadius(TARGET_SELF) + 1
        local local7 = 99 - arg1:GetMapHitRadius(TARGET_SELF) + 1
        local local8 = 4.3 - arg1:GetMapHitRadius(TARGET_SELF) + 1
        local local9 = 10.5 - arg1:GetMapHitRadius(TARGET_SELF) + 1
        local local10 = 99 - arg1:GetMapHitRadius(TARGET_SELF) + 1
        local local11 = 10 - arg1:GetMapHitRadius(TARGET_SELF)
        local local12 = 0
        local local13 = 0
        local local14 = arg1:GetRandam_Int(1, 100)
        if local0 <= 2.5 then
            if local14 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local11, 0, 0)
                return true
            elseif local14 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, local9, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local11, 0, 0)
                return true
            end
        elseif local0 <= 3.6 then
            if local14 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local11, 0, 0)
                return true
            elseif local14 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local9, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local11, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local9, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local5, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local11, 0, 0)
                return true
            end
        elseif local0 <= 5 then
            if local14 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local11, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 8 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local11, 0, 0)
                return true
            end
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
        local local4 = 3007
        local local5 = 3004
        local local6 = 10.5 - arg1:GetMapHitRadius(TARGET_SELF)
        local local15 = 10 - arg1:GetMapHitRadius(TARGET_SELF)
        if local0 <= 10.5 - arg1:GetMapHitRadius(TARGET_SELF) and local1 <= 40 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, arg1:GetStringIndexedNumber("Dist_BackStep"))
            return true
        elseif local0 <= 10.5 - arg1:GetMapHitRadius(TARGET_SELF) and local1 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local15, 0, 0)
            return true
        elseif local0 <= 10.5 - arg1:GetMapHitRadius(TARGET_SELF) and local1 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 99 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local15, 0, 0)
            return true
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if local0 <= 3 then
            if local1 <= 70 then
                LordYupa_118000_Act01(arg1, arg2, paramTbl)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif 7 <= local0 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and 1 <= local0 then
        arg2:ClearSubGoal()
        local local4 = arg2:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 1.8, TARGET_ENE_0, AI_DIR_TYPE_ToL, 4, TARGET_SELF, false)
        local4:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and 1 <= local0 then
        arg2:ClearSubGoal()
        local local4 = arg2:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 1.8, TARGET_ENE_0, AI_DIR_TYPE_ToR, 4, TARGET_SELF, false)
        local4:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_LordYupa_StepKnife, "GOAL_LordYupa_StepKnife")
Goal.Activate = function (arg0, arg1, arg2)
    if SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_SideStep")) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_SideStep")) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 999, TARGET_SELF, true, 0)
    end
    return 
end

return 
