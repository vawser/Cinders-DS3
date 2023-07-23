RegisterTableGoal(GOAL_SpellSummon_Skeleton_801000_Battle, "GOAL_SpellSummon_Skeleton_801000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Skeleton_801000_Battle, true)

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
    ai:SetStringIndexedNumber("Dist_SideStep", 4)
    ai:SetStringIndexedNumber("Dist_BackStep", 4)
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        actChanceList[20] = 100 -- Turn
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        actChanceList[20] = 30 -- Turn
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        actChanceList[20] = 30 -- Turn
    elseif 8 <= distance then
        actChanceList[1] = 10 -- Slash Combo
        actChanceList[2] = 10 -- Heavy 2H Strike
        actChanceList[3] = 10 -- Quick Slash Combo
        actChanceList[4] = 0 -- Forward Spin Attack
        actChanceList[5] = 0 -- Delayed Forward Spin Attack
        actChanceList[6] = 10 -- Leap and Left Slash
        actChanceList[7] = 10 -- 2H Slash
        actChanceList[21] = 0 -- Strafe
        actChanceList[24] = 10 -- Step Front
        actChanceList[25] = 0  -- Step Back
    elseif 5 <= distance then
        actChanceList[1] = 15 -- Slash Combo
        actChanceList[2] = 15 -- Heavy 2H Strike
        actChanceList[3] = 15 -- Quick Slash Combo
        actChanceList[4] = 0 -- Forward Spin Attack
        actChanceList[5] = 0 -- Delayed Forward Spin Attack
        actChanceList[6] = 15 -- Leap and Left Slash
        actChanceList[7] = 15 -- 2H Slash
        actChanceList[21] = 0 -- Strafe
    elseif 2.5 <= distance then
        actChanceList[1] = 20 -- Slash Combo
        actChanceList[2] = 20 -- Heavy 2H Strike
        actChanceList[3] = 20 -- Quick Slash Combo
        actChanceList[4] = 0 -- Forward Spin Attack
        actChanceList[5] = 0 -- Delayed Forward Spin Attack
        actChanceList[6] = 20 -- Leap and Left Slash
        actChanceList[7] = 20 -- 2H Slash
        actChanceList[21] = 0 -- Strafe
    else
        actChanceList[1] = 30 -- Slash Combo
        actChanceList[2] = 20 -- Heavy 2H Strike
        actChanceList[3] = 25 -- Quick Slash Combo
        actChanceList[4] = 0 -- Forward Spin Attack
        actChanceList[5] = 0 -- Delayed Forward Spin Attack
        actChanceList[6] = 0 -- Leap and Left Slash
        actChanceList[7] = 15 -- 2H Slash
        actChanceList[21] = 0 -- Strafe
    end
    
    actChanceList[1] = SetCoolTime(ai, goal, 3020, 6, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 3023, 10, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3024, 10, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3026, 10, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3027, 10, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3028, 10, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3029, 10, actChanceList[7], 1)
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act07)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act22)
    actFuncList[23] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act23)
    actFuncList[24] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act24)
    actFuncList[25] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act25)
    actFuncList[28] = REGIST_FUNC(ai, goal, SpellSummon_Skeleton_Act28)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_Skeleton_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Slash Combo
function SpellSummon_Skeleton_Act01(self, ai, goal)
    local start_approach_distance = 3.3
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local roll_for_mid_distance_to_use_duration_far = 70
    local roll_for_L1_use = 0
    local approach_duration_close = 3
    local approach_duration_far = 4
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_RightSlash = 3020
    local anim_LeftSlash = 3021
    local anim_RightSlashFinal = 3022
    local roll = self:GetRandam_Int(1, 100)
    
    if roll <= 20 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_RightSlash, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif roll <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSlash, TARGET_ENE_0, 2.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_LeftSlash, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSlash, TARGET_ENE_0, 2.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_LeftSlash, TARGET_ENE_0, 1.6 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_RightSlashFinal, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Heavy 2H Strike
