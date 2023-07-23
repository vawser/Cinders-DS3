RegisterTableGoal(GOAL_SpellSummon_AbyssWatcher_801700_Battle, "GOAL_SpellSummon_AbyssWatcher_801700_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_AbyssWatcher_801700_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
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
    
    if InsideRange(ai, goal, 180, 150, -999, 4) then
        actChanceList[17] = 30 -- Step Left/Right
    elseif InsideRange(ai, goal, 180, 150, -999, 10) then
        actChanceList[20] = 100 -- Turn
    elseif 9 <= distance then
        actChanceList[1] = 10 -- Double Slash Combo
        actChanceList[2] = 5 -- Moving Attack Combo
        actChanceList[3] = 20 -- Jumping Stab
        actChanceList[4] = 50 -- Stance into Thrust
        actChanceList[5] = 10 -- Heavy Slash Combo
        actChanceList[6] = 30 -- Rolling Slam
        actChanceList[7] = 80 -- Sliding Dash
        actChanceList[8] = 0 -- Stab Combo into Spin Attack
        actChanceList[9] = 0 -- Dagger Slash
        actChanceList[10] = 0 -- Slash, Stab, Swipe
        actChanceList[11] = 0 -- Roll and Dagger Swipe
    elseif 6 <= distance then
        actChanceList[1] = 30 -- Double Slash Combo
        actChanceList[2] = 30 -- Moving Attack Combo
        actChanceList[3] = 60 -- Jumping Stab
        actChanceList[4] = 50 -- Stance into Thrust
        actChanceList[5] = 10 -- Heavy Slash Combo
        actChanceList[6] = 50 -- Rolling Slam
        actChanceList[7] = 50 -- Sliding Dash
        actChanceList[8] = 10 -- Stab Combo into Spin Attack
        actChanceList[9] = 0 -- Dagger Slash
        actChanceList[10] = 5 -- Slash, Stab, Swipe
        actChanceList[11] = 5 -- Roll and Dagger Swipe
    elseif 3 <= distance then
        actChanceList[1] = 60 -- Double Slash Combo
        actChanceList[2] = 50 -- Moving Attack Combo
        actChanceList[3] = 20 -- Jumping Stab
        actChanceList[4] = 10 -- Stance into Thrust
        actChanceList[5] = 30 -- Heavy Slash Combo
        actChanceList[6] = 20 -- Rolling Slam
        actChanceList[7] = 0 -- Sliding Dash
        actChanceList[8] = 60 -- Stab Combo into Spin Attack
        actChanceList[9] = 10 -- Dagger Slash
        actChanceList[10] = 30 -- Slash, Stab, Swipe
        actChanceList[11] = 30 -- Roll and Dagger Swipe
    else
        actChanceList[1] = 30 -- Double Slash Combo
        actChanceList[2] = 30 -- Moving Attack Combo
        actChanceList[3] = 0 -- Jumping Stab
        actChanceList[4] = 0 -- Stance into Thrust
        actChanceList[5] = 30 -- Heavy Slash Combo
        actChanceList[6] = 0 -- Rolling Slam
        actChanceList[7] = 0 -- Sliding Dash
        actChanceList[8] = 30 -- Stab Combo into Spin Attack
        actChanceList[9] = 100 -- Dagger Slash
        actChanceList[10] = 60 -- Slash, Stab, Swipe
        actChanceList[11] = 30 -- Roll and Dagger Swipe
    end
    
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 10, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 3001, 10, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3002, 20, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3003, 20, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3004, 10, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3007, 10, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3008, 10, actChanceList[7], 1)
    actChanceList[8] = SetCoolTime(ai, goal, 3009, 10, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(ai, goal, 3011, 10, actChanceList[9], 1)
    actChanceList[10] = SetCoolTime(ai, goal, 3012, 10, actChanceList[10], 1)
    actChanceList[11] = SetCoolTime(ai, goal, 3015, 10, actChanceList[11], 1)
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act11)
    actFuncList[16] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act16)
    actFuncList[17] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act17)
    actFuncList[18] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act18)
    actFuncList[19] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act19)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_Act20)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_AbyssWatcher_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Double Slash Combo
