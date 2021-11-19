RegisterTableGoal(GOAL_SpellSummon_UndeadDog_801200_Battle, "GOAL_SpellSummon_UndeadDog_801200_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_UndeadDog_801200_Battle, true)

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
    
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12012)

    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 6 <= distance then
            actChanceList[11] = 0 -- Dash Left/Right
            actChanceList[20] = 100 -- Turn
        elseif 2 <= distance then
            actChanceList[11] = 30 -- Dash Left/Right
            actChanceList[20] = 70 -- Turn
        else
            actChanceList[11] = 50 -- Dash Left/Right
            actChanceList[20] = 50 -- Turn
        end
    elseif 7 <= distance then
        actChanceList[1] = 0 -- Bite
        actChanceList[2] = 5 -- Jump Bite
        actChanceList[3] = 0 -- Bark
        actChanceList[4] = 5 -- Leap and Bite
        actChanceList[5] = 20 -- Run Right and Bite
        actChanceList[6] = 20 -- Run Left and Bite
        actChanceList[7] = 0 -- Dash Left/Right and Bite
        actChanceList[10] = 10 -- Move
        actChanceList[11] = 0 -- Dash Left/Right
    elseif 4 <= distance then
        actChanceList[1] = 10 -- Bite
        actChanceList[2] = 20 -- Jump Bite
        actChanceList[3] = 0 -- Bark
        actChanceList[4] = 30 -- Leap and Bite
        actChanceList[5] = 0 -- Run Right and Bite
        actChanceList[6] = 0 -- Run Left and Bite
        actChanceList[7] = 0 -- Dash Left/Right and Bite
        actChanceList[10] = 10 -- Move
        actChanceList[11] = 0 -- Dash Left/Right
    elseif 2 <= distance then
        actChanceList[1] = 20 -- Bite
        actChanceList[2] = 40 -- Jump Bite
        actChanceList[3] = 0 -- Bark
        actChanceList[4] = 0 -- Leap and Bite
        actChanceList[5] = 0 -- Run Right and Bite
        actChanceList[6] = 0 -- Run Left and Bite
        actChanceList[7] = 20 -- Dash Left/Right and Bite
        actChanceList[10] = 10 -- Move
        actChanceList[11] = 10 -- Dash Left/Right
    else
        actChanceList[1] = 30 -- Bite
        actChanceList[2] = 20 -- Jump Bite
        actChanceList[3] = 0 -- Bark
        actChanceList[4] = 0 -- Leap and Bite
        actChanceList[5] = 0 -- Run Right and Bite
        actChanceList[6] = 0 -- Run Left and Bite
        actChanceList[7] = 20 -- Dash Left/Right and Bite
        actChanceList[10] = 0 -- Move
        actChanceList[11] = 30 -- Dash Left/Right
    end
    
    actChanceList[3] = SetCoolTime(ai, goal, 3005, 10, actChanceList[3], 0)
    actChanceList[7] = SetCoolTime(ai, goal, 3010, 10, actChanceList[7], 0)
    actChanceList[7] = SetCoolTime(ai, goal, 3011, 10, actChanceList[7], 0)
    actChanceList[11] = SetCoolTime(ai, goal, 6002, 5, actChanceList[11], 0)
    actChanceList[11] = SetCoolTime(ai, goal, 6003, 5, actChanceList[11], 0)
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act07)
    actFuncList[10] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act11)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_Act20)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_UndeadDog_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Bite
function SpellSummon_UndeadDog_Act01(self, ai, goal)
    local start_approach_distance_close = 2.4
    local start_approach_distance_mid = start_approach_distance_close + 0
    local start_approach_distance_far = start_approach_distance_close + 1
    
    local roll_for_mid_distance_to_use_duration_far = 0
    local roll_for_L1_use = 0
    
    local approach_duration_close = 1.5
    local approach_duration_far = 4.0
    
    local anim_ForwardBite = 3000
    local anim_ForwardBite2 = 3007
    local anim_LeftBite = 3001
    local anim_Current = anim_ForwardBite
    
    if self:GetDist(TARGET_ENE_0) >= 2.5 then
        anim_Current = 3007
    end
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_Current, TARGET_ENE_0, 2.2 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    
    if self:GetRandam_Int(1, 100) < 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_LeftBite, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Jump Bite
function SpellSummon_UndeadDog_Act02(self, ai, goal)
    local local0 = 3.2 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 3.2 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 3002
    if local1 < self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
        local2 = 3003
    end
    Approach_Act_Flex(self, ai, local0, 3.2 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Bark
function SpellSummon_UndeadDog_Act03(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Leap and Bite
function SpellSummon_UndeadDog_Act04(self, ai, goal)
    local local0 = 2.5 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 2.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 3008
    
    if local1 <= self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
        local2 = 3009
    end
    
    Approach_Act_Flex(self, ai, local0, 2.5 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Run Right and Bite
function SpellSummon_UndeadDog_Act05(self, ai, goal)
    local local0 = 7 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 7 - self:GetMapHitRadius(TARGET_SELF) + 1
    
    if local1 < self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
    end
    
    Approach_Act_Flex(self, ai, local0, 7 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Run Left and Bite
function SpellSummon_UndeadDog_Act06(self, ai, goal)
    local local0 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 6.6 - self:GetMapHitRadius(TARGET_SELF) + 1
    
    if local1 < self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
    end
    
    Approach_Act_Flex(self, ai, local0, 6.6 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Dash Left/Right and Bite
function SpellSummon_UndeadDog_Act07(self, ai, goal)
    local local0 = 3.5 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Move
function SpellSummon_UndeadDog_Act10(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_MoveToSomewhere, self:GetRandam_Float(1.5, 2), TARGET_ENE_0, self:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), 6, TARGET_SELF, false)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Dash Left/Right
function SpellSummon_UndeadDog_Act11(self, ai, goal)
    if InsideRange(self, ai, 90, 180, -9999, 9999) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    elseif InsideRange(self, ai, -90, 180, -9999, 9999) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn
function SpellSummon_UndeadDog_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_UndeadDog_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_UndeadDog_801200_AfterAttackAct, 10)
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
    elseif ai:GetSpecialEffectActivateInterruptType(0) == 12012 then
        goal:ClearSubGoal()
        SpellSummon_UndeadDog_Act03(ai, goal, paramTbl)
        return true
    else
        return 
    end
end

RegisterTableGoal(GOAL_SpellSummon_UndeadDog_801200_AfterAttackAct, "GOAL_SpellSummon_UndeadDog_801200_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_UndeadDog_801200_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll = ai:GetRandam_Int(1, 100)
    
    if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        -- Backstep
        if distance <= 1.5 then
            if roll <= 40 then
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
            elseif roll <= 55 then
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))

                goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
            end
        elseif distance <= 3 and roll <= 25 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 999, TARGET_SELF, false, 0)
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
