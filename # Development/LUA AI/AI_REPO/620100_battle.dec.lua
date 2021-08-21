RegisterTableGoal(GOAL_YUPA620100_Battle, "GOAL_YUPA620100")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_YUPA620100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetTimer(1, 60)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
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
    if arg1:GetNumber(0) == 0 then
        local0[27] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 8 <= local3 then
            local0[1] = 1
            local0[2] = 0
            local0[3] = 40
            local0[4] = 20
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 1
            local0[9] = 0
            local0[10] = 0
            local0[11] = 10
            local0[12] = 10
            local0[20] = 10
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[25] = 0
            local0[26] = 0
        elseif 2 <= local3 then
            local0[1] = 1
            local0[2] = 0
            local0[3] = 0
            local0[4] = 40
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 1
            local0[9] = 0
            local0[10] = 0
            local0[11] = 20
            local0[12] = 20
            local0[20] = 20
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[25] = 0
            local0[26] = 0
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[1] = 1
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 40
            local0[6] = 0
            local0[7] = 0
            local0[8] = 1
            local0[9] = 0
            local0[10] = 20
            local0[11] = 20
            local0[12] = 0
            local0[20] = 10
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[25] = 0
            local0[26] = 0
        else
            local0[1] = 1
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 40
            local0[7] = 0
            local0[8] = 1
            local0[9] = 0
            local0[10] = 20
            local0[11] = 0
            local0[12] = 20
            local0[20] = 10
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[25] = 0
            local0[26] = 0
        end
    elseif 15 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 60
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 1
        local0[9] = 20
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[26] = 0
        if arg1:IsFinishTimer(1) == true then
            local0[27] = 100
        end
    elseif 4.8 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 0
        local0[4] = 30
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 1
        local0[9] = 30
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 15
        local0[26] = 15
        if arg1:IsFinishTimer(1) == true then
            local0[27] = 100
        end
    else
        local0[1] = 0
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 10
        local0[8] = 20
        local0[9] = 0
        local0[10] = 10
        local0[11] = 0
        local0[12] = 0
        local0[14] = 30
        local0[20] = 0
        local0[21] = 20
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[26] = 0
        if arg1:IsFinishTimer(1) == true then
            local0[27] = 100
        end
        if local3 <= 2.5 then
            local0[21] = 0
        end
    end
    if local3 <= 4 then
        arg1:SetTimer(1, 30)
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
        local0[1] = local0[1] * 10
        local0[2] = local0[2] * 10
        local0[3] = local0[3] * 1
        local0[4] = local0[4] * 10
        local0[5] = local0[5] * 1
        local0[6] = local0[6] * 1
        local0[7] = local0[7] * 1
        local0[8] = local0[8] * 1
        local0[9] = local0[9] * 1
    end
    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) and local3 <= 5 then
        local0[21] = local0[1] * 10
        local0[22] = local0[1] * 10
        local0[24] = local0[1] * 10
        local0[25] = local0[1] * 10
        local0[26] = local0[1] * 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 12, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3005, 30, local0[2], 0)
    local0[3] = SetCoolTime(arg1, arg2, 3007, 30, local0[3], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 22, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3015, 8, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3016, 8, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3017, 30, local0[7], 0)
    local0[8] = SetCoolTime(arg1, arg2, 3020, 15, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3023, 8, local0[9], 0)
    local0[10] = SetCoolTime(arg1, arg2, 3025, 20, local0[10], 0)
    local0[11] = SetCoolTime(arg1, arg2, 3028, 12, local0[11], 0)
    local0[11] = SetCoolTime(arg1, arg2, 3029, 12, local0[11], 0)
    local0[12] = SetCoolTime(arg1, arg2, 3028, 12, local0[10], 0)
    local0[12] = SetCoolTime(arg1, arg2, 3029, 12, local0[10], 0)
    local0[14] = SetCoolTime(arg1, arg2, 3033, 60, local0[14], 0)
    local0[24] = SetCoolTime(arg1, arg2, 6001, 20, local0[24], 0)
    local0[25] = SetCoolTime(arg1, arg2, 6002, 20, local0[25], 0)
    local0[25] = SetCoolTime(arg1, arg2, 6003, 20, local0[25], 0)
    local0[26] = SetCoolTime(arg1, arg2, 6002, 20, local0[26], 0)
    local0[26] = SetCoolTime(arg1, arg2, 6003, 20, local0[26], 0)
    if 0.7 <= local7 then
        local0[2] = 0
    end
    if 0.5 <= local7 then
        local0[14] = 0
    end
    if local7 <= 0.3 then
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, YUPA620100_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, YUPA620100_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, YUPA620100_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, YUPA620100_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, YUPA620100_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, YUPA620100_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, YUPA620100_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, YUPA620100_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, YUPA620100_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, YUPA620100_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, YUPA620100_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, YUPA620100_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, YUPA620100_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, YUPA620100_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, YUPA620100_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, YUPA620100_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, YUPA620100_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, YUPA620100_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, YUPA620100_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, YUPA620100_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, YUPA620100_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, YUPA620100_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, YUPA620100_Act28)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, YUPA620100_ActAfter_AdjustSpace), local2)
    return 
