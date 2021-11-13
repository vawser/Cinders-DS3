RegisterTableGoal(GOAL_SpellSummon_UndeadDog_801200_Battle, "GOAL_SpellSummon_UndeadDog_801200_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_UndeadDog_801200_Battle, true)
Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12012)

    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    local local3 = ai:GetDist(TARGET_ENE_0)
    local local4 = ai:GetRandam_Int(1, 100)
    local local5 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = ai:GetEventRequest()
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 6 <= local3 then
            local0[11] = 0
            local0[20] = 100
        elseif 2 <= local3 then
            local0[11] = 30
            local0[20] = 70
        else
            local0[11] = 50
            local0[20] = 50
        end
    elseif 7 <= local3 then
        local0[1] = 0
        local0[2] = 5
        local0[3] = 40
        local0[4] = 5
        local0[5] = 20
        local0[6] = 20
        local0[7] = 0
        local0[10] = 10
        local0[11] = 0
    elseif 4 <= local3 then
        local0[1] = 10
        local0[2] = 20
        local0[3] = 30
        local0[4] = 30
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[10] = 10
        local0[11] = 0
    elseif 2 <= local3 then
        local0[1] = 20
        local0[2] = 40
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[10] = 10
        local0[11] = 10
    else
        local0[1] = 30
        local0[2] = 20
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[10] = 0
        local0[11] = 30
    end
    local0[3] = SetCoolTime(ai, goal, 3005, 10, local0[3], 0)
    local0[7] = SetCoolTime(ai, goal, 3010, 10, local0[7], 0)
    local0[7] = SetCoolTime(ai, goal, 3011, 10, local0[7], 0)
    local0[11] = SetCoolTime(ai, goal, 6002, 5, local0[11], 0)
    local0[11] = SetCoolTime(ai, goal, 6003, 5, local0[11], 0)
    local1[1] = REGIST_FUNC(ai, goal, MoujaDog202000_Act01)
    local1[2] = REGIST_FUNC(ai, goal, MoujaDog202000_Act02)
    local1[3] = REGIST_FUNC(ai, goal, MoujaDog202000_Act03)
    local1[4] = REGIST_FUNC(ai, goal, MoujaDog202000_Act04)
    local1[5] = REGIST_FUNC(ai, goal, MoujaDog202000_Act05)
    local1[6] = REGIST_FUNC(ai, goal, MoujaDog202000_Act06)
    local1[7] = REGIST_FUNC(ai, goal, MoujaDog202000_Act07)
    local1[10] = REGIST_FUNC(ai, goal, MoujaDog202000_Act10)
    local1[11] = REGIST_FUNC(ai, goal, MoujaDog202000_Act11)
    local1[20] = REGIST_FUNC(ai, goal, MoujaDog202000_Act20)
    Common_Battle_Activate(ai, goal, local0, local1, REGIST_FUNC(ai, goal, MoujaDog202000_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaDog202000_Act01(self, ai, goal)
    local local0 = 2.4 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 2.4 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 3000
    if local1 < self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
        local2 = 3007
    end
    Approach_Act_Flex(self, ai, local0, 2.4 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, 2.2 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    if self:GetRandam_Int(1, 100) < 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDog202000_Act02(self, ai, goal)
    local local0 = 3.2 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 3.2 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 3002
    if local1 < self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
        local2 = 3003
    end
    Approach_Act_Flex(self, ai, local0, 3.2 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDog202000_Act03(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDog202000_Act04(self, ai, goal)
    local local0 = 2.5 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 2.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 3008
    if local1 <= self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
        local2 = 3009
    end
    Approach_Act_Flex(self, ai, local0, 2.5 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDog202000_Act05(self, ai, goal)
    local local0 = 7 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 7 - self:GetMapHitRadius(TARGET_SELF) + 1
    if local1 < self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
    end
    Approach_Act_Flex(self, ai, local0, 7 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDog202000_Act06(self, ai, goal)
    local local0 = 6.6 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 6.6 - self:GetMapHitRadius(TARGET_SELF) + 1
    if local1 < self:GetDist(TARGET_ENE_0) then
        local0 = local0 + 1
    end
    Approach_Act_Flex(self, ai, local0, 6.6 - self:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3.5 - self:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDog202000_Act07(self, ai, goal)
    local local0 = 3.5 - self:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDog202000_Act10(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_MoveToSomewhere, self:GetRandam_Float(1.5, 2), TARGET_ENE_0, self:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), 6, TARGET_SELF, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDog202000_Act11(self, ai, goal)
    if InsideRange(self, ai, 90, 180, -9999, 9999) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    elseif InsideRange(self, ai, -90, 180, -9999, 9999) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDog202000_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDog202000_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_UndeadDog_801200_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    elseif ai:GetSpecialEffectActivateInterruptType(0) == 12012 then
        goal:ClearSubGoal()
        MoujaDog202000_Act03(ai, goal, paramTbl)
        return true
    else
        return 
    end
end

RegisterTableGoal(GOAL_SpellSummon_UndeadDog_801200_AfterAttackAct, "GOAL_SpellSummon_UndeadDog_801200_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_UndeadDog_801200_AfterAttackAct, true)
Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetRandam_Int(1, 100)
    if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 1.5 then
            if local1 <= 40 then
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
            elseif local1 <= 55 then
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
            end
        elseif local0 <= 3 and local1 <= 25 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
        end
    elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(1, 1.5), TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        end
    elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(1, 1.5), TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 999, TARGET_SELF, false, 0)
    end
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
