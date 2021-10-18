RegisterTableGoal(GOAL_Marauder_826000_Battle, "GOAL_Marauder_826000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Marauder_826000_Battle, true)

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
    
    ai:SetStringIndexedNumber("Dist_SideStep", 7)
    ai:SetStringIndexedNumber("Dist_BackStep", 7)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    ai:SetNumber(0, 0)
    ai:SetNumber(1, 0)
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_b = 1
    local roll_a = ai:GetRandam_Int(1, 100)
    local modifier_a = 1
    local modifier_b = 1
    local modifier_c = 1
    local modifier_d = 1
    local modifier_e = 1
    local modifier_f = 1
    local hp_rate = ai:GetHpRate(TARGET_SELF)
    
    if 150 <= ai:GetNumber(2) then
        roll_b = ai:GetRandam_Int(100, 120)
    elseif 100 <= ai:GetNumber(2) then
        roll_b = ai:GetRandam_Int(90, 120)
    elseif 75 <= ai:GetNumber(2) then
        roll_b = ai:GetRandam_Int(60, 120)
    elseif 50 <= ai:GetNumber(2) then
        roll_b = ai:GetRandam_Int(10, 110)
    else
        roll_b = ai:GetRandam_Int(1, 10)
    end
    if hp_rate <= 0.3 then
        modifier_a = 4
        modifier_b = 1
        modifier_c = 1
    elseif 0.7 <= hp_rate then
        modifier_a = 1
        modifier_b = 1
        modifier_c = 4
    else
        modifier_a = 1.5
        modifier_b = 1.5
        modifier_c = 0.5
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 12125) then
        modifier_d = 1
    else
        modifier_d = 20
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 12126) then
        modifier_e = 1
    else
        modifier_e = 20
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 12127) then
        modifier_f = 1
    else
        modifier_f = 20
    end
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if 100 <= roll_b and hp_rate <= 0.85 then
        actChanceList[31] = 100 * modifier_a * modifier_d
        actChanceList[32] = 100 * modifier_b * modifier_e
        actChanceList[33] = 100 * modifier_c * modifier_f
    elseif 12 <= distance then
        actChanceList[1] = 10
        actChanceList[2] = 10
        actChanceList[3] = 5
        actChanceList[4] = 20
        actChanceList[5] = 20
        actChanceList[6] = 20
        actChanceList[10] = 5
        actChanceList[11] = 15
        actChanceList[12] = 0
    elseif 8 <= distance then
        actChanceList[1] = 5
        actChanceList[2] = 5
        actChanceList[3] = 10
        actChanceList[4] = 20
        actChanceList[5] = 10
        actChanceList[6] = 20
        actChanceList[10] = 10
        actChanceList[11] = 20
        actChanceList[12] = 0
    elseif 5 <= distance then
        actChanceList[1] = 10
        actChanceList[2] = 10
        actChanceList[3] = 5
        actChanceList[4] = 15
        actChanceList[5] = 15
        actChanceList[6] = 15
        actChanceList[10] = 10
        actChanceList[11] = 15
        actChanceList[12] = 5
    elseif 2 <= distance then
        actChanceList[1] = 15
        actChanceList[2] = 10
        actChanceList[3] = 15
        actChanceList[4] = 5
        actChanceList[5] = 10
        actChanceList[6] = 5
        actChanceList[10] = 15
        actChanceList[11] = 10
        actChanceList[12] = 15
    elseif 70 <= roll_a and InsideDir(ai, goal, 135, 45) then
        actChanceList[7] = 80
        actChanceList[9] = 20
    elseif 70 <= roll_a and InsideDir(ai, goal, -135, 45) then
        actChanceList[8] = 80
        actChanceList[9] = 20
    elseif 60 <= roll_a and InsideDir(ai, goal, -180, 45) then
        actChanceList[9] = 100
    else
        actChanceList[1] = 20
        actChanceList[2] = 20
        actChanceList[3] = 15
        actChanceList[4] = 0
        actChanceList[5] = 10
        actChanceList[6] = 5
        actChanceList[10] = 15
        actChanceList[11] = 0
        actChanceList[12] = 15
    end
    
    ----------------------------------
    -- Act Cooldowns
    ----------------------------------
    actChanceList[10] = SetCoolTime(ai, goal, 3015, 8, actChanceList[10], 0)
    actChanceList[11] = SetCoolTime(ai, goal, 3015, 8, actChanceList[11], 0)
    actChanceList[12] = SetCoolTime(ai, goal, 3015, 8, actChanceList[12], 0)
    
    ----------------------------------
    -- Acts
    ----------------------------------
    actFuncList[1] = REGIST_FUNC(ai, goal, Marauder_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, Marauder_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, Marauder_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, Marauder_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, Marauder_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, Marauder_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, Marauder_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, Marauder_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, Marauder_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, Marauder_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, Marauder_Act11)
    actFuncList[12] = REGIST_FUNC(ai, goal, Marauder_Act12)
    actFuncList[30] = REGIST_FUNC(ai, goal, Marauder_Act30)
    actFuncList[31] = REGIST_FUNC(ai, goal, Marauder_Act31)
    actFuncList[32] = REGIST_FUNC(ai, goal, Marauder_Act32)
    actFuncList[33] = REGIST_FUNC(ai, goal, Marauder_Act33)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, Marauder_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