end

function YUPA620100_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7, 7 + 10, 7 + 10, 0, 0, 3, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5 + 10, 5 + 10, 0, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 5 + 2
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 5 + 2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act03(arg0, arg1, arg2)
    local local0 = 26
    arg0:SetNumber(0, 1)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, local0, 26, 26, 0, 0, 3, 7)
    end
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act04(arg0, arg1, arg2)
    local local0 = 21.09
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(0, 1)
    if local0 <= local1 then
        Approach_Act_Flex(arg0, arg1, local0, 21.09 + 10, 21.09 + 10, 0, 0, 3, 7)
    elseif 3 < local1 and local2 <= 50 then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.7, TARGET_ENE_0, 0, 60, true, true, 0)
        local3:SetLifeEndSuccess(true)
    elseif 3 < local1 then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.7, TARGET_ENE_0, 1, 60, true, true, 0)
        local3:SetLifeEndSuccess(true)
    end
    local local3 = 3008
    local local4 = 3009
    local local5 = 3010
    local local6 = 999
    local local7 = 0
    local local8 = 0
    local local9 = 9.52 + 2
    local local10 = 30 + 2
    if local2 <= 40 and local1 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 8, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 15, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act05(arg0, arg1, arg2)
    local local0 = 3015
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act06(arg0, arg1, arg2)
    local local0 = 3016
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act07(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.83, 4.83 + 10, 4.83 + 10, 0, 0, 3, 5)
    local local0 = 3021
    local local1 = 999
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 2.37 + 2, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 22, 40, 40, 0, 0, 3, 5)
    local local0 = 3023
    local local1 = 999
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.75, 3.75, 3.75, 0, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act11(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3028, TARGET_ENE_0, 20, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act12(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3029, TARGET_ENE_0, 20, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act13(arg0, arg1, arg2)
    local local0 = 999
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act14(arg0, arg1, arg2)
    local local0 = 3033
    local local1 = 999
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    arg0:SetTimer(1, 30)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, 30, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620100_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620100_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if 4 <= arg0:GetDist(TARGET_ENE_0) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.7, TARGET_ENE_0, 0, 60, true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.7, TARGET_ENE_0, 1, 60, true, true, 0)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620100_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.3, TARGET_ENE_0, 7.2, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620100_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620100_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620100_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 0, 60, true, true, 0)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620100_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 0, 60, true, true, 0)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620100_Act27(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 6, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620100_Act28(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, true, 0)
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
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsInterupt(INTERUPT_Shoot) and 4 < local1 and local1 <= 7 then
        arg1:SetTimer(1, 0.1)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and (local2 <= 0.5 or local0 <= 50) then
        local local3 = 3021
        local local4 = 999
        local local5 = 0
        local local6 = 0
        local local7 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and local1 <= 3.2 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4, 0, 0)
        elseif local1 <= 3.2 and local7 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4, 0, 0)
        elseif local1 <= 13 and local7 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local4, 0, 0)
            arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
        end
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and (local2 <= 0.5 or local0 <= 50) then
        local local3 = 3000
        local local8 = 3001
        local local4 = 3002
        local local5 = 999
        local local6 = 0
        local local7 = 0
        local local9 = arg1:GetRandam_Int(1, 100)
        if 2 <= local1 then
            if local9 <= 50 and 0.5 <= local2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            elseif local9 <= 75 and 0.5 <= local2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0)
            elseif local9 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0)
            elseif local9 <= 75 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
            end
        elseif local9 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 7, 0, 0)
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 7, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
        end
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and (local2 <= 0.5 or local0 <= 50) then
        if local1 <= 2 then
            if arg1:GetRandam_Int(1, 100) <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 7, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        end
    end
    return 
end

function YUPA620100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_YUPA620100_Battle_AfterAttackAct, "GOAL_YUPA620100_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_YUPA620100_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    if 10 > local0 then
        if 6 <= local0 then
            if 0.5 <= local2 then
                YUPA620100_Act21(arg1, arg2, paramTbl)
            end
        elseif 1 <= local0 and 0.5 <= local2 then
            YUPA620100_Act21(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
