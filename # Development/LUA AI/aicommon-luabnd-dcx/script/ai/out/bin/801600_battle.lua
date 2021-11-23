RegisterTableGoal(GOAL_SpellSummon_BlackKnight_801600_Battle, "GOAL_SpellSummon_BlackKnight_801600_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_BlackKnight_801600_Battle, true)

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

    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    
    goal:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    
    local local3 = ai:GetDist(TARGET_ENE_0)
    
    if ai:IsTargetGuard(TARGET_SELF) == true and ai:GetRandam_Int(1, 100) <= 70 and InsideRange(ai, goal, 0, 90, -99 - ai:GetMapHitRadius(TARGET_SELF), 2.3 - ai:GetMapHitRadius(TARGET_SELF)) then
        local0[11] = 10
        local0[3] = 10
    elseif 6 <= local3 then
        if InsideDir(ai, goal, 180, 330) then
            local0[20] = 10
        else
            local0[1] = 10
            local0[3] = 10
            local0[5] = 10
            local0[6] = 20
            local0[7] = 30
            local0[8] = 10
        end
    elseif 4.5 <= local3 then
        if InsideDir(ai, goal, 180, 315) then
            local0[20] = 10
        else
            local0[1] = 20
            local0[3] = 20
            local0[5] = 20
            local0[6] = 30
            local0[8] = 10
            local0[7] = 0
        end
    elseif 3.5 <= local3 then
        if InsideDir(ai, goal, 180, 315) then
            local0[20] = 10
        else
            local0[1] = 30
            local0[3] = 30
            local0[5] = 40
            local0[8] = 20
            local0[7] = 0
        end
    elseif 1.5 <= local3 then
        if InsideDir(ai, goal, 180, 315) then
            local0[20] = 10
        else
            local0[1] = 30
            local0[2] = 30
            local0[3] = 30
            local0[8] = 10
            local0[7] = 0
        end
    elseif InsideDir(ai, goal, 180, 180) then
        local0[9] = 90
        local0[20] = 10
    elseif InsideDir(ai, goal, 60, 60) then
        local0[3] = 60
        local0[8] = 20
        local0[20] = 20
    elseif InsideDir(ai, goal, -60, 60) then
        local0[1] = 60
        local0[8] = 20
        local0[20] = 20
    else
        local0[1] = 25
        local0[2] = 25
        local0[3] = 25
        local0[8] = 25
        local0[10] = 0
    end
    
    if ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
        local0[1] = 0
        local0[3] = 0
        local0[5] = 0
        local0[8] = 0
        local0[9] = 0
    end
    
    local0[5] = SetCoolTime(ai, goal, 3008, 10, local0[5], 1)
    local0[6] = SetCoolTime(ai, goal, 3009, 10, local0[6], 1)
    local0[7] = SetCoolTime(ai, goal, 3010, 20, local0[7], 1)
    local0[8] = SetCoolTime(ai, goal, 3011, 20, local0[8], 1)
    local0[9] = SetCoolTime(ai, goal, 3012, 6, local0[9], 1)
    
    local1[1] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act01)
    local1[2] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act02)
    local1[3] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act03)
    local1[4] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act04)
    local1[5] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act05)
    local1[6] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act06)
    local1[7] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act07)
    local1[8] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act08)
    local1[9] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act09)
    local1[10] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act10)
    local1[11] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act11)
    local1[20] = REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_Act20)
    
    Common_Battle_Activate(ai, goal, local0, local1, REGIST_FUNC(ai, goal, SpellSummon_BlackKnight_ActAfter_AdjustSpace), local2)
    return 
end

