RegisterTableGoal(GOAL_Corrupted_Gundyr_60000_Battle, "GOAL_Corrupted_Gundyr_60000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Corrupted_Gundyr_60000_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    ai:SetTimer(10, 3)
    ai:SetNumber(0, 0)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 4)
    ai:SetStringIndexedNumber("Dist_BackStep", 3.8)
    
    ai:SetStringIndexedNumber("Gunda_ADAdjustment", 0)
    ai:SetStringIndexedNumber("Gunda_ForceRunDist", 999)
    ai:SetStringIndexedNumber("Gunda_Odds_Run", 0)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90) -- Knocked Down
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    
    -- Switch to HU mode
    if ai:GetHpRate(TARGET_SELF) <= 0.8 and ai:HasSpecialEffectId(TARGET_SELF, 5404) == false then
        actChanceList[50] = 100
    --
    elseif ai:GetNumber(0) == 0 then
        actChanceList[21] = 10
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
        if InsideRange(ai, goal, 180, 150, -1, 4 - ai:GetMapHitRadius(TARGET_SELF)) then
            actChanceList[6] = 70
            actChanceList[20] = 30
        else
            actChanceList[20] = 10
        end
    elseif InsideRange(ai, goal, 105, 60, -1, 3) then
        actChanceList[4] = 55
        actChanceList[5] = 45
    elseif InsideRange(ai, goal, -105, 60, -1, 3) then
        actChanceList[4] = 25
        actChanceList[5] = 35
        actChanceList[8] = 40
    elseif distance >= 10 then
        actChanceList[1] = 75
        actChanceList[2] = 25
    elseif distance >= 8 then
        actChanceList[1] = 30
        actChanceList[2] = 55
        actChanceList[9] = 15
    elseif distance >= 3 then
        actChanceList[4] = 10
        actChanceList[5] = 10
        actChanceList[9] = 75
    elseif distance >= 1.5 then
        actChanceList[4] = 10
        actChanceList[5] = 10
        actChanceList[7] = 35
        actChanceList[8] = 10
        actChanceList[9] = 35
    else
        actChanceList[3] = 20
        actChanceList[4] = 10
        actChanceList[5] = 10
        actChanceList[7] = 25
        actChanceList[8] = 10
        actChanceList[9] = 25
    end
    
    if ai:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        actChanceList[21] = actChanceList[21] + 300
    end
    
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 10, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 3002, 8, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3003, 8, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3004, 8, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3007, 8, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3009, 8, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3010, 16, actChanceList[7], 1)
    actChanceList[8] = SetCoolTime(ai, goal, 3011, 8, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(ai, goal, 3012, 8, actChanceList[9], 1)
    actChanceList[10] = SetCoolTime(ai, goal, 3020, 16, actChanceList[10], 1)
    actChanceList[11] = SetCoolTime(ai, goal, 3021, 8, actChanceList[11], 1)
    actChanceList[12] = SetCoolTime(ai, goal, 3022, 12, actChanceList[12], 1)
    actChanceList[13] = SetCoolTime(ai, goal, 3026, 8, actChanceList[13], 1)
    actChanceList[13] = SetCoolTime(ai, goal, 3021, 8, actChanceList[13], 1)
    actChanceList[16] = SetCoolTime(ai, goal, 3026, 8, actChanceList[16], 1)

    actFuncList[1] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act11)
    actFuncList[12] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act12)
    actFuncList[13] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act13)
    actFuncList[14] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act14)
    actFuncList[15] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act15)
    actFuncList[16] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act16)
    actFuncList[17] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act17)
    actFuncList[20] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act21)
    actFuncList[30] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act30)
    actFuncList[40] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act40)
    actFuncList[50] = REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_Act50)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, CorruptedGundyr_Normal_ActAfter_AdjustSpace), actTblList)
    return 
end

