RegisterTableGoal(GOAL_PrinceDorthinus_815000_Battle, "GOAL_PrinceDorthinus_815000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PrinceDorthinus_815000_Battle, true)

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
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    local do_admirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local event_request = ai:GetEventRequest()
    local hp_rate = ai:GetHpRate(TARGET_SELF)
    
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5404)
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    -- Heatup moveset
    if ai:HasSpecialEffectId(TARGET_SELF, 5404) then
        -- Player is behind
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 230) then
            -- Close to AI
            if distance <= 3 then
                -- On left side
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    actChanceList[4] = 800 -- Turn Left Slam
                    actChanceList[20] = 200 -- Turn
                -- On right side
                else
                    actChanceList[5] = 800 -- Turn Right Slam
                    actChanceList[20] = 200 -- Turn
                end
            else
                actChanceList[20] = 900 -- Turn
                actChanceList[21] = 100 -- Strafe
            end
        elseif 8 <= distance then
            actChanceList[1] = 400 -- Forward Slam Combo
            actChanceList[2] = 200 -- Heavy Slam Combo
            actChanceList[3] = 0 -- Forward Push
            actChanceList[6] = 300 -- Approach and Guard
            actChanceList[7] = 100 -- Swinging Bash
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        elseif 4.5 <= distance then
            actChanceList[1] = 250 -- Forward Slam Combo
            actChanceList[2] = 200 -- Heavy Slam Combo
            actChanceList[3] = 0 -- Forward Push
            actChanceList[6] = 250 -- Approach and Guard
            actChanceList[7] = 100 -- Swinging Bash
            actChanceList[21] = 200 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        elseif 2.5 < distance then
            actChanceList[1] = 300 -- Forward Slam Combo
            actChanceList[2] = 300 -- Heavy Slam Combo
            actChanceList[3] = 0 -- Forward Push
            actChanceList[6] = 300 -- Approach and Guard
            actChanceList[7] = 100 -- Swinging Bash
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        else
            actChanceList[1] = 350 -- Forward Slam Combo
            actChanceList[2] = 0 -- Heavy Slam Combo
            actChanceList[3] = 350 -- Forward Push
            actChanceList[6] = 200 -- Approach and Guard
            actChanceList[7] = 100 -- Swinging Bash
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        end
        
        -- 5028 is added when staggered
        if ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            actChanceList[2] = actChanceList[2] + 300 -- Heavy Slam Combo
            actChanceList[6] = actChanceList[6] + 200 -- Approach and Guard
            actChanceList[7] = actChanceList[7] + 200 -- Swinging Bash
        end
    -- Normal moveset
    else
        -- Player is behind
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 230) then
            -- Close to AI
            if distance <= 3 then
                -- On left side
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    actChanceList[11] = 800 -- Turn Left Sweep
                    actChanceList[20] = 200 -- Turn
                -- On right side
                else
                    actChanceList[12] = 800 -- Turn Right Sweep
                    actChanceList[20] = 200 -- Turn
                end
            else
                actChanceList[20] = 900 -- Turn
                actChanceList[21] = 100 -- Strafe
            end
        elseif distance >= 8 then
            actChanceList[1] = 400 -- Forward Slam Combo
            actChanceList[2] = 200 -- Heavy Slam Combo
            actChanceList[8] = 0 -- Hammer Sweep
            actChanceList[9] = 0 -- Step Side Slam
            actChanceList[10] = 200 -- Swinging Bash
            actChanceList[13] = 100 -- Discs of Dorthinus
            actChanceList[14] = 100 -- Rime
            actChanceList[15] = 200 -- Hammer Drag
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        elseif distance >= 4.5 then
            actChanceList[1] = 300 -- Forward Slam Combo
            actChanceList[2] = 150 -- Heavy Slam Combo
            actChanceList[8] = 0 -- Hammer Sweep
            actChanceList[9] = 100 -- Step Side Slam
            actChanceList[10] = 100 -- Swinging Bash
            actChanceList[13] = 100 -- Discs of Dorthinus
            actChanceList[14] = 100 -- Rime
            actChanceList[15] = 0 -- Hammer Drag
            actChanceList[21] = 100 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        else
           actChanceList[1] = 200 -- Forward Slam Combo
            actChanceList[2] = 200 -- Heavy Slam Combo
            actChanceList[8] = 200 -- Hammer Sweep
            actChanceList[9] = 50 -- Step Side Slam
            actChanceList[10] = 50 -- Swinging Bash
            actChanceList[13] = 100 -- Discs of Dorthinus
            actChanceList[14] = 200 -- Rime
            actChanceList[15] = 0 -- Hammer Drag
            actChanceList[21] = 0 -- Strafe
            actChanceList[22] = 0 -- Leave Target
        end
        
        -- 5028 is added when staggered
        if ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            actChanceList[2] = actChanceList[2] + 300 -- Heavy Slam Combo
        end
    end
    
    ----------------------------------
    -- Act Cooldowns
    ----------------------------------
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 12, actChanceList[1], 1) -- Forward Slam
    actChanceList[2] = SetCoolTime(ai, goal, 3004, 12, actChanceList[2], 1) -- Heavy Forward Slam
    actChanceList[3] = SetCoolTime(ai, goal, 3009, 15, actChanceList[3], 1) -- Forward Push
    actChanceList[4] = SetCoolTime(ai, goal, 3012, 12, actChanceList[4], 1) -- Turn Left Slam
    actChanceList[5] = SetCoolTime(ai, goal, 3014, 12, actChanceList[5], 1) -- Turn Right Slam
    actChanceList[6] = SetCoolTime(ai, goal, 3200, 12, actChanceList[6], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3201, 12, actChanceList[6], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3204, 12, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3024, 20, actChanceList[7], 0)
    actChanceList[8] = SetCoolTime(ai, goal, 3004, 12, actChanceList[8], 0) -- Hammer Sweep
    actChanceList[13] = SetCoolTime(ai, goal, 3018, 20, actChanceList[8], 0) -- Discs of Dorthinus
    actChanceList[14] = SetCoolTime(ai, goal, 3019, 20, actChanceList[8], 0) -- Rime
    actChanceList[15] = SetCoolTime(ai, goal, 3026, 12, actChanceList[8], 0) -- Hammer Drag
    
    ----------------------------------
    -- Acts
    ----------------------------------
    -- HU
    actFuncList[1] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act01) -- Forward Slam Combo
    actFuncList[2] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act02) -- Heavy Slam Combo
    actFuncList[3] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act03) -- Forward Push
    actFuncList[4] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act04) -- Turn Left Slam
    actFuncList[5] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act05) -- Turn Right Slam
    actFuncList[6] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act06) -- Approach and Guard
    actFuncList[7] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act07) -- Swinging Bash
    
    -- Normal
    actFuncList[8] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act08) -- Hammer Sweep
    actFuncList[9] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act09) -- Step Side Slam
    actFuncList[10] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act10) -- Swinging Bash
    actFuncList[11] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act11) -- Turn Left Sweep
    actFuncList[12] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act12) -- Turn Right Sweep
    actFuncList[13] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act13) -- Discs of Dorthinus
    actFuncList[14] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act14) -- Rime
    actFuncList[15] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act15) -- Hammer Drag
    
    -- Shared
    actFuncList[20] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act20) -- Turn
    actFuncList[21] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act21) -- Strafe
    actFuncList[22] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act22) -- Leave Target

    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, PrinceDorthinus_815000_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