function SpellSummon_Skeleton_Act02(self, ai, goal)
    local start_approach_distance = 1.6
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local roll_for_mid_distance_to_use_duration_far = 70
    local roll_for_L1_use = 0
    local approach_duration_close = 3
    local approach_duration_far = 4
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_2H_HeavyStrike = 3023
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_2H_HeavyStrike, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Quick Slash Combo
function SpellSummon_Skeleton_Act03(self, ai, goal)
    local start_approach_distance = 1.1
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local roll_for_mid_distance_to_use_duration_far = 70
    local roll_for_L1_use = 0
    local approach_duration_close = 3
    local approach_duration_far = 4
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_QuickRightSlash = 3024
    local anim_QuickLeftSlash = 3025
    
    if self:GetRandam_Int(1, 100) <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_QuickRightSlash, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_QuickRightSlash, TARGET_ENE_0, 1.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_QuickLeftSlash, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Forward Spin Attack
function SpellSummon_Skeleton_Act04(self, ai, goal)
    local start_approach_distance = 4.3
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local roll_for_mid_distance_to_use_duration_far = 70
    local roll_for_L1_use = 0
    local approach_duration_close = 3
    local approach_duration_far = 4
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_ForwardSpin = 3026
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_ForwardSpin, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Delayed Forward Spin Attack
function SpellSummon_Skeleton_Act05(self, ai, goal)
    local start_approach_distance = 4.3
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local roll_for_mid_distance_to_use_duration_far = 70
    local roll_for_L1_use = 0
    local approach_duration_close = 3
    local approach_duration_far = 4
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_DelayedForwardSpin = 3027
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_DelayedForwardSpin, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Leap and Left Slash
function SpellSummon_Skeleton_Act06(self, ai, goal)
    local start_approach_distance = 10.3
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local roll_for_mid_distance_to_use_duration_far = 70
    local roll_for_L1_use = 0
    local approach_duration_close = 3
    local approach_duration_far = 4
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_LeapLeftSlash = 3028
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_LeapLeftSlash, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end
 
-- 2H Slash
function SpellSummon_Skeleton_Act07(self, ai, goal)
    local start_approach_distance = 10.3
    local start_approach_distance_close = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_far = start_approach_distance - self:GetMapHitRadius(TARGET_SELF) + 1
    local roll_for_mid_distance_to_use_duration_far = 70
    local roll_for_L1_use = 0
    local approach_duration_close = 3
    local approach_duration_far = 4
    
    -- Approach if enemy exceeds approach distance
    Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_2H_Slash = 3029
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_2H_Slash, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn
function SpellSummon_Skeleton_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Strafe
function SpellSummon_Skeleton_Act21(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, -1)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Step Right
function SpellSummon_Skeleton_Act22(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 4)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Step Left
function SpellSummon_Skeleton_Act23(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepLeft, 2, TARGET_ENE_0, 4)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Step Front
function SpellSummon_Skeleton_Act24(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepFront, 2, TARGET_ENE_0, 4)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Step Back
function SpellSummon_Skeleton_Act25(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Leave Target
function SpellSummon_Skeleton_Act28(self, ai, goal)
    local max_distance = 10
    
    if max_distance <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, max_distance, 12, 0, 3)
    end
    
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, max_distance, TARGET_ENE_0, true, -1)
    return 
end

function SpellSummon_Skeleton_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_Skeleton_801000_AfterAttackAct, 10)
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
    elseif GuardBreak_Act(ai, goal, 2.6, 30) then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_Skeleton_801000_AfterAttackAct, "GOAL_SpellSummon_Skeleton_801000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Skeleton_801000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    local distance = ai:GetDist(TARGET_ENE_0)
    
    ai:SetStringIndexedNumber("DistMin_AAA", -99)
    ai:SetStringIndexedNumber("DistMax_AAA", 15)
    ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    ai:SetStringIndexedNumber("Angle_AAA", 180)
    ai:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    ai:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
    ai:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    ai:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    
    if 7 <= distance then
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif 4 <= distance then
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        ai:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    end
    
    goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
