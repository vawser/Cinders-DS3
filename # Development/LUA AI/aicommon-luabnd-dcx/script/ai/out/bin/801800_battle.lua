RegisterTableGoal(GOAL_SpellSummon_Gargoyle_801800_Battle, "GOAL_SpellSummon_Gargoyle_801800_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Gargoyle_801800_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 5.5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5.5)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        actChanceList[20] = 100 -- Turn
    elseif 10 <= distance then
        actChanceList[1] = 0 -- Swipe Combo
        actChanceList[2] = 0 -- Slam
        actChanceList[5] = 30 -- Leap into Flying Slam
        actChanceList[6] = 30 -- Leap into Flying Swipes
        actChanceList[8] = 20 -- Forward Leaping Slam
        actChanceList[9] = 0 -- Spinning Swipe
        actChanceList[22] = 20 -- Strafe
    elseif 5 <= distance then
        actChanceList[1] = 20 -- Swipe Combo
        actChanceList[2] = 20 -- Slam
        actChanceList[6] = 20 -- Leap into Flying Swipes
        actChanceList[7] = 20 -- Leap into Reverse Flying Slam
        actChanceList[8] = 10 -- Forward Leaping Slam
        actChanceList[9] = 0 -- Spinning Swipe
        actChanceList[22] = 10 -- Strafe
    elseif 3 <= distance then
        actChanceList[1] = 25 -- Swipe Combo
        actChanceList[2] = 25 -- Slam
        actChanceList[7] = 30 -- Leap into Reverse Flying Slam
        actChanceList[8] = 0 -- Forward Leaping Slam
        actChanceList[9] = 20 -- Spinning Swipe
        actChanceList[22] = 0 -- Strafe
    else
        actChanceList[1] = 25 -- Swipe Combo
        actChanceList[2] = 20 -- Slam
        actChanceList[7] = 15 -- Leap into Reverse Flying Slam
        actChanceList[8] = 0 -- Forward Leaping Slam
        actChanceList[9] = 30 -- Spinning Swipe
        actChanceList[22] = 0 -- Strafe
    end
    
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 8, actChanceList[1], 1)
    actChanceList[1] = SetCoolTime(ai, goal, 3007, 8, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 3001, 8, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3100, 25, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3101, 25, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3004, 15, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3005, 15, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3006, 15, actChanceList[7], 1)
    actChanceList[9] = SetCoolTime(ai, goal, 3009, 30, actChanceList[9], 1)
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act09)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act22)
    actFuncList[23] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act23)
    actFuncList[24] = REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_Act24)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_Gargoyle_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Swipe Combo
function SpellSummon_Gargoyle_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 9.5 - self:GetMapHitRadius(TARGET_SELF), 9.5 - self:GetMapHitRadius(TARGET_SELF) + 4, 9.5 - self:GetMapHitRadius(TARGET_SELF) + 8, 50, 0, 1.0, 2.0)
    
    local local2 = 8.5 - self:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    
    if self:GetRandam_Int(1, 100) <= 20 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, local3, local4)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, local3, local4)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF))
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Slam
function SpellSummon_Gargoyle_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 7 - self:GetMapHitRadius(TARGET_SELF), 7 - self:GetMapHitRadius(TARGET_SELF) + 4, 7 - self:GetMapHitRadius(TARGET_SELF) + 8, 50, 0, 1.0, 2.0)
    
    local local2 = 15 - self:GetMapHitRadius(TARGET_SELF)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DistToAtt2, 1.5, 45)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Wing into Slam 1
function SpellSummon_Gargoyle_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 7 - self:GetMapHitRadius(TARGET_SELF), 998, 999, 0, 100, 1.0, 2.0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3100, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Wing into Slam 2
function SpellSummon_Gargoyle_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 7 - self:GetMapHitRadius(TARGET_SELF), 998, 999, 0, 100, 1.0, 2.0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3101, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Leap into Flying Slam
function SpellSummon_Gargoyle_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, self:GetRandam_Float(10 - self:GetMapHitRadius(TARGET_SELF), 23 - self:GetMapHitRadius(TARGET_SELF)), -999, -998, 100, 0, 1.0, 2.0)
    
    local local2 = 15 - self:GetMapHitRadius(TARGET_SELF)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DistToAtt2, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Leap into Flying Swipes
