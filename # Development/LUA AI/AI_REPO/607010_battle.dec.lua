RegisterTableGoal(GOAL_CrowKnight_Claw_607010_Battle, "GOAL_CrowKnight_Claw_607010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrowKnight_Claw_607010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0.22)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetDist(TARGET_EVENT)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 3 then
        local0[6] = 300
        local0[20] = 700
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and 1.5 <= local3 and arg1:GetRandam_Int(1, 100) <= 60 then
        local0[8] = 1000
    elseif 7.5 <= local3 then
        local0[1] = 300
        local0[2] = 300
        local0[7] = 50
        local0[8] = 150
        local0[13] = 200
    elseif 5 <= local3 then
        local0[1] = 300
        local0[2] = 300
        local0[7] = 50
        local0[8] = 200
        local0[13] = 150
    elseif 2.5 <= local3 then
        local0[1] = 350
        local0[2] = 350
        local0[6] = 0
        local0[8] = 150
        local0[13] = 150
    else
        local0[1] = 400
        local0[2] = 400
        local0[6] = 200
        local0[13] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3032, 10, local0[2], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3015, 3, local0[6], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3016, 3, local0[6], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3025, 3, local0[6], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3026, 3, local0[6], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3018, 25, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3021, 15, local0[8], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3010, 10, local0[13], 0)
    if SpaceCheck(arg1, arg2, 0, 5) == false then
        local0[7] = 0
    end
    if SpaceCheck(arg1, arg2, 0, 3) == false then
        local0[8] = 0
        local0[13] = 0
    end
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 4502408) then
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act13)
    local1[20] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CrowKnight_Claw_607010_ActAfter_AdjustSpace), local2)
    return 
end

