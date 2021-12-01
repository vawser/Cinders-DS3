RegisterTableGoal(GOAL_TitaniteAbomination_821000_Battle, "GOAL_TitaniteAbomination_821000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TitaniteAbomination_821000_Battle, true)

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
    
    ai:SetStringIndexedNumber("Dist_SideStep", 10)
    ai:SetStringIndexedNumber("Dist_BackStep", 8)
   
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
   
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
   
    ai:SetNumber(0, 0)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   
    local distance = ai:GetDist(TARGET_ENE_0)
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if InsideRange(ai, goal, 180, 75, -99, 5) then
        actChanceList[5] = 20 -- Tail Spin
        actChanceList[6] = 70 -- Spinning Slam
        actChanceList[20] = 10 -- Turn
    elseif InsideRange(ai, goal, 180, 270, -99, 10) then
        actChanceList[5] = 90 -- Tail Spin
        actChanceList[20] = 10 -- Turn
    elseif InsideDir(ai, goal, 180, 270) then
        actChanceList[20] = 100 -- Turn
    elseif distance >= 17 then
        actChanceList[4] = 50 -- Dash Attack
    elseif distance >= 15 then
        actChanceList[2] = 15 -- Leaping Strike
        actChanceList[4] = 30 -- Dash Attack
    elseif distance >= 10 then
        actChanceList[1] = 15 -- Headbutt Combo
        actChanceList[2] = 20 -- Leaping Strike
        actChanceList[3] = 20 -- Slam Combo
        actChanceList[7] = 15 -- Slam Rampage
    elseif distance >= 5 then
        actChanceList[1] = 30 -- Headbutt Combo
        actChanceList[7] = 30 -- Slam Rampage
        actChanceList[11] = 20 -- Headbutt Combo 2
    else
        actChanceList[4] = 20 -- Dash Attack
        actChanceList[7] = 35 -- Slam Rampage
        actChanceList[11] = 45 -- Headbutt Combo 2
    end
    
    ----------------------------------
    -- Act Cooldowns
    ----------------------------------
    actChanceList[4] = SetCoolTime(ai, goal, 3005, 8, actChanceList[4], 1) -- Dash Attack
    actChanceList[5] = SetCoolTime(ai, goal, 3007, 15, actChanceList[5], 1) -- Tail Spin
    actChanceList[6] = SetCoolTime(ai, goal, 3008, 30, actChanceList[6], 1) -- Spinning Slam
    
    ----------------------------------
    -- Acts
    ----------------------------------
    actFuncList[1] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act01) -- Headbutt Combo
    actFuncList[2] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act02) -- Leaping Strike
    actFuncList[3] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act03) -- Slam Combo
    actFuncList[4] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act04) -- Dash Attack
    actFuncList[5] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act05) -- Tail Spin
    actFuncList[6] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act06) -- Spinning Slam
    actFuncList[7] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act07) -- Slam Rampage
    actFuncList[11] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act11) -- Headbutt Combo 2
    actFuncList[20] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act20) -- Turn
    actFuncList[21] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act21) -- Sidestep
    actFuncList[23] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act23) -- Backstep
    actFuncList[24] = REGIST_FUNC(ai, goal, TitaniteAbomination_Act24) -- Double Backstep
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, TitaniteAbomination_ActAfter_AdjustSpace), actTblList)
    return
end

