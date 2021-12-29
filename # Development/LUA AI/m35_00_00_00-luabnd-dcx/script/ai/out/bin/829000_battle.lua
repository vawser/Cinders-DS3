RegisterTableGoal(GOAL_CathedralGuardian_829000_Battle, "GOAL_CathedralGuardian_829000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CathedralGuardian_829000_Battle, true)
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
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if local3 <= 4 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local0[4] = 60
                local0[20] = 40
            else
                local0[5] = 60
                local0[20] = 40
            end
        else
            local0[6] = 40
            local0[20] = 60
        end
    elseif SpaceCheck(arg1, arg2, 0, 4) == false and 4 < local3 then
        local0[24] = 100
    elseif 8 <= local3 then
        local0[1] = 40
        local0[2] = 0
        local0[3] = 0
        local0[6] = 30
        local0[7] = 30
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
    elseif 1.5 <= local3 then
        local0[1] = 0
        local0[2] = 50
        local0[3] = 10
        local0[6] = 0
        local0[7] = 10
        local0[8] = 5
        local0[9] = 0
        local0[10] = 0
        local0[21] = 25
        local0[22] = 0
        local0[23] = 0
    else
        local0[1] = 0
        local0[2] = 10
        local0[3] = 10
        local0[6] = 0
        local0[7] = 10
        local0[8] = 10
        local0[9] = 10
        local0[10] = 10
        local0[11] = 10
        local0[21] = 20
        local0[22] = 10
        local0[23] = 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 6, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 6, local0[2], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 6, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 6, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 6, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 6, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3015, 6, local0[6], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3019, 6, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3021, 6, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3023, 20, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3007, 20, local0[11], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 11300) == false then
        local0[7] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, CathedralGuardian_316000_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CathedralGuardian_ActAfter_AdjustSpace), local2)
    return 
end

