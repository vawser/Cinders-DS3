RegisterTableGoal(GOAL_SpellSummon_Lycanthrope_801500_Battle, "GOAL_SpellSummon_Lycanthrope_801500_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Lycanthrope_801500_Battle, true)
Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local3 = ai:GetDist(TARGET_ENE_0)
    local local4 = ai:GetRandam_Int(1, 100)
    if InsideDir(ai, goal, 180, 240) then
        if local3 <= 2.5 then
            local0[8] = 80
            local0[20] = 20
        else
            local0[20] = 100
        end
    elseif 8.5 <= local3 then
        local0[4] = 15
        local0[6] = 25
        local0[7] = 50
        local0[11] = 10
    elseif 6 <= local3 then
        local0[1] = 15
        local0[2] = 0
        local0[3] = 0
        local0[4] = 50
        local0[5] = 0
        local0[6] = 45
        local0[7] = 25
        local0[9] = 0
        local0[11] = 25
        local0[10] = 40
    elseif 4 <= local3 then
        local0[1] = 5
        local0[2] = 30
        local0[3] = 5
        local0[4] = 20
        local0[5] = 5
        local0[6] = 0
        local0[7] = 0
        local0[9] = 5
        local0[11] = 15
        local0[10] = 15
    elseif 2 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[3] = 10
        local0[5] = 10
        local0[9] = 15
        local0[10] = 25
    else
        local0[1] = 15
        local0[2] = 35
        local0[3] = 15
        local0[5] = 15
        local0[9] = 10
        local0[10] = 10
    end
    local0[1] = SetCoolTime(ai, goal, 3000, 6, local0[1], 1)
    local0[1] = SetCoolTime(ai, goal, 3001, 6, local0[1], 1)
    local0[1] = SetCoolTime(ai, goal, 3002, 6, local0[1], 1)
    local0[2] = SetCoolTime(ai, goal, 6002, 8, local0[2], 1)
    local0[2] = SetCoolTime(ai, goal, 6003, 8, local0[2], 1)
    local0[3] = SetCoolTime(ai, goal, 3004, 15, local0[3], 1)
    local0[3] = SetCoolTime(ai, goal, 3005, 15, local0[3], 1)
    local0[4] = SetCoolTime(ai, goal, 3004, 15, local0[4], 1)
    local0[4] = SetCoolTime(ai, goal, 3005, 15, local0[4], 1)
    local0[5] = SetCoolTime(ai, goal, 3006, 6, local0[5], 1)
    local0[5] = SetCoolTime(ai, goal, 3007, 6, local0[5], 1)
    local0[6] = SetCoolTime(ai, goal, 3006, 6, local0[6], 1)
    local0[6] = SetCoolTime(ai, goal, 3007, 6, local0[6], 1)
    local0[8] = SetCoolTime(ai, goal, 3009, 10, local0[8], 1)
    local0[9] = SetCoolTime(ai, goal, 3010, 15, local0[9], 1)
    local0[10] = SetCoolTime(ai, goal, 3011, 10, local0[10], 1)
    local1[1] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act01)
    local1[2] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act02)
    local1[3] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act03)
    local1[4] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act04)
    local1[5] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act05)
    local1[6] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act06)
    local1[7] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act07)
    local1[8] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act08)
    local1[9] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act09)
    local1[10] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act10)
    local1[11] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act11)
    local1[20] = REGIST_FUNC(ai, goal, CrucifyTheDead136000_Act20)
    Common_Battle_Activate(ai, goal, local0, local1, REGIST_FUNC(ai, goal, CrucifyTheDead136000_ActAfter_AdjustSpace), local2)
    return 
end

