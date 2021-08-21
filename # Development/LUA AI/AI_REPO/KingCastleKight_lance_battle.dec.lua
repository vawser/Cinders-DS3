RegisterTableGoal(GOAL_KingCastleKight_lance_Battle, "GOAL_KingCastleKight_lance_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingCastleKight_lance_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(2, 10)
    arg1:SetTimer(4, 20)
    arg1:SetTimer(5, 10)
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 16000) and arg1:HasSpecialEffectId(TARGET_SELF, 16002) and not arg1:HasSpecialEffectId(TARGET_SELF, 16003) then
        local0[13] = 100
    elseif local4 < 80 and InsideRange(arg1, arg2, -90, 120, -1, 1.8) then
        local0[9] = 99
        local0[20] = 1
    elseif local4 < 80 and InsideRange(arg1, arg2, 90, 45, -1, 2.5) then
        local0[10] = 99
        local0[20] = 1
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    else
        if 6 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 30
            local0[4] = 10
            local0[5] = 0
            local0[6] = 60
            local0[7] = 0
            local0[8] = 0
            local0[21] = 0
            local0[22] = 0
            if arg1:GetNpcThinkParamID() == 128110 and not arg1:HasSpecialEffectId(TARGET_SELF, 10802) then
                local0[11] = 50
            end
            if arg1:GetNpcThinkParamID() == 128210 and not arg1:HasSpecialEffectId(TARGET_SELF, 10806) then
                local0[12] = 50
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 16000) and not arg1:HasSpecialEffectId(TARGET_SELF, 16001) then
                local0[5] = 0
                local0[13] = 50
            end
        elseif 4 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 15
            local0[4] = 15
            local0[5] = 10
            local0[6] = 30
            local0[7] = 5
            local0[8] = 0
            local0[21] = 25
            local0[22] = 0
            if arg1:GetNpcThinkParamID() == 128110 and not arg1:HasSpecialEffectId(TARGET_SELF, 10802) then
                local0[11] = 50
            end
            if arg1:GetNpcThinkParamID() == 128210 and not arg1:HasSpecialEffectId(TARGET_SELF, 10806) then
                local0[12] = 50
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 16000) and not arg1:HasSpecialEffectId(TARGET_SELF, 16001) then
                local0[5] = 0
                local0[13] = 50
            end
        elseif 2.5 <= local3 then
            local0[1] = 25
            local0[2] = 0
            local0[3] = 20
            local0[4] = 10
            local0[5] = 10
            local0[6] = 0
            local0[7] = 5
            local0[8] = 0
            local0[21] = 30
            local0[22] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 16000) and not arg1:HasSpecialEffectId(TARGET_SELF, 16001) then
                local0[5] = 0
                local0[13] = 0
            end
        elseif 1 <= local3 then
            local0[1] = 30
            local0[2] = 0
            local0[3] = 0
            local0[4] = 20
            local0[5] = 10
            local0[6] = 0
            local0[7] = 10
            local0[8] = 0
            local0[21] = 30
            local0[22] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 16000) and not arg1:HasSpecialEffectId(TARGET_SELF, 16001) then
                local0[5] = 0
                local0[13] = 0
            end
        else
            local0[1] = 10
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 20
            local0[8] = 40
            local0[21] = 0
            local0[22] = 30
            if arg1:HasSpecialEffectId(TARGET_SELF, 16000) and not arg1:HasSpecialEffectId(TARGET_SELF, 16001) then
                local0[5] = 0
                local0[13] = 0
            end
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[1] = local0[1] * 1
            local0[2] = local0[2] * 1
            local0[3] = local0[3] * 1
            local0[4] = local0[4] * 1
            local0[5] = local0[5] * 1
            local0[6] = local0[6] * 1
            local0[7] = local0[7] * 1
            local0[8] = local0[8] * 1
            local0[21] = local0[21] * 10
            local0[22] = local0[22] * 10
        elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
            local0[1] = local0[1] * 10
            local0[2] = local0[2] * 1
            local0[3] = local0[3] * 20
            local0[4] = local0[4] * 20
            local0[5] = local0[5] * 10
            local0[6] = local0[6] * 10
            local0[7] = local0[7] * 1
            local0[8] = local0[8] * 20
            local0[21] = local0[21] * 10
            local0[22] = local0[22] * 10
        elseif arg1:IsFinishTimer(4) == true then
            local0[1] = local0[1] * 1
            local0[2] = local0[2] * 1
            local0[3] = local0[3] * 1
            local0[4] = local0[4] * 1
            local0[5] = local0[5] * 1
            local0[6] = local0[6] * 1
            local0[7] = local0[7] * 1
            local0[8] = local0[8] * 1
            local0[21] = local0[21] * 10
            local0[22] = local0[22] * 10
        elseif arg1:GetNumber(0) == 1 then
            arg1:SetNumber(0, 0)
            local0[1] = local0[1] * 1
            local0[2] = local0[2] * 1
            local0[3] = local0[3] * 1
            local0[4] = local0[4] * 1
            local0[5] = local0[5] * 2
            local0[6] = local0[6] * 1
            local0[7] = local0[7] * 1
            local0[8] = local0[8] * 1
            local0[21] = local0[21] * 1
            local0[22] = local0[22] * 1
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3100, 0, local0[1], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 5, local0[4], 1)
    if arg1:IsFinishTimer(2) == false then
        local0[5] = 0
    end
    local0[6] = SetCoolTime(arg1, arg2, 3003, 0, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3017, 5, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 5, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3012, 5, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3011, 5, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3021, 45, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3022, 45, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3024, 45, local0[13], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act13)
    local1[20] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, KingCastleKight_lance_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, KingCastleKight_lance_ActAfter_AdjustSpace), local2)
    return 
