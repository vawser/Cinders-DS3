RegisterTableGoal(GOAL_LothricKnight_Sword_Battle, "GOAL_LothricKnight_Sword_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LothricKnight_Sword_Battle, true)

Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(2, 10)
    arg1:SetTimer(3, 20)
    arg1:SetTimer(4, 20)
    arg1:SetTimer(5, 5)
    arg1:SetNumber(0, 0)
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
    if local4 < 80 and InsideRange(arg1, arg2, -90, 100, -1, 1.8) then
        local0[6] = 99
        local0[20] = 1
    elseif local4 < 80 and InsideRange(arg1, arg2, 90, 45, -1, 2.5) then
        local0[7] = 99
        local0[20] = 1
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    else
        if 6 <= local3 then
            local0[1] = 35
            local0[2] = 20
            local0[3] = 0
            local0[4] = 45
            local0[5] = 0
            local0[21] = 0
            local0[22] = 0
            if arg1:GetNpcThinkParamID() == 128100 and not arg1:HasSpecialEffectId(TARGET_SELF, 10801) then
                local0[8] = 50
            end
            if arg1:GetNpcThinkParamID() == 128200 and not arg1:HasSpecialEffectId(TARGET_SELF, 10805) then
                local0[9] = 50
            end
        elseif 4 <= local3 then
            local0[1] = 35
            local0[2] = 15
            local0[3] = 10
            local0[4] = 0
            local0[5] = 10
            local0[21] = 30
            local0[22] = 0
            if arg1:GetNpcThinkParamID() == 128100 and not arg1:HasSpecialEffectId(TARGET_SELF, 10801) then
                local0[8] = 50
            end
            if arg1:GetNpcThinkParamID() == 128200 and not arg1:HasSpecialEffectId(TARGET_SELF, 10805) then
                local0[9] = 50
            end
        elseif 2 <= local3 then
            local0[1] = 25
            local0[2] = 20
            local0[3] = 15
            local0[4] = 0
            local0[5] = 10
            local0[21] = 30
            local0[22] = 0
        elseif 1 <= local3 then
            local0[1] = 10
            local0[2] = 30
            local0[3] = 25
            local0[4] = 0
            local0[5] = 10
            local0[21] = 25
            local0[22] = 10
        else
            local0[1] = 0
            local0[2] = 15
            local0[3] = 40
            local0[4] = 0
            local0[5] = 15
            local0[21] = 0
            local0[22] = 30
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[1] = local0[1] * 1
            local0[2] = local0[2] * 1
            local0[3] = local0[3] * 1
            local0[4] = local0[4] * 1
            local0[5] = local0[5] * 10
            local0[21] = local0[21] * 10
            local0[22] = local0[22] * 10
        elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
            local0[1] = local0[1] * 10
            local0[2] = local0[2] * 10
            local0[3] = local0[3] * 20
            local0[4] = local0[4] * 1
            local0[5] = local0[5] * 10
            local0[21] = local0[21] * 10
            local0[22] = local0[22] * 10
        elseif arg1:IsFinishTimer(3) == true then
            local0[1] = local0[1] * 10
            local0[2] = local0[2] * 10
            local0[3] = local0[3] * 1
            local0[4] = local0[4] * 10
            local0[5] = local0[5] * 20
            local0[21] = local0[21] * 0
            local0[22] = local0[22] * 0
        elseif arg1:IsFinishTimer(4) == true then
            local0[1] = local0[1] * 1
            local0[2] = local0[2] * 1
            local0[3] = local0[3] * 1
            local0[4] = local0[4] * 1
            local0[5] = local0[5] * 1
            local0[21] = local0[21] * 10
            local0[22] = local0[22] * 10
        elseif arg1:GetNumber(0) == 1 then
            arg1:SetNumber(0, 0)
            local0[1] = local0[1] * 1
            local0[2] = local0[2] * 1
            local0[3] = local0[3] * 1
            local0[4] = local0[4] * 1
            local0[5] = local0[5] * 2
            local0[21] = local0[21] * 1
            local0[22] = local0[22] * 1
        end
        local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
        local0[2] = SetCoolTime(arg1, arg2, 3003, 5, local0[2], 1)
        local0[3] = SetCoolTime(arg1, arg2, 3006, 5, local0[3], 1)
        if arg1:IsFinishTimer(2) == false then
            local0[5] = 0
        end
        local0[6] = SetCoolTime(arg1, arg2, 3013, 3, local0[6], 1)
        local0[7] = SetCoolTime(arg1, arg2, 3014, 3, local0[7], 1)
        local0[8] = SetCoolTime(arg1, arg2, 3021, 45, local0[8], 0)
        local0[9] = SetCoolTime(arg1, arg2, 3021, 45, local0[9], 0)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act09)
    local1[20] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, LothricKnight_Sword_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, LothricKnight_Sword_ActAfter_AdjustSpace), local2)
    return 
end

