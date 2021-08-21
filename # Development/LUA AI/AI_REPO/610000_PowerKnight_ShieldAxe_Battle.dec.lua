RegisterTableGoal(GOAL_610000_PowerKnight_ShieldAxe_Battle, "GOAL_610000_PowerKnight_ShieldAxe")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_610000_PowerKnight_ShieldAxe_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    if not arg1:HasSpecialEffectId(TARGET_SELF, 13066) then
        arg1:SetTimer(1, 10)
    end
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 1)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and 10 <= local3 then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, RunLife, TARGET_ENE_0, 8, TARGET_SELF, false, 9910)
    elseif InsideRange(arg1, arg2, -125, 120, -1, 1.6) and not arg1:HasSpecialEffectId(TARGET_SELF, 13060) then
        local0[10] = 950
        local0[20] = 50
    elseif InsideRange(arg1, arg2, 125, 120, -1, 1.6) and not arg1:HasSpecialEffectId(TARGET_SELF, 13060) then
        local0[11] = 950
        local0[20] = 50
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 13060) then
        if 4.5 <= local3 then
            local0[1] = 350
            local0[2] = 400
            local0[9] = 250
            local0[3] = 0
            local0[4] = 0
            if not arg1:HasSpecialEffectId(TARGET_SELF, 13062) and arg1:IsFinishTimer(1) then
                local0[5] = 9000
            end
        elseif 2.5 <= local3 then
            local0[1] = 250
            local0[2] = 350
            local0[9] = 200
            local0[3] = 0
            local0[4] = 0
            local0[21] = 200
            if arg1:IsTargetGuard(TARGET_ENE_0) then
                local0[3] = 1250
            end
        else
            local0[1] = 200
            local0[2] = 0
            local0[9] = 100
            local0[3] = 400
            local0[4] = 0
            local0[8] = 300
            if arg1:IsTargetGuard(TARGET_ENE_0) then
                local0[3] = 1400
            end
        end
    elseif 5.5 <= local3 then
        local0[1] = 5
        local0[2] = 15
        local0[9] = 5
        local0[3] = 0
        local0[4] = 0
        local0[6] = 5
        local0[7] = 70
    elseif 4.5 <= local3 then
        local0[1] = 5
        local0[2] = 25
        local0[9] = 15
        local0[3] = 0
        local0[4] = 0
        local0[6] = 45
        local0[7] = 15
    elseif 2.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[9] = 15
        local0[3] = 0
        local0[4] = 15
        local0[8] = 10
        local0[6] = 40
        local0[7] = 0
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[3] = 200
        end
    else
        local0[1] = 15
        local0[2] = 10
        local0[9] = 20
        local0[3] = 0
        local0[4] = 0
        local0[8] = 10
        local0[6] = 45
        local0[7] = 0
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[3] = 200
        end
    end
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13060) then
        local0[10] = 0
        local0[11] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 6, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3004, 6, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3013, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 6, local0[4], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 9, local0[4], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3015, 9, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3016, 9, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3014, 9, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3020, 9, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3009, 9, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3010, 9, local0[11], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3019, 6, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3019, 6, local0[11], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act22)
    local1[40] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_Act40)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_ShieldAxe_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_610000_PowerKnight_ShieldAxe_Act01(arg0, arg1, arg2)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 5.23)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3005
    local local3 = 3002
    local local4 = 3014
    local local5 = 3008
    local local6 = 2.37 + 1
    local local7 = 2.9 + 1
    local local8 = 3.42 + 1
    local local9 = 2.84 + 1
    local local10 = 3.3 + 1
    local local11 = 999
    local local12 = 0
    local local13 = 0
    local local14 = arg0:GetRandam_Int(1, 100)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 13060) then
        if local14 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local12, local13, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, local12, local13, 0, 0)
        elseif local14 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local12, local13, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, 999, local12, local13, 0, 0)
        elseif local14 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local9, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, 999, local12, local13, 0, 0)
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local12, local13, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local10, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local14 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local12, local13, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 999, 0, 0)
    elseif local14 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local12, local13, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 999, 0, 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    elseif local14 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, 999, 0, 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local12, local13, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act02(arg0, arg1, arg2)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 4.88)
    local local0 = 3004
    local local1 = 3005
    local local2 = 3006
    local local3 = 3014
    local local4 = 2.9 + 1
    local local5 = 3.3 + 1
    local local6 = 2.84 + 1
    local local7 = 999
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 13060) then
        if local10 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, local8, local9, 0, 0)
        elseif local10 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, 999, local8, local9, 0, 0)
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999, local8, local9, 0, 0)
        end
    elseif local10 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 999, 0, 0)
    elseif local10 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 999, 0, 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act03(arg0, arg1, arg2)
    arg0:SetTimer(0, 3.5)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 2.2 - 1)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 2.84 + 1, local1, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, local1, local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act04(arg0, arg1, arg2)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 3.3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act05(arg0, arg1, arg2)
    if not arg0:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 999) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    end
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 6)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3019, TARGET_ENE_0, 7 + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act06(arg0, arg1, arg2)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 3.3)
    local local0 = 3015
    local local1 = 3001
    local local2 = 3014
    local local3 = 2.37
    local local4 = 2.84 + 1
    local local5 = 999
    local local6 = 0
    local local7 = 0
    if arg0:GetRandam_Int(1, 100) <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act07(arg0, arg1, arg2)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 6)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act08(arg0, arg1, arg2)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 2.84)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act09(arg0, arg1, arg2)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 5.33)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 3.3 + 1, local1, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, local1, local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act10(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act11(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act21(arg0, arg1, arg2)
    local local0 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 13060) then
        local0 = -1
    end
    local local1 = 3
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 0, 60, true, true, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 1, 60, true, true, local0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act22(arg0, arg1, arg2)
    local local0 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 13060) then
        local0 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act23(arg0, arg1, arg2)
    local local0 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 13060) then
        local0 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4.5, TARGET_SELF, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_ShieldAxe_Act40(arg0, arg1, arg2)
    PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, 999)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
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
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and local0 <= 3 and local1 <= 60 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg2:ClearSubGoal()
        if not arg1:HasSpecialEffectId(TARGET_SELF, 13060) then
            if local1 <= 60 then
                GOAL_610000_PowerKnight_ShieldAxe_Act04(arg1, arg2, paramTbl)
            else
                GOAL_610000_PowerKnight_ShieldAxe_Act08(arg1, arg2, paramTbl)
            end
        elseif 5 <= arg1:GetAttackPassedTime(3017) then
            GOAL_610000_PowerKnight_ShieldAxe_Act12(arg1, arg2, paramTbl)
        else
            GOAL_610000_PowerKnight_ShieldAxe_Act04(arg1, arg2, paramTbl)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) and not arg1:HasSpecialEffectId(TARGET_SELF, 13060) then
        arg2:ClearSubGoal()
        GOAL_610000_PowerKnight_ShieldAxe_Act21(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) and local1 <= 50 then
        arg1:SetTimer(0, 3.5)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 999) and 1 < local0 and local0 < 7 + 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 0, 0)
            arg2:AddSubGoal(GOAL_610000_PowerKnight_ShieldAxe_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) and local0 <= 2.37 + 1.5 and local1 <= 35 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 3.42 + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 7 + 1, 0, 0)
            if arg1:HasSpecialEffectId(TARGET_SELF, 13060) then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            end
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) and local0 <= 3.3 + 1.5 and local1 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
        end
    end
    return 
