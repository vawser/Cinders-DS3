RegisterTableGoal(GOAL_HaraldKnight_812000_Battle, "GOAL_HaraldKnight_812000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HaraldKnight_812000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
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
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 3 <= local3 then
            local0[20] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
            local0[7] = 90
            local0[20] = 10
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            local0[9] = 70
            local0[11] = 20
            local0[20] = 10
        else
            local0[8] = 70
            local0[11] = 20
            local0[20] = 10
        end
    elseif 5 <= local3 then
        local0[1] = 20
        local0[2] = 60
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[10] = 20
        local0[21] = 0
        local0[22] = 0
    else
        local0[1] = 10
        local0[2] = 0
        local0[3] = 20
        local0[4] = 20
        local0[5] = 0
        local0[6] = 10
        local0[10] = 40
        local0[11] = 0
        local0[21] = 0
        local0[22] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3004, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 10, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3010, 40, local0[5], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3011, 40, local0[6], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3012, 40, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3014, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3015, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3017, 20, local0[10], 0)
    local0[10] = SetCoolTime(arg1, arg2, 3021, 20, local0[10], 0)
    local0[11] = SetCoolTime(arg1, arg2, 3021, 20, local0[11], 0)
    local0[11] = SetCoolTime(arg1, arg2, 3017, 20, local0[11], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, HaraldKnight_812000_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HaraldKnight_812000_ActAfter_AdjustSpace), local2)
    return 
end

function HaraldKnight_812000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.03, 6.03 + 8, 6.03 + 8, 0, 0, 5, 5)
    local local0 = 3002
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 4.14 + 5
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 6.23 + 5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.14 - 2, 12.14 + 0, 12.14 + 0, 100, 0, 5, 5)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.55, 5.55 + 8, 5.55 + 8, 0, 0, 5, 5)
    local local0 = 3005
    local local1 = 999
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.05, 5.05 + 8, 5.05 + 8, 0, 0, 5, 5)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act05(arg0, arg1, arg2)
    local local0 = 0.62
    if arg0:GetDist(TARGET_ENE_0) <= local0 then
        Approach_Act_Flex(arg0, arg1, local0, 0.62 + 8, 0.62 + 8, 0, 0, 5, 5)
    end
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act06(arg0, arg1, arg2)
    local local0 = 4.1
    if arg0:GetDist(TARGET_ENE_0) <= local0 then
        Approach_Act_Flex(arg0, arg1, local0, 4.1 + 8, 4.1 + 8, 0, 0, 5, 5)
    end
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act08(arg0, arg1, arg2)
    local local0 = 3002
    local local1 = 999
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 6.23 + 5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 4.14 + 5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.45, 5.45 + 8, 5.45 + 8, 0, 0, 5, 5)
    local local0 = 3018
    local local1 = 3019
    local local2 = 999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = 3.3 + 2
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.26, 4.26 + 8, 4.26 + 8, 0, 0, 5, 5)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 4.26 + 2
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if 10 <= arg0:GetDist(TARGET_ENE_0) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4.3, TARGET_ENE_0, 0, 60, true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4.3, TARGET_ENE_0, 1, 60, true, true, 0)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.2, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.2, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 5.5, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HaraldKnight_812000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if 6.23 + 4 <= arg1:GetDist(TARGET_ENE_0) and fate <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 999, 0, 0)
        elseif fate <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 4.14 + 4, 0, 0)
        end
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
        local local0 = arg1:GetDist(TARGET_ENE_0)
        local local1 = 999
        if 14 > local0 then
            if 2 <= local0 and arg1:GetNumber(0) < 1 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 0, 0, 0)
            end
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 999, TARGET_SELF, false, 0)
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and 6 <= arg1:GetDist(TARGET_ENE_0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4, TARGET_SELF, false, 9910)
    end
    return 
end

function HaraldKnight_812000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HaraldKnight_812000_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_HaraldKnight_812000_AfterAttackAct, "GOAL_HaraldKnight_812000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HaraldKnight_812000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if 10 > local0 then
        if 2 <= local0 then
            if local1 <= 50 then
                HaraldKnight_812000_Act21(arg1, arg2, paramTbl)
            end
        elseif local1 <= 50 then
            HaraldKnight_812000_Act21(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
