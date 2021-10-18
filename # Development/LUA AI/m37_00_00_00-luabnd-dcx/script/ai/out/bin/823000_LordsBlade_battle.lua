RegisterTableGoal(GOAL_LordsBlade_823000_Battle, "GOAL_LordsBlade_823000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LordsBlade_823000_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    -- Setup limiters
    ai:SetTimer(1, 10)
    ai:SetTimer(2, 5)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 5) -- Distance to sidestep at
    ai:SetStringIndexedNumber("Dist_BackStep", 5) -- Distance to backstep at
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local event_request = ai:GetEventRequest()
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    
    -- Player is behind
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if distance < 5 then
            actChanceList[8] = 70 -- Wide Slash
            actChanceList[20] = 30 -- Turn
        else
            actChanceList[20] = 100 -- Turn
        end
    elseif distance >= 8 then
        actChanceList[1] = 0 -- Basic Slash
        actChanceList[2] = 0 -- Slash Combo
        actChanceList[3] = 0 -- Vertical Slash Combo
        actChanceList[4] = 0 -- Dual Slash
        actChanceList[5] = 30 -- Running Dual Slash
        actChanceList[6] = 10 -- Heavy Downwards Dual Slash
        actChanceList[7] = 10 -- Dual Stab + Dual Slash
        actChanceList[8] = 0 -- Wide Slash
        actChanceList[9] = 0 -- Spinning Slash
        actChanceList[10] = 0 -- Dark Orb
        actChanceList[11] = 20 -- Strafe
        actChanceList[21] = 0 -- Quickstep
    elseif distance >= 6 then
        actChanceList[1] = 0 -- Basic Slash
        actChanceList[2] = 0 -- Slash Combo
        actChanceList[3] = 0 -- Vertical Slash Combo
        actChanceList[4] = 0 -- Dual Slash
        actChanceList[5] = 20 -- Running Dual Slash
        actChanceList[6] = 20 -- Heavy Downwards Dual Slash
        actChanceList[7] = 10 -- Dual Stab + Dual Slash
        actChanceList[8] = 0 -- Wide Slash
        actChanceList[9] = 10 -- Spinning Slash
        actChanceList[10] = 20 -- Dark Orb
        actChanceList[11] = 0 -- Strafe
        actChanceList[21] = 0 -- Quickstep
    elseif distance >= 4 then
        actChanceList[1] = 0 -- Basic Slash
        actChanceList[2] = 10 -- Slash Combo
        actChanceList[3] = 10 -- Vertical Slash Combo
        actChanceList[4] = 20 -- Dual Slash
        actChanceList[5] = 0 -- Running Dual Slash
        actChanceList[6] = 10 -- Heavy Downwards Dual Slash
        actChanceList[7] = 10 -- Dual Stab + Dual Slash
        actChanceList[8] = 0 -- Wide Slash
        actChanceList[9] = 0 -- Spinning Slash
        actChanceList[10] = 10 -- Dark Orb
        actChanceList[11] = 30 -- Strafe
        actChanceList[21] = 0 -- Quickstep
    elseif distance >= 1 then
        actChanceList[1] = 0 -- Basic Slash
        actChanceList[2] = 30 -- Slash Combo
        actChanceList[3] = 20 -- Vertical Slash Combo
        actChanceList[4] = 10 -- Dual Slash
        actChanceList[5] = 0 -- Running Dual Slash
        actChanceList[6] = 0 -- Heavy Downwards Dual Slash
        actChanceList[7] = 0 -- Dual Stab + Dual Slash
        actChanceList[8] = 0 -- Wide Slash
        actChanceList[9] = 10 -- Spinning Slash
        actChanceList[10] = 0 -- Dark Orb
        actChanceList[11] = 30 -- Strafe
        actChanceList[21] = 0 -- Quickstep
    else
        actChanceList[1] = 0 -- Basic Slash
        actChanceList[2] = 20 -- Slash Combo
        actChanceList[3] = 20 -- Vertical Slash Combo
        actChanceList[4] = 10 -- Dual Slash
        actChanceList[5] = 0 -- Running Dual Slash
        actChanceList[6] = 0 -- Heavy Downwards Dual Slash
        actChanceList[7] = 0 -- Dual Stab + Dual Slash
        actChanceList[8] = 0 -- Wide Slash
        actChanceList[9] = 10 -- Spinning Slash
        actChanceList[10] = 0 -- Dark Orb
        actChanceList[11] = 40 -- Strafe
        actChanceList[21] = 0 -- Quickstep
    end
    
    ----------------------------------
    -- Cooldowns
    ----------------------------------
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 50, actChanceList[1], 0) -- Basic Slash
    actChanceList[2] = SetCoolTime(ai, goal, 3002, 0, actChanceList[2], 1) -- Slash Combo
    actChanceList[3] = SetCoolTime(ai, goal, 3005, 0, actChanceList[3], 1) -- Vertical Slash Combo
    actChanceList[4] = SetCoolTime(ai, goal, 3008, 10, actChanceList[4], 1) -- Dual Slash
    actChanceList[5] = SetCoolTime(ai, goal, 3009, 10, actChanceList[5], 1) -- Running Dual Slash
    actChanceList[6] = SetCoolTime(ai, goal, 3010, 4, actChanceList[6], 1) -- Heavy Downwards Dual Slash
    actChanceList[7] = SetCoolTime(ai, goal, 3013, 4, actChanceList[7], 1) -- Dual Stab + Dual Slash
    actChanceList[8] = SetCoolTime(ai, goal, 3014, 8, actChanceList[8], 1) -- Wide Slash
    actChanceList[8] = SetCoolTime(ai, goal, 3015, 8, actChanceList[8], 1)  -- Wide Slash
    actChanceList[9] = SetCoolTime(ai, goal, 3017, 15, actChanceList[9], 1) -- Spinning Slash
    actChanceList[10] = SetCoolTime(ai, goal, 3020, 10, actChanceList[10], 1) -- Dark Orb
    actChanceList[21] = SetCoolTime(ai, goal, 6002, 8, actChanceList[21], 1) -- Quickstep
    actChanceList[21] = SetCoolTime(ai, goal, 6003, 8, actChanceList[21], 1) -- Quickstep
    actChanceList[22] = SetCoolTime(ai, goal, 6001, 5, actChanceList[22], 1) -- Backstep
    
    ----------------------------------
    -- Act Modifiers
    ----------------------------------
    if ai:IsFinishTimer(2) == false then
        actChanceList[11] = 0
    end
    
     ----------------------------------
    -- Acts
    ----------------------------------
    actFuncList[1] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act01) -- Basic Slash
    actFuncList[2] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act02) -- Slash Combo
    actFuncList[3] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act03) -- Vertical Slash Combo
    actFuncList[4] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act04) -- Dual Slash
    actFuncList[5] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act05) -- Running Dual Slash
    actFuncList[6] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act06) -- Heavy Downwards Dual Slash
    actFuncList[7] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act07) -- Dual Stab + Dual Slash
    actFuncList[8] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act08) -- Wide Slash
    actFuncList[9] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act09) -- Spinning Slash
    actFuncList[10] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act10) -- Dark Orb
    actFuncList[11] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act11) -- Strafe
    actFuncList[20] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act20) -- Turn
    actFuncList[21] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act21) -- Quickstep
    actFuncList[22] = REGIST_FUNC(ai, goal, Boss_LordsBlade_Act22) -- Backstep
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, Boss_LordsBlade_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
-- Basic Slash
function Boss_LordsBlade_Act01(self, ai, goal)
    local anim_right_slash = 3000 -- Right Slash
    local anim_left_slash = 3001 -- Left Slash
    local max_attack_distance = 4 - self:GetMapHitRadius(TARGET_SELF)
    local distance = self:GetDist(TARGET_ENE_0)
    
    -- Player is close
    if distance < 4 then
        -- Player is to the right
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_right_slash, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
        -- Player is to the left
        else
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_left_slash, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
        end
    -- Player is very close
    elseif distance <= 4 - self:GetMapHitRadius(TARGET_SELF) + 4 - self:GetMapHitRadius(TARGET_SELF) - 1 then
        -- Player is to the right
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_left_slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_right_slash, TARGET_ENE_0, max_attack_distance, 0, 0)
        -- Player is to the left
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_right_slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_left_slash, TARGET_ENE_0, max_attack_distance, 0, 0)
        end
    -- Random
    elseif self:GetRandam_Int(1, 100) < 50 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_right_slash, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
    -- Fallback
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_left_slash, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Slash Combo
function Boss_LordsBlade_Act02(self, ai, goal)
    self:SetTimer(1, 5)
    
    -- Approach
    Approach_Act_Flex(self, ai, 2.3 - self:GetMapHitRadius(TARGET_SELF), 2.3 - self:GetMapHitRadius(TARGET_SELF) + 2, 2.3 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 3)
    
    local anim_sweeping_right_slash = 3002
    local anim_sweeping_left_slash = 3003
    local anim_sweeping_right_slash_followup = 3004
    local max_attack_distance_a = 2.3 - self:GetMapHitRadius(TARGET_SELF) + 4
    local max_attack_distance_b = 4 - self:GetMapHitRadius(TARGET_SELF)
    local distance = self:GetDist(TARGET_ENE_0)
    local roll_a = self:GetRandam_Int(1, 100)
    
    if roll_a <= 20 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_sweeping_right_slash, TARGET_ENE_0, max_attack_distance_b, 0, 0, 0, 0)
    elseif roll_a <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_sweeping_right_slash, TARGET_ENE_0, max_attack_distance_a, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_sweeping_left_slash, TARGET_ENE_0, max_attack_distance_b, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_sweeping_right_slash, TARGET_ENE_0, max_attack_distance_a, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_sweeping_left_slash, TARGET_ENE_0, 4.8 - self:GetMapHitRadius(TARGET_SELF) + 4, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_sweeping_right_slash_followup, TARGET_ENE_0, max_attack_distance_b, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Vertical Slash Combo
