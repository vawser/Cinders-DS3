RegisterTableGoal(GOAL_Corrupted_Gundyr_60000_HU_Battle, "GOAL_Corrupted_Gundyr_60000_HU_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Corrupted_Gundyr_60000_HU_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 4)
    ai:SetStringIndexedNumber("Dist_BackStep", 3.8)
    
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if 5 <= distance then
            actChanceList[20] = 10
        else
            actChanceList[6] = 30
            actChanceList[20] = 70
        end
    elseif InsideRange(ai, goal, 130, 30, -1, 6 - ai:GetMapHitRadius(TARGET_SELF)) then
        actChanceList[6] = 10
        actChanceList[11] = 30
        actChanceList[20] = 30
    elseif InsideRange(ai, goal, -130, 30, -1, 6 - ai:GetMapHitRadius(TARGET_SELF)) then
        actChanceList[6] = 10
        actChanceList[10] = 20
        actChanceList[20] = 30
    elseif 18 <= distance then
        actChanceList[3] = 10
    elseif 15 <= distance then
        actChanceList[3] = 10
        actChanceList[9] = 30
    elseif 10 <= distance then
        actChanceList[1] = 10
        actChanceList[3] = 10
        actChanceList[9] = 10
    elseif 8 <= distance then
        actChanceList[1] = 30
        actChanceList[9] = 20
        actChanceList[8] = 10
    elseif 5 <= distance then
        actChanceList[1] = 30
        actChanceList[9] = 20
        actChanceList[5] = 20
        actChanceList[8] = 10
        actChanceList[11] = 20
    elseif 1.5 <= distance then
        actChanceList[5] = 20
        actChanceList[6] = 10
        actChanceList[8] = 10
        actChanceList[10] = 30
        actChanceList[11] = 20
    else
        actChanceList[6] = 30
        actChanceList[10] = 20
        actChanceList[11] = 20
    end
    
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 8, actChanceList[1], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3005, 8, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3008, 8, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3009, 15, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3010, 10, actChanceList[6], 1)
    actChanceList[8] = SetCoolTime(ai, goal, 3012, 10, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(ai, goal, 3013, 8, actChanceList[9], 1)
    actChanceList[10] = SetCoolTime(ai, goal, 3014, 8, actChanceList[10], 1)
    actChanceList[11] = SetCoolTime(ai, goal, 3015, 8, actChanceList[11], 1)
    actFuncList[1] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act01)
    actFuncList[3] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act03)
    actFuncList[5] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act06)
    actFuncList[8] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act11)
    actFuncList[20] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act20)
    actFuncList[40] = REGIST_FUNC(ai, goal, CorruptedGundyr_HU_Act40)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, CorruptedGundyr_HU_ActAfter_AdjustSpace), actTblList)
    return 
end

function CorruptedGundyr_HU_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.5 - self:GetMapHitRadius(TARGET_SELF), 10.5 - self:GetMapHitRadius(TARGET_SELF) + 999, 10.5 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2, 4)
    local local0 = 3006
    local local1 = 16.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 12.5 - self:GetMapHitRadius(TARGET_SELF) + 1)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 25.5 - self:GetMapHitRadius(TARGET_SELF), 25.5 - self:GetMapHitRadius(TARGET_SELF) + 999, 25.5 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2, 4)
    local local0 = 3005
    local local1 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 25 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 16.5 - self:GetMapHitRadius(TARGET_SELF) + 1, local2, local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act04(self, ai, goal)
    local local0 = 3008
    local local1 = 3004
    local local2 = 14.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 11 - self:GetMapHitRadius(TARGET_SELF) - 1, 11 - self:GetMapHitRadius(TARGET_SELF) + 999, 11 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2.5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act06(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 14 - self:GetMapHitRadius(TARGET_SELF) - 1, 14 - self:GetMapHitRadius(TARGET_SELF) + 999, 14 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, nil)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act09(self, ai, goal)
    Approach_Act_Flex(self, ai, 15.5 - self:GetMapHitRadius(TARGET_SELF), 15.5 - self:GetMapHitRadius(TARGET_SELF) + 999, 15.5 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2, 4)
    local local0 = 3013
    local local1 = 3003
    local local2 = 12.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 14.5 - self:GetMapHitRadius(TARGET_SELF) + 1)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act10(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 14.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act11(self, ai, goal)
    local local0 = 3006
    local local1 = 16.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, self:GetRandam_Int(15, 90))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_Act40(self, ai, goal)
    local local0 = 3001
    local local1 = 3008
    local local2 = 12 - self:GetMapHitRadius(TARGET_SELF)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local2, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_HU_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_Corrupted_Gundyr_60000_HU_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local0 = ai:GetDist(TARGET_ENE_0)
        if ai:GetSpecialEffectActivateInterruptType(0) == 90 then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        end
    end
    return 
end

RegisterTableGoal(GOAL_Corrupted_Gundyr_60000_HU_AfterAttackAct, "GOAL_Corrupted_Gundyr_60000_HU_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Corrupted_Gundyr_60000_HU_AfterAttackAct, true)
Goal.Activate = function (self, ai, goal)
    if ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        local local0 = ai:GetDist(TARGET_ENE_0)
        local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
        ai:SetStringIndexedNumber("DistMin_AAA", 0)
        ai:SetStringIndexedNumber("DistMax_AAA", 25)
        ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
        ai:SetStringIndexedNumber("Angle_AAA", 180)
        ai:SetStringIndexedNumber("DistMin_Inter_AAA", 0)
        ai:SetStringIndexedNumber("DistMax_Inter_AAA", 35)
        ai:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
        ai:SetStringIndexedNumber("Ang_Inter_AAA", 180)
        if 10 <= local0 then
            ai:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
            ai:SetStringIndexedNumber("Odds_Back_AAA", 0)
            ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        elseif 5 <= local0 then
            ai:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
            ai:SetStringIndexedNumber("Odds_Back_AAA", 0)
            ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        elseif 2 <= local0 then
            ai:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
            ai:SetStringIndexedNumber("Odds_Back_AAA", 10)
            ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        else
            ai:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
            ai:SetStringIndexedNumber("Odds_Back_AAA", 10)
            ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        end
        goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