function SpellSummon_Gargoyle_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, self:GetRandam_Float(10 - self:GetMapHitRadius(TARGET_SELF), 20 - self:GetMapHitRadius(TARGET_SELF)), -999, -998, 100, 0, 1.0, 2.0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 1.5, 60)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Leap into Reverse Flying Slam
function SpellSummon_Gargoyle_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, self:GetRandam_Float(3 - self:GetMapHitRadius(TARGET_SELF), 13 - self:GetMapHitRadius(TARGET_SELF)), -999, -998, 100, 0, 1.0, 2.0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Forward Leaping Slam
function SpellSummon_Gargoyle_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 16 - self:GetMapHitRadius(TARGET_SELF), 7 - self:GetMapHitRadius(TARGET_SELF) + 4, 7 - self:GetMapHitRadius(TARGET_SELF) + 8, 100, 0, 1.0, 2.0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Spinning Swipe
function SpellSummon_Gargoyle_Act09(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.5 - self:GetMapHitRadius(TARGET_SELF), 6.5 - self:GetMapHitRadius(TARGET_SELF) + 4, 6.5 - self:GetMapHitRadius(TARGET_SELF) + 8, 50, 0, 1.0, 2.0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn
function SpellSummon_Gargoyle_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    return 0
end

-- Approach
function SpellSummon_Gargoyle_Act21(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_ApproachTarget, self:GetRandam_Float(2, 3), TARGET_ENE_0, 5, TARGET_SELF, 0, 9910)
    return 0
end

-- Strafe
function SpellSummon_Gargoyle_Act22(self, ai, goal)
    local local0 = self:GetRandam_Int(0, 1)
    
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, self:GetRandam_Float(2, 4), TARGET_ENE_0, local0, self:GetRandam_Int(30, 45), true, true, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Leave Target
function SpellSummon_Gargoyle_Act23(self, ai, goal)
    local local0 = 13
    local local1 = 0
    local local2 = self:GetHpRate(TARGET_SELF)
    
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, 15, local1, 3)
    end
    
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)

    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Approach Flex
function SpellSummon_Gargoyle_Act24(self, ai, goal)
    Approach_Act_Flex(self, ai, 3, 3, 999, 0, 100, self:GetRandam_Float(1, 3), 1)
    return 0
end

function SpellSummon_Gargoyle_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_Gargoyle_801800_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_SuccessGuard) and ai:GetNumber(0) ~= 1 then
        return SpellSummon_Gargoyle_SuccessGuardAttack(ai, goal)
    else
        return false
    end
end

function SpellSummon_Gargoyle_SuccessGuardAttack(self, ai)
    if InsideRange(self, ai, 0, 90, -99, 7 - self:GetMapHitRadius(TARGET_SELF)) then
        local local0 = self:GetRandam_Int(1, 100)
        if local0 <= 25 then
            ai:ClearSubGoal()
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3100, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_SpellSummon_Gargoyle_801800_AfterAttackAct, 10)
            return true
        elseif local0 <= 50 then
            ai:ClearSubGoal()
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3101, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_SpellSummon_Gargoyle_801800_AfterAttackAct, 10)
            return true
        else
            return false
        end
    elseif InsideRange(self, ai, 0, 240, -99, 6) then
        if self:GetRandam_Int(1, 100) <= 50 then
            ai:ClearSubGoal()
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3101, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_SpellSummon_Gargoyle_801800_AfterAttackAct, 10)
            return true
        else
            return false
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_Gargoyle_801800_AfterAttackAct, "GOAL_SpellSummon_Gargoyle_801800_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Gargoyle_801800_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    
    if ai:HasSpecialEffectId(TARGET_SELF, 11911) then
        if 4 <= local0 then
            local2[1] = 0
            local2[2] = 0
            local2[3] = 100
        else
            local2[1] = 0
            local2[2] = 50
            local2[3] = 50
        end
    elseif 5 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
    elseif 3 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
    else
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
    end
    local local3 = SelectOddsIndex(ai, local2)
    
    -- Strafe or Leave Target
    if local3 ~= 1 then
        if local3 == 2 then
            SpellSummon_Gargoyle_Act23(ai, goal, paramTbl)
        elseif local3 == 3 then
            SpellSummon_Gargoyle_Act22(ai, goal, paramTbl)
        end
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
