RegisterTableGoal(GOAL_AbyssWalker_824000_Battle, "GOAL_AbyssWalker_824000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AbyssWalker_824000_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 7)
    ai:SetStringIndexedNumber("Dist_BackStep", 7)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if distance >= 15 then
        actChanceList[1] = 10 -- Slash Combo
        actChanceList[2] = 0 -- Grab
        actChanceList[3] = 15 -- Thrust Combo
        actChanceList[4] = 15 -- Jump Combo
        actChanceList[5] = 5 -- Side Slash Combo
        actChanceList[6] = 5 -- 2H Jump Slash
        actChanceList[8] = 0 -- Kick and Grab
        actChanceList[9] = 0 -- Flying Slash Combo
    elseif distance >= 10 then
        actChanceList[1] = 5 -- Slash Combo
        actChanceList[2] = 0 -- Grab
        actChanceList[3] = 20 -- Thrust Combo
        actChanceList[4] = 20 -- Jump Combo
        actChanceList[5] = 10 -- Side Slash Combo
        actChanceList[6] = 5 -- 2H Jump Slash
        actChanceList[8] = 0 -- Kick and Grab
        actChanceList[9] = 0 -- Flying Slash Combo
    elseif distance >= 6 then
        actChanceList[1] = 10 -- Slash Combo
        actChanceList[2] = 0 -- Grab
        actChanceList[3] = 20 -- Thrust Combo
        actChanceList[4] = 20 -- Jump Combo
        actChanceList[5] = 10 -- Side Slash Combo
        actChanceList[6] = 10 -- 2H Jump Slash
        actChanceList[8] = 0 -- Kick and Grab
        actChanceList[9] = 0 -- Flying Slash Combo
    elseif distance >= 2 then
        actChanceList[1] = 15 -- Slash Combo
        actChanceList[2] = 10 -- Grab
        actChanceList[3] = 20 -- Thrust Combo
        actChanceList[4] = 20 -- Jump Combo
        actChanceList[5] = 15 -- Side Slash Combo
        actChanceList[6] = 0 -- 2H Jump Slash
        actChanceList[8] = 0 -- Kick and Grab
        actChanceList[9] = 5 -- Flying Slash Combo
    else
        actChanceList[1] = 25 -- Slash Combo
        actChanceList[2] = 20 -- Grab
        actChanceList[3] = 0 -- Thrust Combo
        actChanceList[4] = 0 -- Jump Combo
        actChanceList[5] = 20 -- Side Slash Combo
        actChanceList[6] = 0 -- 2H Jump Slash
        actChanceList[8] = 20 -- Kick and Grab
        actChanceList[9] = 5 -- Flying Slash Combo
    end
    
    ----------------------------------
    -- Act Modifiers
    ----------------------------------
    
    ----------------------------------
    -- Cooldowns
    ----------------------------------
    actChanceList[8] = SetCoolTime(ai, goal, 3021, 8, actChanceList[8], 0) -- Kick and Grab

    ----------------------------------
    -- Acts
    ----------------------------------
    actFuncList[1] = REGIST_FUNC(ai, goal, Boss_AbyssWalker_Act01) -- Slash Combo
    actFuncList[2] = REGIST_FUNC(ai, goal, Boss_AbyssWalker_Act02) -- Grab
    actFuncList[3] = REGIST_FUNC(ai, goal, Boss_AbyssWalker_Act03) -- Thrust Combo
    actFuncList[4] = REGIST_FUNC(ai, goal, Boss_AbyssWalker_Act04) -- Jump Combo
    actFuncList[5] = REGIST_FUNC(ai, goal, Boss_AbyssWalker_Act05) -- Side Slash Combo
    actFuncList[6] = REGIST_FUNC(ai, goal, Boss_AbyssWalker_Act06) -- 2H Jump Slash
    actFuncList[8] = REGIST_FUNC(ai, goal, Boss_AbyssWalker_Act08) -- Kick and Grab
    actFuncList[9] = REGIST_FUNC(ai, goal, Boss_AbyssWalker_Act09) -- Flying Slash Combo
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, Boss_AbyssWalker_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
-- Slash Combo
function Boss_AbyssWalker_Act01(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_right_slash = 3000
    local anim_left_slash = 3001
    local anim_right_slash_followup = 3002
    local anim_delayed_left_slash = 3003
    local anim_2h_down_strike = 3011
    local anim_2h_left_slash = 3013
    local anim_2h_down_slash = 3014
    local anim_2h_drag_up_slash = 3016
    
    -- Approach
    Approach_Act_Flex(self, ai, 6 - self:GetMapHitRadius(TARGET_SELF) - 1, 6 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    
    local max_attack_distance = 20 - self:GetMapHitRadius(TARGET_SELF)

    local roll_a = self:GetRandam_Int(1, 100)
    local roll_b = self:GetRandam_Int(1, 100)
    
    if roll_a <= 0 then
        self:SetNumber(0, self:GetNumber(0) + 4)
        self:SetNumber(1, self:GetNumber(1) + 4)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_right_slash, TARGET_ENE_0, max_attack_distance, 0, 0)
    elseif roll_a <= 60 then
        self:SetNumber(0, self:GetNumber(0) + 8)
        self:SetNumber(1, self:GetNumber(1) + 4)
        
        if roll_b <= 60 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_right_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_down_strike, TARGET_ENE_0, max_attack_distance)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_right_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_left_slash, TARGET_ENE_0, max_attack_distance)
        end
    else
        self:SetNumber(0, self:GetNumber(0) + 12)
        self:SetNumber(1, self:GetNumber(1) + 8)
        
        if roll_b <= 30 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_right_slash, TARGET_ENE_0, 6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_left_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_right_slash_followup, TARGET_ENE_0, max_attack_distance)
        elseif roll_b <= 60 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_right_slash, TARGET_ENE_0, 6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_left_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_delayed_left_slash, TARGET_ENE_0, max_attack_distance)
        elseif roll_b <= 80 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_right_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_2h_left_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_down_slash, TARGET_ENE_0, max_attack_distance)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_right_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_2h_left_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_drag_up_slash, TARGET_ENE_0, max_attack_distance)
        end
    end
    
    if 0.5 <= self:GetHpRate(TARGET_SELF) then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 30
    end
    return GetWellSpace_Odds
