RegisterTableGoal(GOAL_SpellSummon_BlackKnight_801600_Battle, "GOAL_SpellSummon_BlackKnight_801600_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_BlackKnight_801600_Battle, true)

-------------------------
-- Initialize
-------------------------
Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

-------------------------
-- Activate
-------------------------
Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)

    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    
    if ai:IsTargetGuard(TARGET_SELF) == true and ai:GetRandam_Int(1, 100) <= 70 and InsideRange(ai, goal, 0, 90, -99 - ai:GetMapHitRadius(TARGET_SELF), 2.3 - ai:GetMapHitRadius(TARGET_SELF)) then
        actChanceList[11] = 10 -- Side Slash -> Forward Thrust
        actChanceList[3] = 10 -- Slam/Slash/Trust Combo
    elseif 6 <= distance then
        if InsideDir(ai, goal, 180, 330) then
            actChanceList[20] = 10 -- Turn
        else
            actChanceList[1] = 10 -- Slash/Trust Combo
            actChanceList[3] = 10 -- Slam/Slash/Trust Combo
            actChanceList[5] = 10 -- Thrust into Slash
            actChanceList[6] = 20 -- Spin into Thrust
            actChanceList[7] = 30 -- Running Slam
            actChanceList[8] = 10 -- Running/Walking Thrust
        end
    elseif 4.5 <= distance then
        if InsideDir(ai, goal, 180, 315) then
            actChanceList[20] = 10
        else
            actChanceList[1] = 20 -- Slash/Trust Combo
            actChanceList[3] = 20 -- Slam/Slash/Trust Combo
            actChanceList[5] = 20 -- Thrust into Slash
            actChanceList[6] = 30 -- Spin into Thrust
            actChanceList[8] = 10 -- Running/Walking Thrust
            actChanceList[7] = 0 -- Running Slam
        end
    elseif 3.5 <= distance then
        if InsideDir(ai, goal, 180, 315) then
            actChanceList[20] = 10 -- Turn
        else
            actChanceList[1] = 30 -- Slash/Trust Combo
            actChanceList[3] = 30 -- Slam/Slash/Trust Combo
            actChanceList[5] = 40 -- Thrust into Slash
            actChanceList[8] = 20 -- Running/Walking Thrust
            actChanceList[7] = 0 -- Running Slam
        end
    elseif 1.5 <= distance then
        if InsideDir(ai, goal, 180, 315) then
            actChanceList[20] = 10
        else
            actChanceList[1] = 30 -- Slash/Trust Combo
            actChanceList[2] = 30 -- Heavy Slam
            actChanceList[3] = 30 -- Slam/Slash/Trust Combo
            actChanceList[8] = 10 -- Running/Walking Thrust
            actChanceList[7] = 0 -- Running Slam
        end
    elseif InsideDir(ai, goal, 180, 180) then
        actChanceList[9] = 90 -- Shield Bash -> Walking Thrust
        actChanceList[20] = 10 -- Turn
    elseif InsideDir(ai, goal, 60, 60) then
        actChanceList[3] = 60 -- Slam/Slash/Trust Combo
        actChanceList[8] = 20 -- Running/Walking Thrust
        actChanceList[20] = 20 -- Turn
    elseif InsideDir(ai, goal, -60, 60) then
        actChanceList[1] = 60 -- Slash/Trust Combo
        actChanceList[8] = 20 -- Running/Walking Thrust
        actChanceList[20] = 20 -- Turn
    else
        actChanceList[1] = 25 -- Slash/Trust Combo
        actChanceList[2] = 25 -- Heavy Slam
        actChanceList[3] = 25 -- Slam/Slash/Trust Combo
        actChanceList[8] = 25 -- Running/Walking Thrust
        actChanceList[10] = 0 -- Upwards Thrust
    end
    
    if ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
        actChanceList[1] = 0 -- Slash/Trust Combo
        actChanceList[3] = 0 -- Slam/Slash/Trust Combo
        actChanceList[5] = 0 -- Thrust into Slash
        actChanceList[8] = 0 -- Running/Walking Thrust
        actChanceList[9] = 0 -- Shield Bash -> Walking Thrust
    end
    
    actChanceList[5] = SetCoolTime(ai, goal, 3008, 10, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3009, 10, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3010, 20, actChanceList[7], 1)
    actChanceList[8] = SetCoolTime(ai, goal, 3011, 20, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(ai, goal, 3012, 6, actChanceList[9], 1)
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act01) 
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act11)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act20)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Slash/Trust Combo
function SpellSummon_BlackKnight_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.2 - self:GetMapHitRadius(TARGET_SELF) - 1, 3.2 - self:GetMapHitRadius(TARGET_SELF) - 1, 3.2 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3007
    local local5 = 3013
    local local6 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 0
    local local13 = 0
    local local14 = self:GetRandam_Int(1, 100)
    
    if local14 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 35 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local14 <= 75 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Heavy Slam
