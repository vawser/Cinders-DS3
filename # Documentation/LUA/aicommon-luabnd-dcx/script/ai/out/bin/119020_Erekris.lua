RegisterTableGoal(GOAL_NPC_Erekris, "PriestlyKnight_119001_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Erekris, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg1:GetEventRequest()
    if local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[2] = 10
        local0[10] = 40
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if local3 <= 3.7 - arg1:GetMapHitRadius(TARGET_SELF) then
            local0[8] = 99
            local0[20] = 1
        else
            local0[20] = 10
        end
    elseif InsideRange(arg1, arg2, 60, 90, -1, 4.9 - arg1:GetMapHitRadius(TARGET_SELF) + 0.5) then
        local0[1] = 10
        local0[20] = 1
    elseif InsideRange(arg1, arg2, 300, 90, -1, 4.9 - arg1:GetMapHitRadius(TARGET_SELF) + 0.5) then
        local0[2] = 10
        local0[20] = 1
    elseif 9 <= local3 then
        local0[4] = 5
        local0[5] = 5
        local0[6] = 30
        local0[7] = 30
    elseif 6 <= local3 then
        local0[4] = 10
        local0[5] = 10
        local0[6] = 10
        local0[7] = 10
        local0[14] = 10
    elseif 2 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 1
        local0[14] = 10
    else
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 1
        local0[10] = 20
        local0[11] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3015, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3012, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3013, 10, local0[7], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3009, 10, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3008, 10, local0[11], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3016, 20, local0[14], 1)
    if arg1:GetNpcThinkParamID() == 119011 then
        local0[1] = SpaceCheckBeforeAct(arg1, arg2, 0, 3, local0[1])
        local0[1] = SpaceCheckBeforeAct(arg1, arg2, 10, 3, local0[1])
        local0[1] = SpaceCheckBeforeAct(arg1, arg2, -10, 3, local0[1])
        local0[2] = SpaceCheckBeforeAct(arg1, arg2, 0, 3, local0[2])
        local0[2] = SpaceCheckBeforeAct(arg1, arg2, 10, 3, local0[2])
        local0[2] = SpaceCheckBeforeAct(arg1, arg2, -10, 3, local0[2])
        local0[3] = SpaceCheckBeforeAct(arg1, arg2, 0, 3, local0[3])
        local0[3] = SpaceCheckBeforeAct(arg1, arg2, 10, 3, local0[3])
        local0[3] = SpaceCheckBeforeAct(arg1, arg2, -10, 3, local0[3])
        local0[4] = SpaceCheckBeforeAct(arg1, arg2, 0, 3, local0[4])
        local0[4] = SpaceCheckBeforeAct(arg1, arg2, 10, 3, local0[4])
        local0[4] = SpaceCheckBeforeAct(arg1, arg2, -10, 3, local0[4])
        local0[6] = SpaceCheckBeforeAct(arg1, arg2, 0, 9.2, local0[6])
        local0[6] = SpaceCheckBeforeAct(arg1, arg2, 5, 9.2, local0[6])
        local0[6] = SpaceCheckBeforeAct(arg1, arg2, -5, 9.2, local0[6])
        local0[7] = SpaceCheckBeforeAct(arg1, arg2, 0, 5, local0[7])
        local0[7] = SpaceCheckBeforeAct(arg1, arg2, 5, 5, local0[7])
        local0[7] = SpaceCheckBeforeAct(arg1, arg2, -5, 5, local0[7])
        local0[10] = SpaceCheckBeforeAct(arg1, arg2, 0, 3, local0[10])
        local0[10] = SpaceCheckBeforeAct(arg1, arg2, 10, 3, local0[10])
        local0[10] = SpaceCheckBeforeAct(arg1, arg2, -10, 3, local0[10])
        local0[11] = SpaceCheckBeforeAct(arg1, arg2, 0, 3.5, local0[11])
        local0[11] = SpaceCheckBeforeAct(arg1, arg2, 10, 3.5, local0[11])
        local0[11] = SpaceCheckBeforeAct(arg1, arg2, -10, 3.5, local0[11])
        local0[14] = SpaceCheckBeforeAct(arg1, arg2, 0, 10, local0[14])
        local0[14] = SpaceCheckBeforeAct(arg1, arg2, 5, 10, local0[14])
        local0[14] = SpaceCheckBeforeAct(arg1, arg2, -5, 10, local0[14])
    end
    local1[1] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act01) -- Slash Right
    local1[2] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act02) -- Slash Left
    local1[3] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act03) -- Slash Up -> Slash Down
    local1[4] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act04) -- Slash Down
    local1[5] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act05) -- Slash Down Combo
    local1[6] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act06) -- Dash and Slash Down
    local1[7] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act07) -- Thrust
    local1[8] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act08) -- Slash Behind
    local1[9] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act09) -- Buff Self
    local1[10] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act10) -- Slash Down OR Slash Across
    local1[11] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act11) -- Kick -> Dash and Slash Down
    local1[12] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act12) -- Slash Left -> Slash Right 2
    local1[13] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act13) -- Slash Down OR Heavy Slash Down
    local1[14] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act14) -- Stomp
    local1[20] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act20) -- Turn
    local1[21] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act21) -- Leave
    local1[22] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_Act22) -- Move
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, PriestlyKnight_119001_ActAfter_AdjustSpace), local2)
    return 