end

-- Grab
function Boss_AbyssWalker_Act02(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_grab = 3006
    
    -- Approach
    Approach_Act_Flex(self, ai, 4.5 - self:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - self:GetMapHitRadius(TARGET_SELF), 999, 100, 0, 3, 5)
    
    self:SetNumber(0, self:GetNumber(0) + 8)
    self:SetNumber(1, self:GetNumber(1) + 8)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_grab, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

-- Thrust Combo
function Boss_AbyssWalker_Act03(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_1h_thrust = 3008
    local anim_left_side_slash = 3009
    local anim_2h_left_side_slash = 3012
    local anim_grab = 3006
    
    -- Approach
    Approach_Act_Flex(self, ai, 13 - self:GetMapHitRadius(TARGET_SELF) - 1, 13 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
        
    local max_attack_distance = 20 - self:GetMapHitRadius(TARGET_SELF)
    local roll_a = self:GetRandam_Int(1, 100)
    
    if self:GetRandam_Int(1, 100) <= 25 then
        self:SetNumber(0, self:GetNumber(0) + 8)
        self:SetNumber(1, self:GetNumber(1) + 4)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_1h_thrust, TARGET_ENE_0, max_attack_distance, 0, 0)
    else
        self:SetNumber(0, self:GetNumber(0) + 12)
        self:SetNumber(1, self:GetNumber(1) + 8)
        if roll_a <= 40 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_1h_thrust, TARGET_ENE_0, 6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_left_side_slash, TARGET_ENE_0, max_attack_distance)
        elseif roll_a <= 70 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_1h_thrust, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_left_side_slash, TARGET_ENE_0, max_attack_distance)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_1h_thrust, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_grab, TARGET_ENE_0, max_attack_distance)
        end
    end
    
    if 0.5 <= self:GetHpRate(TARGET_SELF) then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 30
    end
    return GetWellSpace_Odds
