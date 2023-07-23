RegisterTableGoal(GOAL_SpellSummon_Hollow_801100_Battle, "GOAL_SpellSummon_Hollow_801100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Hollow_801100_Battle, true)

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
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    Init_Pseudo_Global(ai, goal)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    ai:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local distance_vertical = ai:GetDistYSigned(TARGET_ENE_0)
    local local5 = ai:GetEventRequest(0)
    local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local roll_a = ai:GetRandam_Int(1, 100)
    local roll_b = ai:GetRandam_Int(1, 100)
    
    -- Turn if enemy is behind
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        actChanceList[13] = 100 -- Turn
    -- Oilbomb
    elseif 8 <= ai:GetAttackPassedTime(3007) and 5 - ai:GetMapHitRadius(TARGET_SELF) <= distance and roll_a <= 65 then
        actChanceList[6] = 100 -- Throw Oilbomb
    -- Wait to throw Firebomb
    elseif 13 - ai:GetMapHitRadius(TARGET_SELF) + math.abs(distance_vertical) <= distance and distance_vertical < -2 then
        actChanceList[16] = 100 -- Wait
    -- Firebomb with no approach
    elseif 5 - ai:GetMapHitRadius(TARGET_SELF) <= distance and distance_vertical < -2 then
        actChanceList[15] = 100 -- Throw Firebomb (No Approach)
    -- Firebomb
    elseif 5 - ai:GetMapHitRadius(TARGET_SELF) <= distance and roll_a <= 85 then
        actChanceList[9] = 100 -- Throw Firebomb
    -- Firebomb
    elseif 8 <= ai:GetAttackPassedTime(3011) and 5 - ai:GetMapHitRadius(TARGET_SELF) <= distance and roll_a <= 65 then
        actChanceList[9] = 100 -- Throw Firebomb
    -- Punish guarding enemy
    elseif ai:IsTargetGuard(TARGET_ENE_0) and 2.5 < distance and distance <= 5 and roll_b <= 40 then
        actChanceList[10] = 100 -- Guard Breakable - Shield Bash + Thrust
    -- Punish guarding enemy
    elseif ai:IsTargetGuard(TARGET_ENE_0) and distance <= 2.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and roll_b <= 50 then
        actChanceList[10] = 100 -- Guard Breakable - Shield Bash + Thrust
    elseif 10 <= distance then
        actChanceList[1] = 15 -- Slash Combo
        actChanceList[2] = 30 -- Running Stab
        actChanceList[4] = 5 -- 2H Slash
        actChanceList[7] = 15 -- Stab
        actChanceList[8] = 10 -- Wild Backslash
        actChanceList[12] = 0 -- Strafe
        actChanceList[14] = 10 -- Shield Bash + Thrust
    elseif 5.5 <= distance then
        actChanceList[1] = 5 -- Slash Combo
        actChanceList[2] = 20 -- Running Stab
        actChanceList[4] = 5 -- 2H Slash
        actChanceList[7] = 10 -- Stab
        actChanceList[8] = 10 -- Wild Backslash
        actChanceList[12] = 0 -- Strafe
        actChanceList[14] = 15 -- Shield Bash + Thrust
    elseif 3 <= distance then
        actChanceList[1] = 15 -- Slash Combo
        actChanceList[2] = 15 -- Running Stab
        actChanceList[4] = 5 -- 2H Slash
        actChanceList[7] = 10 -- Stab
        actChanceList[8] = 10 -- Wild Backslash
        actChanceList[12] = 0 -- Strafe
    elseif 1 <= distance then
        actChanceList[1] = 15 -- Slash Combo
        actChanceList[2] = 0 -- Running Stab
        actChanceList[4] = 5 -- 2H Slash
        actChanceList[7] = 10 -- Stab
        actChanceList[8] = 15 -- Wild Backslash
        actChanceList[12] = 0 -- Strafe
        actChanceList[14] = 20 -- Shield Bash + Thrust
    else
        actChanceList[1] = 30 -- Slash Combo
        actChanceList[2] = 0 -- Running Stab
        actChanceList[4] = 15 -- 2H Slash
        actChanceList[7] = 15 -- Stab
        actChanceList[8] = 20 -- Wild Backslash
        actChanceList[12] = 0 -- Strafe
        actChanceList[14] = 20 -- Shield Bash + Thrust
    end
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act02)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act11)
    actFuncList[12] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act12)
    actFuncList[13] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act13)
    actFuncList[14] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act14)
    actFuncList[15] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act15)
    actFuncList[16] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act16)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_Hollow_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Slash Combo
function SpellSummon_Hollow_Act01(self, ai, goal)
    local start_approach_distance = 3.2
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 20
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_LeftSlash = 3000
    local anim_LeftBackslash = 3001
    local attack_distance_a = 2.4 - self:GetMapHitRadius(TARGET_SELF) + 1
    local attack_distance_b = 5 - self:GetMapHitRadius(TARGET_SELF)
    local roll = self:GetRandam_Int(1, 100)
    
    if roll <= 35 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, attack_distance_b, 0, 0, 0, 0)
    elseif roll <= 75 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, attack_distance_a, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_LeftBackslash, TARGET_ENE_0, attack_distance_b, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, attack_distance_a, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_LeftBackslash, TARGET_ENE_0, 3.9 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, attack_distance_b, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Running Stab
