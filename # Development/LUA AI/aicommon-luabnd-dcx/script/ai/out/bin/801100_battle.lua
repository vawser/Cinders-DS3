RegisterTableGoal(GOAL_SpellSummon_Hollow_801100_Battle, "GOAL_SpellSummon_Hollow_801100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Hollow_801100_Battle, true)

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
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    Init_Pseudo_Global(ai, goal)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    ai:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local distance_vertical = ai:GetDistYSigned(TARGET_ENE_0)
    local local5 = ai:GetEventRequest(0)
    local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local roll_a = ai:GetRandam_Int(1, 100)
    local roll_b = ai:GetRandam_Int(1, 100)
    local local9 = 0
    local multiplier_a = 0
    local multiplier_b = 0
    local multiplier_c = 0
    
    if ai:GetNpcThinkParamID() == 144010 and ai:GetHpRate(TARGET_SELF) <= 0.5 then
        multiplier_c = 1
    end
    
    if ai:GetNpcThinkParamID() == 110001 then
        local9 = 1
    elseif ai:GetNpcThinkParamID() == 110003 then
        multiplier_a = 1
    end
    
    if ai:GetNpcThinkParamID() == 110004 then
        multiplier_b = 1
        multiplier_a = 1
    end
    
    if ai:GetEventRequest(1) == 100 then
        actChanceList[20] = 100
    elseif doAdmirer == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        actChanceList[11] = 60
        actChanceList[12] = 40
    elseif doAdmirer == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        actChanceList[1] = 3
        actChanceList[4] = 3
        actChanceList[7] = 6
        actChanceList[8] = 3
        actChanceList[11] = 50
        actChanceList[12] = 35
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        actChanceList[13] = 100
    elseif local9 == 1 and 8 <= ai:GetAttackPassedTime(3007) and 5 - ai:GetMapHitRadius(TARGET_SELF) <= distance and roll_a <= 65 then
        actChanceList[6] = 100
    elseif multiplier_b == 1 and 13 - ai:GetMapHitRadius(TARGET_SELF) + math.abs(distance_vertical) <= distance and distance_vertical < -2 then
        actChanceList[16] = 100
    elseif multiplier_b == 1 and 5 - ai:GetMapHitRadius(TARGET_SELF) <= distance and distance_vertical < -2 then
        actChanceList[15] = 100
    elseif multiplier_b == 1 and 5 - ai:GetMapHitRadius(TARGET_SELF) <= distance and roll_a <= 85 then
        actChanceList[9] = 100
    elseif multiplier_a == 1 and 8 <= ai:GetAttackPassedTime(3011) and 5 - ai:GetMapHitRadius(TARGET_SELF) <= distance and roll_a <= 65 then
        actChanceList[9] = 100
    elseif ai:IsTargetGuard(TARGET_ENE_0) and 2.5 < distance and distance <= 5 and roll_b <= 40 then
        actChanceList[10] = 100
    elseif ai:IsTargetGuard(TARGET_ENE_0) and distance <= 2.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and roll_b <= 50 then
        actChanceList[10] = 100
    elseif 10 <= distance then
        actChanceList[1] = 15
        actChanceList[2] = 30
        actChanceList[4] = 5
        actChanceList[7] = 15
        actChanceList[8] = 10
        actChanceList[12] = 15
        actChanceList[14] = 10
        actChanceList[20] = 10 * multiplier_c
        actChanceList[21] = 5 * multiplier_c
    elseif 5.5 <= distance then
        actChanceList[1] = 5
        actChanceList[2] = 20
        actChanceList[4] = 5
        actChanceList[7] = 10
        actChanceList[8] = 10
        actChanceList[12] = 20
        actChanceList[14] = 15
        actChanceList[20] = 5 * multiplier_c
        actChanceList[21] = 10 * multiplier_c
    elseif 3 <= distance then
        actChanceList[1] = 15
        actChanceList[2] = 15
        actChanceList[4] = 5
        actChanceList[7] = 10
        actChanceList[8] = 10
        actChanceList[12] = 30
        actChanceList[20] = 0 * multiplier_c
        actChanceList[21] = 15 * multiplier_c
    elseif 1 <= distance then
        actChanceList[1] = 15
        actChanceList[2] = 0
        actChanceList[4] = 5
        actChanceList[7] = 10
        actChanceList[8] = 15
        actChanceList[12] = 30
        actChanceList[14] = 20
        actChanceList[20] = 0 * multiplier_c
        actChanceList[21] = 5 * multiplier_c
    else
        actChanceList[1] = 30
        actChanceList[2] = 0
        actChanceList[4] = 15
        actChanceList[7] = 15
        actChanceList[8] = 20
        actChanceList[12] = 0
        actChanceList[14] = 20
        actChanceList[20] = 0 * multiplier_c
        actChanceList[21] = 0 * multiplier_c
    end
    
    actFuncList[1] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act02)
    actFuncList[4] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act11)
    actFuncList[12] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act12)
    actFuncList[13] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act13)
    actFuncList[14] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act14)
    actFuncList[15] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act15)
    actFuncList[16] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act16)
    actFuncList[20] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, SpellSummon_Hollow_Act21)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, SpellSummon_Hollow_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Slash Combo