end

-- Jump Combo
function Boss_AbyssWalker_Act04(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_jump_slash = 3010
    local anim_2h_down_strike = 3011
    local anim_2h_thrust = 3015
    
    -- Approach
    Approach_Act_Flex(self, ai, 12.5 - self:GetMapHitRadius(TARGET_SELF) - 1, 12.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    
    local max_attack_distance = 20 - self:GetMapHitRadius(TARGET_SELF)
    
    if self:GetRandam_Int(1, 100) <= 35 then
        self:SetNumber(0, self:GetNumber(0) + 10)
        self:SetNumber(1, self:GetNumber(1) + 5)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_jump_slash, TARGET_ENE_0, max_attack_distance, 0, 0)
    else
        self:SetNumber(0, self:GetNumber(0) + 15)
        self:SetNumber(1, self:GetNumber(1) + 10)
        if self:GetRandam_Int(1, 100) <= 65 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_jump_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_down_strike, TARGET_ENE_0, max_attack_distance)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_jump_slash, TARGET_ENE_0, 6.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_thrust, TARGET_ENE_0, max_attack_distance)
        end
    end
    
    if 0.5 <= self:GetHpRate(TARGET_SELF) then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 30
    end
    return GetWellSpace_Odds
end

-- Side Slash Combo
function Boss_AbyssWalker_Act05(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_2h_down_strike = 3011
    local anim_2h_side_slash = 3012
    local anim_2h_left_slash = 3013
    local anim_2h_down_slash = 3014
    local anim_2h_thrust = 3015
    local anim_2h_drag_up_slash = 3016
    
    -- Approach
    Approach_Act_Flex(self, ai, 6 - self:GetMapHitRadius(TARGET_SELF) - 1, 6 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    
    local max_attack_distance = 20 - self:GetMapHitRadius(TARGET_SELF)

    local roll_a = self:GetRandam_Int(1, 100)
    local roll_b = self:GetRandam_Int(1, 100)
    local hp_rate = self:GetHpRate(TARGET_SELF)
    
    if roll_a <= 0 then
        self:SetNumber(0, self:GetNumber(0) + 5)
        self:SetNumber(1, self:GetNumber(1) + 5)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_2h_side_slash, TARGET_ENE_0, max_attack_distance, 0, 0)
    elseif roll_a <= 60 then
        self:SetNumber(0, self:GetNumber(0) + 10)
        self:SetNumber(1, self:GetNumber(1) + 10)
        if roll_b <= 30 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_2h_side_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_down_strike, TARGET_ENE_0, max_attack_distance)
        elseif roll_b <= 65 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_2h_side_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_left_slash, TARGET_ENE_0, max_attack_distance)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_2h_side_slash, TARGET_ENE_0, 6.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_thrust, TARGET_ENE_0, max_attack_distance)
        end
    else
        self:SetNumber(0, self:GetNumber(0) + 15)
        self:SetNumber(1, self:GetNumber(1) + 15)
        if roll_b <= 40 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_2h_side_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_2h_left_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_down_slash, TARGET_ENE_0, max_attack_distance)
        elseif roll_b <= 80 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_2h_side_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_2h_left_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_drag_up_slash, TARGET_ENE_0, max_attack_distance)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_2h_side_slash, TARGET_ENE_0, 6.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_2h_thrust, TARGET_ENE_0, 6 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_side_slash, TARGET_ENE_0, max_attack_distance)
        end
    end
    
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

