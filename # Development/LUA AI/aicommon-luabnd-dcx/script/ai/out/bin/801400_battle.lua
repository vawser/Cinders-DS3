RegisterTableGoal(GOAL_SpellSummon_LothricKnight_801400_Battle, "GOAL_SpellSummon_LothricKnight_801400_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_LothricKnight_801400_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    ai:SetTimer(1, 10)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    local local3 = ai:GetDist(TARGET_ENE_0)
    local local4 = ai:GetRandam_Int(1, 100)
    local local5 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = ai:GetEventRequest()
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) and 2.6 - ai:GetMapHitRadius(TARGET_SELF) <= 2.2 then
        local0[5] = 80
        local0[20] = 20
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local3 <= 2.2 - ai:GetMapHitRadius(TARGET_SELF) then
        local0[9] = 80
        local0[20] = 20
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local3 <= 2.2 - ai:GetMapHitRadius(TARGET_SELF) then
        local0[10] = 80
        local0[20] = 20
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
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
            if ai:GetNpcThinkParamID() == 128120 and not ai:HasSpecialEffectId(TARGET_SELF, 10803) then
                local0[11] = 50
            end
            if ai:GetNpcThinkParamID() == 128220 and not ai:HasSpecialEffectId(TARGET_SELF, 10807) then
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
            if ai:GetNpcThinkParamID() == 128120 and not ai:HasSpecialEffectId(TARGET_SELF, 10803) then
                local0[11] = 50
            end
            if ai:GetNpcThinkParamID() == 128220 and not ai:HasSpecialEffectId(TARGET_SELF, 10807) then
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
        if ai:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
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
    local0[1] = SetCoolTime(ai, goal, 3000, 6, local0[1], 1)
    local0[1] = SetCoolTime(ai, goal, 3010, 6, local0[1], 1)
    local0[2] = SetCoolTime(ai, goal, 3001, 6, local0[2], 1)
    local0[2] = SetCoolTime(ai, goal, 3011, 6, local0[2], 1)
    local0[3] = SetCoolTime(ai, goal, 3003, 6, local0[3], 1)
    local0[4] = SetCoolTime(ai, goal, 3004, 6, local0[4], 1)
    local0[5] = SetCoolTime(ai, goal, 3005, 6, local0[5], 1)
    local0[7] = SetCoolTime(ai, goal, 3012, 6, local0[7], 1)
    local0[8] = SetCoolTime(ai, goal, 3014, 12, local0[8], 0)
    local0[9] = SetCoolTime(ai, goal, 3016, 6, local0[9], 1)
    local0[10] = SetCoolTime(ai, goal, 3017, 6, local0[10], 1)
    local0[11] = SetCoolTime(ai, goal, 3021, 45, local0[11], 1)
    local0[12] = SetCoolTime(ai, goal, 3022, 45, local0[12], 1)
    if ai:IsFinishTimer(1) == false then
        local0[6] = 0
    end
    local1[1] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act01)
    local1[2] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act02)
    local1[3] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act03)
    local1[4] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act04)
    local1[5] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act05)
    local1[6] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act06)
    local1[7] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act07)
    local1[8] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act08)
    local1[9] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act09)
    local1[10] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act10)
    local1[11] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act11)
    local1[12] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act12)
    local1[20] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act20)
    local1[21] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act21)
    local1[22] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act22)
    local1[23] = REGIST_FUNC(ai, goal, KingCastleKight_greatsword_Act23)
    Common_Battle_Activate(ai, goal, local0, local1, REGIST_FUNC(ai, goal, KingCastleKight_ActAfter_AdjustSpace), local2)
    return 
end

