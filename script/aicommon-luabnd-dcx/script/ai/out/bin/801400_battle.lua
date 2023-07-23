RegisterTableGoal(GOAL_SpellSummon_LothricKnight_801400_Battle, "GOAL_SpellSummon_LothricKnight_801400_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_LothricKnight_801400_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    ai:SetTimer(2, 10)
    ai:SetTimer(3, 20)
    ai:SetTimer(4, 20)
    ai:SetTimer(5, 5)
    ai:SetNumber(0, 0)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll = ai:GetRandam_Int(1, 100)
    
    if roll < 80 and InsideRange(ai, goal, -90, 100, -1, 1.8) then
        actChanceList[6] = 99 -- Left Shield Bash
        actChanceList[20] = 1 -- Turn
    elseif roll < 80 and InsideRange(ai, goal, 90, 45, -1, 2.5) then
        actChanceList[7] = 99 -- Right Side Slash
        actChanceList[20] = 1 -- Turn
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        actChanceList[20] = 100 -- Turn
    else
        if 6 <= distance then
            actChanceList[1] = 35 -- Slash Combo 1
            actChanceList[2] = 20 -- Slash Combo 2
            actChanceList[3] = 0 -- Shield Bash
            actChanceList[4] = 45 -- Running Thrust Combo
            actChanceList[5] = 0 -- Stance Combo
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
            if not ai:HasSpecialEffectId(TARGET_SELF, 10801) then
                actChanceList[8] = 50 -- Sword Buff
            end
            if not ai:HasSpecialEffectId(TARGET_SELF, 10805) then
                actChanceList[9] = 50 -- Sword Buff
            end
        elseif 4 <= distance then
            actChanceList[1] = 35 -- Slash Combo 1
            actChanceList[2] = 15 -- Slash Combo 2
            actChanceList[3] = 10 -- Shield Bash
            actChanceList[4] = 0 -- Running Thrust Combo
            actChanceList[5] = 10 -- Stance Combo
            actChanceList[21] = 30 -- Strafe
            actChanceList[22] = 0 -- Leave Target
            if not ai:HasSpecialEffectId(TARGET_SELF, 10801) then
                actChanceList[8] = 50 -- Sword Buff
            end
            if not ai:HasSpecialEffectId(TARGET_SELF, 10805) then
                actChanceList[9] = 50 -- Sword Buff
            end
        elseif 2 <= distance then
            actChanceList[1] = 25 -- Slash Combo 1
            actChanceList[2] = 20 -- Slash Combo 2
            actChanceList[3] = 15 -- Shield Bash
            actChanceList[4] = 0 -- Running Thrust Combo
            actChanceList[5] = 10 -- Stance Combo
            actChanceList[21] = 30 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        elseif 1 <= distance then
            actChanceList[1] = 10 -- Slash Combo 1
            actChanceList[2] = 30 -- Slash Combo 2
            actChanceList[3] = 25 -- Shield Bash
            actChanceList[4] = 0 -- Running Thrust Combo
            actChanceList[5] = 10 -- Stance Combo
            actChanceList[21] = 25 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        else
            actChanceList[1] = 0 -- Slash Combo 1
            actChanceList[2] = 15 -- Slash Combo 2
            actChanceList[3] = 40 -- Shield Bash
            actChanceList[4] = 0 -- Running Thrust Combo
            actChanceList[5] = 15 -- Stance Combo
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        end
        
        if ai:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            actChanceList[1] = actChanceList[1] * 1 -- Slash Combo 1
            actChanceList[2] = actChanceList[2] * 1 -- Slash Combo 2
            actChanceList[3] = actChanceList[3] * 1 -- Shield Bash
            actChanceList[4] = actChanceList[4] * 1 -- Running Thrust Combo
            actChanceList[5] = actChanceList[5] * 10 -- Stance Combo
            actChanceList[21] = actChanceList[21] * 10 -- Strafe
            actChanceList[22] = actChanceList[22] * 10 -- Leave Target
        elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
            actChanceList[1] = actChanceList[1] * 10 -- Slash Combo 1
            actChanceList[2] = actChanceList[2] * 10 -- Slash Combo 2
            actChanceList[3] = actChanceList[3] * 20 -- Shield Bash
            actChanceList[4] = actChanceList[4] * 1 -- Running Thrust Combo
            actChanceList[5] = actChanceList[5] * 10 -- Stance Combo
            actChanceList[21] = actChanceList[21] * 10 -- Strafe
            actChanceList[22] = actChanceList[22] * 10 -- Leave Target
        elseif ai:IsFinishTimer(3) == true then
            actChanceList[1] = actChanceList[1] * 10 -- Slash Combo 1
            actChanceList[2] = actChanceList[2] * 10 -- Slash Combo 2
            actChanceList[3] = actChanceList[3] * 1 -- Shield Bash
            actChanceList[4] = actChanceList[4] * 10 -- Running Thrust Combo
            actChanceList[5] = actChanceList[5] * 20 -- Stance Combo
            actChanceList[21] = actChanceList[21] * 0 -- Strafe
            actChanceList[22] = actChanceList[22] * 0 -- Leave Target
        elseif ai:IsFinishTimer(4) == true then
            actChanceList[1] = actChanceList[1] * 1 -- Slash Combo 1
            actChanceList[2] = actChanceList[2] * 1 -- Slash Combo 2
            actChanceList[3] = actChanceList[3] * 1 -- Shield Bash
            actChanceList[4] = actChanceList[4] * 1 -- Running Thrust Combo
            actChanceList[5] = actChanceList[5] * 1 -- Stance Combo
            actChanceList[21] = actChanceList[21] * 10 -- Strafe
            actChanceList[22] = actChanceList[22] * 10 -- Leave Target
        elseif ai:GetNumber(0) == 1 then
            ai:SetNumber(0, 0)
            actChanceList[1] = actChanceList[1] * 1 -- Slash Combo 1
            actChanceList[2] = actChanceList[2] * 1 -- Slash Combo 2
            actChanceList[3] = actChanceList[3] * 1 -- Shield Bash
            actChanceList[4] = actChanceList[4] * 1 -- Running Thrust Combo
            actChanceList[5] = actChanceList[5] * 2 -- Stance Combo
            actChanceList[21] = actChanceList[21] * 1 -- Strafe
            actChanceList[22] = actChanceList[22] * 1 -- Leave Target
        end
        
        actChanceList[1] = SetCoolTime(ai, goal, 3000, 5, actChanceList[1], 1)
        actChanceList[2] = SetCoolTime(ai, goal, 3003, 5, actChanceList[2], 1)
        actChanceList[3] = SetCoolTime(ai, goal, 3006, 5, actChanceList[3], 1)
        
        if ai:IsFinishTimer(2) == false then
            actChanceList[5] = 0 -- Stance Combo
        end
        
        actChanceList[6] = SetCoolTime(ai, goal, 3013, 3, actChanceList[6], 1)
        actChanceList[7] = SetCoolTime(ai, goal, 3014, 3, actChanceList[7], 1)
        actChanceList[8] = SetCoolTime(ai, goal, 3021, 45, actChanceList[8], 0)
        actChanceList[9] = SetCoolTime(ai, goal, 3021, 45, actChanceList[9], 0)
    end
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act09)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_Act22)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_LothricKnight_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Slash Combo 1
function SpellSummon_LothricKnight_Act01(self, ai, goal)
    self:SetTimer(3, 8)
    local local0 = 5 - self:GetMapHitRadius(TARGET_SELF)
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, 6, 0, 3)
    end
    local local1 = 3000
    local local2 = 3001
    local local3 = 3002
    local local4 = 3016
    local local5 = 2.1 - self:GetMapHitRadius(TARGET_SELF) + 3 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 4.5 - self:GetMapHitRadius(TARGET_SELF) - 1
    local local8 = 4.5 - self:GetMapHitRadius(TARGET_SELF) - 1
    local local9 = 999
    local local10 = 0
    local local11 = 0
    local local12 = self:GetRandam_Int(1, 100)
    
    if local12 < 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 6, 0)
    elseif local12 < 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 6, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 4, 0)
    elseif local12 < 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 6, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, 4, 0)
    elseif local12 < 90 and self:IsFinishTimer(2) == true then
        self:SetTimer(4, 0)
        self:SetTimer(2, 10)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 6, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 4, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3201, TARGET_ENE_0, 999, 0)
    else
        self:SetTimer(4, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local10, local11, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 6, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 4, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 4, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Slash Combo 2
function SpellSummon_LothricKnight_Act02(self, ai, goal)
    self:SetTimer(3, 8)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = 4.5 - self:GetMapHitRadius(TARGET_SELF)
    
    if local1 <= local0 then
        Approach_Act(self, ai, local1, 6, 0, 3)
    end
    
    local local2 = 3003
    local local3 = 3004
    local local4 = 4.5 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 0
    local local6 = 0
    local local7 = self:GetRandam_Int(1, 100)
    
    if local0 <= 1 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local5, local6, 0, 0)
    elseif local7 < 10 and self:IsFinishTimer(2) == true then
        self:SetTimer(2, 10)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local4, local5, local6, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3201, TARGET_ENE_0, 999, 0)
    elseif local7 < 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local4, local5, local6, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 4, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local4, local5, local6, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 4, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Shield Bash