function Boss_LordsBlade_Act03(self, ai, goal)
    -- Approach
    Approach_Act_Flex(self, ai, 2.7 - self:GetMapHitRadius(TARGET_SELF), 2.5 - self:GetMapHitRadius(TARGET_SELF) + 2, 5.2 - self:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 3, 3)
    
    local animation_upwards_right_slash = 3005
    local animation_downwards_right_slash = 3006
    local max_attack_distance_a = 2.7 - self:GetMapHitRadius(TARGET_SELF) + 1
    local max_attack_distance_b = 4 - self:GetMapHitRadius(TARGET_SELF)
    local roll_a = self:GetRandam_Int(1, 100)
    local distance = self:GetDist(TARGET_ENE_0)
    
    if distance < 2 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animation_upwards_right_slash, TARGET_ENE_0, max_attack_distance_a, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animation_downwards_right_slash, TARGET_ENE_0, max_attack_distance_b, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animation_upwards_right_slash, TARGET_ENE_0, max_attack_distance_a, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animation_downwards_right_slash, TARGET_ENE_0, 2.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, max_attack_distance_b, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Dual Slash
function Boss_LordsBlade_Act04(self, ai, goal)
    local animation_dual_slash = 3008
    
    -- Approach
    Approach_Act_Flex(self, ai, 4.3 - self:GetMapHitRadius(TARGET_SELF), 4.3 - self:GetMapHitRadius(TARGET_SELF) + 2, 4.3 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 4)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animation_dual_slash, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Running Dual Slash