function SpellSummon_BlackKnight_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.2 - self:GetMapHitRadius(TARGET_SELF) - 1, 3.2 - self:GetMapHitRadius(TARGET_SELF) - 1, 3.2 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3007
    local local5 = 3013
    local local6 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 0
    local local13 = 0
    local local14 = self:GetRandam_Int(1, 100)
    if local14 <= 20 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 35 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local14 <= 75 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act03(self, ai, goal)
    Approach_Act_Flex(self, ai, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 3 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    local local0 = 3005
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3007
    local local5 = 3013
    local local6 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 0
    local local13 = 0
    local local14 = self:GetRandam_Int(1, 100)
    if local14 <= 35 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 55 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local10)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local14 <= 85 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 1, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 1, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 4.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 4.3 - self:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    local local0 = 3008
    local local1 = 3001
    local local2 = 3002
    local local3 = 3007
    local local4 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.5 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 1.5
    local local9 = 120
    if self:GetRandam_Int(1, 100) <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1, local8, local9)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act06(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - self:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 1.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act07(self, ai, goal)
    Approach_Act_Flex(self, ai, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.9 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 2.9 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 2.9 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    local local0 = 3011
    local local1 = 20 - self:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 0, local2, local3)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act09(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 2.9 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act10(self, ai, goal)
    Approach_Act_Flex(self, ai, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - self:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act11(self, ai, goal)
    Approach_Act_Flex(self, ai, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 2.3 - self:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 100, 5, 5)
    local local0 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 0, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 20 - self:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_Act20(self, ai, goal)
    if self:IsTargetGuard(TARGET_SELF) == true then
        ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 9910, 0, true)
    else
        ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpellSummon_BlackKnight_ActAfter_AdjustSpace(self, ai, goal)
    ai:AddSubGoal(GOAL_SpellSummon_BlackKnight_801600_AfterAttackAct, 3)
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
    elseif ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local0 = ai:GetDist(TARGET_ENE_0)
        if ai:GetSpecialEffectActivateInterruptType(0) == 90 then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        elseif ai:GetSpecialEffectActivateInterruptType(0) == 5028 and InsideRange(ai, goal, 0, 120, 5 - ai:GetMapHitRadius(TARGET_SELF) - 2, 6.5 - ai:GetMapHitRadius(TARGET_SELF) + 3) and ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:IsTargetGuard(TARGET_SELF) == false and ai:IsTargetGuard(TARGET_SELF) == false and ai:GetRandam_Int(1, 100) <= 50 then
        if ai:GetDist(TARGET_ENE_0) <= 2.5 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
            return true
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
            return true
        end
    elseif ai:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and ai:GetDist(TARGET_ENE_0) <= 2 then
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    elseif ai:IsInterupt(INTERUPT_Shoot) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
        return true
    elseif ai:IsInterupt(INTERUPT_UseItem) and ai:IsStartAttack() == false then
        if InsideRange(ai, goal, 0, 180, 3, 10) then
            if ai:GetRandam_Int(1, 100) <= 15 and ai:GetAttackPassedTime(3010) <= 8 then
                goal:ClearSubGoal()
                SpellSummon_BlackKnight_Act07(ai, goal, paramTbl)
                return true
            end
        elseif InsideRange(ai, goal, 0, 240, -99, 3) and ai:GetRandam_Int(1, 100) <= 15 and ai:GetAttackPassedTime(3010) <= 8 then
            goal:ClearSubGoal()
            SpellSummon_BlackKnight_Act08(ai, goal, paramTbl)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_SpellSummon_BlackKnight_801600_AfterAttackAct, "GOAL_SpellSummon_BlackKnight_801600_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpellSummon_BlackKnight_801600_AfterAttackAct, true)
Goal.Activate = function (self, ai, goal)
    local local0 = ai:GetDist(TARGET_ENE_0)
    local local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    ai:SetStringIndexedNumber("DistMin_AAA", 1)
    ai:SetStringIndexedNumber("DistMax_AAA", 8)
    ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    ai:SetStringIndexedNumber("Angle_AAA", 180)
    ai:SetStringIndexedNumber("DistMin_Inter_AAA", 0.25)
    ai:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    ai:SetStringIndexedNumber("Odds_Guard_AAA", 100)
    if 6 <= local0 then
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 60)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
    elseif 4 <= local0 then
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
    elseif 2 <= local0 then
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 40)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
    else
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 0)
        ai:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
    end
    goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    elseif ai:IsInterupt(INTERUPT_Damaged) then
        if InsideRange(ai, goal, 0, 180, -99, 2) then
            if ai:GetRandam_Int(1, 100) <= 50 then
                goal:ClearSubGoal()
                if ai:GetRandam_Int(1, 100) <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
                elseif InsideDir(ai, goal, 90, 180) then
                    goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, ai:GetStringIndexedNumber("Dist_SideStep"))
                else
                    goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, ai:GetStringIndexedNumber("Dist_SideStep"))
                end
                return true
            end
        elseif InsideRange(ai, goal, 180, 180, 2, 3.5) and ai:GetRandam_Int(1, 100) <= 30 then
            goal:ClearSubGoal()
            if ai:GetRandam_Int(1, 100) <= 0 then
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
            elseif InsideDir(ai, goal, 90, 180) then
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, ai:GetStringIndexedNumber("Dist_SideStep"))
            else
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, ai:GetStringIndexedNumber("Dist_SideStep"))
            end
            return true
        end
    end
    return false
end

return 
