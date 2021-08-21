RegisterTableGoal(GOAL_Farold_Greatsword_Battle, "GOAL_Farold_Greatsword_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Farold_Greatsword_Battle, true)

Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(1, 10)
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
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) and 2.6 - arg1:GetMapHitRadius(TARGET_SELF) <= 2.2 then
        local0[5] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local3 <= 2.2 - arg1:GetMapHitRadius(TARGET_SELF) then
        local0[9] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local3 <= 2.2 - arg1:GetMapHitRadius(TARGET_SELF) then
        local0[10] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    else
        if 6.5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 40
            local0[4] = 40
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[22] = 0
            local0[23] = 0
            if arg1:GetNpcThinkParamID() == 128120 and not arg1:HasSpecialEffectId(TARGET_SELF, 10803) then
                local0[11] = 50
            end
            if arg1:GetNpcThinkParamID() == 128220 and not arg1:HasSpecialEffectId(TARGET_SELF, 10807) then
                local0[12] = 50
            end
        elseif 2.5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[6] = 20
            local0[7] = 10
            local0[8] = 0
            local0[22] = 40
            local0[23] = 0
            if arg1:GetNpcThinkParamID() == 128120 and not arg1:HasSpecialEffectId(TARGET_SELF, 10803) then
                local0[11] = 50
            end
            if arg1:GetNpcThinkParamID() == 128220 and not arg1:HasSpecialEffectId(TARGET_SELF, 10807) then
                local0[12] = 50
            end
        elseif 0.8 <= local3 then
            local0[1] = 40
            local0[2] = 20
            local0[3] = 0
            local0[4] = 0
            local0[6] = 20
            local0[7] = 0
            local0[8] = 0
            local0[22] = 20
            local0[23] = 0
        else
            local0[1] = 0
            local0[2] = 20
            local0[3] = 0
            local0[4] = 0
            local0[6] = 30
            local0[7] = 0
            local0[8] = 20
            local0[22] = 0
            local0[23] = 30
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            if 4 <= local3 then
                local0[3] = local0[3] + 30
                local0[6] = 0
                local0[8] = 0
            else
                local0[1] = local0[1] + 30
                local0[6] = 0
                local0[8] = 0
            end
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 6, local0[1], 1)
    local0[1] = SetCoolTime(arg1, arg2, 3010, 6, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 6, local0[2], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3011, 6, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 6, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 6, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 6, local0[5], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3012, 6, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3014, 12, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3016, 6, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3017, 6, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3021, 45, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3022, 45, local0[12], 1)
    if arg1:IsFinishTimer(1) == false then
        local0[6] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Farold_Greatsword_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, KingCastleKight_ActAfter_AdjustSpace), local2)
    return 
end

function Farold_Greatsword_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 4)
    local local0 = ATT_SUCCESSDIST
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 4)
    local local0 = 3001
    local local1 = 3011
    local local2 = 3002
    local local3 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = ATT_SUCCESSDIST
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 50 or targetDist <= 1.8 then
        if local7 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local4, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4, 0, 0)
        end
    elseif local7 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local4, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 2, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11.1 - arg0:GetMapHitRadius(TARGET_SELF), 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act05(arg0, arg1, arg2)
    local local0 = 3005
    local local1 = ATT_SUCCESSDIST
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 3006
    local local3 = 3008
    local local4 = ATT_SUCCESSDIST
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(1, 14)
    if 3.2 <= arg0:GetDist(TARGET_ENE_0) then
        local local9 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 1, TARGET_SELF, true, 9920)
        local9:SetLifeEndSuccess(true)
        local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, 999, local5, local6)
        local9:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local4, 0, 0)
    elseif local7 <= 30 then
        local local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 999, local5, local6)
        local9:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, 0, 0)
    elseif local7 <= 70 then
        arg1:ClearSubGoal()
        local local9 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9920)
        local9:SetLifeEndSuccess(true)
        local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, 999, local5, local6)
        local9:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:ClearSubGoal()
        local local9 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9920)
        local9:SetLifeEndSuccess(true)
        local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, 999, local5, local6)
        local9:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 4)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act09(arg0, arg1, arg2)
    local local0 = 3016
    local local1 = ATT_SUCCESSDIST
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act10(arg0, arg1, arg2)
    local local0 = 3017
    local local1 = ATT_SUCCESSDIST
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    return 
end

function Farold_Greatsword_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    return 
end

function Farold_Greatsword_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act22(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, 60, true, true, 0)
        local0:SetTargetRange(1, 2, 7)
    else
        local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, 60, true, true, 0)
        local0:SetTargetRange(1, 2, 7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Farold_Greatsword_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleKight_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_FindAttack) and local0 <= 4 and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        local local1 = 3006
        local local2 = 3008
        local local3 = ATT_SUCCESSDIST
        local local4 = arg1:GetDist(TARGET_ENE_0)
        local local5 = 0
        local local6 = 0
        if arg1:GetRandam_Int(1, 100) <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, local5, local6)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, 0, 0)
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, local5, local6)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local3, 0, 0)
        end
        return true
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) == false then
        if arg1:IsInterupt(INTERUPT_SuccessGuard) then
            if local0 < 6 and arg1:GetRandam_Int(1, 100) < 70 and 30 < arg1:GetSp(TARGET_SELF) then
                arg2:ClearSubGoal()
                Farold_Greatsword_Act02(arg1, arg2, paramTbl)
                return true
            end
        elseif local0 < 4 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and Counter_Act(arg1, arg2, arg1:GetRandam_Int(5, 10), 3009) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 4, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
            local local1 = 0
            local local2 = 0
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_ENE_0, 999, TARGET_SELF, false, 0)
            return true
        end
    end
    return false
end

return 