function KingCastleKight_greatsword_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.2 - self:GetMapHitRadius(TARGET_SELF), 4.2 - self:GetMapHitRadius(TARGET_SELF) + 6, 4.2 - self:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 4)
    local local0 = ATT_SUCCESSDIST
    local local1 = 0
    local local2 = 0
    if self:GetRandam_Int(1, 100) <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.2 - self:GetMapHitRadius(TARGET_SELF), 4.2 - self:GetMapHitRadius(TARGET_SELF) + 6, 4.2 - self:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 4)
    local local0 = 3001
    local local1 = 3011
    local local2 = 3002
    local local3 = 4.2 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = ATT_SUCCESSDIST
    local local5 = 0
    local local6 = 0
    local local7 = self:GetRandam_Int(1, 100)
    if self:GetRandam_Int(1, 100) <= 50 or targetDist <= 1.8 then
        if local7 <= 30 then
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local4, 0, 0, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4, 0, 0)
        end
    elseif local7 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local4, 0, 0, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 8 - self:GetMapHitRadius(TARGET_SELF), 8 - self:GetMapHitRadius(TARGET_SELF), 8 - self:GetMapHitRadius(TARGET_SELF), 100, 0, 2, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 11.1 - self:GetMapHitRadius(TARGET_SELF), 11.1 - self:GetMapHitRadius(TARGET_SELF) + 6, 11.1 - self:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act05(self, ai, goal)
    local local0 = 3005
    local local1 = ATT_SUCCESSDIST
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - self:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act06(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = 3006
    local local3 = 3008
    local local4 = ATT_SUCCESSDIST
    local local5 = 0
    local local6 = 0
    local local7 = self:GetRandam_Int(1, 100)
    local local8 = self:GetRandam_Int(1, 100)
    self:SetTimer(1, 14)
    if 3.2 <= self:GetDist(TARGET_ENE_0) then
        local local9 = ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 1, TARGET_SELF, true, 9920)
        local9:SetLifeEndSuccess(true)
        local9 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, 999, local5, local6)
        local9:SetLifeEndSuccess(true)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local4, 0, 0)
    elseif local7 <= 30 then
        local local9 = ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 999, local5, local6)
        local9:SetLifeEndSuccess(true)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, 0, 0)
    elseif local7 <= 70 then
        ai:ClearSubGoal()
        local local9 = ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9920)
        local9:SetLifeEndSuccess(true)
        local9 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, 999, local5, local6)
        local9:SetLifeEndSuccess(true)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, 0, 0)
    else
        ai:ClearSubGoal()
        local local9 = ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9920)
        local9:SetLifeEndSuccess(true)
        local9 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, 999, local5, local6)
        local9:SetLifeEndSuccess(true)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.1 - self:GetMapHitRadius(TARGET_SELF), 5.1 - self:GetMapHitRadius(TARGET_SELF) + 6, 5.1 - self:GetMapHitRadius(TARGET_SELF) + 6, 0, 0, 2, 4)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act08(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act09(self, ai, goal)
    local local0 = 3016
    local local1 = ATT_SUCCESSDIST
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - self:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act10(self, ai, goal)
    local local0 = 3017
    local local1 = ATT_SUCCESSDIST
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.2 - self:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act11(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    return 
end

function KingCastleKight_greatsword_Act12(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    return 
end

function KingCastleKight_greatsword_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act21(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act22(self, ai, goal)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local0 = ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, 60, true, true, 0)
        local0:SetTargetRange(1, 2, 7)
    else
        local local0 = ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, 60, true, true, 0)
        local0:SetTargetRange(1, 2, 7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleKight_greatsword_Act23(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleKight_ActAfter_AdjustSpace(self, ai, goal)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    elseif ai:IsInterupt(INTERUPT_FindAttack) and local0 <= 4 and ai:HasSpecialEffectId(TARGET_SELF, 5025) then
        local local1 = 3006
        local local2 = 3008
        local local3 = ATT_SUCCESSDIST
        local local4 = ai:GetDist(TARGET_ENE_0)
        local local5 = 0
        local local6 = 0
        if ai:GetRandam_Int(1, 100) <= 50 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, local5, local6)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, 0, 0)
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, local5, local6)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local3, 0, 0)
        end
        return true
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5030) == false then
        if ai:IsInterupt(INTERUPT_SuccessGuard) then
            if local0 < 6 and ai:GetRandam_Int(1, 100) < 70 and 30 < ai:GetSp(TARGET_SELF) then
                goal:ClearSubGoal()
                KingCastleKight_greatsword_Act02(ai, goal, paramTbl)
                return true
            end
        elseif local0 < 4 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and Counter_Act(ai, goal, ai:GetRandam_Int(5, 10), 3009) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 4, 0)
            return true
        end
        if ai:IsInterupt(INTERUPT_TargetOutOfRange) then
            local local1 = 0
            local local2 = 0
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_ENE_0, 999, TARGET_SELF, false, 0)
            return true
        end
    end
    return false
end

return 