function SpellSummon_Hollow_Act02(self, ai, goal)
    local start_approach_distance = 7.0
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 20
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_RunningStab = 3003
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RunningStab, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- 2H Slash
function SpellSummon_Hollow_Act04(self, ai, goal)
    local start_approach_distance = 3.5
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 0
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_2H_Slash = 3005
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_2H_Slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Wild Slash
function SpellSummon_Hollow_Act05(self, ai, goal)
    local start_approach_distance = 2.3
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 0
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_WildSlash = 3006
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_WildSlash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Throw Oilbomb
function SpellSummon_Hollow_Act06(self, ai, goal)
    local start_approach_distance = 13.0
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 20
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_ThrowOilbomb = 3007
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ThrowOilbomb, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    
    local subgoal = ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    subgoal:SetTargetRange(0, 4, 999)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Stab
function SpellSummon_Hollow_Act07(self, ai, goal)
    local start_approach_distance = 3.5
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 20
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_Stab = 3008
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_Stab, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Wild Backslash
function SpellSummon_Hollow_Act08(self, ai, goal)
    local start_approach_distance = 2.2
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 20
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_WildBackslash = 3009
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_WildBackslash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Throw Firebomb
function SpellSummon_Hollow_Act09(self, ai, goal)
    local start_approach_distance = 13.0
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 0
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_ThrowFirebomb = 3011
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ThrowFirebomb, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    
    local subgoal = ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    subgoal:SetTargetRange(0, 4, 999)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Guard Breakable - Shield Bash + Thrust
function SpellSummon_Hollow_Act10(self, ai, goal)
    local start_approach_distance = 2.8
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 0
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)

    local anim_ShieldBash = 3004
    local anim_Thrust = 3008
    
    ai:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, anim_ShieldBash, TARGET_ENE_0, 13 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_Thrust, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Approach
function SpellSummon_Hollow_Act11(self, ai, goal)
    local target_distance = 10
    
    -- Approach if enemy exceeds target distance
    if self:GetDist(TARGET_ENE_0) >= target_distance then
        Approach_Act(self, ai, target_distance, 12, 75, 3)
    end
    
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Strafe
function SpellSummon_Hollow_Act12(self, ai, goal)
    local roll = 100
    
    if 8 <= self:GetDist(TARGET_ENE_0) then
        roll = 75
    end
    
    local anim = -1
    
    if self:GetRandam_Int(1, 100) <= roll then
        anim = 9910
    end
    
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, anim)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn
function SpellSummon_Hollow_Act13(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, self:GetRandam_Int(15, 20))
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Shield Bash + Thrust
function SpellSummon_Hollow_Act14(self, ai, goal)
    local start_approach_distance = 2.8
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 10
    local roll_for_mid_distance_to_use_duration_far = 50
    local roll_for_L1_use = 20
    local approach_duration_close = 4
    local approach_duration_far = 8
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_ShieldBash = 3004
    local anim_Thrust = 3008
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ShieldBash, TARGET_ENE_0, 13 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_Thrust, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Throw Firebomb (No Approach)
function SpellSummon_Hollow_Act15(self, ai, goal)
    local anim_ThrowFirebomb = 3011
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ThrowFirebomb, TARGET_ENE_0, 999, -1, 45, 0, 0)
    
    local subgoal = ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    subgoal:SetTargetRange(0, 4, 999)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Wait
function SpellSummon_Hollow_Act16(self, ai, goal)
    local subgoal = ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    subgoal:SetTargetRange(0, 4, 999)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_ActAfter_AdjustSpace(self, ai, goal)
    return 
end

-------------------------
-- Update
-------------------------
Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

-------------------------
-- Terminate
-------------------------
Goal.Terminate = function (self, ai, goal)
    return 
end

-------------------------
-- Interrupt
-------------------------
Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_Damaged) then
        local distance = ai:GetDist(TARGET_ENE_0)
        local distance_vertical = ai:GetDistYSigned(TARGET_ENE_0)
        
        local current_distance = 13 - ai:GetMapHitRadius(TARGET_SELF) + math.abs(distance_vertical)
        
        -- Approach
        if current_distance <= distance and distance_vertical < -2 then
            goal:ClearSubGoal()
            Approach_Act_Flex(ai, goal, 13 - ai:GetMapHitRadius(TARGET_SELF) - 1, 13 - ai:GetMapHitRadius(TARGET_SELF) + 0, 13 - ai:GetMapHitRadius(TARGET_SELF) + 10, 100, 100, 4, 8)
            return true
        -- Strafe
        elseif distance <= 3.5 and ai:GetRandam_Int(1, 100) <= 80 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), 45, true, true, 9910)
            return true
        end
    end
    
    if ai:IsInterupt(INTERUPT_TargetOutOfRange) and ai:IsTargetOutOfRangeInterruptSlot(0) then
        goal:ClearSubGoal()
        return true
    else
        return false
    end
end

-------------------------
-- End
-------------------------
return 