function SpellSummon_LothricKnight_Act03(self, ai, goal)
    self:SetTimer(3, 0)
    local local0 = 2.5 - self:GetMapHitRadius(TARGET_SELF)
    
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, 6, 0, 3)
    end
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Running Thrust Combo
function SpellSummon_LothricKnight_Act04(self, ai, goal)
    self:SetTimer(3, 0)
    local local0 = 4.6 - self:GetMapHitRadius(TARGET_SELF) + 1
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, -1, 0, 3)
    end
    local local1 = 3005
    local local2 = 3016
    local local3 = 4 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    
    if local6 < 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 < 60 and self:IsFinishTimer(2) == true then
        self:SetTimer(2, 10)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 4, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3200, TARGET_ENE_0, 999, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 4, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Stance Combo
function SpellSummon_LothricKnight_Act05(self, ai, goal)
    self:SetTimer(2, 10)
    self:SetTimer(3, 8)
    self:SetTimer(5, 6)
    
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = self:GetRandam_Int(1, 100)
    
    if local0 <= 2 then
        if local1 < 40 then
            local local2 = 5
            local local3 = ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, 9920)
            local3 = local3:SetLifeEndSuccess(true)
            local3:SetTargetRange(1, -999, 5)
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0)
        else
            local local2 = 0
            local local4 = 0
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0)
        end
    elseif local0 <= 4 then
        if local1 < 40 then
            local local2 = 5
            local local3 = ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, 9920)
            local3 = local3:SetLifeEndSuccess(true)
            local3:SetTargetRange(1, -999, 5)
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0)
        else
            local local2 = 5
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local0 <= 6 then
        if local1 < 70 then
            local local2 = 5
            local local3 = ai:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 1.5, TARGET_ENE_0, 4, TARGET_SELF, true, 9920)
            local3:SetLifeEndSuccess(true)
            local3 = ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, 9920)
            local3 = local3:SetLifeEndSuccess(true)
            local3:SetTargetRange(1, -999, 5)
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0)
        else
            local local2 = 5
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local0 <= 9 then
        if local1 < 50 then
            local local2 = 5
            ai:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 3, TARGET_ENE_0, 6, TARGET_SELF, true, 9920)
            local local3 = ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, 9920)
            local3:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, 0, 0)
        else
            local local2 = 5
            ai:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 3, TARGET_ENE_0, 6, TARGET_SELF, true, 9920)
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, 0, 0)
        end
    else
        ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Left Shield Bash