function CorruptedGundyr_Normal_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 18 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 18 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1, 3)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3029
    local local3 = 3014
    local local4 = 8.5 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 11.5 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 9.8 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 7.2 - self:GetMapHitRadius(TARGET_SELF)
    local local8 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local9 = 0
    local local10 = 0
    local local11 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if self:GetNpcThinkParamID() == 511100 and self:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local11 <= 30 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, local9, local10)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 5.2 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local8)
        elseif local11 <= 60 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local7, local9, local10)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local8)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local7, local9, local10)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.8 - self:GetMapHitRadius(TARGET_SELF) - 1.5)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local8)
        end
    elseif local11 <= 25 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local9, local10)
    elseif local11 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local9, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local8)
    elseif local11 <= 75 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local9, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local8)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local9, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 16.8 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 16.8 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 2.5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 3.5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1, 3)
    local local0 = 3003
    local local1 = 3005
    local local2 = 3006
    local local3 = 3014
    local local4 = 4.5 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 9.8 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 7.2 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    local local10 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if self:GetNpcThinkParamID() == 511100 and self:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local10 <= 30 then
            local local11 = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
            local11:SetTargetAngle(0, 0, 75)
            local11 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5)
            local11:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
        elseif local10 <= 60 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 8.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 8.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 5.2 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7)
        end
    elseif local10 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local7)
    elseif local10 <= 65 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 8.5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 8.5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 2.5, 5)
    local local0 = 3004
    local local1 = 3005
    local local2 = 3006
    local local3 = 4.5 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 9.8 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if self:GetNpcThinkParamID() == 511100 and self:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local8 <= 20 then
            local local9 = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9 = local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            local9:SetTargetAngle(0, 0, 75)
            local9 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
            local9 = local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            local9:SetTargetAngle(0, 0, 75)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
        elseif local8 <= 70 then
            local local9 = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), local6, local7)
            local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            local9 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local3)
            local9:SetTargetAngle(0, 0, 75)
            local9 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
            local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 3.8 - self:GetMapHitRadius(TARGET_SELF) - 1.5)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local5)
        else
            local local9 = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9 = local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            local9:SetTargetAngle(0, 0, 75)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, local4)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
        end
    elseif local8 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 7 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 7 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 2.5, 5)
    local local0 = 3007
    local local1 = 3008
    local local2 = 3029
    local local3 = 7 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 11.5 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if self:GetNpcThinkParamID() == 511100 and self:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local8 <= 25 then
            local local9 = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.8 - self:GetMapHitRadius(TARGET_SELF) - 1.5)
            local9 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 9.8 - self:GetMapHitRadius(TARGET_SELF) + 1)
            local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5)
        elseif local8 <= 75 then
            local local9 = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 5.2 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local5)
        else
            local local9 = ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 22 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local5)
        end
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act06(self, ai, goal)
    local local0 = 3009
    local local1 = 3008
    local local2 = 3026
    local local3 = 3027
    local local4 = 9 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 4.5 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 5.2 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    local local10 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if self:GetNpcThinkParamID() == 511100 and self:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local10 <= 30 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
        elseif local10 <= 60 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 11.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, local5)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 8.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local7)
        end
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local8, local9)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, 5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 3, 3)
    local local0 = 3010
    local local1 = 3027
    local local2 = 5.2 - self:GetMapHitRadius(TARGET_SELF)
    local local3 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if self:GetNpcThinkParamID() == 511100 then
        self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    if self:GetNpcThinkParamID() == 511100 and self:HasSpecialEffectId(TARGET_SELF, 5020) then
        if self:GetRandam_Int(1, 100) <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 11.5 - self:GetMapHitRadius(TARGET_SELF), local4, local5)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, local2)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.3 - self:GetMapHitRadius(TARGET_SELF), local4, local5)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local2)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
        end
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
    end
    if self:GetNpcThinkParamID() == 511000 then
        CorruptedGundyr_Normal_Act21(self, ai, goal)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 8 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 8 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1.5, 3)
    local local0 = 3011
    local local1 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if self:GetNpcThinkParamID() == 511100 and self:HasSpecialEffectId(TARGET_SELF, 5020) then
        if self:GetRandam_Int(1, 100) <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.8 - self:GetMapHitRadius(TARGET_SELF) - 1.5, local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local1)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.5 - self:GetMapHitRadius(TARGET_SELF), local2, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 5.2 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local1)
        end
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act09(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.3 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 6.3 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 3, 3)
    local local0 = 3012
    local local1 = 3001
    local local2 = 3013
    local local3 = 3014
    local local4 = 8.5 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 7.8 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 7.2 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    local local10 = self:GetRandam_Int(1, 100)
    if self:GetNpcThinkParamID() == 511100 and self:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local10 <= 25 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local5)
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
        elseif local10 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local7)
        elseif local10 <= 75 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.8 - self:GetMapHitRadius(TARGET_SELF) - 1.5)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local7)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 5.2 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7)
        end
    elseif local10 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
    elseif local10 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
    elseif local10 <= 75 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act10(self, ai, goal)
    local local0 = 3023
    local local1 = 3020
    local local2 = 12 - self:GetMapHitRadius(TARGET_SELF)
    if 0.4 <= self:GetHpRate(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 15, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 15, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 11.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 9.8 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act11(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 3.5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1, 3)
    local local0 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9.8 - self:GetMapHitRadius(TARGET_SELF))
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act12(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act13(self, ai, goal)
    local local0 = 3026
    local local1 = 3021
    local local2 = 3027
    local local3 = 5.2 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 12 - self:GetMapHitRadius(TARGET_SELF)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local local5 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            local5:SetTargetRange(1, -99, 5)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
        else
            local local5 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            local5:SetTargetRange(1, -99, 5)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
        end
    elseif self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local local5 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        local5:SetTargetRange(1, -99, 5)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
    else
        local local5 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        local5:SetTargetRange(1, -99, 5)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act14(self, ai, goal)
    local local0 = 3009
    local local1 = 3027
    local local2 = 9 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 5.2 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
    else
        local local6 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF))
        local6:SetTargetRange(0, 6.3 - self:GetMapHitRadius(TARGET_SELF), 999)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 8.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act15(self, ai, goal)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3014
    local local3 = 8.5 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 9.8 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if local8 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 5.2 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local5)
    elseif local8 <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 11.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 7.2 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.8 - self:GetMapHitRadius(TARGET_SELF) - 1.5)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act16(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), 4.5 - self:GetMapHitRadius(TARGET_SELF) + self:GetStringIndexedNumber("Gunda_ADAdjustment"), self:GetStringIndexedNumber("Gunda_ForceRunDist"), self:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1, 3)
    local local0 = 3026
    local local1 = 3027
    local local2 = 3011
    local local3 = 5.2 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 8 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 12 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if local8 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 6.3 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local8 <= 65 then
        local local9 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3)
        local9:SetTargetAngle(0, 0, 75)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 8.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local5)
    else
        local local9 = ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3)
        local9:SetTargetAngle(0, 0, 75)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 3.8 - self:GetMapHitRadius(TARGET_SELF) - 1.5)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act17(self, ai, goal)
    local local0 = 12 - self:GetMapHitRadius(TARGET_SELF)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if self:GetRandam_Int(1, 100) <= 60 then
        local local1 = ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        local1:SetTargetRange(1, -99, 5)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF))
        local1 = ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 5.2 - self:GetMapHitRadius(TARGET_SELF))
        local1:SetTargetAngle(0, 0, 75)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local0)
    else
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        if 0.4 <= self:GetHpRate(TARGET_SELF) then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 11.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 9.8 - self:GetMapHitRadius(TARGET_SELF))
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, self:GetRandam_Int(15, 90))
    return 0