end

function KingCastleKight_lance_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 15
    local local3 = 100
    if arg0:HasSpecialEffectId(TARGET_SELF, 16000) then
        local2 = 9999
        if 8 <= local0 then
            local3 = 100
        end
    end
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, local2, local3, 3)
    elseif local0 < 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 9910)
    end
    local local4 = 3100
    local local5 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    if local8 < 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local4, TARGET_ENE_0, local5, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3101, TARGET_ENE_0, SuccessDist, 0)
    elseif local8 < 80 and local0 < 1.2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local4, TARGET_ENE_0, local5, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, SuccessDist, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, SuccessDist, local6, local7, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act02(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 12.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 15
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16000) then
        local2 = 9999
        if 8 <= local0 then
            local3 = 100
        end
    end
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, local2, local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 15
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16000) then
        local2 = 9999
        if 8 <= local0 then
            local3 = 100
        end
    end
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, local2, local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act04(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 15
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16000) then
        local2 = 9999
        if 8 <= local0 then
            local3 = 100
        end
    end
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, local2, local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act05(arg0, arg1, arg2)
    arg0:SetTimer(2, 8)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 <= 7 then
        if local0 <= 1.5 then
            local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, 9920)
            local1 = local1:SetLifeEndSuccess(true)
            local1:SetTargetRange(1, -999, 5)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 5, 0, 0)
        elseif local0 <= 5 then
            if arg0:GetRandam_Int(1, 100) < 40 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 5, 0)
            else
                local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, 9920)
                local1 = local1:SetLifeEndSuccess(true)
                local1:SetTargetRange(1, -999, 5)
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 5, 0, 0)
            end
        elseif local0 <= 8.2 then
            local local1 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, 5, TARGET_SELF, true, 9920)
            local1:SetLifeEndSuccess(true)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 5, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 15
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16000) then
        local2 = 9999
        if 8 <= local0 then
            local3 = 100
        end
    end
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, local2, local3, 3)
    end
    local local4 = 3003
    local local5 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local6 = 0
    local local7 = 0
    if 2.5 < local0 and arg0:GetRandam_Int(1, 100) < 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local4, TARGET_ENE_0, DistToAtt2, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local6, local7, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 15
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16000) then
        local2 = 9999
        if 8 <= local0 then
            local3 = 100
        end
    end
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, local2, local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act08(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 15
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16000) then
        local2 = 9999
        if 8 <= local0 then
            local3 = 100
        end
    end
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, local2, local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function KingCastleKight_lance_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function KingCastleKight_lance_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function KingCastleKight_lance_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function KingCastleKight_lance_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

function KingCastleKight_lance_Act20(arg0, arg1, arg2)
    if 5 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, GOAL_RESULT_Success, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 9910, GOAL_RESULT_Success, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(4, 10)
    if 5 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleKight_lance_Act22(arg0, arg1, arg2)
    arg0:SetTimer(4, 10)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.2, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleKight_lance_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        if arg1:IsHitAttack() == true then
            arg1:SetNumber(0, 1)
            return true
        else
            return GOAL_RESULT_Success
        end
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
        if local0 <= 3.8 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 0.2, 3016, TARGET_ENE_0, 5, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 0.2, 3009, TARGET_ENE_0, 5, 0, 0, 0, 0)
            return true
        end
    elseif local0 < 3 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if Counter_Act(arg1, arg2, arg1:GetRandam_Int(5, 10), 3013) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 2 - arg1:GetMapHitRadius(TARGET_SELF), 0)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        if local1 < 60 and not arg1:HasSpecialEffectId(TARGET_SELF, 16000) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 6, TARGET_ENE_0, 2, TARGET_SELF, false, 9910)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_SuccessGuard) then
        if local0 < 6 and local1 < 40 and not arg1:HasSpecialEffectId(TARGET_SELF, 16000) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, false, 9910)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_UseItem) and 4 < local0 and local1 < 40 and not arg1:HasSpecialEffectId(TARGET_SELF, 16000) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, false, 9910)
        return true
    end
    if arg1:IsInterupt(INTERUPT_TargetIsGuard) and (arg1:GetAttackPassedTime(3009) < 2 or arg1:GetAttackPassedTime(3016) < 2) then
        arg1:SetTimer(4, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg1:SetNumber(0, 1)
        arg1:SetTimer(4, 10)
        return true
    else
        return false
    end
end

return 