-------------------------
-- Functions
-------------------------
-- Headbutt Combo
function TitaniteAbomination_Act01(self, ai, goal)
    local anim_right_headbutt = 3000
    local anim_left_headbutt = 3001
    local anim_swipe_and_headbutt = 3004
   
    local max_attack_distance_a = 10 - self:GetMapHitRadius(TARGET_SELF)
    local max_attack_distance_b = 11 - self:GetMapHitRadius(TARGET_SELF) + 10
    local max_attack_distance_c = 11.6 - self:GetMapHitRadius(TARGET_SELF) + 10

    local roll_a = self:GetRandam_Int(1, 100)
   
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   
    if roll_a <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_right_headbutt, TARGET_ENE_0, max_attack_distance_a, 0, 0)
    elseif roll_a <= 80 then
        self:SetNumber(0, 1)
        
        local subgoal = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_right_headbutt, TARGET_ENE_0, max_attack_distance_b, 0, 0)
        subgoal = subgoal:TimingSetTimer(0, 0, UPDATE_SUCCESS)
        subgoal:SetLifeEndSuccess(true)

        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_left_headbutt, TARGET_ENE_0, max_attack_distance_a)
    else
        self:SetNumber(0, 1)
        
        local subgoal = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_right_headbutt, TARGET_ENE_0, max_attack_distance_c, 0, 0)
        subgoal = subgoal:TimingSetTimer(0, 0, UPDATE_SUCCESS)
        subgoal:SetLifeEndSuccess(true)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_swipe_and_headbutt, TARGET_ENE_0, max_attack_distance_a)
    end

    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Leaping Strike
function TitaniteAbomination_Act02(self, ai, goal)
    local anim_leaping_strike = 3002
    local max_attack_distance = 10 - self:GetMapHitRadius(TARGET_SELF)

    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_leaping_strike, TARGET_ENE_0, max_attack_distance, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Slam Combo
function TitaniteAbomination_Act03(self, ai, goal)
    local anim_right_slam = 3003
    local anim_left_headbutt = 3001
    local anim_swipe_and_headbutt = 3004
    
    local max_attack_distance_a = 10 - self:GetMapHitRadius(TARGET_SELF)
    local max_attack_distance_b = 11 - self:GetMapHitRadius(TARGET_SELF) + 10
    local max_attack_distance_c = 11.6 - self:GetMapHitRadius(TARGET_SELF) + 10

    local roll_a = self:GetRandam_Int(1, 100)
   
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   
    if roll_a <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_right_slam, TARGET_ENE_0, max_attack_distance_a, 0, 0)
    elseif roll_a <= 80 then
        self:SetNumber(0, 1)
        
        local subgoal = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_right_slam, TARGET_ENE_0, max_attack_distance_b, 0, 0)
        subgoal = subgoal:TimingSetTimer(0, 0, UPDATE_SUCCESS)
        subgoal:SetLifeEndSuccess(true)

        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_left_headbutt, TARGET_ENE_0, max_attack_distance_a)
    else
        self:SetNumber(0, 1)
        
        local subgoal = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_right_slam, TARGET_ENE_0, max_attack_distance_c, 0, 0)
        subgoal = subgoal:TimingSetTimer(0, 0, UPDATE_SUCCESS)
        subgoal:SetLifeEndSuccess(true)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_swipe_and_headbutt, TARGET_ENE_0, max_attack_distance_a)
    end
   
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Dash Attack
function TitaniteAbomination_Act04(self, ai, goal)
    local max_attack_distance_a = 23.5 - self:GetMapHitRadius(TARGET_SELF)
    local anim_dash_headbutt = 3005
    
    -- Approach
    Approach_Act_Flex(self, ai, max_attack_distance_a, -999, -998, 0, 0, 5, 5)

    local max_attack_distance_b = 10 - self:GetMapHitRadius(TARGET_SELF)

    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_dash_headbutt, TARGET_ENE_0, max_attack_distance_b, 1.5, 45)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Tail Spin
function TitaniteAbomination_Act05(self, ai, goal)
    local anim_tail_spin = 3007
    local max_attack_distance = 10 - self:GetMapHitRadius(TARGET_SELF)

    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_tail_spin, TARGET_ENE_0, max_attack_distance, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Spinning Slam
function TitaniteAbomination_Act06(self, ai, goal)
    local anim_spinning_slam = 3008
    local max_attack_distance = 10 - self:GetMapHitRadius(TARGET_SELF)

    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_spinning_slam, TARGET_ENE_0, max_attack_distance, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Slam Rampage