function SpellSummon_AbyssWatcher_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.8 - self:GetMapHitRadius(TARGET_SELF), -999, 5.8 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    local local0 = 10.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DistToAtt3, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Moving Attack Combo
function SpellSummon_AbyssWatcher_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.1 - self:GetMapHitRadius(TARGET_SELF) + 2.5, -999, 5.1 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    local local0 = 6001
    local local1 = 9999 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = self:GetRandam_Int(1, 100)
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    if 5 <= self:GetDist(TARGET_ENE_0) then
        if local2 <= 20 then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 40 then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 60 then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 80 then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0, 0)
        end
    elseif local2 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Jumping Stab
function SpellSummon_AbyssWatcher_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.5 - self:GetMapHitRadius(TARGET_SELF), -999, 10.5 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Stance into Thrust
function SpellSummon_AbyssWatcher_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 13.4 - self:GetMapHitRadius(TARGET_SELF), -999, 13.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 4, 8)
    
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Heavy Slash Combo
function SpellSummon_AbyssWatcher_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.5 - self:GetMapHitRadius(TARGET_SELF), -999, 5.5 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 4.6 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5.1 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Rolling Slam
function SpellSummon_AbyssWatcher_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.9 - self:GetMapHitRadius(TARGET_SELF), -999, 10.9 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    local local0 = 9999 - self:GetMapHitRadius(TARGET_SELF)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 0.5, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Sliding Dash
function SpellSummon_AbyssWatcher_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, 14.8 - self:GetMapHitRadius(TARGET_SELF), -999, 14.8 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    local local0 = self:GetHpRate(TARGET_SELF)
    local local1 = 3008
    local local2 = 14.8 - self:GetMapHitRadius(TARGET_SELF) + 1
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Stab Combo into Spin Attack
function SpellSummon_AbyssWatcher_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.9 - self:GetMapHitRadius(TARGET_SELF), -999, 4.9 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    local local0 = 3.8 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 9999 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = self:GetRandam_Int(1, 100)
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Dagger Slash
function SpellSummon_AbyssWatcher_Act09(self, ai, goal)
    Approach_Act_Flex(self, ai, 2 - self:GetMapHitRadius(TARGET_SELF) + 2, -999, 2 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Slash, Stab, Swipe
function SpellSummon_AbyssWatcher_Act10(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.4 - self:GetMapHitRadius(TARGET_SELF), -999, 4.4 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5.7 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
     
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Roll and Dagger Swipe
function SpellSummon_AbyssWatcher_Act11(self, ai, goal)
    Approach_Act_Flex(self, ai, 5, -999, 2.5 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Step Back
function SpellSummon_AbyssWatcher_Act16(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    return 
end

-- Step Left/Right
function SpellSummon_AbyssWatcher_Act17(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepLR, 10, TARGET_ENE_0, -99)
    return 
end

-- Leave Target
function SpellSummon_AbyssWatcher_Act18(self, ai, goal)
    local local0 = 10
    
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, 12, 0, 3)
    end
    
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, self:GetRandam_Float(1, 3.5), TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    
    return 
end

-- Strafe
function SpellSummon_AbyssWatcher_Act19(self, ai, goal)
    local local0 = -1
    
    if self:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, local0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn
function SpellSummon_AbyssWatcher_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, self:GetRandam_Int(15, 20))
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_AbyssWatcher_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_AbyssWatcher_801700_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    local local0 = ai:GetRandam_Int(1, 100)
    
    if ai:IsInterupt(INTERUPT_Shoot) then
        local local1 = ai:GetDist(TARGET_ENE_0)
        if ai:GetRandam_Int(1, 100) <= 25 then
            goal:ClearSubGoal()
            SpellSummon_AbyssWatcher_Act06(ai, goal, paramTbl)
        end
        
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_AbyssWatcher_801700_AfterAttackAct, "GOAL_SpellSummon_AbyssWatcher_801700_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_AbyssWatcher_801700_AfterAttackAct, true)
Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 5 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
    elseif 3 <= local0 then
        local2[1] = 50
        local2[2] = 10
        local2[3] = 40
    else
        local2[1] = 50
        local2[2] = 40
        local2[3] = 10
    end
    local local3 = SelectOddsIndex(ai, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            SpellSummon_AbyssWatcher_Act16(ai, goal, paramTbl)
        elseif local3 == 3 then
            SpellSummon_AbyssWatcher_Act17(ai, goal, paramTbl)
        end
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
