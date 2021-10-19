RegisterTableGoal(GOAL_NPC_Pursuer, "GOAL_NPC_Pursuer")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Pursuer, true)

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
    
    ai:SetStringIndexedNumber("Dist_Rolling", 4.4)      -- Distance to roll at
    ai:SetStringIndexedNumber("Dist_BackStep", 2.6)     -- Distance to backstep at
    ai:SetStringIndexedNumber("AddDistWalk", 0)
    ai:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local roll      = ai:GetRandam_Int(1, 100)
    local distance  = ai:GetDist(TARGET_ENE_0)
    local stamina   = ai:GetSp(TARGET_SELF)
    local number    = ai:GetNumber(0)
    local hp_rate   = ai:GetHpRate(TARGET_SELF)
    
    local speffect_no_invalid_item = ai:HasSpecialEffectId(TARGET_SELF, 5111)

    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if distance >= 2 then
        actChanceList[1] = 10 -- Right Light Attack + Approach
        actChanceList[2] = 10 -- Right Heavy Attack + Approach
        actChanceList[3] = 0 -- Kick + Approach
        actChanceList[4] = 10 -- Jump Attack + Approach
        actChanceList[5] = 0 -- WA: Stomp
        
        actChanceList[10] = 10 -- Approach + Running Attack
        actChanceList[11] = 0 -- Backstep Roll
        actChanceList[12] = 0 -- Forward Roll + Run + Basic Light Attack
        actChanceList[13] = 0 -- Side Roll + Run + Basic Light Attack
        actChanceList[14] = 0 -- Back Roll + Basic Light Attack
        actChanceList[15] = 0 -- Strafe
        actChanceList[16] = 0 -- Backstep Walk
        actChanceList[17] = 10 -- Approach
        
        actChanceList[20] = 0 -- Use Item (Slot 0) - Firebomb
    else
        actChanceList[1] = 20 -- Right Light Attack + Approach
        actChanceList[2] = 20 -- Right Heavy Attack + Approach
        actChanceList[3] = 20 -- Kick + Approach
        actChanceList[4] = 5 -- Jump Attack + Approach
        actChanceList[5] = 20 -- WA: Stomp
        
        actChanceList[10] = 0 -- Approach + Running Attack
        actChanceList[11] = 0 -- Backstep Roll
        actChanceList[12] = 10 -- Forward Roll + Run + Basic Light Attack
        actChanceList[13] = 10 -- Side Roll + Run + Basic Light Attack
        actChanceList[14] = 10 -- Back Roll + Basic Light Attack
        actChanceList[15] = 10 -- Strafe
        actChanceList[16] = 0 -- Backstep Walk
        actChanceList[17] = 0 -- Approach
        
        actChanceList[20] = 0 -- Use Item (Slot 0) - Firebomb
    end
    
    ----------------------------------
    -- Act Modifiers
    ----------------------------------
    if ai:IsTargetGuard(TARGET_ENE_0) and distance <= 2 then
        actChanceList[5] = actChanceList[5] + 50 -- WA: Stomp
    end
    
    -- Kick the player if near the elevator
    if ai:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3002740) == true and distance <= 2.0 then
        actChanceList[1] = 0 -- Right Light Attack + Approach
        actChanceList[2] = 0 -- Right Heavy Attack + Approach
        actChanceList[3] = 100 -- Kick + Approach
        actChanceList[4] = 0 -- Jump Attack + Approach
        actChanceList[5] = 0 -- WA: Stomp
        
        actChanceList[10] = 0 -- Approach + Running Attack
        actChanceList[11] = 0 -- Backstep Roll
        actChanceList[12] = 0 -- Forward Roll + Run + Basic Light Attack
        actChanceList[13] = 0 -- Side Roll + Run + Basic Light Attack
        actChanceList[14] = 0 -- Back Roll + Basic Light Attack
        actChanceList[15] = 0 -- Strafe
        actChanceList[16] = 0 -- Backstep Walk
        actChanceList[17] = 0 -- Approach
    end
    
    ----------------------------------
    -- Act Checks
    ----------------------------------
    -- Invalid Item check
    if speffect_no_invalid_item then
        actChanceList[20] = 0       -- Use Item (Slot 0) - Firebomb
    end
    
    -- Block backstep if there is an obstacle behind the AI within 2.6 meters
    if SpaceCheck(ai, goal, 180, ai:GetStringIndexedNumber("Dist_BackStep")) == false then
        actChanceList[11] = 0 -- Backstep Roll
    end
    
    -- Block forward roll if there is an obstacle +/- 45 degrees in front the AI within 4.4 meters
    if SpaceCheck(ai, goal, -45, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 45, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[12] = 0 -- Forward Roll + Run + Basic Light Attack
    end
    
    -- Block side roll if there is an obstacle +/- 90 degrees to the side of the AI within 4.4 meters
    if SpaceCheck(ai, goal, -90, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 90, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[13] = 0 -- Side Roll + Run + Basic Light Attack
    end
    
    -- Block back roll if there is an obstacle +/- 135 degrees to the side of the AI within 4.4 meters
    if SpaceCheck(ai, goal, -135, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 135, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[14] = 0 -- Back Roll + Basic Light Attack
    end
    
    -- Block back roll if there is an obstacle behind the AI within 4.4 meters
    if SpaceCheck(ai, goal, 180, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[14] = 0 -- Back Roll + Basic Light Attack
    end

    -- Block backstep walk if there is an obstacle behind the AI within 1 meters
    if SpaceCheck(ai, goal, 180, 1) == false then
        actChanceList[16] = 0 -- Backstep Walk
    end
    
    -- Block strafe if there is an obstacle +/- 90 degrees to the side of the AI within 1 meters
    if SpaceCheck(ai, goal, -90, 1) == false and SpaceCheck(ai, goal, 90, 1) == false then
        actChanceList[15] = 0 -- Strafe
    end
    
    -- Block dash and rolls when low on stamina
    if stamina < 20 then
        actChanceList[10] = 0   -- Approach + Running Attack
        actChanceList[11] = 0   -- Backstep Roll
        actChanceList[12] = 0   -- Forward Roll + Run + Basic Light Attack
        actChanceList[13] = 0   -- Side Roll + Run + Basic Light Attack
        actChanceList[14] = 0   -- Back Roll + Basic Light Attack
    end
    
    ----------------------------------
    -- Acts
    ----------------------------------
    -- Attacks
    actFuncList[1] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act01)    -- Right Light Attack + Approach
    actFuncList[2] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act02)    -- Right Heavy Attack + Approach
    actFuncList[3] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act03)    -- Kick + Approach
    actFuncList[4] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act04)    -- Jump Attack + Approach
    actFuncList[5] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act05)    -- WA: Stomp
    
    -- Utility
    actFuncList[10] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act10)   -- Approach + Running Attack
    actFuncList[11] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act11)   -- Backstep Roll
    actFuncList[12] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act12)   -- Forward Roll + Run + Basic Light Attack
    actFuncList[13] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act13)   -- Side Roll + Run + Basic Light Attack
    actFuncList[14] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act14)   -- Back Roll + Basic Light Attack
    actFuncList[15] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act15)   -- Strafe
    actFuncList[16] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act16)   -- Backstep Walk
    actFuncList[17] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act17)   -- Approach
    
    -- Items
    actFuncList[20] = REGIST_FUNC(ai, goal, NPC_Pursuer_Act20)   -- Use Item (Slot 0) - Firebomb

    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, NPC_Pursuer_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