function SpellSummon_BlackKnight_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Slam/Slash/Trust Combo
function SpellSummon_BlackKnight_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    
    local local0 = 3005
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3007
    local local5 = 3013
    local local6 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 0
    local local13 = 0
    local local14 = self:GetRandam_Int(1, 100)
    
    if local14 <= 35 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 55 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local14 <= 85 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Side Slash
function SpellSummon_BlackKnight_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 1, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 1, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Thrust into Slash
function SpellSummon_BlackKnight_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 4.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 4.3 - self:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    local local0 = 3008
    local local1 = 3001
    local local2 = 3002
    local local3 = 3007
    local local4 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 1.5
    local local9 = 120
    
    if self:GetRandam_Int(1, 100) <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Spin into Thrust
function SpellSummon_BlackKnight_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - self:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 1.5, 120)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Running Slam
function SpellSummon_BlackKnight_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Running/Walking Thrust
function SpellSummon_BlackKnight_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.9 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 2.9 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 2.9 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    
    local local0 = 3011
    local local1 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 0, local2, local3)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Shield Bash -> Walking Thrust
function SpellSummon_BlackKnight_Act09(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 2.9 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF))
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Upwards Thrust
function SpellSummon_BlackKnight_Act10(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Side Slash -> Forward Thrust
function SpellSummon_BlackKnight_Act11(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 100, 5, 5)
    
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF))
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn
function SpellSummon_BlackKnight_Act20(self, ai, goal)
    if self:IsTargetGuard(TARGET_SELF) == true then
        ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 9910, 0, true)
    else
        ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_ActAfter_AdjustSpace(self, ai, goal)
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
    elseif ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local0 = ai:GetDist(TARGET_ENE_0)
        if ai:GetSpecialEffectActivateInterruptType(0) == 90 then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5028 and InsideRange(ai, goal, 0, 120, 5 - ai:GetMapHitRadius(TARGET_SELF) - 2, 6.5 - ai:GetMapHitRadius(TARGET_SELF) + 3) and ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:IsTargetGuard(TARGET_SELF) == false and ai:IsTargetGuard(TARGET_SELF) == false and ai:GetRandam_Int(1, 100) <= 50 then
        if ai:GetDist(TARGET_ENE_0) <= 2.5 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
            return true
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
            return true
        end
    elseif ai:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and ai:GetDist(TARGET_ENE_0) <= 2 then
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    elseif ai:IsInterupt(INTERUPT_Shoot) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
        return true
    elseif ai:IsInterupt(INTERUPT_UseItem) and ai:IsStartAttack() == false then
        if InsideRange(ai, goal, 0, 180, 3, 10) then
            if ai:GetRandam_Int(1, 100) <= 15 and ai:GetAttackPassedTime(3010) <= 8 then
                goal:ClearSubGoal()
                SpellSummon_BlackKnight_Act07(ai, goal, paramTbl)
                return true
            end
        elseif InsideRange(ai, goal, 0, 240, -99, 3) and ai:GetRandam_Int(1, 100) <= 15 and ai:GetAttackPassedTime(3010) <= 8 then
            goal:ClearSubGoal()
            SpellSummon_BlackKnight_Act08(ai, goal, paramTbl)
            return true
        end
    end
    return false
end

return 
