RegisterTableGoal(GOAL_Dragonslayer_825000_Battle, "GOAL_Dragonslayer_825000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Dragonslayer_825000_Battle, true)

-------------------------
-- Initialize
-------------------------
Goal.Initialize = function (self, ai, goal, arg3)
    ai:SetNumber(0, 0)
    return 
end

-------------------------
-- Activate
-------------------------
Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 9)
    ai:SetStringIndexedNumber("Dist_BackStep", 9)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:SetNumber(0, 0)
    ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 4.7 - ai:GetMapHitRadius(TARGET_SELF))
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    local do_admirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if ai:GetHpRate(TARGET_SELF) <= 0.6 and ai:GetNumber(1) == 0 then
        actChanceList[47] = 100
    elseif 0.6 <= ai:GetHpRate(TARGET_SELF) then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and distance <= 4 then
            actChanceList[12] = 40
            actChanceList[19] = 40
            actChanceList[30] = 20
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and distance <= 7 then
            actChanceList[3] = 20
            actChanceList[17] = 10
            actChanceList[30] = 20
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and distance <= 7 then
            actChanceList[1] = 20
            actChanceList[18] = 10
            actChanceList[30] = 20
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 7 < distance then
            actChanceList[13] = 25
            actChanceList[14] = 25
            actChanceList[30] = 40
            actChanceList[17] = 10
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 7 < distance then
            actChanceList[13] = 25
            actChanceList[14] = 25
            actChanceList[30] = 40
            actChanceList[18] = 10
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            actChanceList[30] = 100
        elseif distance >= 20 then
            actChanceList[1] = 0
            actChanceList[2] = 45
            actChanceList[3] = 0
            actChanceList[4] = 0
            actChanceList[5] = 0
            actChanceList[6] = 0
            actChanceList[10] = 30
            actChanceList[11] = 10
            actChanceList[12] = 0
            actChanceList[13] = 10
            actChanceList[14] = 5
            actChanceList[15] = 30
            actChanceList[16] = 0
        elseif distance >= 15 then
            actChanceList[1] = 0
            actChanceList[2] = 15
            actChanceList[3] = 0
            actChanceList[4] = 0
            actChanceList[5] = 5
            actChanceList[6] = 0
            actChanceList[10] = 15
            actChanceList[11] = 15
            actChanceList[13] = 40
            actChanceList[14] = 10
            actChanceList[15] = 15
            actChanceList[16] = 0
        elseif distance >= 10 then
            actChanceList[1] = 0
            actChanceList[2] = 0
            actChanceList[3] = 0
            actChanceList[4] = 0
            actChanceList[5] = 20
            actChanceList[6] = 0
            actChanceList[10] = 0
            actChanceList[11] = 25
            actChanceList[13] = 20
            actChanceList[14] = 35
            actChanceList[15] = 0
            actChanceList[16] = 0
        elseif distance >= 5 then
            actChanceList[1] = 0
            actChanceList[2] = 0
            actChanceList[3] = 0
            actChanceList[4] = 0
            actChanceList[5] = 20
            actChanceList[6] = 25
            actChanceList[10] = 0
            actChanceList[11] = 15
            actChanceList[13] = 15
            actChanceList[14] = 10
            actChanceList[15] = 15
            actChanceList[16] = 5
        elseif distance >= 3 then
            actChanceList[1] = 15
            actChanceList[2] = 0
            actChanceList[3] = 15
            actChanceList[4] = 15
            actChanceList[5] = 10
            actChanceList[6] = 10
            actChanceList[10] = 0
            actChanceList[11] = 0
            actChanceList[13] = 0
            actChanceList[14] = 0
            actChanceList[15] = 15
            actChanceList[16] = 15
        else
            actChanceList[1] = 15
            actChanceList[2] = 0
            actChanceList[3] = 15
            actChanceList[4] = 15
            actChanceList[5] = 10
            actChanceList[6] = 10
            actChanceList[10] = 0
            actChanceList[11] = 0
            actChanceList[13] = 0
            actChanceList[14] = 0
            actChanceList[15] = 0
            actChanceList[16] = 15
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and distance <= 4 then
        actChanceList[12] = 30
        actChanceList[19] = 30
        actChanceList[30] = 10
        actChanceList[41] = 20
        actChanceList[43] = 10
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and distance <= 7 then
        actChanceList[3] = 10
        actChanceList[30] = 20
        actChanceList[17] = 10
        actChanceList[41] = 20
        actChanceList[43] = 10
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and distance <= 7 then
        actChanceList[1] = 10
        actChanceList[18] = 10
        actChanceList[30] = 20
        actChanceList[41] = 20
        actChanceList[43] = 10
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and distance > 7 then
        actChanceList[13] = 20
        actChanceList[14] = 20
        actChanceList[30] = 30
        actChanceList[17] = 10
        actChanceList[41] = 20
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and distance > 7 then
        actChanceList[13] = 20
        actChanceList[14] = 20
        actChanceList[30] = 30
        actChanceList[18] = 10
        actChanceList[41] = 20
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        actChanceList[30] = 80
        actChanceList[41] = 20
    elseif distance >= 20 then
        actChanceList[1] = 0
        actChanceList[2] = 35
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 0
        actChanceList[6] = 0
        actChanceList[10] = 20
        actChanceList[12] = 0
        actChanceList[13] = 10
        actChanceList[14] = 5
        actChanceList[15] = 10
        actChanceList[16] = 0
        actChanceList[40] = 0
        actChanceList[41] = 20
        actChanceList[42] = 0
        actChanceList[43] = 0
        actChanceList[44] = 0
        actChanceList[45] = 0
        actChanceList[46] = 10
    elseif distance >= 15 then
        actChanceList[1] = 0
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 5
        actChanceList[6] = 0
        actChanceList[10] = 10
        actChanceList[13] = 30
        actChanceList[14] = 0
        actChanceList[15] = 5
        actChanceList[16] = 0
        actChanceList[40] = 0
        actChanceList[41] = 20
        actChanceList[42] = 0
        actChanceList[43] = 0
        actChanceList[44] = 0
        actChanceList[45] = 0
        actChanceList[46] = 25
    elseif distance >= 10 then
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 5
        actChanceList[6] = 0
        actChanceList[10] = 0
        actChanceList[13] = 20
        actChanceList[14] = 25
        actChanceList[15] = 0
        actChanceList[16] = 0
        actChanceList[40] = 0
        actChanceList[41] = 20
        actChanceList[42] = 0
        actChanceList[43] = 0
        actChanceList[44] = 0
        actChanceList[45] = 5
        actChanceList[46] = 25
    elseif distance >= 5 then
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 10
        actChanceList[6] = 10
        actChanceList[10] = 0
        actChanceList[13] = 10
        actChanceList[14] = 5
        actChanceList[15] = 0
        actChanceList[16] = 5
        actChanceList[40] = 0
        actChanceList[41] = 20
        actChanceList[42] = 10
        actChanceList[43] = 0
        actChanceList[44] = 5
        actChanceList[45] = 15
        actChanceList[46] = 25
    elseif distance >= 3 then
        actChanceList[1] = 5
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 5
        actChanceList[5] = 5
        actChanceList[6] = 5
        actChanceList[10] = 0
        actChanceList[13] = 0
        actChanceList[14] = 0
        actChanceList[15] = 20
        actChanceList[16] = 0
        actChanceList[40] = 10
        actChanceList[41] = 20
        actChanceList[42] = 0
        actChanceList[43] = 0
        actChanceList[44] = 15
        actChanceList[45] = 15
        actChanceList[46] = 0
    else
        actChanceList[1] = 5
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 5
        actChanceList[5] = 5
        actChanceList[6] = 5
        actChanceList[10] = 0
        actChanceList[13] = 0
        actChanceList[14] = 0
        actChanceList[15] = 0
        actChanceList[16] = 0
        actChanceList[40] = 15
        actChanceList[41] = 20
        actChanceList[42] = 0
        actChanceList[43] = 0
        actChanceList[44] = 15
        actChanceList[45] = 15
        actChanceList[46] = 0
    end
    
    ----------------------------------
    -- Act Cooldowns
    ----------------------------------
    actChanceList[1] = SetCoolTime(ai, goal, 3003, 15, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 3000, 15, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3004, 15, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3008, 15, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3016, 20, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3027, 15, actChanceList[6], 1)
    actChanceList[10] = SetCoolTime(ai, goal, 3002, 15, actChanceList[10], 1)
    actChanceList[11] = SetCoolTime(ai, goal, 3006, 30, actChanceList[11], 1)
    actChanceList[12] = SetCoolTime(ai, goal, 3011, 5, actChanceList[12], 1)
    actChanceList[13] = SetCoolTime(ai, goal, 3018, 20, actChanceList[13], 1)
    actChanceList[14] = SetCoolTime(ai, goal, 3019, 30, actChanceList[14], 1)
    actChanceList[15] = SetCoolTime(ai, goal, 3022, 15, actChanceList[15], 1)
    actChanceList[16] = SetCoolTime(ai, goal, 3009, 15, actChanceList[16], 1)
    actChanceList[20] = SetCoolTime(ai, goal, 3020, 15, actChanceList[20], 1)
    actChanceList[21] = SetCoolTime(ai, goal, 3021, 15, actChanceList[21], 1)
    actChanceList[22] = SetCoolTime(ai, goal, 3001, 15, actChanceList[22], 1)
    actChanceList[23] = SetCoolTime(ai, goal, 3017, 15, actChanceList[23], 1)
    actChanceList[33] = SetCoolTime(ai, goal, 6000, 25, actChanceList[33], 1)
    actChanceList[34] = SetCoolTime(ai, goal, 6001, 25, actChanceList[34], 1)
    actChanceList[35] = SetCoolTime(ai, goal, 6003, 25, actChanceList[35], 1)
    actChanceList[36] = SetCoolTime(ai, goal, 6002, 25, actChanceList[36], 1)
    actChanceList[40] = SetCoolTime(ai, goal, 3019, 25, actChanceList[40], 1)
    actChanceList[41] = SetCoolTime(ai, goal, 3027, 40, actChanceList[41], 1)
    actChanceList[42] = SetCoolTime(ai, goal, 3028, 25, actChanceList[42], 1)
    actChanceList[43] = SetCoolTime(ai, goal, 3015, 25, actChanceList[43], 1)
    actChanceList[44] = SetCoolTime(ai, goal, 3003, 25, actChanceList[44], 1)
    actChanceList[45] = SetCoolTime(ai, goal, 3016, 25, actChanceList[45], 1)
    actChanceList[46] = SetCoolTime(ai, goal, 3029, 25, actChanceList[46], 1)
    actChanceList[47] = SetCoolTime(ai, goal, 3027, 25, actChanceList[47], 1)
    actChanceList[47] = SetCoolTime(ai, goal, 3028, 25, actChanceList[47], 1)
    
    ----------------------------------
    -- Acts
    ----------------------------------
    actFuncList[1] = REGIST_FUNC(ai, goal, Dragonslayer_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, Dragonslayer_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, Dragonslayer_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, Dragonslayer_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, Dragonslayer_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, Dragonslayer_Act06)
    actFuncList[10] = REGIST_FUNC(ai, goal, Dragonslayer_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, Dragonslayer_Act11)
    actFuncList[12] = REGIST_FUNC(ai, goal, Dragonslayer_Act12)
    actFuncList[13] = REGIST_FUNC(ai, goal, Dragonslayer_Act13)
    actFuncList[14] = REGIST_FUNC(ai, goal, Dragonslayer_Act14)
    actFuncList[15] = REGIST_FUNC(ai, goal, Dragonslayer_Act15)
    actFuncList[16] = REGIST_FUNC(ai, goal, Dragonslayer_Act16)
    actFuncList[17] = REGIST_FUNC(ai, goal, Dragonslayer_Act17)
    actFuncList[18] = REGIST_FUNC(ai, goal, Dragonslayer_Act18)
    actFuncList[19] = REGIST_FUNC(ai, goal, Dragonslayer_Act19)
    actFuncList[20] = REGIST_FUNC(ai, goal, Dragonslayer_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, Dragonslayer_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, Dragonslayer_Act22)
    actFuncList[23] = REGIST_FUNC(ai, goal, Dragonslayer_Act23)
    actFuncList[24] = REGIST_FUNC(ai, goal, Dragonslayer_Act24)
    actFuncList[25] = REGIST_FUNC(ai, goal, Dragonslayer_Act25)
    actFuncList[26] = REGIST_FUNC(ai, goal, Dragonslayer_Act26)
    actFuncList[27] = REGIST_FUNC(ai, goal, Dragonslayer_Act27)
    actFuncList[30] = REGIST_FUNC(ai, goal, Dragonslayer_Act30)
    actFuncList[32] = REGIST_FUNC(ai, goal, Dragonslayer_Act32)
    actFuncList[33] = REGIST_FUNC(ai, goal, Dragonslayer_Act33)
    actFuncList[34] = REGIST_FUNC(ai, goal, Dragonslayer_Act34)
    actFuncList[35] = REGIST_FUNC(ai, goal, Dragonslayer_Act35)
    actFuncList[36] = REGIST_FUNC(ai, goal, Dragonslayer_Act36)
    actFuncList[37] = REGIST_FUNC(ai, goal, Dragonslayer_Act37)
    actFuncList[40] = REGIST_FUNC(ai, goal, Dragonslayer_Act40)
    actFuncList[41] = REGIST_FUNC(ai, goal, Dragonslayer_Act41)
    actFuncList[42] = REGIST_FUNC(ai, goal, Dragonslayer_Act42)
    actFuncList[43] = REGIST_FUNC(ai, goal, Dragonslayer_Act43)
    actFuncList[44] = REGIST_FUNC(ai, goal, Dragonslayer_Act44)
    actFuncList[45] = REGIST_FUNC(ai, goal, Dragonslayer_Act45)
    actFuncList[46] = REGIST_FUNC(ai, goal, Dragonslayer_Act46)
    actFuncList[47] = REGIST_FUNC(ai, goal, Dragonslayer_Act47)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, Dragonslayer_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
