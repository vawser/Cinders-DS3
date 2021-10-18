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
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 230) then
        if distance <= 3 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                actChanceList[4] = 800
                actChanceList[20] = 200
            else
                actChanceList[5] = 800
                actChanceList[20] = 200
            end
        else
            actChanceList[20] = 900
            actChanceList[21] = 100
        end
    elseif 8 <= distance then
        actChanceList[1] = 400
        actChanceList[2] = 200
        actChanceList[3] = 0
        actChanceList[6] = 300
        actChanceList[7] = 100
        actChanceList[21] = 0
        actChanceList[22] = 0
    elseif 4.5 <= distance then
        actChanceList[1] = 250
        actChanceList[2] = 200
        actChanceList[3] = 0
        actChanceList[6] = 250
        actChanceList[7] = 100
        actChanceList[21] = 200
        actChanceList[22] = 0
    elseif 2.5 < distance then
        actChanceList[1] = 300
        actChanceList[2] = 300
        actChanceList[3] = 0
        actChanceList[6] = 300
        actChanceList[7] = 100
        actChanceList[21] = 0
        actChanceList[22] = 0
    else
        actChanceList[1] = 350
        actChanceList[2] = 0
        actChanceList[3] = 350
        actChanceList[6] = 200
        actChanceList[7] = 100
        actChanceList[21] = 0
        actChanceList[22] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5028) then
        actChanceList[2] = actChanceList[2] + 300
        actChanceList[6] = actChanceList[6] + 200
        actChanceList[7] = actChanceList[7] + 200
    end
    
    ----------------------------------
    -- Act Cooldowns
    ----------------------------------
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 12, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 3004, 12, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3009, 15, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3012, 12, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3014, 12, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3200, 12, actChanceList[6], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3201, 12, actChanceList[6], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3204, 12, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3024, 20, actChanceList[7], 0)
    
    ----------------------------------
    -- Acts
    ----------------------------------
    actFuncList[1] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act07)
    actFuncList[19] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act19)
    actFuncList[20] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, PrinceDorthinus_815000_Act22)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, PrinceDorthinus_815000_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
function PrinceDorthinus_815000_Act01(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 3.44, 3.44 + 6, 3.44 + 12, 40, 0, 4, 6)
    local local1 = 3000
    local local2 = 3001
    local local3 = 4.42 + 1.5
    local local4 = 999
    local local5 = 0
    local local6 = 0
    if self:GetRandam_Int(1, 100) <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 3.63 + 1.5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act02(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 4.59, 4.59 + 6, 4.59 + 12, 40, 0, 3, 6)
    local local1 = 3004
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 4.84 + 1.5, local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 999, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act03(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = 3008
    local local1 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act04(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act05(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = 999
    local local1 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 3.78 + 1.5, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act06(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 5.77, 5.77 + 6, 5.77 + 12, 40, 0, 3, 6)
    local local1 = ai:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 2, TARGET_ENE_0, 999, TARGET_SELF, false, 9920)
    local1:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act07(self, ai, goal)
    self:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = self:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(self, ai, 5.77, 5.77 + 6, 5.77 + 12, 40, 0, 4, 6)
    local local1 = 3024
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 4.84 + 1.5, local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 999, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act19(self, ai, goal)
    local local0 = 3019
    local local1 = 3002
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PrinceDorthinus_815000_Act21(self, ai, goal)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

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
    local local0 = ai:GetDist(TARGET_ENE_0)
    if ai:GetSpecialEffectActivateInterruptType(0) == 5025 and local0 <= 10 then
        local local1 = 0
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local1 = local1 + 50
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            local1 = local1 + 30
        else
            local1 = local1 + 10
        end
        if 5 <= local0 then
            local1 = local1 + 50
        elseif 3 <= local0 then
            local1 = local1 + 30
        else
            local1 = local1 + 10
        end
        if ai:GetRandam_Int(1, 100) <= local1 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:GetSpecialEffectActivateInterruptType(0) == 5026 then
        local local1 = ai:GetDist(TARGET_ENE_0)
        local local2 = ai:GetRandam_Int(1, 100)
        local local3 = 3.63 + 2
        local local4 = 4.84 + 2
        local local5 = 2.6 + 2
        local local6 = 5.77 + 2
        local local7 = 8.89
        local local8 = 3.24 + 0.5
        local local9 = 2.6 + 0.5
        local local10 = 5.77 + 0.5
        local local11 = 999
        local local12 = 0
        local local13 = 0
        ai:SetTimer(1, 8)
        goal:ClearSubGoal()
        if 5 <= local1 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3200, TARGET_ENE_0, local5, 0, 0, 0, 0)
        elseif 3 <= local1 then
            if not SpaceCheck(ai, goal, 0, 13) then
                local local14 = 0
            end
            if local2 <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3201, TARGET_ENE_0, local5, 0, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3204, TARGET_ENE_0, local11, local12, local13, 0, 0)
            end
        else
            if not SpaceCheck(ai, goal, 0, 13) then
                local local14 = 0
            end
            if local2 <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3201, TARGET_ENE_0, local5, 0, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3204, TARGET_ENE_0, local11, local12, local13, 0, 0)
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
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetRandam_Int(1, 100)
    if (local0 > 5 or local1 > 20) and local0 <= 8 and local1 <= 20 then
        PrinceDorthinus_815000_Act21(ai, goal, paramTbl)
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
