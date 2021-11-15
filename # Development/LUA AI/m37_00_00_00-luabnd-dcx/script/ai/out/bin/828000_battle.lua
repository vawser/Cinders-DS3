RegisterTableGoal(GOAL_ForlornGiant_828000_Battle, "GOAL_ForlornGiant_828000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ForlornGiant_828000_Battle, true)

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
    
    ai:SetStringIndexedNumber("Dist_SideStep", 3)
    ai:SetStringIndexedNumber("Dist_BackStep", 3)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll = ai:GetRandam_Int(1, 100)

    -- If player is behind, do punishment moves
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        if InsideRange(ai, goal, 120, 120, -1, 3.6 - ai:GetMapHitRadius(TARGET_SELF)) then
            actChanceList[7] = 10 -- Right Swipe
            actChanceList[20] = 1 -- Turn
        elseif InsideRange(ai, goal, 135, 90, 5, 10.1 - ai:GetMapHitRadius(TARGET_SELF)) then
            actChanceList[3] = 10 -- Step and Left Slam
            actChanceList[20] = 1 -- Turn
        else
            actChanceList[20] = 10 -- Turn
        end
    elseif distance >= 5.5 then
        actChanceList[1] = 10 -- Forward Slam
        actChanceList[3] = 10 -- Step and Left Slam
        actChanceList[4] = 0 -- Right Stomp
        actChanceList[5] = 0 -- Left Stomp
        actChanceList[9] = 10 -- Rampage
    elseif distance >= 2.8 then
        actChanceList[1] = 0 -- Forward Slam
        actChanceList[2] = 10 -- 2H Slam
        actChanceList[3] = 0 -- Step and Left Slam
        actChanceList[4] = 5 -- Right Stomp
        actChanceList[5] = 5 -- Left Stomp
        actChanceList[9] = 5 -- Rampage
    else
        actChanceList[1] = 0 -- Forward Slam
        actChanceList[2] = 10 -- 2H Slam
        actChanceList[3] = 0 -- Step and Left Slam
        actChanceList[4] = 5 -- Right Stomp
        actChanceList[5] = 5 -- Left Stomp
        actChanceList[9] = 10 -- Rampage
    end
    
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        actChanceList[4] = actChanceList[4] + 10 -- Right Stomp
    else
        actChanceList[5] = actChanceList[5] + 10 -- Left Stomp
    end
    
    if ai:IsFinishTimer(0) == false then
        actChanceList[2] = actChanceList[2] - 5 -- 2H Slam
    end
    
    actFuncList[1] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act11)
    actFuncList[20] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act20)
    actFuncList[30] = REGIST_FUNC(ai, goal, ForlornGiant_Battle_Act30)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, ForlornGiant_Battle_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Forward Slam
function ForlornGiant_Battle_Act01(self, ai, goal)
    local start_approach_distance_close = 11.1 - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance_close + 3
    local start_approach_distance_far = start_approach_distance_close + 100
    local roll_for_mid_distance_to_use_duration_far = 0
    local roll_for_L1_use = 0
    local approach_duration_close = 5
    local approach_duration_far = 5
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_ForwardRightSlam = 3000
    local anim_ForwardLeftSlam = 3001
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ForwardRightSlam, TARGET_ENE_0, 11 - self:GetMapHitRadius(TARGET_SELF) + 1, 1.5, 60, 0, 0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_ForwardLeftSlam, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- 2H Slam
function ForlornGiant_Battle_Act02(self, ai, goal)
    local start_approach_distance_close = 6.1 - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance_close + 3
    local start_approach_distance_far = start_approach_distance_close + 100
    local roll_for_mid_distance_to_use_duration_far = 0
    local roll_for_L1_use = 0
    local approach_duration_close = 5
    local approach_duration_far = 5
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)

    local anim_2H_Slam = 3002

    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_2H_Slam, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    
    self:SetTimer(0, 10)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Step and Left Slam