function SpellSummon_LothricKnight_Act06(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

-- Right Side Slash
function SpellSummon_LothricKnight_Act07(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

-- Sword Buff
function SpellSummon_LothricKnight_Act08(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

-- Sword Buff
function SpellSummon_LothricKnight_Act09(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    return 
end

-- Turn
function SpellSummon_LothricKnight_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Strafe
function SpellSummon_LothricKnight_Act21(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    self:SetTimer(4, 10)
    if 5 < local0 then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, self:GetRandam_Int(60, 90), true, true, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, self:GetRandam_Int(60, 90), true, true, 0)
        end
    elseif self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, self:GetRandam_Int(60, 90), true, true, 9910)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, self:GetRandam_Int(60, 90), true, true, 9910)
    end
    if self:GetRandam_Int(1, 100) < 30 and self:IsFinishTimer(2) == true and local0 < 5 then
        SpellSummon_LothricKnight_Act05(self, ai, goal)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Leave Target
function SpellSummon_LothricKnight_Act22(self, ai, goal)
    self:SetTimer(4, 10)
    local local0 = self:GetRandam_Int(1, 100)
    
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, 9910)
    
    if local0 < 30 and self:IsFinishTimer(2) == true then
        SpellSummon_LothricKnight_Act05(self, ai, goal)
    elseif local0 < 60 and self:GetDist(TARGET_ENE_0) < 3 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_LothricKnight_AdjustSpace(self, ai, goal)
    return 
end

Goal.Update = function (self, ai, goal)
    if goal:GetSubGoalNum() <= 0 then
        if ai:IsHitAttack() == true then
            ai:SetNumber(0, 1)
        end
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetRandam_Int(1, 100)
    
    if ai:IsInterupt(INTERUPT_TargetOutOfRange) then
        local local2 = 5
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.3, 3200, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif local0 < 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if Counter_Act(ai, goal, ai:GetRandam_Int(5, 10), 3009) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, ATT3010_DIST_MAX, 0)
            return true
        end
    elseif ai:IsInterupt(INTERUPT_Shoot) then
        ai:SetTimer(3, 0)
        if 2.5 < local0 and local1 < 40 and ai:IsFinishTimer(2) == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 2, TARGET_SELF, false, 9910)
            return true
        end
    elseif ai:IsInterupt(INTERUPT_SuccessGuard) then
        ai:SetNumber(0, 1)
        ai:SetTimer(3, 0)
        if local0 < 6 and local1 < 40 and 30 < ai:GetSp(TARGET_SELF) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2.5, TARGET_SELF, false, 9910)
            return true
        end
    elseif ai:IsInterupt(INTERUPT_UseItem) then
        ai:SetTimer(3, 0)
        if 4 < local0 and local1 < 40 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2.5, TARGET_SELF, false, 9910)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_GuardBreak) then
        ai:SetNumber(0, 1)
        ai:SetTimer(3, 0)
        ai:SetTimer(4, 10)
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 999, TARGET_SELF, false, 9910)
        return true
    elseif ai:HasSpecialEffectId(TARGET_SELF, 10804) == true and ReactBackstab_Act(ai, goal, 2, 3020, 100) then
        return true
    else
        return false
    end
end

return 
