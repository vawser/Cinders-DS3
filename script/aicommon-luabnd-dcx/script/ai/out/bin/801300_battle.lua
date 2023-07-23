RegisterTableGoal(GOAL_SpellSummon_CarthusSwordsman_801300_Battle, "GOAL_SpellSummon_CarthusSwordsman_801300_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_CarthusSwordsman_801300_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    ai:SetNumber(0, 5)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 3)
    ai:SetStringIndexedNumber("Dist_BackStep", 3)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    local distance = ai:GetDist(TARGET_ENE_0)

    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        actChanceList[5] = 70 -- Invisible Rolling Attack
        actChanceList[20] = 30 -- Turn
    else
        if 5.8 <= distance then
            actChanceList[1] = 15 -- Slash Combo
            actChanceList[2] = 15 -- Heavy Slash Combo
            actChanceList[3] = 15 -- Running Side Slash
            actChanceList[4] = 15 -- Spinning Slash Combo
            actChanceList[5] = 40 -- Invisible Rolling Attack
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
            actChanceList[23] = 0 -- Dodge Jump
            actChanceList[24] = 0 -- Backstep
        elseif 2.5 <= distance then
            actChanceList[1] = 20 -- Slash Combo
            actChanceList[2] = 20 -- Heavy Slash Combo
            actChanceList[3] = 0 -- Running Side Slash
            actChanceList[4] = 10 -- Spinning Slash Combo
            actChanceList[5] = 10 -- Invisible Rolling Attack
            actChanceList[6] = 20 -- Jumping Spinning Slash
            actChanceList[21] = 10 -- Strafe
            actChanceList[22] = 0 -- Leave Target
            actChanceList[23] = 10 -- Dodge Jump
            actChanceList[24] = 0 -- Backstep
        elseif 1.5 <= distance then
            actChanceList[1] = 20 -- Slash Combo
            actChanceList[2] = 20 -- Heavy Slash Combo
            actChanceList[3] = 0 -- Running Side Slash
            actChanceList[4] = 20 -- Spinning Slash Combo
            actChanceList[5] = 0 -- Invisible Rolling Attack
            actChanceList[6] = 20 -- Jumping Spinning Slash
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
            actChanceList[23] = 0 -- Dodge Jump
            actChanceList[24] = 0 -- Backstep
        else
            actChanceList[1] = 20 -- Slash Combo
            actChanceList[2] = 10 -- Heavy Slash Combo
            actChanceList[3] = 0 -- Running Side Slash
            actChanceList[4] = 0 -- Spinning Slash Combo
            actChanceList[5] = 20 -- Invisible Rolling Attack
            actChanceList[6] = 20 -- Jumping Spinning Slash
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
            actChanceList[23] = 0 -- Dodge Jump
            actChanceList[24] = 20 -- Backstep
        end
        
        actChanceList[1] = SetCoolTime(ai, goal, 3000, 5, actChanceList[1], 1)
        actChanceList[2] = SetCoolTime(ai, goal, 3003, 5, actChanceList[2], 1)
        actChanceList[3] = SetCoolTime(ai, goal, 3005, 5, actChanceList[3], 1)
        actChanceList[4] = SetCoolTime(ai, goal, 3006, 5, actChanceList[4], 1)
        actChanceList[5] = SetCoolTime(ai, goal, 3010, 5, actChanceList[5], 1)
        actChanceList[6] = SetCoolTime(ai, goal, 3012, 5, actChanceList[5], 1)
        actChanceList[23] = SetCoolTime(ai, goal, 6002, 6, actChanceList[23], 1)
        actChanceList[23] = SetCoolTime(ai, goal, 6003, 6, actChanceList[23], 1)
        actChanceList[24] = SetCoolTime(ai, goal, 6001, 12, actChanceList[24], 1)
    end
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act06)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act22)
    actFuncList[23] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act23)
    actFuncList[24] = REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_Act24)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_CarthusSwordsman_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Slash Combo
function SpellSummon_CarthusSwordsman_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 7.8 - self:GetMapHitRadius(TARGET_SELF), 7.8 - self:GetMapHitRadius(TARGET_SELF) + 2, 7.8 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    
    local local0 = 3000
    local local1 = 3008
    local local2 = 3001
    local local3 = 3002
    local local4 = 3.7 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.9 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 2 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 0
    local local8 = 0
    local local9 = self:GetRandam_Int(1, 100)
    
    if self:GetRandam_Int(1, 100) <= 50 then
        if local9 <= 20 then
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local7, local8, 0, 0)
        elseif local9 <= 70 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        end
    elseif local9 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local6, local7, local8, 0, 0)
    elseif local9 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Heavy Slash Combo