function LothricKnight_Sword_Act01(arg0, arg1, arg2)
    arg0:SetTimer(3, 8)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 6, 0, 3)
    end
    local local1 = 3000
    local local2 = 3001
    local local3 = 3002
    local local4 = 3016
    local local5 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local8 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local9 = 999
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 < 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 6, 0)
    elseif local12 < 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 4, 0)
    elseif local12 < 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, 4, 0)
    elseif local12 < 90 and arg0:IsFinishTimer(2) == true then
        arg0:SetTimer(4, 0)
        arg0:SetTimer(2, 10)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3201, TARGET_ENE_0, 999, 0)
    else
        arg0:SetTimer(4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LothricKnight_Sword_Act02(arg0, arg1, arg2)
    arg0:SetTimer(3, 8)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, 6, 0, 3)
    end
    local local2 = 3003
    local local3 = 3004
    local local4 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if local0 <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local5, local6, 0, 0)
    elseif local7 < 10 and arg0:IsFinishTimer(2) == true then
        arg0:SetTimer(2, 10)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local4, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3201, TARGET_ENE_0, 999, 0)
    elseif local7 < 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local4, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local4, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LothricKnight_Sword_Act03(arg0, arg1, arg2)
    arg0:SetTimer(3, 0)
    local local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 6, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LothricKnight_Sword_Act04(arg0, arg1, arg2)
    arg0:SetTimer(3, 0)
    local local0 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, -1, 0, 3)
    end
    local local1 = 3005
    local local2 = 3016
    local local3 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 < 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 < 60 and arg0:IsFinishTimer(2) == true then
        arg0:SetTimer(2, 10)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3200, TARGET_ENE_0, 999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LothricKnight_Sword_Act05(arg0, arg1, arg2)
    arg0:SetTimer(2, 10)
    arg0:SetTimer(3, 8)
    arg0:SetTimer(5, 6)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 2 then
        if local1 < 40 then
            local local2 = 5
            local local3 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, 9920)
            local3 = local3:SetLifeEndSuccess(true)
            local3:SetTargetRange(1, -999, 5)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0)
        else
            local local2 = 0
            local local4 = 0
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0)
        end
    elseif local0 <= 4 then
        if local1 < 40 then
            local local2 = 5
            local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
            local3 = local3:SetLifeEndSuccess(true)
            local3:SetTargetRange(1, -999, 5)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0)
        else
            local local2 = 5
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local0 <= 6 then
        if local1 < 70 then
            local local2 = 5
            local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 1.5, TARGET_ENE_0, 4, TARGET_SELF, true, 9920)
            local3:SetLifeEndSuccess(true)
            local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
            local3 = local3:SetLifeEndSuccess(true)
            local3:SetTargetRange(1, -999, 5)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0)
        else
            local local2 = 5
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local0 <= 9 then
        if local1 < 50 then
            local local2 = 5
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 3, TARGET_ENE_0, 6, TARGET_SELF, true, 9920)
            local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
            local3:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, 0, 0)
        else
            local local2 = 5
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 3, TARGET_ENE_0, 6, TARGET_SELF, true, 9920)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LothricKnight_Sword_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function LothricKnight_Sword_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function LothricKnight_Sword_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function LothricKnight_Sword_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function LothricKnight_Sword_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function LothricKnight_Sword_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LothricKnight_Sword_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetTimer(4, 10)
    if 5 < local0 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 90), true, true, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 90), true, true, 9910)
    end
    if arg0:GetRandam_Int(1, 100) < 30 and arg0:IsFinishTimer(2) == true and local0 < 5 then
        LothricKnight_Sword_Act05(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LothricKnight_Sword_Act22(arg0, arg1, arg2)
    arg0:SetTimer(4, 10)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, 9910)
    if local0 < 30 and arg0:IsFinishTimer(2) == true then
        LothricKnight_Sword_Act05(arg0, arg1, arg2)
    elseif local0 < 60 and arg0:GetDist(TARGET_ENE_0) < 3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LothricKnight_Sword_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        if arg1:IsHitAttack() == true then
            arg1:SetNumber(0, 1)
        end
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        local local2 = 5
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.3, 3200, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif local0 < 3 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if Counter_Act(arg1, arg2, arg1:GetRandam_Int(5, 10), 3009) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, ATT3010_DIST_MAX, 0)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        arg1:SetTimer(3, 0)
        if 2.5 < local0 and local1 < 40 and arg1:IsFinishTimer(2) == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 2, TARGET_SELF, false, 9910)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_SuccessGuard) then
        arg1:SetNumber(0, 1)
        arg1:SetTimer(3, 0)
        if local0 < 6 and local1 < 40 and 30 < arg1:GetSp(TARGET_SELF) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2.5, TARGET_SELF, false, 9910)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_UseItem) then
        arg1:SetTimer(3, 0)
        if 4 < local0 and local1 < 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2.5, TARGET_SELF, false, 9910)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg1:SetNumber(0, 1)
        arg1:SetTimer(3, 0)
        arg1:SetTimer(4, 10)
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 999, TARGET_SELF, false, 9910)
        return true
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10804) == true and ReactBackstab_Act(arg1, arg2, 2, 3020, 100) then
        return true
    else
        return false
    end
end

return 
