RegisterTableGoal(GOAL_NPC_Maldron, "GOAL_NPC_Maldron")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Maldron, true)

-------------------------
-- Initialize
-------------------------
Goal.Initialize = function (self, ai, goal, arg3)
    ai:SetNumber(0, 0)
    ai:SetNumber(1, 0)
    return 
end

-------------------------
-- Activate
-------------------------
Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    ai:SetStringIndexedNumber("Dist_Rolling", 3.0) -- Distance to roll at
    ai:SetStringIndexedNumber("Dist_BackStep", 2.0) -- Distance to backstep at
    ai:SetStringIndexedNumber("AddDistWalk", 0) 
    ai:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local roll = ai:GetRandam_Int(1, 100)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stamina = ai:GetSp(TARGET_SELF)
    
    -- Friendly Mode
    if ai:HasSpecialEffectId(TARGET_SELF, 160803050) then
        goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    end
    
    -- Betrayer Mode
    if ai:GetNpcThinkParamID() == 50011 then
        goal:AddSubGoal(GOAL_NPC_BlackGhost_Battle, 2)
    end
    
    local far_distance = 6.0
    local mid_distance = 3.0
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if distance >= far_distance then
        -- Attacks
        actChanceList[1] = 0 -- R1 Combo
        actChanceList[3] = 0 -- R2 Combo
        actChanceList[4] = 0 -- Kick
        actChanceList[5] = 0 -- Jump Attack
        actChanceList[6] = 0 -- Running R1/R2
        actChanceList[7] = 0 -- Right WA: Heide's Fury
        
        -- Movement
        actChanceList[20] = 100 -- Approach
        actChanceList[21] = 0 -- Strafe
        actChanceList[22] = 0 -- Move Backwards
        actChanceList[23] = 0 -- Backstep
        actChanceList[24] = 0 -- Forward Roll
        actChanceList[25] = 0 -- Side Roll
        actChanceList[26] = 0 -- Back Roll
        
        -- Items
        actChanceList[30] = 0 -- Divine Blessing
    elseif distance >= mid_distance then
        -- Attacks
        actChanceList[1] = 0 -- R1 Combo
        actChanceList[3] = 0 -- R2 Combo
        actChanceList[4] = 0 -- Kick
        actChanceList[5] = 0 -- Jump Attack
        actChanceList[6] = 10 -- Running R1/R2
        actChanceList[7] = 0 -- Right WA: Heide's Fury
        
        -- Movement
        actChanceList[20] = 10 -- Approach
        actChanceList[21] = 5 -- Strafe
        actChanceList[22] = 0 -- Move Backwards
        actChanceList[23] = 0 -- Backstep
        actChanceList[24] = 0 -- Forward Roll
        actChanceList[25] = 0 -- Side Roll
        actChanceList[26] = 0 -- Back Roll
        
        -- Items
        actChanceList[30] = 0 -- Divine Blessing
    else
        -- Attacks
        actChanceList[1] = 20 -- R1 Combo
        actChanceList[3] = 10 -- R2 Combo
        actChanceList[4] = 0 -- Kick
        actChanceList[5] = 0 -- Jump Attack
        actChanceList[6] = 5 -- Running R1/R2
        actChanceList[7] = 5 -- Right WA: Heide's Fury
        
        -- Movement
        actChanceList[20] = 0 -- Approach
        actChanceList[21] = 5 -- Strafe
        actChanceList[22] = 0 -- Move Backwards
        actChanceList[23] = 0 -- Backstep
        actChanceList[24] = 5 -- Forward Roll
        actChanceList[25] = 5 -- Side Roll
        actChanceList[26] = 5 -- Back Roll
        
        -- Items
        actChanceList[30] = 0 -- Divine Blessing
    end
    
    ----------------------------------
    -- Movement Checks
    ----------------------------------
    -- Block backstep if there is an obstacle behind the AI within 2.6 meters
    if SpaceCheck(ai, goal, 180, ai:GetStringIndexedNumber("Dist_BackStep")) == false then
        actChanceList[23] = 0 -- Backstep
    end
    
    -- Block forward roll if there is an obstacle +/- 45 degrees in front the AI within 4.4 meters
    if SpaceCheck(ai, goal, -45, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 45, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[24] = 0 -- Forward Roll
    end
    
    -- Block side roll if there is an obstacle +/- 90 degrees to the side of the AI within 4.4 meters
    if SpaceCheck(ai, goal, -90, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 90, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[25] = 0 -- Side Roll
    end
    
    -- Block back roll if there is an obstacle +/- 135 degrees to the side of the AI within 4.4 meters
    if SpaceCheck(ai, goal, -135, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 135, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[26] = 0 -- Back Roll
    end
    
    -- Block back roll if there is an obstacle behind the AI within 4.4 meters
    if SpaceCheck(ai, goal, 180, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[26] = 0 -- Back Roll
    end

    -- Block Backstep if there is an obstacle behind the AI within 1 meters
    if SpaceCheck(ai, goal, 180, 1) == false then
        actChanceList[22] = 0 -- Move Backwards
    end
    
    -- Block strafe if there is an obstacle +/- 90 degrees to the side of the AI within 1 meters
    if SpaceCheck(ai, goal, -90, 1) == false and SpaceCheck(ai, goal, 90, 1) == false then
        actChanceList[21] = 0 -- Strafe
    end
    
    ----------------------------------
    -- Act Modifiers
    ----------------------------------
    -- Heal when low
    if ai:GetHpRate(TARGET_SELF) < 0.25 and ai:GetNumber(0) == 0 then
        actChanceList[30] = 20 -- Divine Blessing
    end
    
    -- Kick guarding player
    if ai:IsTargetGuard(TARGET_ENE_0) and distance <= 2.0 then
        actChanceList[4] = actChanceList[4] + 10 -- Kick
    end
    
    -- Block dash and rolls when low on stamina
    if stamina < 20 then
        actChanceList[6] = 0 -- Running R1/R2
        actChanceList[23] = 0 -- Backstep
        actChanceList[24] = 0 -- Forward Roll
        actChanceList[25] = 0 -- Side Roll
        actChanceList[26] = 0 -- Back Roll
    end
    
    -- Invalid Item check
    if ai:HasSpecialEffectId(TARGET_SELF, 5111) then
        actChanceList[30] = 0 -- Divine Blessing
    end
    
    ----------------------------------
    -- Gresture
    ----------------------------------
    if ai:GetHpRate(TARGET_ENE_0) < 0.2 and distance >= 2.0 and ai:GetNumber(1) == 0 then
        actChanceList[50] = 5 -- Point Down
    end
    
    ----------------------------------
    -- Acts
    ----------------------------------
    -- Attacks
    actFuncList[1] = REGIST_FUNC(ai, goal, NPC_Maldron_Act01) -- R1 Combo
    actFuncList[3] = REGIST_FUNC(ai, goal, NPC_Maldron_Act03) -- R2 Combo
    actFuncList[4] = REGIST_FUNC(ai, goal, NPC_Maldron_Act04) -- Kick
    actFuncList[5] = REGIST_FUNC(ai, goal, NPC_Maldron_Act05) -- Jump Attack
    actFuncList[6] = REGIST_FUNC(ai, goal, NPC_Maldron_Act06) -- Running R1/R2
    actFuncList[7] = REGIST_FUNC(ai, goal, NPC_Maldron_Act07) -- Right WA: Heide's Fury
    
    -- Movement
    actFuncList[20] = REGIST_FUNC(ai, goal, NPC_Maldron_Act20) -- Approach
    actFuncList[21] = REGIST_FUNC(ai, goal, NPC_Maldron_Act21) -- Strafe
    actFuncList[22] = REGIST_FUNC(ai, goal, NPC_Maldron_Act22) -- Move Backwards
    actFuncList[23] = REGIST_FUNC(ai, goal, NPC_Maldron_Act23) -- Backstep
    actFuncList[24] = REGIST_FUNC(ai, goal, NPC_Maldron_Act24) -- Forward Roll
    actFuncList[25] = REGIST_FUNC(ai, goal, NPC_Maldron_Act25) -- Side Roll
    actFuncList[26] = REGIST_FUNC(ai, goal, NPC_Maldron_Act26) -- Back Roll
    
    -- Items
    actFuncList[30] = REGIST_FUNC(ai, goal, NPC_Maldron_Act30) -- Divine Blessing
    
    -- Gestures
    actFuncList[50] = REGIST_FUNC(ai, goal, NPC_Maldron_Act50) -- Point Down
    
    -- Utility
    actFuncList[60] = REGIST_FUNC(ai, goal, NPC_Maldron_Act60) -- Switch to 1H
    actFuncList[61] = REGIST_FUNC(ai, goal, NPC_Maldron_Act61) -- Switch to 2H
    actFuncList[62] = REGIST_FUNC(ai, goal, NPC_Maldron_Act62) -- Switch Right Hand Primary
    actFuncList[63] = REGIST_FUNC(ai, goal, NPC_Maldron_Act63) -- Switch Right Hand Secondary
    actFuncList[64] = REGIST_FUNC(ai, goal, NPC_Maldron_Act64) -- Switch Left Hand Primary
    actFuncList[65] = REGIST_FUNC(ai, goal, NPC_Maldron_Act65) -- Switch Left Hand Secondary
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, NPC_Maldron_ActAfter_AdjustSpace), actTblList)
    return 
end

--------------------------------------------------
-- Attacks
--------------------------------------------------
-- R1 Combo
function NPC_Maldron_Act01(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local max_attack_distance = 2.1
    
    local start_approach_distance_close = 2.1
    local start_approach_distance_mid = start_approach_distance_close + 0
    local start_approach_distance_far = start_approach_distance_close + 2
    
    local roll_for_mid_distance_to_use_duration_far = 100
    local roll_for_L1_use = 100
    
    local approach_duration_close = 1.8
    local approach_duration_far = 2.0

    local strafe_anim = NPC_ATK_L1Hold
    
    local stamina_for_full_combo = 120
    local stamina_for_partial_combo = 60
    
    -- If in 2H mode, don't use L1 in approach
    if self:IsBothHandMode(TARGET_SELF) then
        roll_for_L1_use = 0
    end
    
    -- Don't use L1 in approach if stamina is low
    if stamina < 60 then
        roll_for_L1_use = 0
    end
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    -- Strafe if enemy exceeds approach distance
    if distance >= start_approach_distance_close then
        -- 50% of the time
        if self:GetRandam_Int(1, 100) <= 50 then 
            -- To the left of the player
            if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, self:GetRandam_Int(75, 90), true, true, strafe_anim) -- Strafe
            -- To the right of the player
            else
                ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, self:GetRandam_Int(75, 90), true, true, strafe_anim) -- Strafe
            end
        end
    end
    
    -- Attack Combo: R1
    if stamina >= stamina_for_full_combo then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif stamina >= stamina_for_partial_combo then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- R2 Combo
function NPC_Maldron_Act03(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local max_attack_distance = 2.4
    
    local start_approach_distance_close = 2.4
    local start_approach_distance_mid = start_approach_distance_close + 0
    local start_approach_distance_far = start_approach_distance_close + 2
    
    local roll_for_mid_distance_to_use_duration_far = 100
    local roll_for_L1_use = 100
    
    local approach_duration_close = 1.8
    local approach_duration_far = 2.0

    local strafe_anim = NPC_ATK_L1Hold
    
    local stamina_for_full_combo = 80
    local roll = self:GetRandam_Int(1, 100)
    
    -- If in 2H mode, don't use L1 in approach
    if self:IsBothHandMode(TARGET_SELF) then
        roll_for_L1_use = 0
    end
    
    -- Don't use L1 in approach if stamina is low
    if stamina < 60 then
        roll_for_L1_use = 0
    end
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    -- Strafe if enemy exceeds approach distance
    if distance >= start_approach_distance_close then
        -- 50% of the time
        if self:GetRandam_Int(1, 100) <= 50 then 
            -- To the left of the player
            if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, self:GetRandam_Int(75, 90), true, true, strafe_anim) -- Strafe
            -- To the right of the player
            else
                ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, self:GetRandam_Int(75, 90), true, true, strafe_anim) -- Strafe
            end
        end
    end
    
    -- R2 Combo
    if stamina >= stamina_for_full_combo then
        if roll <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, max_attack_distance, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif roll <= 75 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, max_attack_distance, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, max_attack_distance, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    else
        if roll <= 50 then
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, max_attack_distance, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, max_attack_distance, 0, 0)
        end
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Kick
function NPC_Maldron_Act04(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local max_attack_distance = 1.6
    
    local start_approach_distance_close = 1.6
    local start_approach_distance_mid = start_approach_distance_close + 0
    local start_approach_distance_far = start_approach_distance_close + 2
    
    local roll_for_mid_distance_to_use_duration_far = 100
    local roll_for_L1_use = 100
    
    local approach_duration_close = 1.8
    local approach_duration_far = 2.0

    local strafe_anim = NPC_ATK_L1Hold
    
    local stamina_for_full_combo = 80
    local roll = self:GetRandam_Int(1, 100)
    
    -- If in 2H mode, don't use L1 in approach
    if self:IsBothHandMode(TARGET_SELF) then
        roll_for_L1_use = 0
    end
    
    -- Don't use L1 in approach if stamina is low
    if stamina < 60 then
        roll_for_L1_use = 0
    end
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    -- Kick
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0) -- Kick
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Jump Attack
function NPC_Maldron_Act05(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local max_attack_distance = 4.8
    
    local start_approach_distance_close = 4.8
    local start_approach_distance_mid = start_approach_distance_close + 0
    local start_approach_distance_far = start_approach_distance_close + 2
    
    local roll_for_mid_distance_to_use_duration_far = 100
    local roll_for_L1_use = 100
    
    local approach_duration_close = 1.8
    local approach_duration_far = 2.0

    local strafe_anim = NPC_ATK_L1Hold
    
    local stamina_for_full_combo = 80
    local roll = self:GetRandam_Int(1, 100)
    
    -- If in 2H mode, don't use L1 in approach
    if self:IsBothHandMode(TARGET_SELF) then
        roll_for_L1_use = 0
    end
    
    -- Don't use L1 in approach if stamina is low
    if stamina < 60 then
        roll_for_L1_use = 0
    end
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    -- Jump Attack
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Running R1/R2
function NPC_Maldron_Act06(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    local roll = self:GetRandam_Int(1, 100)

    local max_attack_distance = 3.0
    local dash_anim = NPC_ATK_L1Hold
    
    local const_a = 4
    
    -- If in 2H mode, don't use L1 in approach
    if self:IsBothHandMode(TARGET_SELF) then
         dash_anim = -1
    end
    
    -- Don't use L1 in approach if stamina is low
    if stamina < 60 then
         dash_anim = -1
    end
    
    -- Dash and then R1 or R2
    if roll <= 50 then
        ai:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, max_attack_distance, TARGET_SELF, dash_anim)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, max_attack_distance, TARGET_SELF, dash_anim)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Right WA: Heide's Fury