-- 
function Dragonslayer_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 7.9 - self:GetMapHitRadius(TARGET_SELF), 7.9 - self:GetMapHitRadius(TARGET_SELF) + 998, 7.9 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3003
    local local1 = 3012
    local local2 = 5.8 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if local6 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 12.9 - self:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act02(self, ai, goal)
    local local0 = 3000
    local local1 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if self:GetRandam_Int(1, 100) <= 35 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 71.6 - self:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.8 - self:GetMapHitRadius(TARGET_SELF), 6.8 - self:GetMapHitRadius(TARGET_SELF) + 998, 6.8 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3004
    local local1 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if self:GetRandam_Int(1, 100) <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 11.1 - self:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 7.9 - self:GetMapHitRadius(TARGET_SELF), 7.9 - self:GetMapHitRadius(TARGET_SELF) + 998, 7.9 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3008
    local local1 = 3014
    local local2 = 5.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if local6 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 11.1 - self:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.1 - self:GetMapHitRadius(TARGET_SELF), 10.1 - self:GetMapHitRadius(TARGET_SELF) + 998, 10.1 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = 3016
    local local1 = 3017
    local local2 = 14.4 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.8 - self:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 9 - self:GetMapHitRadius(TARGET_SELF), 9 - self:GetMapHitRadius(TARGET_SELF) + 0.9, 9 - self:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3023
    local local1 = 3017
    local local2 = 14.4 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    if local6 <= 10 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.3 - self:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act10(self, ai, goal)
    Approach_Act_Flex(self, ai, 110.6 - self:GetMapHitRadius(TARGET_SELF), 110.6 - self:GetMapHitRadius(TARGET_SELF) + 998, 110.6 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act11(self, ai, goal)
    Approach_Act_Flex(self, ai, 16.2 - self:GetMapHitRadius(TARGET_SELF), 16.2 - self:GetMapHitRadius(TARGET_SELF) + 998, 16.2 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act12(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act13(self, ai, goal)
    Approach_Act_Flex(self, ai, 13.8 - self:GetMapHitRadius(TARGET_SELF), 13.8 - self:GetMapHitRadius(TARGET_SELF) + 998, 13.8 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act14(self, ai, goal)
    Approach_Act_Flex(self, ai, 12 - self:GetMapHitRadius(TARGET_SELF), 12 - self:GetMapHitRadius(TARGET_SELF) + 998, 12 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act15(self, ai, goal)
    Approach_Act_Flex(self, ai, 22.6 - self:GetMapHitRadius(TARGET_SELF), 22.6 - self:GetMapHitRadius(TARGET_SELF) + 998, 22.6 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act16(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.5 - self:GetMapHitRadius(TARGET_SELF), 6.5 - self:GetMapHitRadius(TARGET_SELF) + 998, 6.5 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act17(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act18(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act19(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act20(self, ai, goal)
    self:SetNumber(0, self:GetNumber(0) + 1)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act21(self, ai, goal)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act22(self, ai, goal)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act23(self, ai, goal)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act24(self, ai, goal)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act25(self, ai, goal)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act26(self, ai, goal)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act27(self, ai, goal)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act30(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Dragonslayer_Act31(self, ai, goal)
    local local0 = 10
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, 12, Odds_Guard, 3)
    end
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function Dragonslayer_Act32(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Dragonslayer_Act33(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepFront, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Dragonslayer_Act34(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Dragonslayer_Act35(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepRight, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Dragonslayer_Act36(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepLeft, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Dragonslayer_Act37(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Dragonslayer_Act38(self, ai, goal)
    local local0 = 0
    local local1 = 0
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act40(self, ai, goal)
    Approach_Act_Flex(self, ai, 1.4 - self:GetMapHitRadius(TARGET_SELF), 1.4 - self:GetMapHitRadius(TARGET_SELF) + 998, 1.4 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3019, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act41(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act42(self, ai, goal)
    Approach_Act_Flex(self, ai, 10 - self:GetMapHitRadius(TARGET_SELF), 10 - self:GetMapHitRadius(TARGET_SELF) + 998, 10 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3028, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act43(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act44(self, ai, goal)
    Approach_Act_Flex(self, ai, 7.9 - self:GetMapHitRadius(TARGET_SELF), 7.9 - self:GetMapHitRadius(TARGET_SELF) + 0.9, 7.9 - self:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3003
    local local1 = 3012
    local local2 = 5.8 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    if local6 <= 10 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 10 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 1.4 - self:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act45(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.1 - self:GetMapHitRadius(TARGET_SELF), 10.1 - self:GetMapHitRadius(TARGET_SELF) + 0.9, 10.1 - self:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 10 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act46(self, ai, goal)
    Approach_Act_Flex(self, ai, 22.6 - self:GetMapHitRadius(TARGET_SELF), 22.6 - self:GetMapHitRadius(TARGET_SELF) + 998, 22.6 - self:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3029, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Dragonslayer_Act47(self, ai, goal)
    Approach_Act_Flex(self, ai, 10 - self:GetMapHitRadius(TARGET_SELF), 10 - self:GetMapHitRadius(TARGET_SELF) + 0.9, 10 - self:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 0
    local local1 = 0
    ai:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, local0, local1, 0, 0)
    local local2 = ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 6.6 - self:GetMapHitRadius(TARGET_SELF), local0, local1, 0, 0)
    local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    return 
end

function Dragonslayer_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_Dragonslayer_AfterAttackAct, 10)
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
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetRandam_Int(1, 100)
    if ai:IsInterupt(INTERUPT_Damaged) and ai:IsStartAttack() == false and 4.5 <= local0 then
        goal:ClearSubGoal()
        return true
    elseif ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_Dragonslayer_AfterAttackAct, 10)
            return true
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5025 and ai:HasSpecialEffectId(TARGET_ENE_0, 90) == false and ai:GetNumber(0) <= 2 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 9.5 and local1 <= 50 then
                goal:ClearSubGoal()
                Dragonslayer_Act20(ai, goal, paramTbl)
            end
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5026 and ai:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 11 then
                if local1 <= 50 then
                    goal:ClearSubGoal()
                    Dragonslayer_Act21(ai, goal, paramTbl)
                else
                    goal:ClearSubGoal()
                    Dragonslayer_Act22(ai, goal, paramTbl)
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 14.5 then
                goal:ClearSubGoal()
                Dragonslayer_Act23(ai, goal, paramTbl)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 110.5 then
                goal:ClearSubGoal()
                Dragonslayer_Act24(ai, goal, paramTbl)
            end
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5027 and ai:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 15 <= local0 then
                goal:ClearSubGoal()
                Dragonslayer_Act25(ai, goal, paramTbl)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local0 <= 5.5 then
                goal:ClearSubGoal()
                Dragonslayer_Act26(ai, goal, paramTbl)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local0 <= 5.3 then
                goal:ClearSubGoal()
                Dragonslayer_Act27(ai, goal, paramTbl)
            end
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5028 and ai:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 11 <= local0 then
                goal:ClearSubGoal()
                Dragonslayer_Act23(ai, goal, paramTbl)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 14.5 <= local0 then
                goal:ClearSubGoal()
                Dragonslayer_Act24(ai, goal, paramTbl)
            end
        end
    end
    return 
end

RegisterTableGoal(GOAL_Dragonslayer_825000_AfterAttackAct, "GOAL_Dragonslayer_825000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Dragonslayer_825000_AfterAttackAct, true)

-------------------------
-- Activate
-------------------------
Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    if 15 <= local0 then
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif 5 <= local0 then
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 0)
    else
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 0)
    end
    goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

-------------------------
-- Update
-------------------------
Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