-- Right Light Attack + Approach
function NPC_Pursuer_Act01(self, ai, goal)
    local roll_a    = self:GetRandam_Int(1, 100)
    local distance  = self:GetDist(TARGET_ENE_0)
    local stamina   = self:GetSp(TARGET_SELF)
    
    local max_attack_distance = 2.1
    local roll_b   = 100
    
    if self:IsBothHandMode(TARGET_SELF) then
        max_attack_distance = 2.1
        roll_b = 0
    end
    
    if self:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    if 1 <= distance then
        if not self:IsBothHandMode(TARGET_SELF) then
            local roll_c = 25
            
            if self:IsTargetGuard(TARGET_ENE_0) then
                roll_c = roll_c + 25
            end
            
            if roll_a <= roll_c then
                roll_b = 0
                max_attack_distance = 2.1
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
            end
        elseif self:IsBothHandMode(TARGET_SELF) then
            local roll_c = 50
            
            if self:IsTargetGuard(TARGET_ENE_0) then
                roll_c = roll_c - 25
            end
            
            if roll_a <= roll_c then
                roll_b = 100
                max_attack_distance = 2.1
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
            end
        end
    end
    
    if stamina < 60 then
        roll_b = 0
    end
    
    -- Approach
    NPC_Approach_Act_Flex(self, ai, max_attack_distance, max_attack_distance + 0, max_attack_distance + 2, 100, roll_b, 1.8, 2)
    
    if self:GetRandam_Int(1, 100) <= 50 and 0 < roll_b and max_attack_distance <= distance then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold) -- Move and Guard
        else
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold) -- Move and Guard
        end
    end
    
    if 120 <= stamina then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0) -- Right Light Attack + Approach
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0) -- Right Light Attack + Approach
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0) -- Right Light Attack + Approach
    elseif 60 <= stamina then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0) -- Right Light Attack + Approach
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0) -- Right Light Attack + Approach
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0) -- Right Light Attack + Approach
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Right Heavy Attack + Approach
function NPC_Pursuer_Act02(self, ai, goal)
    local roll_a = self:GetRandam_Int(1, 100)
    local roll_b = self:GetRandam_Int(1, 100)
    local distance = self:GetDist(TARGET_ENE_0)
    local stamina = self:GetSp(TARGET_SELF)
    local max_attack_distance = 2.2
    local roll_c = 100
    
    if self:IsBothHandMode(TARGET_SELF) then
        max_attack_distance = 2.2
        roll_c = 0
    end
    
    if self:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    if 1 <= distance then
        if not self:IsBothHandMode(TARGET_SELF) then
            local roll_d = 25
            
            if self:IsTargetGuard(TARGET_ENE_0) then
                roll_d = roll_d + 25
            end
            
            if roll_a <= roll_d then
                roll_c = 0
                max_attack_distance = 2.2
                
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
            end
        elseif self:IsBothHandMode(TARGET_SELF) then
            local roll_d = 50

            if self:IsTargetGuard(TARGET_ENE_0) then
                roll_d = roll_d - 25
            end
            
            if roll_a <= roll_d then
                roll_c = 100
                max_attack_distance = 2.2
                
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
            end
        end
    end
    
    if stamina < 60 then
        roll_c = 0
    end
    
    -- Approach
    NPC_Approach_Act_Flex(self, ai, max_attack_distance, max_attack_distance + 0, max_attack_distance + 2, 100, roll_c, 1.8, 2)
    
    if roll_b <= 50 and 0 < roll_c and max_attack_distance <= distance then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold) -- Move and Guard
        else
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold) -- Move and Guard
        end
    end
    
    if 60 <= stamina and 67 < roll_a then
        if roll_b <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, max_attack_distance, 0, 0) -- Right Heavy Attack + Approach
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0) -- Right Heavy Attack + Approach
        elseif roll_b <= 75 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, max_attack_distance, 0, 0) -- Right Heavy Attack + Approach
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0) -- Right Heavy Attack + Approach
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, max_attack_distance, 0, 0) -- Right Heavy Attack + Approach
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0) -- Right Heavy Attack + Approach
        end
    elseif roll_b <= 50 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, max_attack_distance, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, max_attack_distance, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Kick + Approach