function ForlornGiant_Battle_Act03(self, ai, goal)
    local start_approach_distance_close = 10.1 - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance_close + 3
    local start_approach_distance_far = start_approach_distance_close + 100
    local roll_for_mid_distance_to_use_duration_far = 0
    local roll_for_L1_use = 0
    local approach_duration_close = 5
    local approach_duration_far = 5
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    
    local anim_StepLeftSlam = 3003
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_StepLeftSlam, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Right Stomp
function ForlornGiant_Battle_Act04(self, ai, goal)
    local start_approach_distance_close = 5.1 - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance_close
    local start_approach_distance_far = start_approach_distance_close
    local roll_for_mid_distance_to_use_duration_far = 0
    local roll_for_L1_use = 0
    local approach_duration_close = 5
    local approach_duration_far = 5
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_RightStomp = 3004
    
    local subgoal = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightStomp, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    subgoal:SetTargetRange(0, -99, 5.1 - self:GetMapHitRadius(TARGET_SELF))
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Left Stomp
function ForlornGiant_Battle_Act05(self, ai, goal)
    local start_approach_distance_close = 5.1 - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance_close
    local start_approach_distance_far = start_approach_distance_close
    local roll_for_mid_distance_to_use_duration_far = 0
    local roll_for_L1_use = 0
    local approach_duration_close = 5
    local approach_duration_far = 5
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_LeftStomp = 3005
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_LeftStomp, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Collapse
function ForlornGiant_Battle_Act06(self, ai, goal)
    local start_approach_distance_close = 7.6 - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance_close + 3
    local start_approach_distance_far = start_approach_distance_close + 100
    local roll_for_mid_distance_to_use_duration_far = 0
    local roll_for_L1_use = 0
    local approach_duration_close = 5
    local approach_duration_far = 5
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    local anim_Collapse = 3006
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end
 
-- Right Swipe
function ForlornGiant_Battle_Act07(self, ai, goal)
    local anim_RightSwipe = 3008
    
    local subgoal = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSwipe, TARGET_ENE_0, SuccessDist, 0, 0)
    subgoal:SetTargetRange(0, -99, 3.6 - self:GetMapHitRadius(TARGET_SELF) + 1)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Pull Earth
function ForlornGiant_Battle_Act08(self, ai, goal)
    local anim_PullEarth = 3009
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_PullEarth, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 1.5, 360, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Rampage
function ForlornGiant_Battle_Act09(self, ai, goal)
    local start_approach_distance_close = 5.1 - self:GetMapHitRadius(TARGET_SELF)
    local start_approach_distance_mid = start_approach_distance_close
    local start_approach_distance_far = start_approach_distance_close
    local roll_for_mid_distance_to_use_duration_far = 0
    local roll_for_L1_use = 0
    local approach_duration_close = 5
    local approach_duration_far = 5
    
    -- Approach if enemy exceeds approach distance
    NPC_Approach_Act_Flex(self, ai, start_approach_distance_close, start_approach_distance_mid, start_approach_distance_far, roll_for_mid_distance_to_use_duration_far, roll_for_L1_use, approach_duration_close, approach_duration_far)
    
    local anim_Rampage = 3010
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_Rampage, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Leave Target
function ForlornGiant_Battle_Act10(self, ai, goal)
    local distance = 10
    
    if distance <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, distance, 12, Odds_Guard, 3)
    end
    
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, distance, TARGET_ENE_0, true, -1)
    
    return 
end

-- Strafe
function ForlornGiant_Battle_Act11(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, -1)
    
    return 
end

-- Turn
function ForlornGiant_Battle_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Swipe and Slam
function ForlornGiant_Battle_Act30(self, ai, goal)
    local anim_RightSwipe = 3008
    local anim_LeftSlam = 3001
    
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSwipe, TARGET_ENE_0, 5.1 - self:GetMapHitRadius(TARGET_SELF) + 3, 1.5, 20, 0, 0)
    
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_LeftSlam, TARGET_ENE_0, SuccessDist, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForlornGiant_Battle_ActAfter_AdjustSpace(self, ai, goal)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        -- If Collapsed, perform Collapsed Punch
        if ai:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(ai, goal, 0, 75, 2.1 - ai:GetMapHitRadius(TARGET_SELF), 8.6 - ai:GetMapHitRadius(TARGET_SELF) + 1) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        -- If Step and Left Slam, perform Right Stomp
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(ai, goal, 15, 90, 2.1 - ai:GetMapHitRadius(TARGET_SELF), 5.1 - ai:GetMapHitRadius(TARGET_SELF)) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        -- If Step and Left Slam, perform Right Swipe
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(ai, goal, 120, 120, 1.1 - ai:GetMapHitRadius(TARGET_SELF) - 1, 3.6 - ai:GetMapHitRadius(TARGET_SELF) + 1) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        -- If Step and Left Slam, perform Left Sweep
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(ai, goal, -90, 120, 1.1 - ai:GetMapHitRadius(TARGET_SELF) - 1, 3.6 - ai:GetMapHitRadius(TARGET_SELF) + 1) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        end
    end
    
    -- Perform 2H Range
    if ai:IsInterupt(INTERUPT_TargetOutOfRange) and ai:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(ai, goal, 0, 90, 2.1 - ai:GetMapHitRadius(TARGET_SELF), 6.1 - ai:GetMapHitRadius(TARGET_SELF) + 1) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, SuccessDist, 0, 0)
        return true
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5027) and ai:IsInterupt(INTERUPT_Damaged) and InsideRange(ai, goal, 150, 240, -99, 3.6 - ai:GetMapHitRadius(TARGET_SELF)) then    
        -- Right Swipe
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        -- Left Sweep
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    else
        return false
    end
end

return 
