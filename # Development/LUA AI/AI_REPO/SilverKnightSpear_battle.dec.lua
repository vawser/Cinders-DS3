RegisterTableGoal(GOAL_Silverknight141010_spearBattle, "GOAL_Silverknight141010_spearBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141010_spearBattle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:SetNumber(1, 0)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetRandam_Int(1, 100)
    if arg1:GetNumber(0) == 0 and local4 <= 80 and InsideRange(arg1, arg2, 0, 180, 8, 999) then
        local0[10] = 100
    elseif arg1:GetNumber(0) == 0 and local4 <= 80 and InsideRange(arg1, arg2, 0, 180, 4, 999) then
        local0[11] = 100
    elseif InsideRange(arg1, arg2, 180, 180, -99, 2.5) then
        local0[20] = 20
        local0[12] = 80
    elseif InsideDir(arg1, arg2, 180, 180) then
        local0[20] = 100
    elseif arg1:IsTargetGuard(TARGET_ENE_0) then
        if 12 <= local3 then
            local0[3] = 20
            local0[10] = 80
        elseif 8 <= local3 then
            local0[2] = 10
            local0[3] = 20
            local0[5] = 5
            local0[7] = 10
            local0[8] = 5
            local0[10] = 40
            local0[11] = 10
        elseif 6 <= local3 then
            local0[2] = 10
            local0[3] = 30
            local0[5] = 5
            local0[7] = 10
            local0[8] = 5
            local0[10] = 20
            local0[11] = 20
        elseif 3 <= local3 then
            local0[2] = 10
            local0[3] = 15
            local0[5] = 10
            local0[7] = 15
            local0[8] = 10
            local0[11] = 25
            local0[13] = 10
            local0[14] = 5
        elseif InsideDir(arg1, arg2, 90, 90) then
            local0[5] = 30
            local0[8] = 10
            local0[9] = 15
            local0[11] = 20
            local0[13] = 5
            local0[14] = 20
        elseif InsideDir(arg1, arg2, -90, 90) then
            local0[5] = 30
            local0[8] = 10
            local0[9] = 15
            local0[11] = 20
            local0[13] = 5
            local0[14] = 20
        elseif InsideDir(arg1, arg2, 0, 90) then
            local0[2] = 10
            local0[5] = 5
            local0[7] = 10
            local0[8] = 10
            local0[9] = 5
            local0[11] = 50
            local0[13] = 5
            local0[14] = 5
        else
            local0[12] = 75
            local0[20] = 25
        end
    elseif arg1:GetWepCateLeft(TARGET_ENE_0) == WEP_CATE_Shield then
        if 12 <= local3 then
            local0[3] = 20
            local0[10] = 80
        elseif 8 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 20
            local0[4] = 3
            local0[5] = 2
            local0[6] = 5
            local0[7] = 5
            local0[8] = 5
            local0[10] = 40
            local0[11] = 10
        elseif 6 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 30
            local0[4] = 2
            local0[5] = 3
            local0[6] = 5
            local0[7] = 5
            local0[8] = 5
            local0[10] = 20
            local0[11] = 20
        elseif 3 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 15
            local0[4] = 5
            local0[5] = 5
            local0[6] = 10
            local0[7] = 5
            local0[8] = 10
            local0[11] = 25
            local0[14] = 15
        elseif InsideDir(arg1, arg2, 90, 90) then
            local0[4] = 20
            local0[5] = 20
            local0[8] = 20
            local0[11] = 20
            local0[14] = 20
        elseif InsideDir(arg1, arg2, -90, 90) then
            local0[4] = 20
            local0[5] = 20
            local0[8] = 20
            local0[11] = 20
            local0[14] = 20
        elseif InsideDir(arg1, arg2, 0, 90) then
            local0[1] = 5
            local0[2] = 5
            local0[4] = 5
            local0[5] = 5
            local0[6] = 5
            local0[7] = 5
            local0[8] = 5
            local0[9] = 30
            local0[11] = 30
            local0[14] = 5
        else
            local0[12] = 75
            local0[20] = 25
        end
    elseif 12 <= local3 then
        local0[3] = 20
        local0[10] = 80
    elseif 8 <= local3 then
        local0[1] = 15
        local0[3] = 20
        local0[4] = 5
        local0[6] = 10
        local0[10] = 40
        local0[11] = 10
    elseif 6 <= local3 then
        local0[1] = 15
        local0[3] = 30
        local0[4] = 5
        local0[6] = 10
        local0[10] = 20
        local0[11] = 20
    elseif 3 <= local3 then
        local0[1] = 15
        local0[3] = 15
        local0[4] = 10
        local0[6] = 15
        local0[11] = 25
        local0[14] = 20
    elseif InsideDir(arg1, arg2, 90, 90) then
        local0[4] = 25
        local0[8] = 10
        local0[9] = 25
        local0[11] = 20
        local0[13] = 5
        local0[14] = 15
    elseif InsideDir(arg1, arg2, -90, 90) then
        local0[4] = 25
        local0[8] = 10
        local0[9] = 25
        local0[11] = 20
        local0[13] = 5
        local0[14] = 15
    elseif InsideDir(arg1, arg2, 0, 90) then
        local0[1] = 15
        local0[4] = 5
        local0[6] = 15
        local0[8] = 10
        local0[9] = 5
        local0[11] = 40
        local0[13] = 5
        local0[14] = 5
    else
        local0[12] = 75
        local0[20] = 25
    end
    if arg1:GetNumber(0) == 0 then
        arg1:SetNumber(0, 1)
    end
    local0[11] = SetCoolTime(arg1, arg2, 3018, 10, local0[11], 1)
    if arg1:IsFinishTimer(0) == false then
        local0[14] = 0
    end
    local0[14] = SetCoolTime(arg1, arg2, 6001, 5, local0[14], 0)
    local0[14] = SetCoolTime(arg1, arg2, 6002, 5, local0[14], 0)
    local0[14] = SetCoolTime(arg1, arg2, 6003, 5, local0[14], 0)
    local0[9] = SpaceCheckBeforeAct(arg1, arg2, 180, 6, local0[9])
    local0[9] = SpaceCheckBeforeAct(arg1, arg2, 165, 6, local0[9])
    local0[9] = SpaceCheckBeforeAct(arg1, arg2, 195, 6, local0[9])
    local0[13] = SpaceCheckBeforeAct(arg1, arg2, 180, 6, local0[13])
    local0[13] = SpaceCheckBeforeAct(arg1, arg2, 165, 6, local0[13])
    local0[13] = SpaceCheckBeforeAct(arg1, arg2, 195, 6, local0[13])
    local1[1] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, SpearSilverKnight_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SpearSilverKnight_ActAfter_AdjustSpace), local2)
    return 
