RegisterTableGoal(GOAL_NPC_Ava, "GOAL_NPC_Ava")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Ava, true)

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
    
    ai:SetStringIndexedNumber("Dist_Rolling", 2.0)      -- Distance to roll at
    ai:SetStringIndexedNumber("Dist_BackStep", 1.0)     -- Distance to backstep at
    ai:SetStringIndexedNumber("AddDistWalk", 0)
    ai:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local roll      = ai:GetRandam_Int(1, 100)
    local distance  = ai:GetDist(TARGET_ENE_0)
    local stamina   = ai:GetSp(TARGET_SELF)
    local hp_rate   = ai:GetHpRate(TARGET_SELF)
    
    local speffect_no_invalid_item = ai:HasSpecialEffectId(TARGET_SELF, 5111)
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if distance >= 8 then
        actChanceList[1] = 15 -- Right Bow Shoot
        actChanceList[2] = 10 -- WA: Pharis Triple-shot
        
        actChanceList[10] = 0 -- Backstep Roll
        actChanceList[11] = 0 -- Forward Roll 
        actChanceList[12] = 0 -- Side Roll
        actChanceList[13] = 0 -- Back Roll
        actChanceList[14] = 5 -- Strafe
        actChanceList[15] = 0 -- Backstep Walk + Shoot
        
        actChanceList[20] = 3 -- Use Item (Slot 0) - Brightbug
    elseif distance >= 4 then
        actChanceList[1] = 15 -- Right Bow Shoot
        actChanceList[2] = 10 -- WA: Pharis Triple-shot
        
        actChanceList[10] = 0 -- Backstep Roll
        actChanceList[11] = 0 -- Forward Roll 
        actChanceList[12] = 10 -- Side Roll
        actChanceList[13] = 10 -- Back Roll
        actChanceList[14] = 5 -- Strafe
        actChanceList[15] = 5 -- Backstep Walk + Shoot
        
        actChanceList[20] = 3 -- Use Item (Slot 0) - Brightbug
    else
        actChanceList[1] = 5 -- Right Bow Shoot
        actChanceList[2] = 5 -- WA: Pharis Triple-shot
        
        actChanceList[10] = 20 -- Backstep Roll
        actChanceList[11] = 0 -- Forward Roll 
        actChanceList[12] = 10 -- Side Roll
        actChanceList[13] = 15 -- Back Roll
        actChanceList[14] = 5 -- Strafe
        actChanceList[15] = 15 -- Backstep Walk + Shoot
        
        actChanceList[20] = 3 -- Use Item (Slot 0) - Brightbug
    end
    
    ----------------------------------
    -- Act Modifiers
    ----------------------------------
    -- Invalid Item check
    if speffect_no_invalid_item then
        actChanceList[20] = 0       -- Use Item (Slot 0) - Brightbug
    end
    
    -- Block repeat usage of Brightbug while active
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 160700020)
    
    if ai:HasSpecialEffectId(TARGET_SELF, 160700020) then
        actChanceList[20] = 0 -- Use Item (Slot 0) - Brightbug
    end
    
    -- Block WA if stamina when low on stamina
    if stamina < 40 then
        actChanceList[2] = 0 -- WA: Pharis Triple-shot
    end

    ----------------------------------
    -- Movement Checks
    ----------------------------------
    -- Block backstep if there is an obstacle behind the AI within 2.6 meters
    if SpaceCheck(ai, goal, 180, ai:GetStringIndexedNumber("Dist_BackStep")) == false then
        actChanceList[10] = 0 -- Backstep Roll
    end
    
    -- Block forward roll if there is an obstacle +/- 45 degrees in front the AI within 4.4 meters
    if SpaceCheck(ai, goal, -45, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 45, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[11] = 0 -- Forward Roll 
    end
    
    -- Block side roll if there is an obstacle +/- 90 degrees to the side of the AI within 4.4 meters
    if SpaceCheck(ai, goal, -90, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 90, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[12] = 0 -- Side Roll
    end
    
    -- Block back roll if there is an obstacle +/- 135 degrees to the side of the AI within 4.4 meters
    if SpaceCheck(ai, goal, -135, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 135, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[13] = 0 -- Back Roll
    end
    
    -- Block back roll if there is an obstacle behind the AI within 4.4 meters
    if SpaceCheck(ai, goal, 180, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[13] = 0 -- Back Roll
    end

    -- Block Backstep Walk + Shoot if there is an obstacle behind the AI within 1 meters
    if SpaceCheck(ai, goal, 180, 1) == false then
        actChanceList[15] = 0 -- Backstep Walk + Shoot
    end
    
    -- Block strafe if there is an obstacle +/- 90 degrees to the side of the AI within 1 meters
    if SpaceCheck(ai, goal, -90, 1) == false and SpaceCheck(ai, goal, 90, 1) == false then
        actChanceList[14] = 0 -- Strafe
    end
    
    ----------------------------------
    -- Acts
    ----------------------------------
    -- Attacks
    actFuncList[1] = REGIST_FUNC(ai, goal, NPC_Ava_Act01) -- Right Bow Shoot
    actFuncList[2] = REGIST_FUNC(ai, goal, NPC_Ava_Act02) -- WA: Pharis Triple-shot
    
    -- Utility
    actFuncList[10] = REGIST_FUNC(ai, goal, NPC_Ava_Act10) -- Backstep Roll
    actFuncList[11] = REGIST_FUNC(ai, goal, NPC_Ava_Act11) -- Forward Roll 
    actFuncList[12] = REGIST_FUNC(ai, goal, NPC_Ava_Act12) -- Side Roll
    actFuncList[13] = REGIST_FUNC(ai, goal, NPC_Ava_Act13) -- Back Roll
    actFuncList[14] = REGIST_FUNC(ai, goal, NPC_Ava_Act14) -- Strafe
    actFuncList[15] = REGIST_FUNC(ai, goal, NPC_Ava_Act15) -- Backstep Walk + Shoot
    
    -- Items
    actFuncList[20] = REGIST_FUNC(ai, goal, NPC_Ava_Act20)   -- Use Item (Slot 0) - Brightbug
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, NPC_Ava_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
-- Right Bow Shoot
function NPC_Ava_Act01(self, ai, goal)
    local distance  = self:GetDist(TARGET_ENE_0)
    local stamina   = self:GetSp(TARGET_SELF)
    
    -- Force 2H Mode
    if not self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
    end

    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0) -- Right Bow Shoot
    
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.5, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(75, 90), false, true, -1)
    
    -- Needed to make the AI actually shoot, since the bow shot is done on the release of R1
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0) -- Right Bow Shoot
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- WA: Pharis Triple-shot
function NPC_Ava_Act02(self, ai, goal)
    local distance  = self:GetDist(TARGET_ENE_0)
    local stamina   = self:GetSp(TARGET_SELF)
    
    local max_attack_distance = 100.0
    
    -- Force 2H Mode
    if not self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
    end

    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_L2, TARGET_ENE_0, max_attack_distance, 0, 0) -- Right Bow Shoot
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Backstep Roll
function NPC_Ava_Act10(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    -- Skip if already distant from the target
    if distance >= 10.0 then
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
    if SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_BackStep")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Roll
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Forward Roll + Run + Basic Light Attack
function NPC_Ava_Act11(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
    -- Skip if already next to the target
    if distance <= 1.0 then
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
    if distance >= 5 and SpaceCheck(self, ai, 0, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 3.0, 0, 0) -- Forward Roll
    end

    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Side Roll + Run + Basic Light Attack
function NPC_Ava_Act12(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    
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

    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Back Roll + Basic Light Attack
function NPC_Ava_Act13(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    local retreat_distance = 3.0
    
    -- Skip if already distant from the target
    if distance >= 10.0 then
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
    if distance >= 1 then
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
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Strafe
function NPC_Ava_Act14(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    local duration = 1.8
    local run_start_distance = 5.0
    local animation = -1
    
    -- Change to no guard if stamina is low
    if stamina <= 30 then
        animation = -1
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
    
    if distance >= run_start_distance then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, duration, TARGET_ENE_0, direction, self:GetRandam_Int(75, 90), false, true, animation) -- Guard with Left Weapon
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, duration, TARGET_ENE_0, direction, self:GetRandam_Int(75, 90), true, true, animation)  -- Guard with Left Weapon
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Backstep
function NPC_Ava_Act15(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local duration = 1.8
    local backstep_start_distance = 5.0
    local run_start_distance = 6.0
    local animation = -1
    
    if distance >= run_start_distance then
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, duration, TARGET_ENE_0, backstep_start_distance, TARGET_ENE_0, false, animation) -- Backstep
    else
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, duration, TARGET_ENE_0, backstep_start_distance, TARGET_ENE_0, true, animation) -- Backstep
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Use Item (Slot 0) - Brightbug
function NPC_Ava_Act20(self, ai, goal)
    self:ChangeEquipItem(0) 
    self:SetStringIndexedNumber("Brightbug", self:GetStringIndexedNumber("Brightbug") - 1)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function NPC_Ava_ActAfter_AdjustSpace(self, ai, goal)
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
    local stamina   = ai:GetSp(TARGET_SELF)
    local distance  = ai:GetDist(TARGET_ENE_0)
    local roll      = ai:GetRandam_Int(1, 100)
    
     -- Occurs if the player has been guard broken
    if ai:IsInterupt(INTERUPT_GuardBreak) and distance < 3 then
        goal:ClearSubGoal()
        
        local subgoal = goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        subgoal:SetLifeEndSuccess(true)
        
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1) -- Right Bow Shoot
        
        return true
    -- Occurs when the AI looks for an attack
    elseif ai:IsInterupt(INTERUPT_FindAttack) then
        if distance < 1.8 and roll <= 80 then
            if roll <= 60 and 30 <= stamina then
                goal:ClearSubGoal()
                NPC_Ava_Act15(ai, goal, paramTbl) -- Strafe
                return true
            elseif stamina <= 35 and 0 <= stamina then
                goal:ClearSubGoal()
                NPC_Ava_Act14(ai, goal, paramTbl) -- Back Roll
                return true
            end
        end
    elseif ai:IsInterupt(INTERUPT_Damaged) then
        goal:ClearSubGoal()
        NPC_Ava_Act13(ai, goal) -- Side Roll
        return true
    -- Occurs if a ranged attack occurs
    elseif ai:IsInterupt(INTERUPT_Shoot) and roll <= 33 and 20 <= stamina then
        goal:ClearSubGoal()
        NPC_Ava_Act14(ai, goal) -- Back Roll
        return true
    else
        return false
    end
end

-------------------------
-- End
-------------------------
return 
