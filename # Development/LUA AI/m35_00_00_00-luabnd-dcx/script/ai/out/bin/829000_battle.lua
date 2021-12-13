RegisterTableGoal(GOAL_CathedralGuardian_829000_Battle, "GOAL_CathedralGuardian_829000_Battle")

REGISTER_GOAL_NO_SUB_GOAL(GOAL_CathedralGuardian_829000_Battle, true)
Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local distance = ai:GetDist(TARGET_ENE_0)

    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if distance <= 4 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                actChanceList[4] = 60 -- Turn and Swipe
                actChanceList[20] = 40 -- Turn
            else
                actChanceList[5] = 60 -- Turn and Shield Smash
                actChanceList[20] = 40 -- Turn
            end
        else
            actChanceList[6] = 40 -- Run and Shield Smash
            actChanceList[20] = 60 -- Turn
        end
    elseif SpaceCheck(ai, goal, 0, 4) == false and 4 < distance then
        actChanceList[24] = 100 -- Approach
    elseif 8 <= distance then
        actChanceList[1] = 40 -- Forward Smash -> Shield Combo
        actChanceList[2] = 0 -- Side Swipe -> Shield Combo
        actChanceList[3] = 0 -- Shield Bash
        actChanceList[6] = 30 -- Run and Shield Smash
        actChanceList[8] = 0 -- Shield Swipe Combo
        actChanceList[9] = 0 -- Shield Smash
        actChanceList[10] = 0 -- Heavy Smash
        actChanceList[21] = 0 -- Strafe
        actChanceList[22] = 0 -- Backstep
        actChanceList[23] = 0 -- Run and Smash
    elseif 1.5 <= distance then
        actChanceList[1] = 0 -- Forward Smash -> Shield Combo
        actChanceList[2] = 50 -- Side Swipe -> Shield Combo
        actChanceList[3] = 10 -- Shield Bash
        actChanceList[6] = 0 -- Run and Shield Smash
        actChanceList[8] = 5 -- Shield Swipe Combo
        actChanceList[9] = 0 -- Shield Smash
        actChanceList[10] = 0 -- Heavy Smash
        actChanceList[21] = 25 -- Strafe
        actChanceList[22] = 0 -- Backstep
        actChanceList[23] = 0 -- Run and Smash
    else
        actChanceList[1] = 0 -- Forward Smash -> Shield Combo
        actChanceList[2] = 10 -- Side Swipe -> Shield Combo
        actChanceList[3] = 10 -- Shield Bash
        actChanceList[6] = 0 -- Run and Shield Smash
        actChanceList[8] = 10 -- Shield Swipe Combo
        actChanceList[9] = 10 -- Shield Smash
        actChanceList[10] = 10 -- Heavy Smash
        actChanceList[11] = 0 -- Raise Hammer for Spell
        actChanceList[21] = 20 -- Strafe
        actChanceList[22] = 0 -- Backstep
        actChanceList[23] = 0 -- Run and Smash
    end
    
    actFuncList[1] = REGIST_FUNC(ai, goal, CathedralGuardian_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, CathedralGuardian_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, CathedralGuardian_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, CathedralGuardian_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, CathedralGuardian_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, CathedralGuardian_Act06)
    actFuncList[8] = REGIST_FUNC(ai, goal, CathedralGuardian_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, CathedralGuardian_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, CathedralGuardian_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, CathedralGuardian_Act11)
    actFuncList[20] = REGIST_FUNC(ai, goal, CathedralGuardian_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, CathedralGuardian_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, CathedralGuardian_Act22)
    actFuncList[23] = REGIST_FUNC(ai, goal, CathedralGuardian_Act23)
    actFuncList[24] = REGIST_FUNC(ai, goal, CathedralGuardian_Act24)
    actFuncList[25] = REGIST_FUNC(ai, goal, CathedralGuardian_Act25)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, CathedralGuardian_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Forward Smash -> Shield Combo