end

function SpearSilverKnight_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    if local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
    elseif local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 80, 5, 5)
    local local0 = 3000
    local local1 = 3005
    local local2 = 3007
    local local3 = 3017
    local local4 = 3018
    local local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local8 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local9 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local12 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        local13:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local8)
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        local13:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.6 - arg0:GetMapHitRadius(TARGET_SELF), 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 80, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3004
    local local1 = 3005
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local4 = 0
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5)
        local local6 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5)
        local6:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3004
    local local1 = 3005
    local local2 = 3007
    local local3 = 3017
    local local4 = 3018
    local local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local7 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local9 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        local13:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    elseif local12 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local8)
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        local13:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    elseif local12 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local12 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        local13:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local8)
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        local13:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5)
    local1:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5)
    local1:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3007
    local local1 = 3005
    local local2 = 3017
    local local3 = 3018
    local local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    if local9 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local7, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4)
    elseif local9 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local7, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
        local local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        local10:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, DistToAtt5, local7, local8)
        local local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        local10:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act09(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    local0:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.9 - arg0:GetMapHitRadius(TARGET_SELF), 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    local0:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act14(arg0, arg1, arg2)
    arg0:SetTimer(0, 3)
    local local0 = 0
    local local1 = arg0:GetStringIndexedNumber("Dist_SideStep")
    local local2 = 0
    if arg0:GetRandam_Int(0, 1) == 0 then
        local0 = -90
        local1 = arg0:GetStringIndexedNumber("Dist_SideStep")
        local2 = 90
    else
        local0 = 90
        local1 = arg0:GetStringIndexedNumber("Dist_SideStep")
        local2 = -90
    end
    if SpaceCheck(arg0, arg1, local0, local1) then
        if local0 == -90 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif SpaceCheck(arg0, arg1, local2, local1) then
        if local2 == -90 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    else
        arg1:ClearSubGoal()
        return 
    end
    arg1:AddSubGoal(GOAL_Silverknight141000_spearStepAttack, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SpearSilverKnight_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SpearSilverKnight_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Silverknight141010_spearAfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetNumber(1) == 0 then
        if InsideRange(arg1, arg2, 0, 180, -99, 2) then
            if arg1:GetRandam_Int(1, 100) <= 80 then
                arg2:ClearSubGoal()
                if arg1:GetRandam_Int(1, 100) <= 50 then
                    local local0 = arg1:GetRandam_Int(1, 100)
                    if local0 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, 7, TARGET_ENE_0, true, 9910)
                    elseif local0 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, 0, arg1:GetRandam_Float(15, 30), true, true, 9910)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, 1, arg1:GetRandam_Float(15, 30), true, true, 9910)
                    end
                else
                    local local0 = arg1:GetRandam_Int(1, 100)
                    if local0 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                    elseif local0 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
                    else
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
                    end
                end
                return true
            end
        elseif InsideRange(arg1, arg2, 180, 180, -99, 3.5) and fate <= 80 then
            arg2:ClearSubGoal()
            local local1 = arg1:GetRandam_Int(1, 100)
            if local1 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif local1 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
            else
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
            end
            SpearSilverKnight_StartObserveArea(arg1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and InsideRange(arg1, arg2, 0, 180, -99, 4) and arg1:GetRandam_Int(1, 100) <= 80 then
        arg2:ClearSubGoal()
        local local2 = arg1:GetRandam_Int(1, 100)
        if local2 <= 65 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3000, TARGET_ENE_0, 5.4 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3001, TARGET_ENE_0, 5.4 - arg1:GetMapHitRadius(TARGET_SELF) + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3002, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        elseif local2 <= 90 then
            local local0 = arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3017, TARGET_ENE_0, 5.2 - arg1:GetMapHitRadius(TARGET_SELF) + 1.5, 0, 0)
            local0:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3018, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3004, TARGET_ENE_0, 3.9 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_UseItem) and arg1:IsStartAttack() == false then
        if InsideRange(arg1, arg2, 0, 180, 7, 999) then
            if arg1:GetRandam_Int(1, 100) <= 85 then
                arg2:ClearSubGoal()
                SpearSilverKnight_Act10(arg1, arg2, paramTbl)
                return true
            end
        elseif InsideRange(arg1, arg2, 0, 90, 4, 7) then
            if arg1:GetRandam_Int(1, 100) <= 85 then
                arg2:ClearSubGoal()
                SpearSilverKnight_Act03(arg1, arg2, paramTbl)
                return true
            end
        elseif InsideRange(arg1, arg2, 0, 240, -99, 4) and arg1:GetRandam_Int(1, 100) <= 90 then
            arg2:ClearSubGoal()
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10830) == true and ReactBackstab_Act(arg1, arg2, 0, 3020, 100) then
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Silverknight141010_spearAfterAttackAct, "GOAL_Silverknight141010_spearAfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141010_spearAfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 100)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 90)
    elseif 2.5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 85)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 5)
    else
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 10)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