function NPC_Maldron_Act07(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local max_attack_distance = 3.0
    
    local start_approach_distance_close = 3.0
    local start_approach_distance_mid = start_approach_distance_close + 0
    local start_approach_distance_far = start_approach_distance_close + 2
    
    local roll_for_mid_distance_to_use_duration_far = 100
    local roll_for_L1_use = 100
    
    local approach_duration_close = 1.8
    local approach_duration_far = 2.0

    local approach_anim = NPC_ATK_L1Hold
    
    local roll = self:GetRandam_Int(1, 100)
    
    -- Switch to 2H to use primary WA
    if not self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    -- WA Combo
    if roll <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, max_attack_distance, TARGET_SELF, false, approach_anim)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, max_attack_distance, TARGET_SELF, false, approach_anim)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

--------------------------------------------------
-- Movement
--------------------------------------------------
-- Approach
function NPC_Maldron_Act20(self, ai, goal)
    local end_approach_distance = 5.0
    local one_hand_animation = -1
    local two_hand_animation = -1
    
    -- Approach with different animation based on hand position
    if self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, end_approach_distance, TARGET_SELF, false, one_hand_animation)
    else
        ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, end_approach_distance, TARGET_SELF, false, two_hand_animation)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Strafe
function NPC_Maldron_Act21(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)

    local run_start_distance = 5.0
    local strafe_anim = NPC_ATK_L1Hold
    
    -- Don't use L1 in strafe if stamina is low
    if stamina <= 30 then
        strafe_anim = -1
    end
    
    local direction = 0
    
    -- Adjust direction based on location, or end early if colliding
    if SpaceCheck(self, ai, -90, 1) == true then
        if SpaceCheck(self, ai, 90, 1) == true then
            if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                direction = 0
            else
                direction = 1
            end
        else
            direction = 0
        end
    elseif SpaceCheck(self, ai, 90, 1) == true then
        direction = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
    -- Walk stafe
    if distance >= run_start_distance then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, direction, self:GetRandam_Int(75, 90), false, true, strafe_anim)
    -- Run strafe
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, direction, self:GetRandam_Int(75, 90), true, true, strafe_anim)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Move Backwards
function NPC_Maldron_Act22(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    
    local backstep_start_distance = 3.0
    local run_start_distance = 5.0
    
    local backstep_anim = NPC_ATK_L1Hold
    
    -- Move Backwards Walking
    if distance >= run_start_distance then
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, backstep_start_distance, TARGET_ENE_0, false, backstep_anim)
    -- Move Backwards Running
    else
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, backstep_start_distance, TARGET_ENE_0, true, backstep_anim)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Backstep
function NPC_Maldron_Act23(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local max_backstep_distance = 6.0
    local attack_after_backstep_distance = 2.0
    
    -- Skip if already distant from the target
    if distance >= max_backstep_distance then
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
    -- Backstep
    if SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_BackStep")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    
    -- Perform attack if close to enemy
    if stamina >= 60 and distance <= attack_after_backstep_distance then
        local max_attack_distance = 2.8
        local spin_time = 0.8

        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, max_attack_distance, spin_time, 50) -- Roll Attack
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Forward Roll
function NPC_Maldron_Act24(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local max_roll_distance = 5.0
    local min_roll_distance = 2.0
    local attack_after_roll_distance = 3.0
    
    local max_attack_distance = 5.8
    local spin_time = 5.4

    -- Skip if already next to the target
    if distance <= min_roll_distance then
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
    -- Roll
    if distance >= max_roll_distance and SpaceCheck(self, ai, 0, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 3.0, 0, 0) -- Forward Roll
    end
    
    -- Perform attack if close to enemy
    if stamina >= 60 and distance <= attack_after_roll_distance then
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, max_attack_distance, spin_time, 50) -- Roll Attack
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Side Roll
function NPC_Maldron_Act25(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local attack_after_roll_distance = 3.0
    
    local max_attack_distance = 3.8
    local spin_time = 3.4
        
    -- Roll
    if SpaceCheck(self, ai, -90, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(self, ai, 90, self:GetStringIndexedNumber("Dist_Rolling")) == true then
            if self:GetRandam_Int(1, 100) <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)  -- Left Roll
            else
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Right Roll
            end
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)  -- Left Roll
        end
    elseif SpaceCheck(self, ai, 90, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Right Roll
    end
    
    -- Perform attack if close to enemy
    if stamina >= 60 and distance <= attack_after_roll_distance then
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, max_attack_distance, spin_time, R1Fate)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Back Roll
function NPC_Maldron_Act26(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    local max_roll_distance = 10.0
    local min_roll_distance = 2.0
    local attack_after_roll_distance = 2.0
    
    local max_attack_distance = 1.8
    local spin_time = 1.4
    
    -- Skip if already distant from the target
    if distance >= max_roll_distance then
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
    -- Roll
    if distance >= min_roll_distance then
        if SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_Rolling")) == true then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, retreat_distance, 0, 0)
        end
    elseif SpaceCheck(self, ai, -135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(self, ai, 135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
            if self:GetRandam_Int(1, 100) <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, retreat_distance, 0, 0) -- Left Back Roll
            else
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, retreat_distance, 0, 0) -- Right Back Roll
            end
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, retreat_distance, 0, 0) -- Left Back Roll
        end
    elseif SpaceCheck(self, ai, 135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, retreat_distance, 0, 0) -- Right Back Roll
    end
    
    -- Perform attack if close to enemy
    if stamina >= 60 and distance <= attack_after_roll_distance then
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, max_attack_distance, spin_time, 50)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