function CathedralGuardian_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 12.68, 12.68 + 2, 12.68 + 2, 0, 100, 2, 2)
    
    local anim_ForwardSmash = 3000
    local anim_PreparedShieldSmash = 3017
    local anim_ShieldSwipeIntoStance = 3025
    local anim_ShieldSwipeReturn = 3020
    
    local max_attack_distance = 2.24
    local roll = self:GetRandam_Int(1, 100)
    
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    
    if roll < 40 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_ForwardSmash, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif roll <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ForwardSmash, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 999, 0, 0)
    -- Heatup
    elseif self:HasSpecialEffectId(TARGET_SELF, 11300) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ForwardSmash, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 10, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_ShieldSwipeIntoStance, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ForwardSmash, TARGET_ENE_0, max_attack_distance, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 2.12, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_ShieldSwipeReturn, TARGET_ENE_0, 999, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Side Swipe -> Shield Combo
function CathedralGuardian_Act02(self, ai, goal)
    local roll = self:GetRandam_Int(1, 100)
    
    local anim_SideSwipe1 = 3001
    local anim_SideSwipe3 = 3003
    local anim_SideSwipe2 = 3002
    local anim_PreparedShieldSmash = 3017
    local anim_StepAndShieldSmash = 3018
    local anim_ShieldSwipe = 3019
    local anim_ShieldSwipeReturn = 3020
    
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    if self:GetDist(TARGET_ENE_0) <= 2.9 then
        if roll <= 70 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_SideSwipe1, TARGET_ENE_0, 7, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_SideSwipe2, TARGET_ENE_0, 999, 0, 0)
        elseif roll <= 80 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_SideSwipe1, TARGET_ENE_0, 4, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 999, 0, 0)
        elseif roll <= 85 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_SideSwipe3, TARGET_ENE_0, 4, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 5, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_StepAndShieldSmash, TARGET_ENE_0, 999, 0, 0)
        elseif roll <= 90 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_SideSwipe3, TARGET_ENE_0, 4, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 5, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_StepAndShieldSmash, TARGET_ENE_0, 5, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_ShieldSwipe, TARGET_ENE_0, 999, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_SideSwipe3, TARGET_ENE_0, 4, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 5, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_StepAndShieldSmash, TARGET_ENE_0, 5, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_ShieldSwipe, TARGET_ENE_0, 5, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_ShieldSwipeReturn, TARGET_ENE_0, 999, 0, 0)
        end
    elseif roll <= 80 then
        Approach_Act_Flex(self, ai, 4.54, 4.54 + 2, 4.54 + 2, 0, 0, 2, 2)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_SideSwipe3, TARGET_ENE_0, 7, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_SideSwipe2, TARGET_ENE_0, 999, 0, 0)
    elseif roll <= 90 then
        Approach_Act_Flex(self, ai, 4.54, 4.54 + 2, 4.54 + 2, 0, 0, 2, 2)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_SideSwipe3, TARGET_ENE_0, 4, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 999, 0, 0)
    else
        Approach_Act_Flex(self, ai, 4.54, 4.54 + 2, 4.54 + 2, 0, 0, 2, 2)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_SideSwipe3, TARGET_ENE_0, 4, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_StepAndShieldSmash, TARGET_ENE_0, 999, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Shield Bash
function CathedralGuardian_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.95, 2.95 + 2, 2.95 + 2, 0, 100, 2, 2)
    
    local anim_ShieldBash = 3004

    if self:GetRandam_Int(1, 100) < 70 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_ShieldBash, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ShieldBash, TARGET_ENE_0, 4.42, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn and Swipe
function CathedralGuardian_Act04(self, ai, goal)
    local anim_TurnAndSwipe = 3005
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_TurnSwipe, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn and Shield Smash
function CathedralGuardian_Act05(self, ai, goal)
    local anim_TurnAndShieldSmash = 3006
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_TurnAndShieldSmash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Run and Shield Smash
function CathedralGuardian_Act06(self, ai, goal)
    local anim_RunAndShieldSmash = 3015
    
    Approach_Act_Flex(self, ai, 12.18, 12.18 + 2, 12.18 + 2, 0, 0, 2, 2)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_RunAndShieldSmash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Shield Swipe Combo