function SpellSummon_CarthusSwordsman_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 5 - self:GetMapHitRadius(TARGET_SELF) + 0.3, 5 - self:GetMapHitRadius(TARGET_SELF) + 2, 5 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    
    local local0 = 3003
    local local1 = 2 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    
    if self:GetRandam_Int(1, 100) <= 20 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 9.9 - self:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Running Side Slash
function SpellSummon_CarthusSwordsman_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 10 - self:GetMapHitRadius(TARGET_SELF), 10 - self:GetMapHitRadius(TARGET_SELF) + 2, 10 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 2 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Spinning Slash Combo
function SpellSummon_CarthusSwordsman_Act04(self, ai, goal)
    if self:GetRandam_Int(1, 100) <= 50 then
        Approach_Act_Flex(self, ai, 7.4 - self:GetMapHitRadius(TARGET_SELF), 7.4 - self:GetMapHitRadius(TARGET_SELF) + 2, 7.4 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
        
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 2 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    else
        Approach_Act_Flex(self, ai, 7.4 - self:GetMapHitRadius(TARGET_SELF) + 6.2 - self:GetMapHitRadius(TARGET_SELF), 7.4 - self:GetMapHitRadius(TARGET_SELF) + 6.2 - self:GetMapHitRadius(TARGET_SELF) + 2, 7.4 - self:GetMapHitRadius(TARGET_SELF) + 6.2 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
        
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 7.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 2 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Invisible Rolling Attack
function SpellSummon_CarthusSwordsman_Act05(self, ai, goal)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    local local0 = 2 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = self:GetDist(TARGET_ENE_0)
    
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local1 <= 5 then
                local local2 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                local2:SetLifeEndSuccess(true)
                ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local0, 0, 0)
            else
                local local2 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                local2:SetLifeEndSuccess(true)
                local2 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                local2:SetLifeEndSuccess(true)
                ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            end
        elseif local1 <= 5 then
            local local2 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            local2:SetLifeEndSuccess(true)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local0, 0, 0)
        else
            local local2 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            local2:SetLifeEndSuccess(true)
            local2 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
            local2:SetLifeEndSuccess(true)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 <= 5 then
        local local2 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        local2:SetLifeEndSuccess(true)
        local2 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local2:SetLifeEndSuccess(true)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local0, 0, 0)
    else
        local local2 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        local2:SetLifeEndSuccess(true)
        local2 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local2:SetLifeEndSuccess(true)
        local2 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local2:SetLifeEndSuccess(true)
        local2 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
        local2:SetLifeEndSuccess(true)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Jumping Spinning Slash
function SpellSummon_CarthusSwordsman_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.4, 5.4 + 2, 5.4 + 2, 0, 0, 2, 2)
    
    local local0 = 3012
    local local1 = 2 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    
    local local4 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
    local4:SetLifeEndSuccess(true)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn
function SpellSummon_CarthusSwordsman_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Strafe
function SpellSummon_CarthusSwordsman_Act21(self, ai, goal)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, 120, true, true, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, 120, true, true, 0)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Leave Target
function SpellSummon_CarthusSwordsman_Act22(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 0)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, 120, true, true, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, 120, true, true, 0)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Dodge Jump
function SpellSummon_CarthusSwordsman_Act23(self, ai, goal)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
    else
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Backstep
function SpellSummon_CarthusSwordsman_Act24(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    
    if self:GetRandam_Int(1, 100) <= 30 then
        SpellSummon_CarthusSwordsman_Act05(self, ai, goal)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_CarthusSwordsman_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_CarthusSwordsman_801300_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    elseif ai:IsInterupt(INTERUPT_GuardBreak) and ai:GetDist(TARGET_ENE_0) <= 5 and ai:HasSpecialEffectId(TARGET_SELF, 5030) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 999, 0, 0)
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:GetRandam_Int(1, 100) <= 30 and ai:IsFinishTimer(0) == true then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            ai:SetNumber(0, 5)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            return true
        else
            ai:SetNumber(0, 5)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            return true
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_CarthusSwordsman_801300_AfterAttackAct, "GOAL_SpellSummon_CarthusSwordsman_801300_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_CarthusSwordsman_801300_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    if ai:GetRandam_Int(1, 100) <= 50 then
        if ai:GetDist(TARGET_ENE_0) <= 1.5 then
            SpellSummon_CarthusSwordsman_Act21(ai, goal, paramTbl)
        else
            SpellSummon_CarthusSwordsman_Act22(ai, goal, paramTbl)
        end
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
