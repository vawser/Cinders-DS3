RegisterTableGoal(GOAL_SpellSummon_AbyssWatcher_801700_Battle, "GOAL_SpellSummon_AbyssWatcher_801700_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_AbyssWatcher_801700_Battle, true)

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
    
    local local3 = ai:GetDist(TARGET_ENE_0)
    local local4 = ai:GetRandam_Int(1, 100)
    local local5 = ai:GetEventRequest()
    local local6 = ai:GetHpRate(TARGET_SELF)
    if ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        Kankyaku_Act(ai, goal, 0)
    elseif InsideRange(ai, goal, 180, 150, -999, 4) then
        local0[17] = 30
    elseif InsideRange(ai, goal, 180, 150, -999, 10) then
        local0[20] = 100
    elseif 9 <= local3 then
        local0[1] = 10
        local0[2] = 5
        local0[3] = 20
        local0[4] = 50
        local0[5] = 10
        local0[6] = 30
        local0[7] = 80
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
    elseif 6 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 60
        local0[4] = 50
        local0[5] = 10
        local0[6] = 50
        local0[7] = 50
        local0[8] = 10
        local0[9] = 0
        local0[10] = 5
        local0[11] = 5
    elseif 3 <= local3 then
        local0[1] = 60
        local0[2] = 50
        local0[3] = 20
        local0[4] = 10
        local0[5] = 30
        local0[6] = 20
        local0[7] = 0
        local0[8] = 60
        local0[9] = 10
        local0[10] = 30
        local0[11] = 30
    else
        local0[1] = 30
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[5] = 30
        local0[6] = 0
        local0[7] = 0
        local0[8] = 30
        local0[9] = 100
        local0[10] = 60
        local0[11] = 30
    end
    local0[1] = SetCoolTime(ai, goal, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(ai, goal, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(ai, goal, 3002, 20, local0[3], 1)
    local0[4] = SetCoolTime(ai, goal, 3003, 20, local0[4], 1)
    local0[5] = SetCoolTime(ai, goal, 3004, 10, local0[5], 1)
    local0[6] = SetCoolTime(ai, goal, 3007, 10, local0[6], 1)
    local0[7] = SetCoolTime(ai, goal, 3008, 10, local0[7], 1)
    local0[8] = SetCoolTime(ai, goal, 3009, 10, local0[8], 1)
    local0[9] = SetCoolTime(ai, goal, 3011, 10, local0[9], 1)
    local0[10] = SetCoolTime(ai, goal, 3012, 10, local0[10], 1)
    local0[11] = SetCoolTime(ai, goal, 3015, 10, local0[11], 1)
    local1[1] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act01)
    local1[2] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act02)
    local1[3] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act03)
    local1[4] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act04)
    local1[5] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act05)
    local1[6] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act06)
    local1[7] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act07)
    local1[8] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act08)
    local1[9] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act09)
    local1[10] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act10)
    local1[11] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act11)
    local1[16] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act16)
    local1[17] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act17)
    local1[18] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act18)
    local1[19] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act19)
    local1[20] = REGIST_FUNC(ai, goal, DarkGuardian304000_Act20)
    Common_Battle_Activate(ai, goal, local0, local1, REGIST_FUNC(ai, goal, DarkGuardian304000_ActAfter_AdjustSpace), local2)
    return 
end

function DarkGuardian304000_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.8 - self:GetMapHitRadius(TARGET_SELF), -999, 5.8 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 10.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DistToAtt3, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.1 - self:GetMapHitRadius(TARGET_SELF) + 2.5, -999, 5.1 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 6001
    local local1 = 9999 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    if 5 <= self:GetDist(TARGET_ENE_0) then
        if local2 <= 20 then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 40 then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 60 then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 80 then
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0, 0)
        end
    elseif local2 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.5 - self:GetMapHitRadius(TARGET_SELF), -999, 10.5 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 13.4 - self:GetMapHitRadius(TARGET_SELF), -999, 13.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.5 - self:GetMapHitRadius(TARGET_SELF), -999, 5.5 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 4.6 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5.1 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.9 - self:GetMapHitRadius(TARGET_SELF), -999, 10.9 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 9999 - self:GetMapHitRadius(TARGET_SELF)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 0.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, 14.8 - self:GetMapHitRadius(TARGET_SELF), -999, 14.8 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = self:GetHpRate(TARGET_SELF)
    local local1 = 3008
    local local2 = 14.8 - self:GetMapHitRadius(TARGET_SELF) + 1
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.9 - self:GetMapHitRadius(TARGET_SELF), -999, 4.9 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 3.8 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 9999 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act09(self, ai, goal)
    Approach_Act_Flex(self, ai, 2 - self:GetMapHitRadius(TARGET_SELF) + 2, -999, 2 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act10(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.4 - self:GetMapHitRadius(TARGET_SELF), -999, 4.4 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5.7 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act11(self, ai, goal)
    Approach_Act_Flex(self, ai, 5, -999, 2.5 - self:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act16(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    return 
end

function DarkGuardian304000_Act17(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepLR, 10, TARGET_ENE_0, -99)
    return 
end

function DarkGuardian304000_Act18(self, ai, goal)
    local local0 = 10
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, 12, 0, 3)
    end
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, self:GetRandam_Float(1, 3.5), TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function DarkGuardian304000_Act19(self, ai, goal)
    local local0 = -1
    if self:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkGuardian304000_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, self:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkGuardian304000_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_AbyssWatcher_801700_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    local local0 = ai:GetRandam_Int(1, 100)
    if ai:IsInterupt(INTERUPT_Shoot) then
        local local1 = ai:GetDist(TARGET_ENE_0)
        if ai:GetRandam_Int(1, 100) <= 60 then
            goal:ClearSubGoal()
            DarkGuardian304000_Act06(ai, goal, paramTbl)
        end
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_AbyssWatcher_801700_AfterAttackAct, "GOAL_SpellSummon_AbyssWatcher_801700_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_AbyssWatcher_801700_AfterAttackAct, true)
Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 5 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
    elseif 3 <= local0 then
        local2[1] = 50
        local2[2] = 10
        local2[3] = 40
    else
        local2[1] = 50
        local2[2] = 40
        local2[3] = 10
    end
    local local3 = SelectOddsIndex(ai, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            DarkGuardian304000_Act16(ai, goal, paramTbl)
        elseif local3 == 3 then
            DarkGuardian304000_Act17(ai, goal, paramTbl)
        end
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