--------------------------------------------------
-- Items
--------------------------------------------------
-- Divine Blessing
function NPC_Maldron_Act30(self, ai, goal)
    self:ChangeEquipItem(0) 
    self:SetStringIndexedNumber("Divine Blessing", self:GetStringIndexedNumber("Divine Blessing") - 1)
    
    -- Use Item
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

--------------------------------------------------
-- Gestures
--------------------------------------------------
-- Point Down
function NPC_Maldron_Act50(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    
    ai:SetNumber(1, 1)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

--------------------------------------------------
-- Utility
--------------------------------------------------
-- Switch to 1H
function NPC_Maldron_Act60(self, ai, goal)
    if self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Switch to 2H
function NPC_Maldron_Act61(self, ai, goal)
    if not self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Switch Right Hand Primary
function NPC_Maldron_Act62(self, ai, goal)
    if self:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Switch Right Hand Secondary
function NPC_Maldron_Act63(self, ai, goal)
    if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Switch Left Hand Primary
function NPC_Maldron_Act64(self, ai, goal)
    if self:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Switch Left Hand Secondary
function NPC_Maldron_Act65(self, ai, goal)
    if self:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function NPC_Maldron_ActAfter_AdjustSpace(self, ai, goal)
    return 
end

-------------------------
-- Update
-------------------------
Goal.Update = function (self, ai, goal)
    -- Reset Gesture usage
    if ai:GetRandam_Int(1, 100) <= 5 then
        ai:SetNumber(1, 0)
    end

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
    local stamina = ai:GetSp(TARGET_SELF)
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll = ai:GetRandam_Int(1, 100)
    
    local avoidance_distance = 3
    local avoidance_chance = 50
    
    ----------------------------------
    -- Guard Break
    ----------------------------------
    if ai:IsInterupt(INTERUPT_GuardBreak) and distance < 3 then
        goal:ClearSubGoal()
        
        -- Approach
        local subgoal = goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        subgoal:SetLifeEndSuccess(true)
        
        -- Riposte with R1
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        
        return true
    ----------------------------------
    -- Bullet Attack
    ----------------------------------
    elseif ai:IsInterupt(INTERUPT_FindAttack) then
        -- Randomly avoid bullet attacks
        if roll <= avoidance_chance then
            -- If attack is at range, either strafe or roll
            if distance > avoidance_distance then
                -- Strafe
                if roll <= 50 then
                    goal:ClearSubGoal()
                    NPC_Maldron_Act21(ai, goal, paramTbl)
                    return true
                -- Forward Roll
                else 
                    goal:ClearSubGoal()
                    NPC_Maldron_Act24(ai, goal, paramTbl)
                    return true
                end
            -- If attack is close, running attack
            else
                -- Running R1/R1
                goal:ClearSubGoal()
                NPC_Maldron_Act06(ai, goal, paramTbl)
                return true
            end
        end
    ----------------------------------
    -- Bow Attack
    ----------------------------------
    elseif ai:IsInterupt(INTERUPT_Shoot) then
        -- Randomly avoid bullet attacks
        if roll <= avoidance_chance then 
            goal:ClearSubGoal()
            NPC_Maldron_Act25(ai, goal) -- Side Roll
            return true
        end
    else
        return false
    end
end

-------------------------
-- End
-------------------------
return 
