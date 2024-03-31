RegisterTableGoal(GOAL_PriestlyKnight_119000_Battle, "PriestlyKnight_119000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PriestlyKnight_119000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_soukishirun", 4)
    arg1:SetStringIndexedNumber("Odds_run", 3.8)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        if 15 <= local3 then
            local0[31] = 10
        else
            local0[30] = 10
        end
    elseif arg1:GetEventRequest() == 10 and arg1:HasSpecialEffectId(TARGET_SELF, 10859) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10858) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        local0[24] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10859) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10858) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false and local5 <= 0.7 and (8 <= local3 or not not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) or local5 <= 0.55 or arg1:IsFinishTimer(3) == false) and 2.5 <= local3 then
        local0[24] = 10
    elseif local5 <= 0.45 and 7 <= local3 and (not not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) or arg1:IsFinishTimer(3) == false) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[7] = 10
    elseif local5 <= 0.7 and 4.5 <= local3 and (not not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) or arg1:IsFinishTimer(3) == false) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[7] = 10
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[20] = 50
        local0[21] = 50
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[20] = 40
        local0[21] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if local3 <= 2 then
            local0[8] = 30
            local0[20] = 10
            local0[21] = 10
        else
            local0[22] = 10
            local0[21] = 10
        end
    elseif arg1:IsFinishTimer(0) == false or arg1:HasSpecialEffectId(TARGET_SELF, 10856) == true then
        if 7 <= local3 then
            local0[1] = 5
            local0[2] = 20
            local0[3] = 20
            local0[23] = 10
        elseif 5 <= local3 then
            local0[1] = 10
            local0[2] = 30
            local0[3] = 20
            local0[4] = 10
            local0[11] = 10
            local0[23] = 10
        elseif 2.5 <= local3 then
            local0[1] = 20
            local0[2] = 40
            local0[4] = 20
            local0[5] = 5
            local0[9] = 5
            local0[10] = 5
            local0[11] = 20
            local0[15] = 5
        elseif 1 <= local3 then
            local0[1] = 20
            local0[4] = 20
            local0[9] = 5
            local0[10] = 5
            local0[11] = 20
            local0[15] = 5
        else
            local0[4] = 10
            local0[6] = 0
            local0[11] = 10
        end
    elseif 8 <= local3 then
        local0[15] = 10
        local0[21] = 10
        local0[23] = 10
    elseif 5 <= local3 then
        local0[15] = 30
        local0[21] = 10
    elseif 2.5 <= local3 then
        local0[15] = 20
        local0[21] = 10
    elseif 1 <= local3 then
        local0[15] = 10
        local0[21] = 10
    else
        local0[15] = 10
        local0[21] = 10
    end
    if arg1:IsFinishTimer(1) == false then
        local0[6] = local0[6] + 30
    end
    if arg1:IsFinishTimer(2) == false then
        local0[15] = local0[15] + 35
    end
    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        local0[9] = local0[9] + 30
        local0[10] = local0[10] + 30
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3002, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 12, local0[6], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3009, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3010, 10, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3012, 10, local0[11], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3100, 8, local0[15], 1)
    local0[23] = SetCoolTime(arg1, arg2, 3014, 30, local0[23], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10856) == true then
        local0[23] = 0
    end
    if arg1:GetNpcThinkParamID() == 119001 or arg1:GetNpcThinkParamID() == 119021 then
        local0[2] = SpaceCheckBeforeAct(arg1, arg2, 0, 6, local0[2])
        local0[2] = SpaceCheckBeforeAct(arg1, arg2, 5, 6, local0[2])
        local0[2] = SpaceCheckBeforeAct(arg1, arg2, -5, 6, local0[2])
        local0[3] = SpaceCheckBeforeAct(arg1, arg2, 0, 8.5, local0[3])
        local0[3] = SpaceCheckBeforeAct(arg1, arg2, 5, 8.5, local0[3])
        local0[3] = SpaceCheckBeforeAct(arg1, arg2, -5, 8.5, local0[3])
    end
    local1[1] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act11)
    local1[15] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act24)
    local1[30] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_Act31)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, PriestlyKnight_119000_ActAfter_AdjustSpace), local2)
    return 
