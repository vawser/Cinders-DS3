RegisterTableGoal(GOAL_SpellSummon_Skeleton_801000_Battle, "GOAL_SpellSummon_Skeleton_801000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Skeleton_801000_Battle, true)
Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 4)
    ai:SetStringIndexedNumber("Dist_BackStep", 4)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    local local3 = ai:GetDist(TARGET_ENE_0)
    local local4 = ai:GetRandam_Int(1, 100)
    local local5 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = ai:GetEventRequest()
    local local7 = ai:GetNumber(0)
    if local5 == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[21] = 50
        local0[28] = 50
    elseif local5 == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[2] = 10
        local0[21] = 40
        local0[28] = 40
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        local0[20] = 30
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        local0[20] = 30
    elseif 8 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 20
        local0[6] = 10
        local0[7] = 10
        local0[21] = 10
        local0[24] = 10
        local0[25] = 0
    elseif 5 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 15
        local0[4] = 20
        local0[5] = 5
        local0[6] = 15
        local0[7] = 15
        local0[21] = 0
    elseif 2.5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
        local0[6] = 20
        local0[7] = 20
        local0[21] = 0
    else
        local0[1] = 30
        local0[2] = 20
        local0[3] = 25
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 15
        local0[21] = 0
    end
    local0[1] = SetCoolTime(ai, goal, 3020, 6, local0[1], 1)
    local0[2] = SetCoolTime(ai, goal, 3023, 10, local0[2], 1)
    local0[3] = SetCoolTime(ai, goal, 3024, 10, local0[3], 1)
    local0[4] = SetCoolTime(ai, goal, 3026, 10, local0[4], 1)
    local0[5] = SetCoolTime(ai, goal, 3027, 10, local0[5], 1)
    local0[6] = SetCoolTime(ai, goal, 3028, 10, local0[6], 1)
    local0[7] = SetCoolTime(ai, goal, 3029, 10, local0[7], 1)
    local1[1] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act01)
    local1[2] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act02)
    local1[3] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act03)
    local1[4] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act04)
    local1[5] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act05)
    local1[6] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act06)
    local1[7] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act07)
    local1[20] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act20)
    local1[21] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act21)
    local1[22] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act22)
    local1[23] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act23)
    local1[24] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act24)
    local1[25] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act25)
    local1[28] = REGIST_FUNC(ai, goal, ProtoSkeleton_107002_Act28)
    Common_Battle_Activate(ai, goal, local0, local1, REGIST_FUNC(ai, goal, ProtoSkeleton_107002_ActAfter_AdjustSpace), local2)
    return 
end

function ProtoSkeleton_107002_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.3 - self:GetMapHitRadius(TARGET_SELF), 3.3 - self:GetMapHitRadius(TARGET_SELF), 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 3, 4)
    local local0 = 3020
    local local1 = 3021
    local local2 = 2.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 8 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    if local6 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 1.6 - self:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 1.6 - self:GetMapHitRadius(TARGET_SELF), 1.6 - self:GetMapHitRadius(TARGET_SELF), 1.6 - self:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 3, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 1.1 - self:GetMapHitRadius(TARGET_SELF), 1.1 - self:GetMapHitRadius(TARGET_SELF), 1.1 - self:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 3, 4)
    local local0 = 3024
    local local1 = 8 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 1.3 - self:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.3 - self:GetMapHitRadius(TARGET_SELF), 4.3 - self:GetMapHitRadius(TARGET_SELF), 4.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 3, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.3 - self:GetMapHitRadius(TARGET_SELF), 4.3 - self:GetMapHitRadius(TARGET_SELF), 4.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 3, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.3 - self:GetMapHitRadius(TARGET_SELF), 10.3 - self:GetMapHitRadius(TARGET_SELF), 10.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 3, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, 10.3 - self:GetMapHitRadius(TARGET_SELF), 10.3 - self:GetMapHitRadius(TARGET_SELF), 10.3 - self:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 3, 4)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 8 - self:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act21(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, self:GetRandam_Int(0, 1), self:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act22(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act23(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepLeft, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act24(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepFront, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act25(self, ai, goal)
    ai:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107002_Act28(self, ai, goal)
    local local0 = 10
    if local0 <= self:GetDist(TARGET_ENE_0) then
        Approach_Act(self, ai, local0, 12, 0, 3)
    end
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function ProtoSkeleton_107002_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_Skeleton_801000_AfterAttackAct, 10)
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
    elseif GuardBreak_Act(ai, goal, 2.6, 30) then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SpellSummon_Skeleton_801000_AfterAttackAct, "GOAL_SpellSummon_Skeleton_801000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_Skeleton_801000_AfterAttackAct, true)
Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    ai:SetStringIndexedNumber("DistMin_AAA", -99)
    ai:SetStringIndexedNumber("DistMax_AAA", 15)
    ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    ai:SetStringIndexedNumber("Angle_AAA", 180)
    ai:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    ai:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
    ai:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    ai:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 7 <= local0 then
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif 4 <= local0 then
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        ai:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    end
    goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