function CathedralGuardian_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.65, 2.65 + 2, 2.65 + 2, 0, 100, 2, 2)
    
    local anim_PreparedShieldSmash = 3017
    local anim_ShieldSwipe = 3019
    local anim_ShieldSwipeReturn = 3020
    local anim_ShieldSwipeIntoStance = 3025

    local roll = self:GetRandam_Int(1, 100)
    
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    
    if self:HasSpecialEffectId(TARGET_SELF, 11300) == false then
        if roll <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ShieldSwipe, TARGET_ENE_0, 2.12, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_ShieldSwipeReturn, TARGET_ENE_0, 999, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ShieldSwipe, TARGET_ENE_0, 2.12, 0, 0, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_ShieldSwipeReturn, TARGET_ENE_0, 2.24, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 999, 0, 0)
        end
    elseif roll <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ShieldSwipe, TARGET_ENE_0, 2.12, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_ShieldSwipeReturn, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ShieldSwipe, TARGET_ENE_0, 2.12, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_ShieldSwipeIntoStance, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Shield Smash
function CathedralGuardian_Act09(self, ai, goal)
    local anim_ShieldSmash = 3021
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_ShieldSmash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Heavy Smash
function CathedralGuardian_Act10(self, ai, goal)
    local anim_HeavySmash = 3023
    
    Approach_Act_Flex(self, ai, 5.87, 5.87 + 2, 5.87 + 2, 0, 0, 2, 2)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_HeavySmash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Raise Hammer for Spell
function CathedralGuardian_Act11(self, ai, goal)
    local anim_RaiseHammer = 3007
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_RaiseHammer, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn
function CathedralGuardian_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Strafe
function CathedralGuardian_Act21(self, ai, goal)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, 60, true, true, 9910)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, 60, true, true, 9910)
    end
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Backstep
function CathedralGuardian_Act22(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Run and Smash
function CathedralGuardian_Act23(self, ai, goal)
    local anim_RunAndShieldSmash = 3015
    
    local roll = self:GetRandam_Int(1, 100)
    
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 5.5, TARGET_ENE_0, true, 9910)
    
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_RunAndShieldSmash, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Approach
function CathedralGuardian_Act24(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, false, 9910)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Wait
function CathedralGuardian_Act25(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll = ai:GetRandam_Int(1, 100)
    
    local anim_ShieldBash = 3022
    local anim_HeavySmash = 3023
    local anim_PreparedShieldSmash = 3017
    local anim_PreparedForwardSmash = 3016
    local anim_HeavySwipe = 3011
    local anim_DroppedHeavySwipe = 3012
    local anim_JumpAndSmash = 3013
    local anim_HammerDragAndSlash = 3010
    
    if ai:IsInterupt(INTERUPT_SuccessGuard) then
        -- Shield Bash
        if distance < 4 and roll <= 50 and ai:HasSpecialEffectId(TARGET_SELF, 11300) == false then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_ShieldBash, TARGET_ENE_0, 5 - ai:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
            return true
        -- Approach
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
            return true
        end
    elseif ai:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if distance <= 4 and roll <= 20 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_HeavySmash, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif distance <= 4 and roll <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_HeavySmash, TARGET_ENE_0, 5, 0, 0, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_PreparedShieldSmash, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif 4 <= distance then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_PreparedForwardSmash, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        return true
    else
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        
        if ai:GetSpecialEffectActivateInterruptType(0) == 5026 and ai:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) == false and roll <= 60 then
            if distance <= 4 or ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_HeavySmash, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_PreparedForwardSmash, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
            return true
        else
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            
            if ai:GetSpecialEffectActivateInterruptType(0) == 5030 then
                if distance <= 4 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                    if roll <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_HeavySwipe, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_DroppedHeavySwipe, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    end
                elseif roll <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_JumpAndSmash, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_HammerDragAndSlash, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
                return true
            end
        end
    end
end

function CathedralGuardian_ActAfter_AdjustSpace(self, ai, goal)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