end

function PriestlyKnight_119000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 120, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 150, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 120, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 120, 0, 0)
    local1:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 120, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 360, 0, 0)
    local1:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 120, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 150, 0, 0)
    local1:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 120, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
    local1:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local2 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local3 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local4 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local local5 = 100
    local local6 = 5
    local local7 = 5
    if local2 < local0 and arg0:IsFinishTimer(0) == false then
        Approach_Act_Flex(arg0, arg1, local2, local3, local4, 100, local5, local6, local7)
    elseif local2 < local0 and arg0:IsFinishTimer(0) == true then
        Approach_Act_Flex(arg0, arg1, local2, local3, local4, 0, local5, local6, local7)
    elseif local0 < local1 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, local1, TARGET_ENE_0, true, 9910)
    end
    local local8 = 3100
    local local9 = 3012
    local local10 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local12 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local13 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local14 = 0
    local local15 = 120
    local local16 = arg0:GetRandam_Int(1, 100)
    if local16 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, local10, local14, local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local9, TARGET_ENE_0, local10, 0, 0)
        local local17 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
        local17:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local13, 0, 0)
    elseif local16 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, local10, local14, local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local9, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local13, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, local10, local14, local15, 0, 0)
        local local17 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local13, 0, 0)
        local17:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local2 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5
    local local3 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5
    local local4 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local local5 = 100
    local local6 = 5
    local local7 = 5
    if local2 < local0 and arg0:IsFinishTimer(0) == false then
        Approach_Act_Flex(arg0, arg1, local2, local3, local4, 100, local5, local6, local7)
    elseif local2 < local0 and arg0:IsFinishTimer(0) == true then
        Approach_Act_Flex(arg0, arg1, local2, local3, local4, 0, local5, local6, local7)
    elseif local0 < local1 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, local1, TARGET_ENE_0, true, 9910)
    end
    local local8 = 3013
    local local9 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3101, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 150, 0, 0)
    local local11 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
    local11:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act23(arg0, arg1, arg2)
    arg0:SetTimer(0, 12)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act24(arg0, arg1, arg2)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PriestlyKnight_119000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PriestlyKnight_119000_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) == false then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            local local0 = arg1:GetDist(TARGET_ENE_0)
            if arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
                arg1:SetTimer(0, 10)
                arg1:SetTimer(3, 4)
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(arg1, arg2, 0, 120, 6 - arg1:GetMapHitRadius(TARGET_SELF), 7.5 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:IsFinishTimer(0) == false then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        end
        local local1 = 3.5 - arg1:GetMapHitRadius(TARGET_SELF)
        if GuardBreak_Act(arg1, arg2, 3, 100) then
            arg1:SetTimer(0, 8)
            arg1:SetTimer(3, 3)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and arg1:GetDist(TARGET_ENE_0) <= 2 then
            arg1:SetTimer(0, 5)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsInterupt(INTERUPT_AIGuardBroken) then
            arg1:SetTimer(0, 6)
            arg1:SetTimer(1, 6)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsInterupt(INTERUPT_UseItem) then
            arg1:SetTimer(0, 5)
            arg1:SetTimer(3, 3)
            arg2:ClearSubGoal()
            if 7 <= arg1:GetDist(TARGET_ENE_0) then
                arg1:SetTimer(2, 8)
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
            else
                arg1:Replaning()
            end
            return true
        elseif arg1:IsInterupt(INTERUPT_Shoot) then
            arg1:SetTimer(0, 10)
            arg1:SetTimer(2, 8)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
            return true
        elseif Damaged_Act(arg1, arg2, 7, 100) then
            arg1:SetTimer(0, 0)
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) <= 50 then
                PriestlyKnight_119000_Act20(arg1, arg2, paramTbl)
            else
                PriestlyKnight_119000_Act21(arg1, arg2, paramTbl)
            end
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_PriestlyKnight_119000_AfterAttackAct, "PriestlyKnight_119000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PriestlyKnight_119000_AfterAttackAct, true)
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