-- Forward Slam Combo
function PrinceDorthinus_815000_Act01(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_ForwardSlam = 3000
    local anim_ForwardSlamFollowup = 3001
    local anim_ForwardSlamHeavy = 3002
    local max_attack_distance = 5.5
    local spin_time = 999
    
    -- Approach
    Approach_Act_Flex(self, ai, 3.44, 3.44 + 6, 3.44 + 12, 40, 0, 4, 6)

    if self:GetRandam_Int(1, 100) <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ForwardSlam, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_ForwardSlamFollowup, TARGET_ENE_0, 3.63 + 1.5, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_ForwardSlamHeavy, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ForwardSlam, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_ForwardSlamFollowup, TARGET_ENE_0, 999, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Heavy Slam Combo
function PrinceDorthinus_815000_Act02(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local distance = self:GetDist(TARGET_ENE_0)
    local anim_HeavyForwardSlam = 3004
    local anim_SideSlam = 3005
    
    -- Approach
    Approach_Act_Flex(self, ai, 4.59, 4.59 + 6, 4.59 + 12, 40, 0, 3, 6)
    
    if self:GetRandam_Int(1, 100) <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_HeavyForwardSlam, TARGET_ENE_0, 4.84 + 1.5, 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_SideSlam, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_HeavyForwardSlam, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Forward Push
function PrinceDorthinus_815000_Act03(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_ForwardPush = 3009
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_ForwardPush, TARGET_ENE_0, 999, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn Left Slam
function PrinceDorthinus_815000_Act04(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_TurnLeftSlam = 3012
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_TurnLeftSlam, TARGET_ENE_0, 999, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn Right Slam
function PrinceDorthinus_815000_Act05(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_TurnRightSlam = 3014
    local anim_StepForwardSlam = 3015
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_TurnRightSlam, TARGET_ENE_0, 3.78 + 1.5, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_StepForwardSlam, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Approach and Guard
function PrinceDorthinus_815000_Act06(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    -- Approach
    Approach_Act_Flex(self, ai, 5.77, 5.77 + 6, 5.77 + 12, 40, 0, 3, 6)
    
    local subgoal = ai:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 2, TARGET_ENE_0, 999, TARGET_SELF, false, 9920)
    subgoal:SetLifeEndSuccess(true)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Swinging Bash
function PrinceDorthinus_815000_Act07(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    -- Approach
    Approach_Act_Flex(self, ai, 5.77, 5.77 + 6, 5.77 + 12, 40, 0, 4, 6)
    
    local anim_SwingingBash = 3024
    local anim_SideSlam = 3005
    
    if self:GetRandam_Int(1, 100) <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_SwingingBash, TARGET_ENE_0, 4.84 + 1.5, 0, 0, 0, 0)
        
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_SideSlam, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_SwingingBash, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Hammer Sweep
function PrinceDorthinus_815000_Act08(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_HammerSweep = 3004
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_HammerSweep, TARGET_ENE_0, 999, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Step Side Slam
function PrinceDorthinus_815000_Act09(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_StepSideSlam = 3008
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_StepSideSlam, TARGET_ENE_0, 999, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Swinging Bash
function PrinceDorthinus_815000_Act10(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_SwingingBash = 3009
    
    -- Approach
    Approach_Act_Flex(self, ai, 5.77, 5.77 + 6, 5.77 + 12, 40, 0, 4, 6)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_SwingingBash, TARGET_ENE_0, 999, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn Left Sweep
function PrinceDorthinus_815000_Act11(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_TurnLeftSweep = 3012
    local anim_TurnLeftSweepSlam = 3013
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_TurnLeftSweep, TARGET_ENE_0, 3.78 + 1.5, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_TurnLeftSweepSlam, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn Right Sweep
function PrinceDorthinus_815000_Act12(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_TurnRightSweep = 3012
    local anim_TurnRightSweepSlam = 3013
    
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_TurnRightSweep, TARGET_ENE_0, 3.78 + 1.5, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_TurnRightSweepSlam, TARGET_ENE_0, 999, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Discs of Dorthinus
function PrinceDorthinus_815000_Act13(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_DiscsOfDorthinus = 3018
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_DiscsOfDorthinus, TARGET_ENE_0, 999, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Rime
function PrinceDorthinus_815000_Act14(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_Rime = 3019
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_Rime, TARGET_ENE_0, 999, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Hammer Drag
function PrinceDorthinus_815000_Act15(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local anim_HammerDrag = 3025
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_HammerDrag, TARGET_ENE_0, 999, 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn
function PrinceDorthinus_815000_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Strafe
function PrinceDorthinus_815000_Act21(self, ai, goal)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Leave Target
function PrinceDorthinus_815000_Act22(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
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
    local anim_HammerGroundBurst = 3023
    
    -- Added after slam attacks
    if ai:GetSpecialEffectActivateInterruptType(0) == 5025 and distance <= 10 and ai:HasSpecialEffectId(TARGET_SELF, 5404) then
        local roll_a = 0
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            roll_a = roll_a + 50
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            roll_a = roll_a + 30
        else
            roll_a = roll_a + 10
        end
        if 5 <= distance then
            roll_a = roll_a + 50
        elseif 3 <= distance then
            roll_a = roll_a + 30
        else
            roll_a = roll_a + 10
        end
        if ai:GetRandam_Int(1, 100) <= roll_a then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_HammerGroundBurst, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    
    local anim_RunningForwardSlam = 3200
    local anim_StepSwingingSlam = 3201
    local anim_WildSwinging = 3204
    
    -- Added after push/weapon hold
    if ai:GetSpecialEffectActivateInterruptType(0) == 5026 and ai:HasSpecialEffectId(TARGET_SELF, 5404) then
        local distance = ai:GetDist(TARGET_ENE_0)
        local roll_a = ai:GetRandam_Int(1, 100)

        ai:SetTimer(1, 8)
        goal:ClearSubGoal()
        
        if 5 <= distance then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RunningForwardSlam, TARGET_ENE_0, 4.6, 0, 0, 0, 0)
        elseif 3 <= distance then
            if not SpaceCheck(ai, goal, 0, 13) then
                local distance4 = 0
            end
            if roll_a <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_StepSwingingSlam, TARGET_ENE_0, 4.6, 0, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_WildSwinging, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        else
            if not SpaceCheck(ai, goal, 0, 13) then
                local distance4 = 0
            end
            if roll_a <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_StepSwingingSlam, TARGET_ENE_0, 4.6, 0, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_WildSwinging, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        end
        return true
    else
        return false
    end
end

-------------------------
-- Act After
-------------------------
function PrinceDorthinus_815000_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_PrinceDorthinus_815000_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_PrinceDorthinus_815000_AfterAttackAct, "GOAL_PrinceDorthinus_815000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PrinceDorthinus_815000_AfterAttackAct, true)

-------------------------
-- Activate
-------------------------
Goal.Activate = function (self, ai, goal)
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    
    if (distance > 5 or roll_a > 20) and distance <= 8 and roll_a <= 20 then
        PrinceDorthinus_815000_Act21(ai, goal, paramTbl) -- Strafe
    end
    return 
end

-------------------------
-- Update
-------------------------
Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