function NPC_Pursuer_Act03(self, ai, goal)
    local roll_a = self:GetRandam_Int(1, 100)
    local roll_b = self:GetRandam_Int(1, 100)
    local distance = self:GetDist(TARGET_ENE_0)
    local max_attack_distance = 1.6
    local roll_c = 0
    
    if self:IsBothHandMode(TARGET_SELF) then
        max_attack_distance = 1.6
        roll_c = 0
    end
    
    if self:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    if self:GetSp(TARGET_SELF) < 50 then
        roll_c = 0
    end
    
    -- Approach
    NPC_Approach_Act_Flex(self, ai, max_attack_distance, max_attack_distance + 0, max_attack_distance + 2, 100, roll_c, 1.8, 2)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0) -- Kick
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Jump Attack + Approach
function NPC_Pursuer_Act04(self, ai, goal)
    local roll_a = self:GetRandam_Int(1, 100)
    local roll_b = self:GetRandam_Int(1, 100)
    local distance = self:GetDist(TARGET_ENE_0)
    local max_attack_distance = 4.8
    local roll_c = 100
    
    if self:IsBothHandMode(TARGET_SELF) then
        max_attack_distance = 5.6
        roll_c = 0
    end
    
    if self:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    if self:GetSp(TARGET_SELF) < 60 then
        roll_c = 0
    end
    
    -- Approach
    NPC_Approach_Act_Flex(self, ai, max_attack_distance, max_attack_distance + 0, max_attack_distance + 2, 100, roll_c, 1.8, 2)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0) -- Jump Attack + Approach
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- WA: Stomp
function NPC_Pursuer_Act05(self, ai, goal)
    local roll_a = self:GetRandam_Int(1, 100)
    local roll_b = self:GetRandam_Int(1, 100)
    local roll_c = self:GetRandam_Int(1, 100)
    local max_attack_distance = 2.6
    local distance = self:GetDist(TARGET_ENE_0)
    
    if not self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
    end
    
    -- Approach
    NPC_Approach_Act_Flex(self, ai, max_attack_distance, max_attack_distance + 0, max_attack_distance + 2, 100, 100, 1.8, 2)
    
    if roll_a >= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, max_attack_distance, 0, 0) -- WA Start
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0)  -- WA Right Light Attack + Approach
        
        -- Follow up: WA Right Light Attack + Approach
        if roll_b >= 25 then
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0)  -- WA Right Light Attack + Approach
        end
        
        -- Follow up: WA Right Light Attack + Approach
        if roll_c >= 25 then
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, max_attack_distance, 0, 0)  -- WA Right Light Attack + Approach
        end
    else
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, max_attack_distance, 0, 0) -- WA Start
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, max_attack_distance, 0, 0)  -- WA Right Heavy Attack + Approach
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Approach + Running Attack
function NPC_Pursuer_Act10(self, ai, goal)
    local roll_a = self:GetRandam_Int(1, 100)
    local roll_b = self:GetRandam_Int(1, 100)
    local max_attack_distance = 2.8
    local const_a = 4
    
    if self:IsBothHandMode(TARGET_SELF) then
        max_attack_distance = 3.2
        const_a = -1
    end
    
    if self:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0) -- Switch Weapon (Left)
    end
    
    if 1 <= self:GetDist(TARGET_ENE_0) then
        if not self:IsBothHandMode(TARGET_SELF) then
            local roll_c = 25
            if self:IsTargetGuard(TARGET_ENE_0) then
                roll_c = roll_c + 25
            end
            if roll_a <= roll_c then
                const_a = -1
                max_attack_distance = 3.2
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
            end
        elseif self:IsBothHandMode(TARGET_SELF) then
            local roll_c = 50
            if self:IsTargetGuard(TARGET_ENE_0) then
                roll_c = roll_c - 25
            end
            if roll_a <= roll_c then
                const_a = 4
                max_attack_distance = 2.8
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0) -- Toggle 2H state of Weapon
            end
        end
    end
    
    if self:GetSp(TARGET_SELF) < 60 then
        const_a = -1
    end
    
    if roll_a <= 50 then
        ai:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, max_attack_distance, TARGET_SELF, const_a)   -- Dash to Enemy
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)               -- Right Light Attack + Approach
    else
        ai:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, max_attack_distance, TARGET_SELF, const_a)   -- Dash to Enemy
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)               -- Right Heavy Attack + Approach
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Backstep Roll
function NPC_Pursuer_Act11(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
    local roll_a = self:GetRandam_Int(1, 100)
    
    if SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_BackStep")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Roll
    end
    
    if self:GetRandam_Int(1, 100) <= 80 and 60 < self:GetSp(TARGET_SELF) then
        local max_attack_distance = 2.8
        local spin_time = 0.8
        
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            max_attack_distance = 3.2
            spin_time = 1
        end
        
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, max_attack_distance, spin_time, 50) -- Roll Attack
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Forward Roll + Run + Basic Light Attack
function NPC_Pursuer_Act12(self, ai, goal)
    if 5 <= self:GetDist(TARGET_ENE_0) and SpaceCheck(self, ai, 0, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Forward Roll
    elseif SpaceCheck(self, ai, -45, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(self, ai, 45, self:GetStringIndexedNumber("Dist_Rolling")) == true then
            if self:GetRandam_Int(1, 100) <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Left Forward Roll
            else
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Right Forward Roll
            end
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Left Forward Roll
        end
    elseif SpaceCheck(self, ai, 45, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Right Forward Roll
    end
    
    if self:GetRandam_Int(1, 100) <= 100 and 60 < self:GetSp(TARGET_SELF) then
        local max_attack_distance = 5.8
        local spin_time = 5.4
        
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            max_attack_distance = 5.4
            spin_time = 4.6
        end
        
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, max_attack_distance, spin_time, 50) -- Roll Attack
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Side Roll + Run + Basic Light Attack
function NPC_Pursuer_Act13(self, ai, goal)
    local distance = self:GetDist(TARGET_ENE_0)
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
    
    if self:GetRandam_Int(1, 100) <= 100 and 60 < self:GetSp(TARGET_SELF) then
        local max_attack_distance = 5.8 - 2
        local spin_time = 5.4 - 2
        
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            max_attack_distance = 5.4 - 2
            spin_time = 4.6 - 2
        end
        
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, max_attack_distance, spin_time, R1Fate) -- Roll Attack
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Back Roll + Basic Light Attack
function NPC_Pursuer_Act14(self, ai, goal)
    if self:GetDist(TARGET_ENE_0) <= 1 and SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(self, ai, -135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(self, ai, 135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
            if self:GetRandam_Int(1, 100) <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Left Back Roll
            else
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Right Back Roll
            end
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Left Back Roll
        end
    elseif SpaceCheck(self, ai, 135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0) -- Right Back Roll
    end
    
    if self:GetRandam_Int(1, 100) <= 100 and 60 < self:GetSp(TARGET_SELF) then
        local max_attack_distance = 5.8 - 4
        local spin_time = 5.4 - 4
        
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            max_attack_distance = 5.4 - 4
            spin_time = 4.6 - 4
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, max_attack_distance, spin_time, 50) -- Roll Attack
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Strafe
function NPC_Pursuer_Act15(self, ai, goal)
    local roll_a = self:GetRandam_Int(1, 100)
    local stamina = self:GetSp(TARGET_SELF)
    local duration = 1.8
    local animation = NPC_ATK_L1Hold    -- Guard with Left Weapon
    
    if self:IsBothHandMode(TARGET_SELF) then
        if 40 <= stamina and roll_a <= 50 then
            animation = NPC_ATK_L1Hold
        end
    elseif self:GetEquipWeaponIndex(ARM_L) == WEP_Primary and 40 <= stamina and roll_a <= 100 then
        animation = NPC_ATK_L1Hold
    end
    
    local roll_b = 0
    
    if SpaceCheck(self, ai, -90, 1) == true then
        if SpaceCheck(self, ai, 90, 1) == true then
            if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                roll_b = 0
            else
                roll_b = 1
            end
        else
            roll_b = 0
        end
    elseif SpaceCheck(self, ai, 90, 1) == true then
        roll_b = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
    if self:GetDist(TARGET_ENE_0) < 5 then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, duration, TARGET_ENE_0, roll_b, self:GetRandam_Int(75, 90), false, true, animation) -- Guard with Left Weapon
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, duration, TARGET_ENE_0, roll_b, self:GetRandam_Int(75, 90), true, true, animation)  -- Guard with Left Weapon
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Backstep Walk
function NPC_Pursuer_Act16(self, ai, goal)
    local roll_a = self:GetRandam_Int(1, 100)
    local stamina = self:GetSp(TARGET_SELF)
    local duration = 1.8
    local max_attack_distance = 3.2
    
    if self:GetDist(TARGET_ENE_0) < 5 then
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, duration, TARGET_ENE_0, max_attack_distance, TARGET_ENE_0, false, NPC_ATK_L1Hold)    -- Backstep Walk
    else
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, duration, TARGET_ENE_0, max_attack_distance, TARGET_ENE_0, true, NPC_ATK_L1Hold)     -- Backstep Walk
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Approach
function NPC_Pursuer_Act17(self, ai, goal)
    local end_approach_distance = 1.0
    
    if self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, end_approach_distance, TARGET_SELF, false, -1)
    else
        ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, end_approach_distance, TARGET_SELF, false, NPC_ATK_L1Hold)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Use Item (Slot 0) - Firebomb
function NPC_Pursuer_Act20(self, ai, goal)
    self:ChangeEquipItem(0) 
    self:SetStringIndexedNumber("Firebomb", self:GetStringIndexedNumber("Firebomb") - 1)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function NPC_Pursuer_ActAfter_AdjustSpace(self, ai, goal)
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
    
    if ai:IsInterupt(INTERUPT_GuardBreak) and distance < 3 then
        goal:ClearSubGoal()
        
        local subgoal = goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        subgoal:SetLifeEndSuccess(true)
        
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1) -- Right Light Attack + Approach
        
        return true
    elseif ai:IsInterupt(INTERUPT_FindAttack) then
        goal:ClearSubGoal()
        NPC_Pursuer_Act15(ai, goal, paramTbl) -- Strafe
    end
    if ai:IsInterupt(INTERUPT_Shoot) and roll <= 33 and 20 <= stamina then
        goal:ClearSubGoal()
        NPC_Pursuer_Act13(ai, goal) -- Side Roll + Run + Basic Light Attack
        return true
    else
        return false
    end
end

-------------------------
-- End
-------------------------
return 
