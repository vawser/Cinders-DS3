RegisterTableGoal(GOAL_SpellSummon_Lycanthrope_801500_Battle, "GOAL_SpellSummon_Lycanthrope_801500_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Lycanthrope_801500_Battle, true)

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
    
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    
    if InsideDir(ai, goal, 180, 240) then
        if distance <= 2.5 then
            actChanceList[8] = 80 -- Left Swipe
            actChanceList[20] = 20 -- Turn
        else
            actChanceList[20] = 100 -- Turn
        end
    elseif 8.5 <= distance then
        actChanceList[4] = 15 -- Moving Forward Grasp
        actChanceList[6] = 25 -- Running Bite
        actChanceList[7] = 50 -- Jumping Slam
        actChanceList[11] = 10 -- Thrusting Swipe Combo
    elseif 6 <= distance then
        actChanceList[1] = 15 -- Swipe Combo
        actChanceList[2] = 0 -- Dash Left/Right
        actChanceList[3] = 0 -- Forward Grasp
        actChanceList[4] = 50 -- Moving Forward Grasp
        actChanceList[5] = 0 -- Bite
        actChanceList[6] = 45 -- Running Bite
        actChanceList[7] = 25 -- Jumping Slam
        actChanceList[9] = 0 -- Fist Slam
        actChanceList[10] = 40 -- Swipe Rampage
        actChanceList[11] = 25 -- Thrusting Swipe Combo
    elseif 4 <= distance then
        actChanceList[1] = 5 -- Swipe Combo
        actChanceList[2] = 30 -- Dash Left/Right
        actChanceList[3] = 5 -- Forward Grasp
        actChanceList[4] = 20 -- Moving Forward Grasp
        actChanceList[5] = 5 -- Bite
        actChanceList[6] = 0 -- Running Bite
        actChanceList[7] = 0 -- Jumping Slam
        actChanceList[9] = 5 -- Fist Slam
        actChanceList[10] = 15 -- Swipe Rampage
        actChanceList[11] = 15 -- Thrusting Swipe Combo
    elseif 2 <= distance then
        actChanceList[1] = 10 -- Swipe Combo
        actChanceList[2] = 30 -- Dash Left/Right
        actChanceList[3] = 10 -- Forward Grasp
        actChanceList[5] = 10 -- Moving Forward Grasp
        actChanceList[9] = 15 -- Fist Slam
        actChanceList[10] = 25 -- Swipe Rampage
    else
        actChanceList[1] = 15 -- Swipe Combo
        actChanceList[2] = 35 -- Dash Left/Right
        actChanceList[3] = 15 -- Forward Grasp
        actChanceList[5] = 15 -- Moving Forward Grasp
        actChanceList[9] = 10 -- Fist Slam
        actChanceList[10] = 10 -- Swipe Rampage
    end
    
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 6, actChanceList[1], 1)
    actChanceList[1] = SetCoolTime(ai, goal, 3001, 6, actChanceList[1], 1)
    actChanceList[1] = SetCoolTime(ai, goal, 3002, 6, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 6002, 8, actChanceList[2], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 6003, 8, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3004, 15, actChanceList[3], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3005, 15, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3004, 15, actChanceList[4], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3005, 15, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3006, 6, actChanceList[5], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3007, 6, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3006, 6, actChanceList[6], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3007, 6, actChanceList[6], 1)
    actChanceList[8] = SetCoolTime(ai, goal, 3009, 10, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(ai, goal, 3010, 15, actChanceList[9], 1)
    actChanceList[10] = SetCoolTime(ai, goal, 3011, 10, actChanceList[10], 1)
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act11)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_Act20)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_Lycanthrope_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Swipe Combo
function SpellSummon_Lycanthrope_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.8 - self:GetMapHitRadius(TARGET_SELF), 3.8 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.8 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    
    local local0 = 3000
    local local1 = 3001
    local local2 = ATT_SUCCESSDIST
    local local3 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1.5
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    
    if local6 <= 5 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
    elseif local6 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.3 - self:GetMapHitRadius(TARGET_SELF) + 1.5)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Dash Left/Right