function Boss_LordsBlade_Act05(self, ai, goal)
    local animation_running_dual_slash = 3009

    -- Approach
    Approach_Act_Flex(self, ai, 7.3 - self:GetMapHitRadius(TARGET_SELF), 7.3 - self:GetMapHitRadius(TARGET_SELF), 7.3 - self:GetMapHitRadius(TARGET_SELF), 100, 0, 2, 8)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animation_running_dual_slash, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Heavy Downwards Dual Slash
function Boss_LordsBlade_Act06(self, ai, goal)
    local animation_heavy_downwards_dual_slash = 3010
    
    -- Approach
    Approach_Act_Flex(self, ai, 7.5 - self:GetMapHitRadius(TARGET_SELF), 7.5 - self:GetMapHitRadius(TARGET_SELF) + 2, 7.5 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 8)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animation_heavy_downwards_dual_slash, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Dual Stab + Dual Slash
function Boss_LordsBlade_Act07(self, ai, goal)
    local animation_dual_stab = 3013
    local animation_dual_slash = 3008
    
    -- Approach
    Approach_Act_Flex(self, ai, 6 - self:GetMapHitRadius(TARGET_SELF), 6 - self:GetMapHitRadius(TARGET_SELF) + 2, 6 - self:GetMapHitRadius(TARGET_SELF) + 2, 50, 0, 2, 8)

    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animation_dual_stab, TARGET_ENE_0, 999, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animation_dual_slash, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Wide Slash