function CrowKnight_Claw_607010_Act01(arg0, arg1, arg2)
    local local0 = 2.8
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    if arg0:GetRandam_Int(1, 100) <= 50 and 3 <= arg0:GetAttackPassedTime(3015) and 3 <= arg0:GetAttackPassedTime(3016) and 3 <= arg0:GetAttackPassedTime(3025) and 3 <= arg0:GetAttackPassedTime(3026) then
        CrowKnight_Claw_607010_Act06(arg0, arg1, arg2)
    end
    local local1 = 3000
    local local2 = 3001
    local local3 = 3002
    local local4 = 3003
    local local5 = 3004
    local local6 = 2.8 + 1.5
    local local7 = 2.3 + 1.5
    local local8 = 2.3 + 1.5
    local local9 = 2.3 + 0.5
    local local10 = 999
    local local11 = 0
    local local12 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, 5.3 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, 5.3 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act02(arg0, arg1, arg2)
    local local0 = 3.3
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    if arg0:GetRandam_Int(1, 100) <= 50 and 3 <= arg0:GetAttackPassedTime(3015) and 3 <= arg0:GetAttackPassedTime(3016) and 3 <= arg0:GetAttackPassedTime(3025) and 3 <= arg0:GetAttackPassedTime(3026) then
        CrowKnight_Claw_607010_Act06(arg0, arg1, arg2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, 3.3 + 1.5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 3.3 + 1.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 2.3 + 0.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 5.3 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act04(arg0, arg1, arg2)
    local local0 = 3
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act05(arg0, arg1, arg2)
    local local0 = 6003
    local local1 = 6002
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
        local3 = 100
    elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 999) then
        local3 = 0
    end
    if 0.7 <= local2 then
        local0 = 6001
        local1 = 6000
    end
    if not (local2 > 2 or not SpaceCheck(arg0, arg1, 0, 3)) or 2 < local2 then
        if local3 <= 50 then
            if SpaceCheck(arg0, arg1, 45, 2.5) and SpaceCheck(arg0, arg1, 90, 2) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            elseif SpaceCheck(arg0, arg1, -45, 2.5) and SpaceCheck(arg0, arg1, -90, 2) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local1, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif SpaceCheck(arg0, arg1, -45, 2.5) and SpaceCheck(arg0, arg1, -90, 2) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local1, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif SpaceCheck(arg0, arg1, 45, 2.5) and SpaceCheck(arg0, arg1, 90, 2) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    end
    arg1:AddSubGoal(GOAL_CrowKnight_Claw_607010_AfterQuickStepAct, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act06(arg0, arg1, arg2)
    local local0 = 3015
    local local1 = 3016
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetRandam_Int(1, 100)
    if arg0:GetAttackPassedTime(3015) <= 3 or arg0:GetAttackPassedTime(3025) <= 3 then
        local3 = 100
    elseif arg0:GetAttackPassedTime(3016) <= 3 or arg0:GetAttackPassedTime(3026) <= 3 then
        local3 = 0
    end
    if not (local2 > 2 or not SpaceCheck(arg0, arg1, 0, 3)) or 2 < local2 then
        if local3 <= 50 then
            if SpaceCheck(arg0, arg1, 45, 2.5) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
            elseif SpaceCheck(arg0, arg1, -45, 2.5) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local1, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
            end
        elseif SpaceCheck(arg0, arg1, -45, 2.5) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local1, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
        elseif SpaceCheck(arg0, arg1, 45, 2.5) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act07(arg0, arg1, arg2)
    local local0 = 6.3
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act08(arg0, arg1, arg2)
    local local0 = 4.3
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 40
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3028, TARGET_ENE_0, DIST_None, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 60
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act10(arg0, arg1, arg2)
    CrowKnight_Claw_607010_Act06(arg0, arg1, arg2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        CrowKnight_Claw_607010_Act11(arg0, arg1, arg2)
    else
        CrowKnight_Claw_607010_Act12(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act11(arg0, arg1, arg2)
    local local0 = 2.8
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3000
    local local2 = 3001
    local local3 = 3002
    local local4 = 3003
    local local5 = 3004
    local local6 = 2.8 + 1.5
    local local7 = 2.3 + 1.5
    local local8 = 2.3 + 1.5
    local local9 = 2.3 + 0.5
    local local10 = 999
    local local11 = 0
    local local12 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, 5.3 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, 5.3 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act12(arg0, arg1, arg2)
    local local0 = 3.3
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, 3.3 + 1.5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 3.3 + 1.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 2.3 + 0.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 5.3 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act13(arg0, arg1, arg2)
    local local0 = 7.8
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act20(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, local0, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act21(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act22(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act23(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 150), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_Act24(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowKnight_Claw_607010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrowKnight_Claw_607010_AfterAttackAct, 10)
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
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and InsideRange(arg1, arg2, 0, 120, -1, 2.5) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_CrowKnight_Claw_607010_AfterGuardBreakAct, 10)
        return true
    elseif (not not arg1:IsInterupt(INTERUPT_Damaged) or arg1:IsInterupt(INTERUPT_Shoot)) and 1 <= arg1:GetAttackPassedTime(3015) and 1 <= arg1:GetAttackPassedTime(3016) and 1 <= arg1:GetAttackPassedTime(3025) and 1 <= arg1:GetAttackPassedTime(3026) then
        local local3 = 3015
        local local4 = 3016
        if arg1:GetAttackPassedTime(3015) <= 3 or arg1:GetAttackPassedTime(3025) <= 3 then
            local1 = 100
        elseif arg1:GetAttackPassedTime(3016) <= 3 or arg1:GetAttackPassedTime(3026) <= 3 then
            local1 = 0
        end
        if not (local0 > 2 or not SpaceCheck(arg1, arg2, 0, 3)) or 2 < local0 then
            if local1 <= 50 then
                if SpaceCheck(arg1, arg2, 45, 2.5) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, local3, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
                    return true
                elseif SpaceCheck(arg1, arg2, -45, 2.5) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, local4, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, -45, 2.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, local4, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
                return true
            elseif SpaceCheck(arg1, arg2, 45, 2.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, local3, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
                return true
            end
        end
    end
    if not arg1:IsInsideTargetRegion(TARGET_ENE_0, 4502408) and local0 < 4 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and Counter_Act(arg1, arg2, 8, 3028) then
        if local1 <= 100 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 5.3, 0)
        else
            CrowKnight_Claw_607010_Act06(arg1, arg2, paramTbl)
        end
        return true
    elseif not arg1:IsInsideTargetRegion(TARGET_ENE_0, 4502408) and arg1:IsInterupt(INTERUPT_UseItem) and 3.5 <= local0 and local1 <= 60 and 15 <= arg1:GetAttackPassedTime(3018) then
        arg2:ClearSubGoal()
        CrowKnight_Claw_607010_Act07(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_CrowKnight_Claw_607010_AfterGuardBreakAct, "GOAL_CrowKnight_Claw_607010_AfterGuardBreakAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrowKnight_Claw_607010_AfterGuardBreakAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    CrowKnight_Claw_607010_Act05(arg1, arg2, paramTbl)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_CrowKnight_Claw_607010_AfterQuickStepAct, "GOAL_CrowKnight_Claw_607010_AfterQuickStepAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrowKnight_Claw_607010_AfterQuickStepAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 3 + 3.5) and 4 <= arg1:GetAttackPassedTime(3037) then
        CrowKnight_Claw_607010_Act03(arg1, arg2, paramTbl)
    elseif arg1:GetRandam_Int(1, 100) <= 50 then
        CrowKnight_Claw_607010_Act11(arg1, arg2, paramTbl)
    else
        CrowKnight_Claw_607010_Act12(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_CrowKnight_Claw_607010_AfterAttackAct, "GOAL_CrowKnight_Claw_607010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrowKnight_Claw_607010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:GetAttackPassedTime(3010) <= 5 then
        if 5 <= local0 then
            CrowKnight_Claw_607010_Act24(arg1, arg2, paramTbl)
        else
            CrowKnight_Claw_607010_Act24(arg1, arg2, paramTbl)
        end
    elseif 7.5 > local0 then
        if 5 <= local0 then
            if local1 <= 50 then
                CrowKnight_Claw_607010_Act21(arg1, arg2, paramTbl)
            end
        elseif 3 <= local0 then
            if local1 <= 70 then
                CrowKnight_Claw_607010_Act21(arg1, arg2, paramTbl)
            end
        elseif 1.5 <= local0 then
            if local1 <= 20 then
                CrowKnight_Claw_607010_Act21(arg1, arg2, paramTbl)
            elseif local1 <= 40 then
                CrowKnight_Claw_607010_Act22(arg1, arg2, paramTbl)
            end
        elseif local1 <= 30 then
            CrowKnight_Claw_607010_Act22(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