-- 2H Jump Slash
function Boss_AbyssWalker_Act06(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_2h_jump_slash = 3018
    
    -- Approach
    Approach_Act_Flex(self, ai, 17 - self:GetMapHitRadius(TARGET_SELF) - 1, 17 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)

    self:SetNumber(0, self:GetNumber(0) + 15)
    self:SetNumber(1, self:GetNumber(1) + 10)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_2h_jump_slash, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    if 0.5 <= self:GetHpRate(TARGET_SELF) then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 50
    end
    return GetWellSpace_Odds
end

-- Kick and Grab
function Boss_AbyssWalker_Act08(self, ai, goal)
    local max_attack_distance = 20 - self:GetMapHitRadius(TARGET_SELF)
    local anim_kick = 3021
    local anim_grab = 3006

    if self:GetRandam_Int(1, 100) <= 20 then
        self:SetNumber(0, self:GetNumber(0) + 4)
        self:SetNumber(1, self:GetNumber(1) + 4)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_kick, TARGET_ENE_0, max_attack_distance, 0, 0)
    else
        self:SetNumber(0, self:GetNumber(0) + 6)
        self:SetNumber(1, self:GetNumber(1) + 6)
        if self:GetRandam_Int(1, 100) <= 30 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_kick, TARGET_ENE_0, 2 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_kick, TARGET_ENE_0, max_attack_distance)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_kick, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_grab, TARGET_ENE_0, max_attack_distance)
        end
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Flying Slash Combo
function Boss_AbyssWalker_Act09(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_flying_2h_slash = 3022
    local anim_2h_down_slash = 3014
    local anim_2h_drag_up_slash = 3016
    
    -- Approach
    Approach_Act_Flex(self, ai, 2.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 2.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    
    local max_attack_distance = 20 - self:GetMapHitRadius(TARGET_SELF)

    if self:GetRandam_Int(1, 100) <= 40 then
        self:SetNumber(0, self:GetNumber(0) + 0)
        self:SetNumber(1, self:GetNumber(1) + 15)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_flying_2h_slash, TARGET_ENE_0, max_attack_distance, 0, 0)
    else
        self:SetNumber(0, self:GetNumber(0) + 5)
        self:SetNumber(1, self:GetNumber(1) + 15)
        if self:GetRandam_Int(1, 100) <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_flying_2h_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_down_slash, TARGET_ENE_0, max_attack_distance)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_flying_2h_slash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_2h_drag_up_slash, TARGET_ENE_0, max_attack_distance)
        end
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function Boss_AbyssWalker_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_LastBoss_AfterAttackAct, 10)
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
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    local anim_front_roll = 6000
    local anim_slow_2h_jump_slash = 3025
    
    if ai:IsInterupt(INTERUPT_Shoot) then
        if 20 <= distance and roll_a <= 100 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, anim_front_roll, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif 12 <= distance and roll_a <= 50 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, anim_front_roll, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif 5 <= distance and roll_a <= 30 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, anim_front_roll, TARGET_ENE_0, 20, 0, 0)
            return true
        end
    end
    
    if ai:IsInterupt(INTERUPT_AIGuardBroken) then
        ai:SetNumber(0, ai:GetNumber(0) + 25)
        ai:SetNumber(1, ai:GetNumber(1) + 25)
    end
    
    if ai:GetHpRate(TARGET_ENE_0) <= 0.5 then
        roll_a = roll_a * 2
    else
        roll_a = roll_a * 1
    end
    
    if ai:IsInterupt(INTERUPT_SuccessThrow) then
        ai:SetNumber(0, ai:GetNumber(0) + 20)
        ai:SetNumber(1, ai:GetNumber(1) + 5)
        if 60 <= roll_a then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 7, anim_slow_2h_jump_slash, TARGET_ENE_0, 20 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            return true
        end
    end
    return false
end

return 