end

function PriestlyKnight_119001_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 5, 5)
    local local0 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.9 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 150, 0, 0)
    PriestlyKnight_119001_Act12(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.9 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 150, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 105, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    local1:SetTargetRange(0, -99, 2.6 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 2.5, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 2.5, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 5, 5)
    local local0 = 3008
    local local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 1.5, 105, 0, 0)
    local2:SetTargetRange(0, -99, 2.6 - arg0:GetMapHitRadius(TARGET_SELF))
    PriestlyKnight_119001_Act11(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 100, 0, 5, 5)
    arg0:SetTimer(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 105, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 11 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 11 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 105, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 8.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 8.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 105, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act08(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    local0:SetTargetRange(0, -99, 2.6 - arg0:GetMapHitRadius(TARGET_SELF))
    PriestlyKnight_119001_Act12(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_None, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act10(arg0, arg1, arg2)
    local local0 = 3009
    local local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    if 50 <= arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act11(arg0, arg1, arg2)
    local local0 = 3013
    local local1 = 0
    local local2 = 105
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act12(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 4.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    local3:SetTargetRange(0, -99, 2.6 - arg0:GetMapHitRadius(TARGET_SELF))
    local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    local3:SetTargetRange(0, -99, 2.6 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act13(arg0, arg1, arg2)
    local local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    if 30 <= arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act14(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(2, 8)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PriestlyKnight_119001_Act21(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function PriestlyKnight_119001_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function PriestlyKnight_119001_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PriestlyKnight_119001_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(arg1, arg2, 0, 120, 2.6 - arg1:GetMapHitRadius(TARGET_SELF), 3.1 + 1 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:IsFinishTimer(2) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5034) and arg1:GetRandam_Int(1, 100) <= 75 then
        arg2:ClearSubGoal()
        PriestlyKnight_119001_Act14(arg1, arg2, paramTbl)
        return true
    end
    local local0 = arg1:GetRandam_Int(1, 100)
    if GuardBreak_Act(arg1, arg2, 4, 100) then
        if arg1:IsFinishTimer(1) == true then
            arg1:SetTimer(1, 5)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        else
            arg1:Replaning()
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_TargetIsGuard) and InsideRange(arg1, arg2, 0, 30, -1, 2.6 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) and arg1:HasSpecialEffectId(TARGET_SELF, 5033) == false and arg1:IsFinishTimer(0) == true then
        arg1:SetTimer(0, 10)
        arg2:ClearSubGoal()
        PriestlyKnight_119001_Act10(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local1 = arg1:GetDist(TARGET_ENE_0)
        local local2 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(arg1, arg2, 0, 120, 3, 4.9 - arg1:GetMapHitRadius(TARGET_SELF)) and 50 <= local2 then
            arg2:ClearSubGoal()
            PriestlyKnight_119001_Act12(arg1, arg2, paramTbl)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(arg1, arg2, 0, 45, 3, 5.1 - arg1:GetMapHitRadius(TARGET_SELF)) and local2 <= 40 then
            arg2:ClearSubGoal()
            PriestlyKnight_119001_Act13(arg1, arg2, paramTbl)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            if 7.1 - arg1:GetMapHitRadius(TARGET_SELF) <= local1 then
                arg1:SetTimer(2, 3)
            elseif InsideRange(arg1, arg2, -25, 75, -1, 4.9 - arg1:GetMapHitRadius(TARGET_SELF) - 1) then
                arg2:ClearSubGoal()
                PriestlyKnight_119001_Act12(arg1, arg2, paramTbl)
                return true
            elseif InsideRange(arg1, arg2, 0, 90, 5.6 - arg1:GetMapHitRadius(TARGET_SELF) - 2, 7.1 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) and local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 5.1 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            elseif InsideRange(arg1, arg2, 0, 360, -1, 5.6 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
            if local2 <= 50 or 7.1 - arg1:GetMapHitRadius(TARGET_SELF) <= local1 then
                arg1:SetTimer(2, 3)
            else
                if InsideRange(arg1, arg2, -25, 75, -1, 4.9 - arg1:GetMapHitRadius(TARGET_SELF) - 1) and arg1:GetRandam_Int(1, 100) <= 50 then
                    arg2:ClearSubGoal()
                    PriestlyKnight_119001_Act12(arg1, arg2, paramTbl)
                    return true
                elseif InsideRange(arg1, arg2, 0, 90, 5.6 - arg1:GetMapHitRadius(TARGET_SELF) - 2, 7.1 - arg1:GetMapHitRadius(TARGET_SELF) - 1) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 5.1 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, SuccessDist, 0, 0)
                    return true
                elseif InsideRange(arg1, arg2, 0, 360, -1, 5.6 - arg1:GetMapHitRadius(TARGET_SELF)) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, SuccessDist, 0, 0)
                    return true
                end
                arg1:SetTimer(2, 3)
            end
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 90 and arg1:HasSpecialEffectId(TARGET_SELF, 5033) == false then
            if InsideRange(arg1, arg2, 0, 60, -1, 5.1 - arg1:GetMapHitRadius(TARGET_SELF)) and local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, SuccessDist, 0, 0)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
                return true
            elseif InsideRange(arg1, arg2, 30, 45, -1, 2.1 - arg1:GetMapHitRadius(TARGET_SELF) - 1) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, SuccessDist, 0, 0)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and targetDist <= 7 and 0.4 <= arg1:GetHpRate(TARGET_SELF) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:IsFinishTimer(2) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
        arg2:ClearSubGoal()
        PriestlyKnight_119001_Act14(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        if InsideRange(arg1, arg2, 30, 30, -1, 2.1 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) then
            arg2:ClearSubGoal()
            PriestlyKnight_119001_Act11(arg1, arg2, paramTbl)
            return true
        elseif 50 <= arg1:GetRandam_Int(1, 100) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    local local2 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInterupt(INTERUPT_UseItem) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if arg1:GetDist(TARGET_ENE_0) <= 7 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:IsFinishTimer(2) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
            arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 7.1 - arg1:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 5.1 - arg1:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, SuccessDist, 0, 0)
        else
            arg1:Replaning()
        end
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_PriestlyKnight_119001_AfterAttackAct, "PriestlyKnight_119001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PriestlyKnight_119001_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