function SpellSummon_Hollow_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.2 - self:GetMapHitRadius(TARGET_SELF), 3.2 - self:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    
    local anim_LeftSlash = 3000
    local anim_LeftBackslash = 3001
    local attack_distance_a = 2.4 - self:GetMapHitRadius(TARGET_SELF) + 1
    local attack_distance_b = 5 - self:GetMapHitRadius(TARGET_SELF)
    local roll = self:GetRandam_Int(1, 100)
    
    if roll <= 35 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, attack_distance_b, 0, 0, 0, 0)
    elseif roll <= 75 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, attack_distance_a, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_LeftBackslash, TARGET_ENE_0, attack_distance_b, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, attack_distance_a, 0, 0, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_LeftBackslash, TARGET_ENE_0, 3.9 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, attack_distance_b, 0, 0)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 7 - self:GetMapHitRadius(TARGET_SELF), 7 - self:GetMapHitRadius(TARGET_SELF) + 1, 7 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.5 - self:GetMapHitRadius(TARGET_SELF), 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 3.5 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.3 - self:GetMapHitRadius(TARGET_SELF), 2.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 2.3 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 13 - self:GetMapHitRadius(TARGET_SELF), 13 - self:GetMapHitRadius(TARGET_SELF) + 1, 13 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 50, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    local local1 = ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local1:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.5 - self:GetMapHitRadius(TARGET_SELF), 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 3.5 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.2 - self:GetMapHitRadius(TARGET_SELF), 2.2 - self:GetMapHitRadius(TARGET_SELF) + 1, 2.2 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act09(self, ai, goal)
    Approach_Act_Flex(self, ai, 13 - self:GetMapHitRadius(TARGET_SELF), 13 - self:GetMapHitRadius(TARGET_SELF) + 1, 13 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 50, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    local local1 = ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local1:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act10(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.8 - self:GetMapHitRadius(TARGET_SELF), 2.8 - self:GetMapHitRadius(TARGET_SELF) + 1, 2.8 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3004, TARGET_ENE_0, 13 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act11(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local1, 12, 75, 3)
    end
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act12(self, ai, goal)
    local local0 = 100
    if 8 <= self:GetDist(TARGET_ENE_0) then
        local0 = 75
    end
    local local1 = -1
    if self:GetRandam_Int(1, 100) <= local0 then
        local1 = 9910
    end
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act13(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, self:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act14(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.8 - self:GetMapHitRadius(TARGET_SELF), 2.8 - self:GetMapHitRadius(TARGET_SELF) + 1, 2.8 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 13 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act15(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, -1, 45, 0, 0)
    local local0 = ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act16(self, ai, goal)
    local local0 = ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act20(self, ai, goal)
    Approach_Act_Flex(self, ai, 20 - self:GetMapHitRadius(TARGET_SELF), 20 - self:GetMapHitRadius(TARGET_SELF) + 1, 20 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20005, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_Act21(self, ai, goal)
    Approach_Act_Flex(self, ai, 15 - self:GetMapHitRadius(TARGET_SELF), 15 - self:GetMapHitRadius(TARGET_SELF) + 1, 15 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20006, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_Hollow_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_Hollow_801100_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_Damaged) then
        local local0 = ai:GetDist(TARGET_ENE_0)
        local local1 = ai:GetDistYSigned(TARGET_ENE_0)
        if (ai:GetNpcThinkParamID() == 110004 or ai:GetNpcThinkParamID() == 110006) and 13 - ai:GetMapHitRadius(TARGET_SELF) + math.abs(local1) <= local0 and local1 < -2 then
            goal:ClearSubGoal()
            Approach_Act_Flex(ai, goal, 13 - ai:GetMapHitRadius(TARGET_SELF) - 1, 13 - ai:GetMapHitRadius(TARGET_SELF) + 0, 13 - ai:GetMapHitRadius(TARGET_SELF) + 10, 100, 100, 4, 8)
            return true
        elseif local0 <= 3.5 and ai:GetRandam_Int(1, 100) <= 80 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), 45, true, true, 9910)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_TargetOutOfRange) and ai:IsTargetOutOfRangeInterruptSlot(0) then
        goal:ClearSubGoal()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_Hollow_801100_AfterAttackAct, "GOAL_SpellSummon_Hollow_801100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Hollow_801100_AfterAttackAct, true)
Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetRandam_Int(1, 100)
    local local2 = 100
    local local3 = ai:GetRandam_Float(2.5, 4.5)
    local local4 = ai:GetRandam_Int(0, 1)
    local local5 = ai:GetRandam_Int(30, 45)
    local local6 = ai:GetRandam_Float(2.5, 4.5)
    local local7 = local0 + ai:GetRandam_Float(2.5, 4.5)
    if 8 <= local0 then
        local2 = 75
    end
    local local8 = -1
    if ai:GetRandam_Int(1, 100) <= local2 then
        local8 = 9910
    end
    if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 8, TARGET_ENE_0, true, local8)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        end
    elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 8, TARGET_ENE_0, true, local8)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        end
    elseif 6 <= local0 then
        if local1 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
        end
    elseif 4 <= local0 then
        if local1 <= 55 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        end
    elseif 2 <= local0 then
        if local1 <= 40 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        elseif local1 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, local7, TARGET_ENE_0, true, local8)
        end
    elseif 0.5 <= local0 then
        if local1 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        elseif local1 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, local7, TARGET_ENE_0, true, local8)
        end
    elseif local1 <= 0 then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
    elseif local1 <= 35 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, local7, TARGET_ENE_0, true, local8)
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