end

function CorruptedGundyr_Normal_Act21(self, ai, goal)
    self:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    ai:AddSubGoal(GOAL_COMMON_ApproachTarget, self:GetRandam_Float(4, 6), TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    self:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act30(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 1600, TARGET_ENE_0, 22 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 12 - self:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act40(self, ai, goal)
    local local0 = 3000
    local local1 = 3002
    local local2 = 12 - self:GetMapHitRadius(TARGET_SELF)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 999)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_Act50(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CorruptedGundyr_Normal_ActAfter_AdjustSpace(self, ai, goal)
    if self:GetNpcThinkParamID() == 511100 == false then
        ai:AddSubGoal(GOAL_Corrupted_Gundyr_60000_AfterAttackAct, 10)
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    if ai:GetNpcThinkParamID() == 511100 then
        if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            local local0 = ai:GetDist(TARGET_ENE_0)
            local local1 = 12 - ai:GetMapHitRadius(TARGET_SELF)
            local local2 = ai:GetHpRate(TARGET_SELF)
            if ai:GetSpecialEffectActivateInterruptType(0) == 5027 and InsideRange(ai, goal, 0, 120, 6.8 - ai:GetMapHitRadius(TARGET_SELF) - 1, 16.8 - ai:GetMapHitRadius(TARGET_SELF) + 1) and ai:HasSpecialEffectId(TARGET_ENE_0, 12301) == true and ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if ai:GetRandam_Int(1, 100) <= 30 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local1)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1)
                    return true
                end
            elseif ai:GetSpecialEffectActivateInterruptType(0) == 5026 and ai:HasSpecialEffectId(TARGET_ENE_0, 90) and ai:HasSpecialEffectId(TARGET_ENE_0, 12302) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local1)
                return true
            elseif ai:GetSpecialEffectActivateInterruptType(0) == 90 and ai:HasSpecialEffectId(TARGET_ENE_0, 12301) == false and ai:HasSpecialEffectId(TARGET_ENE_0, 12302) == false then
                goal:ClearSubGoal()
                ai:Replaning()
                return true
            elseif ai:GetSpecialEffectActivateInterruptType(0) == 5029 and InsideRange(ai, goal, 210, 150, -99 - ai:GetMapHitRadius(TARGET_SELF) - 1, 4 - ai:GetMapHitRadius(TARGET_SELF) + 1) and ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0)
                CorruptedGundyr_Normal_Act14(ai, goal, paramTbl)
                return true
            elseif ai:GetSpecialEffectActivateInterruptType(0) == 5030 and InsideRange(ai, goal, 0, 210, 5.5, 22 - ai:GetMapHitRadius(TARGET_SELF)) and ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                goal:ClearSubGoal()
                if 0.4 <= local2 then
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 11.5 - ai:GetMapHitRadius(TARGET_SELF))
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - ai:GetMapHitRadius(TARGET_SELF))
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 9.8 - ai:GetMapHitRadius(TARGET_SELF))
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999)
                end
                return true
            elseif ai:GetSpecialEffectActivateInterruptType(0) == 5032 and InsideRange(ai, goal, 180, 180, -99, 2) and ai:HasSpecialEffectId(TARGET_SELF, 5020) and local2 <= 0.4 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                goal:ClearSubGoal()
                CorruptedGundyr_Normal_Act13(ai, goal, paramTbl)
                return true
            end
        end
        if ai:IsInterupt(INTERUPT_FindAttack) then
            local local0 = ai:GetRandam_Int(1, 100)
            if InsideRange(ai, goal, 0, 240, -99, 2.5) and ai:GetHpRate(TARGET_SELF) <= 0.4 and ai:HasSpecialEffectId(TARGET_SELF, 5020) and ai:HasSpecialEffectId(TARGET_SELF, 5032) then
                goal:ClearSubGoal()
                CorruptedGundyr_Normal_Act17(ai, goal, paramTbl)
                return true
            end
        end
        if ai:IsInterupt(INTERUPT_TargetOutOfRange) then
            if ai:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(ai, goal, 0, 120, -99 - ai:GetMapHitRadius(TARGET_SELF), 6.3 - ai:GetMapHitRadius(TARGET_SELF)) and ai:HasSpecialEffectId(TARGET_SELF, 5028) and ai:HasSpecialEffectId(TARGET_SELF, 5020) and ai:IsFinishTimer(1) == true then
                ai:SetTimer(1, 6)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 3.8 - ai:GetMapHitRadius(TARGET_SELF))
                return true
            elseif ai:IsTargetOutOfRangeInterruptSlot(1) then
                goal:ClearSubGoal()
                ai:Replaning()
                return true
            end
        end
        if ai:IsInterupt(INTERUPT_TargetOutOfAngle) and ai:IsTargetOutOfAngleInterruptSlot(0) then
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        elseif ai:IsInterupt(INTERUPT_Damaged) then
            if ai:HasSpecialEffectId(TARGET_SELF, 5025) and targetDist <= 5 then
                ai:Replaning()
                return true
            elseif InsideRange(ai, goal, 180, 150, -1, 4 - ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                ai:Replaning()
                return true
            end
        end
        if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideObserve(0) then
            goal:ClearSubGoal()
            ai:Replaning()
            ai:DeleteObserve(0)
            return true
        elseif ai:IsFinishTimer(2) == true then
            local local0 = ai:GetDist(TARGET_ENE_0)
            local local2 = 12 - ai:GetMapHitRadius(TARGET_SELF)
            if GuardBreak_Act(ai, goal, 5, 100) then
                if ai:HasSpecialEffectId(TARGET_SELF, 5034) == false then
                    ai:SetTimer(2, 5)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 7.2 - ai:GetMapHitRadius(TARGET_SELF))
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local2)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 5034) == true and ai:HasSpecialEffectId(TARGET_SELF, 5033) == true and ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                    ai:SetTimer(2, 5)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local2)
                    return true
                end
            end
            if ai:IsInterupt(INTERUPT_UseItem) and ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                if InsideRange(ai, goal, 0, 180, 10 - ai:GetMapHitRadius(TARGET_SELF) - 3, 18 - ai:GetMapHitRadius(TARGET_SELF)) then
                    ai:SetTimer(2, 5)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3000, TARGET_ENE_0, 5)
                    CorruptedGundyr_Normal_Act15(ai, goal, paramTbl)
                    return true
                elseif InsideRange(ai, goal, 0, 180, 2 - ai:GetMapHitRadius(TARGET_SELF), 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
                    ai:SetTimer(2, 5)
                    goal:ClearSubGoal()
                    CorruptedGundyr_Normal_Act16(ai, goal, paramTbl)
                    return true
                end
            end
        end
        local local0 = ai:GetRandam_Int(1, 100)
        local local1 = ai:GetDist(TARGET_ENE_0)
        if ai:IsInterupt(INTERUPT_Shoot) then
            if ai:HasSpecialEffectId(TARGET_SELF, 5032) and ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                if InsideRange(ai, goal, 0, 210, 5, 10) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    if InsideRange(ai, goal, 0, 150, 9 - ai:GetMapHitRadius(TARGET_SELF), 22 - ai:GetMapHitRadius(TARGET_SELF)) then
                        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999)
                        return true
                    end
                elseif InsideRange(ai, goal, 0, 210, 10, 18 - ai:GetMapHitRadius(TARGET_SELF)) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 999)
                    return true
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 5025) and ai:HasSpecialEffectId(TARGET_SELF, 5020) == false then
                goal:ClearSubGoal()
                CorruptedGundyr_Normal_Act01(ai, goal, paramTbl)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_Corrupted_Gundyr_60000_AfterAttackAct, "GOAL_Corrupted_Gundyr_60000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Corrupted_Gundyr_60000_AfterAttackAct, true)
Goal.Activate = function (self, ai, goal)
    if ai:HasSpecialEffectId(TARGET_SELF, 5404) == false then
        if InsideRange(ai, goal, 90, 180, -99, 5) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3.5), TARGET_ENE_0, 1, 45, true, true, 0)
        elseif InsideRange(ai, goal, -90, 180, -99, 5) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3.5), TARGET_ENE_0, 0, 45, true, true, 0)
        elseif 5 <= ai:GetDist(TARGET_ENE_0) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.5, 4.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), 45, true, true, 0)
        end
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