function Boss_LordsBlade_Act08(self, ai, goal)
    local animation_wide_right_slash = 3014
    local animation_wide_left_slash = 3015
    
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animation_wide_right_slash, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animation_wide_left_slash, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Spinning Slash
function Boss_LordsBlade_Act09(self, ai, goal)
    local animation_spinning_slash = 3017
    
    -- Approach
    Approach_Act_Flex(self, ai, 3 - self:GetMapHitRadius(TARGET_SELF), 3 - self:GetMapHitRadius(TARGET_SELF) + 2, 3 - self:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 4)
    
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animation_spinning_slash, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Dark Orb
function Boss_LordsBlade_Act10(self, ai, goal)
    local animation_dark_orb = 3020
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animation_dark_orb, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Strafe
function Boss_LordsBlade_Act11(self, ai, goal)
    self:SetTimer(2, 5)
    
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, self:GetRandam_Int(60, 90), true, true, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, self:GetRandam_Int(60, 90), true, true, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn
function Boss_LordsBlade_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Quickstep
function Boss_LordsBlade_Act21(self, ai, goal)
    local animation_quickstep_right = 6002
    local animation_quickstep_left = 6003
    
    -- Player is to the left
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, animation_quickstep_right, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
    -- Player is to the right
    else
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, animation_quickstep_left, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Backstep
function Boss_LordsBlade_Act22(self, ai, goal)
    local animation_quickstep_back = 6001
    
    ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, animation_quickstep_back, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function Boss_LordsBlade_ActAfter_AdjustSpace(self, ai, goal)
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
    local roll_b = ai:GetRandam_Int(1, 100)
    
    local animation_spinning_slash = 3018
    local animation_spinning_vertical_slash = 3019
    local animation_lunging_left_slash = 3007
    local animation_quickstep_right = 6002
    local animation_quickstep_left = 6003
    local animation_wide_right_slash = 3014
    local animation_wide_left_slash = 3015
    local animation_dual_slash = 3008
    
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    elseif ai:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if distance <= 1.5 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animation_spinning_slash, TARGET_ENE_0, 4 - ai:GetMapHitRadius(TARGET_SELF), 0)
        elseif distance <= 4 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animation_spinning_vertical_slash, TARGET_ENE_0, 4 - ai:GetMapHitRadius(TARGET_SELF), 0)
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5031) == false then
        if distance < 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and Counter_Act(ai, goal, ai:GetRandam_Int(5, 10), 3012) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animation_lunging_left_slash, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif (not not ai:IsInterupt(INTERUPT_Damaged) or ai:IsInterupt(INTERUPT_FindAttack)) and distance <= 5.5 and ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            if roll_a <= 80 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, animation_quickstep_left, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, animation_quickstep_right, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                if roll_b <= 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animation_wide_right_slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animation_wide_right_slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animation_dual_slash, TARGET_ENE_0, 999, 0, 0)
                end
            elseif roll_b <= 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animation_wide_left_slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animation_wide_left_slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animation_dual_slash, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) and 5 <= distance and roll_a < 40 then
        if roll_a <= 20 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, animation_quickstep_right, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, animation_quickstep_left, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
        end
        return true
    else
        local local3 = 3
        local local4 = 100
        if ai:IsInterupt(INTERUPT_GuardBreak) and distance <= 3 then
            if roll_a <= 30 then
                goal:ClearSubGoal()
                Boss_LordsBlade_Act02(ai, goal, paramTbl) -- Slash Combo
            elseif roll_a <= 60 then
                goal:ClearSubGoal()
                Boss_LordsBlade_Act03(ai, goal, paramTbl) -- Vertical Slash Combo
            else
                goal:ClearSubGoal()
                Boss_LordsBlade_Act04(ai, goal, paramTbl) -- Dual Slash
            end
            return true
        else
            return false
        end
    end
end

-------------------------
-- End
-------------------------
return 