function CrucifyTheDead136000_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.8 - self:GetMapHitRadius(TARGET_SELF), 3.8 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.8 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = ATT_SUCCESSDIST
    local local3 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1.5
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    if local6 <= 5 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
    elseif local6 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.3 - self:GetMapHitRadius(TARGET_SELF) + 1.5)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act02(self, ai, goal)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if InsideRange(self, ai, 90, 180, -99, 99) then
        if SpaceCheck(self, ai, -90, self:GetStringIndexedNumber("Dist_SideStep")) then
            ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_SideStep")) then
            ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            return 
        end
    elseif InsideRange(self, ai, -90, 180, -99, 99) then
        if SpaceCheck(self, ai, 90, self:GetStringIndexedNumber("Dist_SideStep")) then
            ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_SideStep")) then
            ai:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            return 
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.9 - self:GetMapHitRadius(TARGET_SELF), 2.9 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 2.9 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.5 - self:GetMapHitRadius(TARGET_SELF), 5.5 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 5.5 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.1 - self:GetMapHitRadius(TARGET_SELF), 3.1 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.1 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act06(self, ai, goal)
    local local0 = self:GetRandam_Float(5.5 - self:GetMapHitRadius(TARGET_SELF), 7.7 - self:GetMapHitRadius(TARGET_SELF))
    Approach_Act_Flex(self, ai, local0, local0, local0, 100, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act07(self, ai, goal)
    local local0 = self:GetRandam_Float(9 - self:GetMapHitRadius(TARGET_SELF), 11.8 - 1 - self:GetMapHitRadius(TARGET_SELF))
    Approach_Act_Flex(self, ai, local0, local0, local0, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act08(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act09(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.7 - self:GetMapHitRadius(TARGET_SELF), 3.7 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.7 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act10(self, ai, goal)
    Approach_Act_Flex(self, ai, 3 - self:GetMapHitRadius(TARGET_SELF), 3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act11(self, ai, goal)
    local local0 = self:GetRandam_Float(4 - self:GetMapHitRadius(TARGET_SELF), 7.1 - 1 - self:GetMapHitRadius(TARGET_SELF))
    Approach_Act_Flex(self, ai, local0, local0, local0, 100, 0, 5, 5)
    local local1 = 3003
    local local2 = 3001
    local local3 = ATT_SUCCESSDIST
    local local4 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1.5
    local local5 = 0
    local local6 = 0
    local local7 = self:GetRandam_Int(1, 100)
    if local7 <= 0 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6)
    elseif local7 <= 65 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local5, local6)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local5, local6)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 4.3 - self:GetMapHitRadius(TARGET_SELF) + 1.5)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrucifyTheDead136000_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct, 5)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetRandam_Int(1, 100)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    elseif ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and local1 <= 100 then
        goal:ClearSubGoal()
        if ai:GetSpecialEffectActivateInterruptType(0) == 5025 and local0 <= 8.5 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
            elseif local0 <= 2.5 then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            elseif local1 <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
    end
    if InsideRange(ai, goal, 0, 180, -99, 3.5) and Counter_Act(ai, goal, 5, 3015) then
        if ai:GetRandam_Int(1, 100) <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999)
        end
        goal:AddSubGoal(GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct, 10)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct, "GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Lycanthrope_801500_AfterAttackAct, true)
Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    ai:SetStringIndexedNumber("DistMin_AAA", 0.5)
    ai:SetStringIndexedNumber("DistMax_AAA", 5)
    ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    ai:SetStringIndexedNumber("Angle_AAA", 120)
    ai:SetStringIndexedNumber("DistMin_Inter_AAA", 0.5)
    ai:SetStringIndexedNumber("DistMax_Inter_AAA", 4)
    if 4 <= local0 then
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    elseif 2 <= local0 then
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 100)
    else
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 70)
        ai:SetStringIndexedNumber("Odds_BsAndSide_AAA", 30)
    end
    goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

RegisterTableGoal(GOAL_SpellSummon_Lycanthrope_801500_StepAttack, "GOAL_SpellSummon_Lycanthrope_801500_StepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Lycanthrope_801500_StepAttack, true)
Goal.Activate = function (self, ai, goal)
    if InsideRange(ai, goal, 0, 120, 4 - ai:GetMapHitRadius(TARGET_SELF), 7.1 - 1 - ai:GetMapHitRadius(TARGET_SELF)) then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    elseif InsideRange(ai, goal, 180, 180, -99 - ai:GetMapHitRadius(TARGET_SELF), 1.7 - ai:GetMapHitRadius(TARGET_SELF)) then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    elseif InsideRange(ai, goal, 0, 180, -99 - ai:GetMapHitRadius(TARGET_SELF), 3.7 - ai:GetMapHitRadius(TARGET_SELF)) then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