end

function GOAL_610000_PowerKnight_ShieldAxe_ActAfter_AdjustSpace(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if not arg0:HasSpecialEffectId(TARGET_SELF, 13060) then
        if 5.5 <= local0 then
            local2[1] = 30
            local2[2] = 0
            local2[3] = 0
            local2[4] = 70
        elseif 3.5 <= local0 then
            if not not arg0:HasSpecialEffectId(TARGET_SELF, 13062) or not arg0:IsFinishTimer(1) then
                local2[1] = 15
                local2[2] = 70
                local2[3] = 15
                local2[4] = 0
            else
                local2[1] = 0
                local2[2] = 0
                local2[3] = 100
                local2[4] = 0
            end
        elseif not not arg0:HasSpecialEffectId(TARGET_SELF, 13062) or not arg0:IsFinishTimer(1) then
            local2[1] = 15
            local2[2] = 70
            local2[3] = 15
            local2[4] = 0
        else
            local2[1] = 0
            local2[2] = 0
            local2[3] = 100
            local2[4] = 0
        end
    elseif 5 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
    elseif 3 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
    else
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
    end
    local local3 = SelectOddsIndex(arg0, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            GOAL_610000_PowerKnight_ShieldAxe_Act21(arg0, arg1, arg2)
        elseif local3 == 3 then
            GOAL_610000_PowerKnight_ShieldAxe_Act22(arg0, arg1, arg2)
        elseif local3 == 4 then
            GOAL_610000_PowerKnight_ShieldAxe_Act23(arg0, arg1, arg2)
        end
    end
    return 
end

function PowerKnight_ShieldAxe_Approach_Act(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    local local2 = arg2 + arg0:GetStringIndexedNumber("AddDistRun") + 1
    local local3 = 100
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 13060) then
        local4 = 100
        if arg0:IsFinishTimer(0) then
            local3 = 0
            local1 = 999
            local2 = 999
        end
    end
    Approach_Act_Flex(arg0, arg1, arg2, local1, local2, local3, local4, 2, 5.5)
    return 
end

return 
