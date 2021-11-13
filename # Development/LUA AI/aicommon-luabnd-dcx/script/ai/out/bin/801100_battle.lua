RegisterTableGoal(GOAL_SpellSummon_Hollow_801100_Battle, "GOAL_SpellSummon_Hollow_801100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Hollow_801100_Battle, true)

Goal.Initialize = function (self, ai, goal, arg3)
    ai:SetNumber(1, 5)
    return 
end

Goal.Activate = function (self, ai, goal)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(ai, goal)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    ai:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    ai:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    local local3 = ai:GetDist(TARGET_ENE_0)
    local local4 = ai:GetToTargetAngle(TARGET_ENE_0)
    local local5 = ai:GetEventRequest(0)
    local local6 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = ai:GetRandam_Int(1, 100)
    local local8 = ai:GetRandam_Int(1, 100)
    local local9 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local local10 = 0
    if ai:GetNpcThinkParamID() == 144020 and ai:GetHpRate(TARGET_SELF) <= 0.5 then
        local10 = 1
    end
    if ai:GetEventRequest(1) == 100 then
        local0[20] = 100
    elseif local6 == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 60
        local0[12] = 40
    elseif local6 == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 0
        local0[2] = 0
        local0[7] = 15
        local0[11] = 50
        local0[12] = 35
    else
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[13] = 100
        elseif ai:GetNumber(0) == 0 then
            local0[7] = 100
            ai:SetNumber(0, 1)
        else
            local local11 = 1
            local local12 = 1
            local local13 = 1
            local local14 = 0
            local local15 = 0
            if ai:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 3) then
                local11 = 5
                local12 = 5
            elseif ai:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 5.5) then
                local11 = 2.5
                local12 = 5
                local14 = 1
            elseif ai:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 10) then
                local11 = 1.5
                local12 = 1.5
                local14 = 1
            elseif ai:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 45, 5) then
                local11 = 0.6
                local12 = 0.6
            end
            if InsideDir(ai, goal, 0, 60) == false then
                local13 = 10
            end
            if ai:GetHpRate(TARGET_SELF) <= 0.2 then
                local15 = 1.5
            elseif ai:GetHpRate(TARGET_SELF) <= 0.4 then
                local15 = 1
            elseif ai:GetHpRate(TARGET_SELF) <= 0.6 then
                local15 = 0.5
            end
            if ai:GetNumber(1) <= 0 then
                local15 = 0
            end
            if 10 <= local3 then
                local0[1] = 7 * local11
                local0[2] = 3 * local12
                local0[4] = 5
                local0[7] = 70
                local0[14] = 75 * local15
                local0[20] = 10 * local10
                local0[21] = 5 * local10
            elseif 5.5 <= local3 then
                local0[1] = 10 * local11
                local0[2] = 5 * local12
                local0[4] = 5
                local0[7] = 70
                local0[11] = 0
                local0[14] = 75 * local15
                local0[20] = 5 * local10
                local0[21] = 10 * local10
            elseif 3.5 <= local3 then
                local0[1] = 16 * local11
                local0[2] = 7 * local12
                local0[4] = 10
                local0[7] = 70
                local0[11] = 0
                local0[14] = 55 * local15
                local0[20] = 0 * local10
                local0[21] = 15 * local10
            elseif 2.5 <= local3 then
                local0[1] = 16 * local11
                local0[2] = 9 * local12
                local0[4] = 5
                local0[7] = 70
                local0[11] = 0
                local0[20] = 0 * local10
                local0[21] = 5 * local10
            else
                local0[1] = 12 * local11
                local0[2] = 10 * local12
                local0[3] = 8 * local13
                local0[7] = 70
                local0[11] = 0
                local0[20] = 0 * local10
                local0[21] = 0 * local10
            end
        end
        local0[14] = SetCoolTime(ai, goal, 4600, 20, local0[14], 0)
    end
    local1[1] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act01)
    local1[2] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act02)
    local1[3] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act03)
    local1[4] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act04)
    local1[7] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act07)
    local1[11] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act11)
    local1[12] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act12)
    local1[13] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act13)
    local1[14] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act14)
    local1[20] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act20)
    local1[21] = REGIST_FUNC(ai, goal, MoujaSoldier110010_Act21)
    Common_Battle_Activate(ai, goal, local0, local1, REGIST_FUNC(ai, goal, MoujaSoldier110010_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldier110010_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 4 - self:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = 3000
    local local1 = 7.4 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = self:GetRandam_Int(1, 100)
    if local4 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    elseif local4 <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 4 - self:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 4.2 - self:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 5.5 - self:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 7.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.2 - self:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 7.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.5 - self:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 100, 3, 3)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 7.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act07(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = 10
    local local2 = 3
    local local3 = -1
    if self:GetRandam_Int(1, 100) <= 100 then
        local3 = 9910
    end
    local local4 = self:GetRandam_Int(1, 100)
    if local1 <= local0 and local4 <= 80 then
        local local5 = ai:AddSubGoal(GOAL_COMMON_ApproachTarget, self:GetRandam_Float(3, 4), TARGET_ENE_0, local1 - 2, TARGET_SELF, true, local3)
        local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif local0 <= local2 and local4 <= 80 then
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, self:GetRandam_Float(3, 4), TARGET_ENE_0, local2 + 2, TARGET_ENE_0, true, local3)
    else
        local local5 = self:GetDist(TARGET_FRI_0)
        if local5 == -1 then
            local5 = 999
        end
        local local6 = self:GetRandam_Int(0, 1)
        if local5 <= 3 and self:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
            local6 = 1
        end
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, self:GetRandam_Float(3, 4), TARGET_ENE_0, local6, self:GetRandam_Int(30, 45), true, true, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act11(self, ai, goal)
    local local0 = 10
    local local1 = 100
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, 12, local1, 3)
    end
    local local2 = -1
    if self:GetRandam_Int(1, 100) <= local1 then
        local2 = 9910
    end
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act12(self, ai, goal)
    local local0 = self:GetDist(TARGET_FRI_0)
    if local0 == -1 then
        local0 = 999
    end
    local local1 = self:GetRandam_Int(0, 1)
    if local0 <= 3 and self:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
        local1 = 1
    end
    local local2 = -1
    if self:GetRandam_Int(1, 100) <= 100 then
        local2 = 9910
    end
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, self:GetRandam_Float(3, 4), TARGET_ENE_0, local1, self:GetRandam_Int(30, 45), true, true, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act13(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, self:GetRandam_Int(10, 15))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act14(self, ai, goal)
    if self:GetDist(TARGET_ENE_0) <= 5 then
        local local0 = ai:AddSubGoal(GOAL_COMMON_LeaveTarget, self:GetRandam_Float(1.5, 3), TARGET_ENE_0, 6, TARGET_ENE_0, true, 9910)
        local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 4600, TARGET_ENE_0, 100, 0, 90, 0, 0)
    self:SetNumber(1, self:GetNumber(1) - 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act20(self, ai, goal)
    Approach_Act_Flex(self, ai, 20 - self:GetMapHitRadius(TARGET_SELF), 20 - self:GetMapHitRadius(TARGET_SELF) + 1, 20 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20005, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_Act21(self, ai, goal)
    Approach_Act_Flex(self, ai, 15 - self:GetMapHitRadius(TARGET_SELF), 15 - self:GetMapHitRadius(TARGET_SELF) + 1, 15 - self:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20006, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110010_ActAfter_AdjustSpace(self, ai, goal)
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
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    local local2 = ai:GetRandam_Int(1, 100)
    local local3 = ai:GetRandam_Int(1, 100)
    if ai:IsInterupt(INTERUPT_GuardBreak) and local0 <= 3 and local1 <= 60 and local2 <= 75 then
        goal:ClearSubGoal()
        if local3 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6, 0, 0, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 7.4 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 6, 0, 0, 0, 0)
        end
        return true
    elseif ai:IsInterupt(INTERUPT_SuccessGuard) and local0 <= 3 and local1 <= 60 and local2 <= 80 then
        goal:ClearSubGoal()
        if local3 <= 45 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6, 0, 0, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 7.4 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
        elseif local3 <= 90 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 6, 0, 0, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 7.4 - ai:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 7.4 - ai:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
        end
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
    local local2 = ai:GetRandam_Float(3, 4)
    local local3 = ai:GetRandam_Int(0, 1)
    local local4 = ai:GetRandam_Int(30, 45)
    local local5 = ai:GetRandam_Float(3, 4)
    local local6 = local0 + ai:GetRandam_Float(2, 4)
    local local7 = -1
    if ai:GetRandam_Int(1, 100) <= 100 then
        local7 = 9910
    end
    if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 8, TARGET_ENE_0, true, local7)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 8, TARGET_ENE_0, true, local7)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 6 <= local0 then
        if local1 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 4 <= local0 then
        if local1 <= 55 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 2 <= local0 then
        if local1 <= 40 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        elseif local1 <= 55 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
        end
    elseif 0.5 <= local0 then
        if local1 <= 15 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        elseif local1 <= 35 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
        end
    elseif local1 <= 0 then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
    elseif local1 <= 40 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