function TitaniteAbomination_Act07(self, ai, goal)
    local anim_slam_rampage = 3009
    local max_attack_distance = 10 - self:GetMapHitRadius(TARGET_SELF)

    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_slam_rampage, TARGET_ENE_0, max_attack_distance, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Headbutt Combo 2
function TitaniteAbomination_Act11(self, ai, goal)
    local anim_left_headbutt = 3001
    local anim_swipe_and_headbutt = 3004

    local max_attack_distance_a = 10 - self:GetMapHitRadius(TARGET_SELF)
    local max_attack_distance_b = 11 - self:GetMapHitRadius(TARGET_SELF) + 10
    local max_attack_distance_c = 11.6 - self:GetMapHitRadius(TARGET_SELF) + 10

    local roll_a = self:GetRandam_Int(1, 100)
   
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   
    if roll_a <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_swipe_and_headbutt, TARGET_ENE_0, max_attack_distance_a, 0, 0)
    elseif roll_a <= 70 then
        self:SetNumber(0, 1)
        
        local subgoal = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_swipe_and_headbutt, TARGET_ENE_0, max_attack_distance_b, 0, 0)
        subgoal = subgoal:TimingSetTimer(0, 0, UPDATE_SUCCESS)
        subgoal:SetLifeEndSuccess(true)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_left_headbutt, TARGET_ENE_0, max_attack_distance_a)
   else
        self:SetNumber(0, 1)
      
        local subgoal = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_swipe_and_headbutt, TARGET_ENE_0, max_attack_distance_b, 0, 0)
        subgoal = subgoal:TimingSetTimer(0, 0, UPDATE_SUCCESS)
        subgoal:SetLifeEndSuccess(true)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_swipe_and_headbutt, TARGET_ENE_0, max_attack_distance_a)
   end
   
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn
function TitaniteAbomination_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
   
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Sidestep
function TitaniteAbomination_Act21(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_ApproachTarget, self:GetRandam_Float(3, 4), TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, self:GetRadam_Int(6002, 6003), TARGET_ENE_0, 0, self_DIR_TYPE_B, self:GetStringIndexedNumber("Dist_SideStep"))
   
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Backstep
function TitaniteAbomination_Act23(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, self_DIR_TYPE_B, self:GetStringIndexedNumber("Dist_BackStep"))
   
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Double Backstep
function TitaniteAbomination_Act24(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, self_DIR_TYPE_B, self:GetStringIndexedNumber("Dist_BackStep"))
    ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, self_DIR_TYPE_B, self:GetStringIndexedNumber("Dist_BackStep"))
   
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function TitaniteAbomination_ActAfter_AdjustSpace(self, ai, goal)
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
   if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptType(0) == 5025 and ai:GetNumber(0) == 0 then
      ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
      return TitaniteAbomination_ExAttack(ai, goal)
   end
   
   return false
end

-------------------------
-- Ex Attack
-------------------------
function TitaniteAbomination_ExAttack(self, ai, goal)
    local roll_a = self:GetRandam_Int(1, 100)
    local roll_b = self:GetRandam_Int(1, 100)
    
    local anim_dash_headbutt = 3005
  
    if InsideRange(self, ai, 180, 270, -99, 10) then
        if roll_a <= 100 then
            ai:ClearSubGoal()
            
            if roll_b <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_dash_headbutt, TARGET_ENE_0, 10 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            
            return true
        end
    elseif InsideRange(self, ai, 0, 90, -99, 10) then
        if roll_a <= 80 then
            ai:ClearSubGoal()
            
            if roll_b <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_dash_headbutt, TARGET_ENE_0, 10 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            
            return true
        end
    elseif InsideRange(self, ai, 0, 180, 10, 18) then
        if roll_a <= 80 then
            ai:ClearSubGoal()
            
            if roll_b <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_dash_headbutt, TARGET_ENE_0, 10 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            
            return true
        end
    else
        return false
    end
    
    return false
end