function Marauder_Act01(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 5 - self:GetMapHitRadius(TARGET_SELF) - 1, 5 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = self:GetRandam_Int(1, 100)
    local local5 = self:GetRandam_Int(1, 100)
    if local4 <= 0 then
        self:SetNumber(2, self:GetNumber(2) + 4)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, local2, local3)
    elseif local4 <= 60 then
        self:SetNumber(2, self:GetNumber(2) + 8)
        if local5 <= 20 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1)
        elseif local5 <= 40 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1)
        elseif local5 <= 75 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1)
        end
    else
        self:SetNumber(2, self:GetNumber(2) + 12)
        if local5 <= 20 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 5.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        elseif local5 <= 30 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 7 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
        elseif local5 <= 40 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 7.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local1)
        elseif local5 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 5.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        elseif local5 <= 60 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 7 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 7.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act02(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 5 - self:GetMapHitRadius(TARGET_SELF) - 1, 5 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = self:GetRandam_Int(1, 100)
    local local5 = self:GetRandam_Int(1, 100)
    if local4 <= 0 then
        self:SetNumber(2, self:GetNumber(2) + 4)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, local2, local3)
    elseif local4 <= 60 then
        self:SetNumber(2, self:GetNumber(2) + 8)
        if local5 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 5.5 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 7 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
        end
    else
        self:SetNumber(2, self:GetNumber(2) + 12)
        if local5 <= 30 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5.5 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1)
        elseif local5 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5.5 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 7 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 7.5 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act03(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 4 - self:GetMapHitRadius(TARGET_SELF), 4 - self:GetMapHitRadius(TARGET_SELF), 999, 100, 0, 3, 5)
    local local1 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = self:GetRandam_Int(1, 100)
    if self:GetRandam_Int(1, 100) <= 0 then
        self:SetNumber(2, self:GetNumber(2) + 4)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, local2, local3)
    else
        self:SetNumber(2, self:GetNumber(2) + 8)
        if local4 <= 25 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local1)
        elseif local4 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1)
        elseif local4 <= 75 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act04(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 4 - self:GetMapHitRadius(TARGET_SELF) - 1, 4 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 30 then
        self:SetNumber(2, self:GetNumber(2) + 6)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, local2, local3)
    else
        self:SetNumber(2, self:GetNumber(2) + 12)
        if self:GetRandam_Int(1, 100) <= 30 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act05(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 6 - self:GetMapHitRadius(TARGET_SELF) - 1, 6 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = self:GetRandam_Int(1, 100)
    local local5 = self:GetRandam_Int(1, 100)
    if local4 <= 20 then
        self:SetNumber(2, self:GetNumber(2) + 4)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, local2, local3)
    elseif local4 <= 60 then
        self:SetNumber(2, self:GetNumber(2) + 8)
        if local5 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1)
        end
    else
        self:SetNumber(2, self:GetNumber(2) + 12)
        if local5 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 5.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 5.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 12 - self:GetMapHitRadius(TARGET_SELF) - 4, 0, 999, 100, 0, 3, 5)
    local local0 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = self:GetRandam_Int(1, 100)
    local local4 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, self:GetNumber(2) + 10)
    if 3 <= self:GetDist(TARGET_ENE_0) then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local0, local1, local2)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6001, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF), local1, local2)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act07(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, self:GetNumber(2) + 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act08(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, self:GetNumber(2) + 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act09(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, self:GetNumber(2) + 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act10(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 4 - self:GetMapHitRadius(TARGET_SELF) - 1, 4 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = self:GetRandam_Int(1, 100)
    local local3 = self:GetRandam_Int(1, 100)
    if local2 <= 30 then
        self:SetNumber(2, self:GetNumber(2) + 7)
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1)
    elseif local2 <= 75 then
        self:SetNumber(2, self:GetNumber(2) + 14)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 100)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1)
    else
        self:SetNumber(2, self:GetNumber(2) + 21)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 100)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act11(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 7 - self:GetMapHitRadius(TARGET_SELF) - 1, 7 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 0
    local local2 = 0
    local local3 = self:GetRandam_Int(1, 100)
    local local4 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, self:GetNumber(2) + 14)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act12(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 4 - self:GetMapHitRadius(TARGET_SELF) - 1, 4 - self:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 0
    local local2 = 0
    local local3 = self:GetRandam_Int(1, 100)
    local local4 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, self:GetNumber(2) + 14)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act30(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, 0)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act31(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, 0)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act32(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, 0)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20002, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Marauder_Act33(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    self:SetNumber(2, 0)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20004, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function Marauder_ActAfter_AdjustSpace(self, ai, goal)
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
    return false
end

RegisterTableGoal(GOAL_Marauder_826000_AfterAttackAct, "GOAL_Marauder_826000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Marauder_826000_AfterAttackAct, true)

-------------------------
-- Activate
-------------------------
Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetRandam_Int(1, 100)
    local local2 = ai:GetRandam_Int(1, 100)
    local local3 = 0
    local local4 = ai:GetRandam_Float(2, 3)
    local local5 = ai:GetRandam_Int(0, 1)
    local local6 = ai:GetRandam_Int(30, 45)
    local local7 = ai:GetRandam_Float(2, 3)
    local local8 = local0 + ai:GetRandam_Float(6, 8)
    local local9 = ai:GetRandam_Float(1, 2)
    local local10 = ai:GetRandam_Float(1.3, 1.7)
    local local11 = local0 + ai:GetRandam_Float(3, 5)
    if 10 <= local0 then
        if local2 <= 80 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, IsGuard)
        elseif local2 <= 100 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, IsGuard)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
        end
    elseif 6 <= local0 then
        if local2 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, IsGuard)
        elseif local2 <= 40 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, IsGuard)
        end
    elseif 3 <= local0 then
        if local2 <= 20 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local5, local6, true, true, IsGuard)
        elseif local2 <= 35 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local10, TARGET_ENE_0, local11, TARGET_ENE_0, true, IsGuard)
        end
    elseif local2 <= 0 then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local5, local6, true, true, IsGuard)
    elseif local2 <= 30 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local10, TARGET_ENE_0, local11, TARGET_ENE_0, true, IsGuard)
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