RegisterTableGoal(GOAL_Silverknight141000_spearStepAttack, "GOAL_Silverknight141000_spearStepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141000_spearStepAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    if InsideRange(arg1, arg2, 0, 180, -99, 3) then
        local local0 = arg1:GetRandam_Int(1, 100)
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            if local0 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3004, TARGET_ENE_0, 3.9 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            elseif local0 <= 55 then
                local local1 = arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3017, TARGET_ENE_0, 5.2 - arg1:GetMapHitRadius(TARGET_SELF) + 1.5, 0, 0)
                local1:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3018, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3007, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
        elseif local0 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3004, TARGET_ENE_0, 3.9 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        else
            local local1 = arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3017, TARGET_ENE_0, 5.2 - arg1:GetMapHitRadius(TARGET_SELF) + 1.5, 0, 0)
            local1:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3018, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        end
    elseif InsideRange(arg1, arg2, 0, 180, 3, 4.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3000, TARGET_ENE_0, 5.4 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3001, TARGET_ENE_0, 5.4 - arg1:GetMapHitRadius(TARGET_SELF) + 1)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3002, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
    elseif InsideRange(arg1, arg2, 0, 120, 4.5, 6) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3003, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
    elseif InsideRange(arg1, arg2, 0, 180, 6, 12) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3016, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
    elseif InsideRange(arg1["goai"], 180, 180, -99, 2.5) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3019, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