function CathedralGuardian_316000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.68, 12.68 + 2, 12.68 + 2, 0, 100, 2, 2)
    local local0 = 3000
    local local1 = 3017
    local local2 = 2.24
    local local3 = ATT3025_DIST_MAX
    local local4 = 999
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if local7 < 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local5, local6, 0, 0)
    elseif local7 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 11300) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 2.12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act02(arg0, arg1, arg2)
    local local0 = 4.54
    local local1 = 4.54 + 2
    local local2 = 4.54 + 2
    local local3 = 0
    local local4 = 0
    local local5 = 2
    local local6 = 2
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = 3001
    local local9 = 3003
    local local10 = 3002
    local local11 = 3017
    local local12 = 3018
    local local13 = 3019
    local local14 = 0
    local local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:GetDist(TARGET_ENE_0) <= 2.9 then
        if local7 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, 7, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local10, TARGET_ENE_0, 999, 0, 0)
        elseif local7 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, 4, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local11, TARGET_ENE_0, 999, 0, 0)
        elseif local7 <= 85 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local9, TARGET_ENE_0, 4, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local11, TARGET_ENE_0, 5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local12, TARGET_ENE_0, 999, 0, 0)
        elseif local7 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local9, TARGET_ENE_0, 4, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local11, TARGET_ENE_0, 5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local12, TARGET_ENE_0, 5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local13, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local9, TARGET_ENE_0, 4, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local11, TARGET_ENE_0, 5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local12, TARGET_ENE_0, 5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local13, TARGET_ENE_0, 5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local7 <= 80 then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local9, TARGET_ENE_0, 7, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local10, TARGET_ENE_0, 999, 0, 0)
    elseif local7 <= 90 then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local9, TARGET_ENE_0, 4, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local11, TARGET_ENE_0, 999, 0, 0)
    else
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local9, TARGET_ENE_0, 4, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local11, TARGET_ENE_0, 5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local12, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 2.95, 2.95 + 2, 2.95 + 2, 0, 100, 2, 2)
    local local1 = 3004
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) < 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 999, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, 4.42, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 12.18, 12.18 + 2, 12.18 + 2, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act07(arg0, arg1, arg2)
    arg0:SetTimer(1, 20)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 999
    local local3 = 0
    local local4 = 0
    local local5 = {}
    local local6 = 0
    local local7 = 0
    local local8 = 0
    if 15 <= local0 then
        local5[1] = 0
        local5[2] = 100
        local5[3] = 0
        local5[4] = 0
    elseif 7.5 <= local0 then
        local5[1] = 20
        local5[2] = 80
        local5[3] = 0
        local5[4] = 0
    elseif 5 <= local0 then
        local5[1] = 20
        local5[2] = 60
        local5[3] = 20
        local5[4] = 0
    elseif 2.5 <= local0 then
        local5[1] = 60
        local5[2] = 0
        local5[3] = 40
        local5[4] = 0
    else
        local5[1] = 60
        local5[2] = 0
        local5[3] = 0
        local5[4] = 40
    end
    local5[1] = 0
    local5[2] = 100
    local5[3] = 0
    local5[4] = 0
    local local9 = 1
    for local10 = 1 - local9, 4, local9 do
        local6 = local6 + local5[local10]
    end
    if local6 ~= 0 then
        local local11 = 1
        for local12 = 1 - local11, 4, local11 do
            local7 = local7 + local5[local12]
            if arg0:GetRandam_Int(0, local6) <= local7 then
                if local12 ~= 1 then
                    if local12 == 2 then
                        local local13 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 1.8, TARGET_ENE_0, 0, TARGET_SELF, true, 9920)
                        local13:SetLifeEndSuccess(true)
                        break
                    elseif local12 == 3 then
                        local local13 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 60, true, true, 9920)
                        local13:SetLifeEndSuccess(true)
                        break
                    else
                        local local13 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 999, TARGET_ENE_0, true, 9920)
                        local13:SetLifeEndSuccess(true)
                        break
                    end
                else
                    arg1:AddSubGoal(GOAL_CathedralGuardian_829000_AttackStance, 10)
                    GetWellSpace_Odds = 100
                    return GetWellSpace_Odds
                end
            end
        end
    end
    arg1:AddSubGoal(GOAL_CathedralGuardian_829000_AttackStance, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.65, 2.65 + 2, 2.65 + 2, 0, 100, 2, 2)
    local local0 = 3019
    local local1 = 3020
    local local2 = 2.12
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11300) == false then
        if local6 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 2.24, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local6 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.87, 5.87 + 2, 5.87 + 2, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, 60, true, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, 60, true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 5.5, TARGET_ENE_0, true, 9910)
    if local0 < 40 and arg0:IsFinishTimer(1) == true and arg0:HasSpecialEffectId(TARGET_SELF, 11300) == true then
        CathedralGuardian_316000_Act07(arg0, arg1, arg2)
    elseif local0 < 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, false, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CathedralGuardian_316000_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
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
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        if local0 < 4 and local1 <= 50 and arg1:HasSpecialEffectId(TARGET_SELF, 11300) == false then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
            return true
        elseif local1 <= 50 and arg1:HasSpecialEffectId(TARGET_SELF, 11300) == true then
            local local3 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
            return true
        end
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if local0 <= 4 and local1 <= 20 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif local0 <= 4 and local1 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 5, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif 4 <= local0 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        return true
    else
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) == false and local1 <= 60 then
            if local0 <= 4 or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
            return true
        else
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5030 then
                if local0 <= 4 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                    if local1 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    end
                elseif local1 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
                return true
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                if arg1:GetSpecialEffectActivateInterruptType(0) == 5031 then
                    arg2:ClearSubGoal()
                    CathedralGuardian_316000_Act07(arg1, arg2, paramTbl)
                    return true
                else
                    return false
                end
            end
        end
    end
end

function CathedralGuardian_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_CathedralGuardian_829000_AttackStance, "GOAL_CathedralGuardian_829000_AttackStance")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CathedralGuardian_829000_AttackStance, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = 3
    local local1 = 999
    local local2 = 0
    local local3 = 0
    local local4 = arg1:GetDist(TARGET_ENE_0)
    local local5 = {}
    local local6 = 0
    local local7 = 0
    local local8 = 0
    if 15 <= local4 then
        local5[1] = 0
        local5[2] = 0
        local5[3] = 100
        local5[4] = 0
    elseif 8 <= local4 then
        local5[1] = 80
        local5[2] = 0
        local5[3] = 20
        local5[4] = 0
    elseif 5 <= local4 then
        local5[1] = 0
        local5[2] = 50
        local5[3] = 20
        local5[4] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) then
        local5[1] = 0
        local5[2] = 60
        local5[3] = 40
        local5[4] = 0
    else
        local5[1] = 0
        local5[2] = 100
        local5[3] = 0
        local5[4] = 0
    end
    local local9 = 1
    for local10 = 1 - local9, 4, local9 do
        local6 = local6 + local5[local10]
    end
    local local11 = 1
    for local12 = 1 - local11, 4, local11 do
        local7 = local7 + local5[local12]
        if arg1:GetRandam_Int(0, local6) <= local7 then
            arg1:SetNumber(0, local12)
            if local12 == 1 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, local2, local3, 0, 0)
                break
            elseif local12 == 2 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, local2, local3, 0, 0)
                break
            elseif local12 == 3 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3202, TARGET_ENE_0, 999, local2, local3, 0, 0)
                break
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3203, TARGET_ENE_0, 999, local2, local3, 0, 0)
                break
            end
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