function SpellSummon_Lycanthrope_Act02(self, ai, goal)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    if InsideRange(self, ai, 90, 180, -99, 99) then
        if SpaceCheck(self, ai, -90, self:GetStringIndexedNumber("Dist_SideStep")) then
            ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_SideStep")) then
            ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            return 
        end
    elseif InsideRange(self, ai, -90, 180, -99, 99) then
        if SpaceCheck(self, ai, 90, self:GetStringIndexedNumber("Dist_SideStep")) then
            ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_SideStep")) then
            ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            return 
        end
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Forward Grasp
function SpellSummon_Lycanthrope_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.9 - self:GetMapHitRadius(TARGET_SELF), 2.9 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 2.9 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Moving Forward Grasp
function SpellSummon_Lycanthrope_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.5 - self:GetMapHitRadius(TARGET_SELF), 5.5 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 5.5 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Bite
function SpellSummon_Lycanthrope_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.1 - self:GetMapHitRadius(TARGET_SELF), 3.1 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.1 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Running Bite
function SpellSummon_Lycanthrope_Act06(self, ai, goal)
    local local0 = self:GetRandam_Float(5.5 - self:GetMapHitRadius(TARGET_SELF), 7.7 - self:GetMapHitRadius(TARGET_SELF))
    
    Approach_Act_Flex(self, ai, local0, local0, local0, 100, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Jumping Slam
function SpellSummon_Lycanthrope_Act07(self, ai, goal)
    local local0 = self:GetRandam_Float(9 - self:GetMapHitRadius(TARGET_SELF), 11.8 - 1 - self:GetMapHitRadius(TARGET_SELF))
    
    Approach_Act_Flex(self, ai, local0, local0, local0, 0, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Left Swipe
function SpellSummon_Lycanthrope_Act08(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Fist Slam
function SpellSummon_Lycanthrope_Act09(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.7 - self:GetMapHitRadius(TARGET_SELF), 3.7 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.7 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Swipe Rampage
function SpellSummon_Lycanthrope_Act10(self, ai, goal)
    Approach_Act_Flex(self, ai, 3 - self:GetMapHitRadius(TARGET_SELF), 3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Thrusting Swipe Combo
function SpellSummon_Lycanthrope_Act11(self, ai, goal)
    local local0 = self:GetRandam_Float(4 - self:GetMapHitRadius(TARGET_SELF), 7.1 - 1 - self:GetMapHitRadius(TARGET_SELF))
    Approach_Act_Flex(self, ai, local0, local0, local0, 100, 0, 5, 5)
    local local1 = 3003
    local local2 = 3001
    local local3 = ATT_SUCCESSDIST
    local local4 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1.5
    local local5 = 0
    local local6 = 0
    local local7 = self:GetRandam_Int(1, 100)
    
    if local7 <= 0 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6)
    elseif local7 <= 65 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local5, local6)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local5, local6)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 4.3 - self:GetMapHitRadius(TARGET_SELF) + 1.5)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3)
    end
    
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

-- Turn
function SpellSummon_Lycanthrope_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Lycanthrope_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct, 5)
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
    local local1 = ai:GetRandam_Int(1, 100)
    
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    elseif ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and local1 <= 100 then
        goal:ClearSubGoal()
        if ai:GetSpecialEffectActivateInterruptType(0) == 5025 and local0 <= 8.5 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
            elseif local0 <= 2.5 then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            elseif local1 <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
    end
    
    if InsideRange(ai, goal, 0, 180, -99, 3.5) and Counter_Act(ai, goal, 5, 3015) then
        if ai:GetRandam_Int(1, 100) <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999)
        end
        goal:AddSubGoal(GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct, 10)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct, "GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    
    ai:SetStringIndexedNumber("DistMin_AAA", 0.5)
    ai:SetStringIndexedNumber("DistMax_AAA", 5)
    ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    ai:SetStringIndexedNumber("Angle_AAA", 120)
    ai:SetStringIndexedNumber("DistMin_Inter_AAA", 0.5)
    ai:SetStringIndexedNumber("DistMax_Inter_AAA", 4)
    
    if 4 <= local0 then
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    elseif 2 <= local0 then
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 100)
    else
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 70)
        ai:SetStringIndexedNumber("Odds_BsAndSide_AAA", 30)
    end
    
    goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

RegisterTableGoal(GOAL_SpellSummon_Lycanthrope_801500_StepAttack, "GOAL_SpellSummon_Lycanthrope_801500_StepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Lycanthrope_801500_StepAttack, true)

Goal.Activate = function (self, ai, goal)
    if InsideRange(ai, goal, 0, 120, 4 - ai:GetMapHitRadius(TARGET_SELF), 7.1 - 1 - ai:GetMapHitRadius(TARGET_SELF)) then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    elseif InsideRange(ai, goal, 180, 180, -99 - ai:GetMapHitRadius(TARGET_SELF), 1.7 - ai:GetMapHitRadius(TARGET_SELF)) then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    elseif InsideRange(ai, goal, 0, 180, -99 - ai:GetMapHitRadius(TARGET_SELF), 3.7 - ai:GetMapHitRadius(TARGET_SELF)) then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
