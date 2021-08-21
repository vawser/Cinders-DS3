RegisterTableGoal(GOAL_Silverknight141000_SwordBattle, "GOAL_Silverknight141000_SwordBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141000_SwordBattle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:GetNumber(0) == 0 and arg1:GetRandam_Int(1, 100) <= 80 and InsideRange(arg1, arg2, 0, 180, 4, 999) then
        local0[10] = 80
    elseif InsideRange(arg1, arg2, 180, 180, -99, 2.5) then
        local0[20] = 20
        local0[11] = 80
    elseif InsideDir(arg1, arg2, 180, 180) then
        local0[20] = 100
    elseif arg1:IsTargetGuard(TARGET_ENE_0) then
        if 12 <= local3 then
            local0[1] = 5
            local0[3] = 5
            local0[5] = 5
            local0[7] = 5
            local0[10] = 80
        elseif 8 <= local3 then
            local0[1] = 10
            local0[3] = 15
            local0[5] = 5
            local0[7] = 10
            local0[10] = 60
        elseif 4 <= local3 then
            local0[1] = 15
            local0[3] = 20
            local0[5] = 10
            local0[7] = 15
            local0[10] = 40
        elseif 2.5 <= local3 then
            local0[1] = 30
            local0[5] = 30
            local0[7] = 30
            local0[13] = 10
        elseif InsideDir(arg1, arg2, 90, 90) then
            local0[1] = 20
            local0[5] = 20
            local0[12] = 40
            local0[13] = 20
        elseif InsideDir(arg1, arg2, -90, 90) then
            local0[1] = 20
            local0[5] = 20
            local0[12] = 40
            local0[13] = 20
        elseif InsideDir(arg1, arg2, 0, 90) then
            local0[1] = 10
            local0[5] = 10
            local0[7] = 10
            local0[9] = 60
            local0[12] = 10
        else
            local0[11] = 75
            local0[20] = 25
        end
    elseif 12 <= local3 then
        local0[1] = 5
        local0[3] = 5
        local0[5] = 5
        local0[7] = 5
        local0[10] = 80
    elseif 8 <= local3 then
        local0[1] = 10
        local0[3] = 15
        local0[5] = 5
        local0[7] = 10
        local0[10] = 60
    elseif 4 <= local3 then
        local0[1] = 15
        local0[3] = 20
        local0[5] = 10
        local0[7] = 15
        local0[10] = 40
    elseif 2.5 <= local3 then
        local0[1] = 30
        local0[5] = 30
        local0[7] = 30
        local0[13] = 10
    elseif InsideDir(arg1, arg2, 90, 90) then
        local0[1] = 20
        local0[5] = 20
        local0[12] = 40
        local0[13] = 20
    elseif InsideDir(arg1, arg2, -90, 90) then
        local0[1] = 20
        local0[5] = 20
        local0[12] = 40
        local0[13] = 20
    elseif InsideDir(arg1, arg2, 0, 90) then
        local0[1] = 15
        local0[5] = 15
        local0[7] = 30
        local0[12] = 30
        local0[13] = 10
    else
        local0[11] = 75
        local0[20] = 25
    end
    if arg1:GetNumber(0) == 0 then
        arg1:SetNumber(0, 1)
    end
    local0[10] = SetCoolTime(arg1, arg2, 3015, 10, local0[10], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3016, 10, local0[10], 1)
    if arg1:IsFinishTimer(0) == false then
        local0[13] = 0
    end
    local0[13] = SetCoolTime(arg1, arg2, 6002, 3, local0[13], 0)
    local0[13] = SetCoolTime(arg1, arg2, 6003, 3, local0[13], 0)
    local0[11] = SpaceCheckBeforeAct(arg1, arg2, 0, 5, local0[11])
    local0[11] = SpaceCheckBeforeAct(arg1, arg2, 30, 5, local0[11])
    local0[11] = SpaceCheckBeforeAct(arg1, arg2, -30, 5, local0[11])
    local0[12] = SpaceCheckBeforeAct(arg1, arg2, 180, 5, local0[12])
    local0[12] = SpaceCheckBeforeAct(arg1, arg2, 165, 5, local0[12])
    local0[12] = SpaceCheckBeforeAct(arg1, arg2, 195, 5, local0[12])
    local1[1] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act13)
    local1[20] = REGIST_FUNC(arg1, arg2, SwordSilverKnight_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SwordSilverKnight_ActAfter_AdjustSpace), local2)
    return 
end

function SwordSilverKnight_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3010
    local local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local7 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11)
    elseif local12 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local12 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    elseif local12 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local12 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    elseif local12 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    elseif local12 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    elseif local12 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 80, 5, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3007
    local local5 = 3010
    local local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local10 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local11 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local12 = 0
    local local13 = 0
    local local14 = arg0:GetRandam_Int(1, 100)
    if local14 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local14 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 80, 5, 5)
    local local0 = 3004
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3010
    local local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local7 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11)
    elseif local12 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local12 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    elseif local12 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local12 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    elseif local12 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    elseif local12 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    elseif local12 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3004
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3007
    local local5 = 3010
    local local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local10 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local11 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local12 = 0
    local local13 = 0
    local local14 = arg0:GetRandam_Int(1, 100)
    if local14 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local14 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3005
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3010
    local local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local7 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11)
    elseif local12 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    elseif local12 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local12 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    elseif local12 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    elseif local12 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    elseif local12 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    elseif local12 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local9, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local5)
    elseif local12 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local9, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local9, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3005
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3007
    local local5 = 3010
    local local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 0
    local local13 = 0
    local local14 = arg0:GetRandam_Int(1, 100)
    if local14 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local6)
    elseif local14 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local14 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local6)
    elseif local14 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3006
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    if local10 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
    elseif local10 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
    elseif local10 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4)
    elseif local10 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
    elseif local10 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    elseif local10 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local local0 = 3006
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 3007
    local local5 = 3010
    local local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 0
    local local13 = 0
    local local14 = arg0:GetRandam_Int(1, 100)
    if local14 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local6)
    elseif local14 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local14 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local14 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local6)
    elseif local14 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
    elseif local14 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif local14 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local9, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 100, 5, 5)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakCombo, 10, 3007, 3003, TARGET_ENE_0, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act10(arg0, arg1, arg2)
    local local0 = 4
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 0, 0, 5, 5)
    local local1 = 3015
    local local2 = 3016
    local local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if local7 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6)
    elseif local7 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act13(arg0, arg1, arg2)
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
    arg1:AddSubGoal(GOAL_Silverknight141000_SwordStepAttack, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SwordSilverKnight_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SwordSilverKnight_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Silverknight141000_SwordAfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if InsideRange(arg1, arg2, 0, 180, -99, 3.5) and Counter_Act(arg1, arg2, arg1:GetRandam_Int(10, 20), 3013) then
        if arg1:GetRandam_Int(1, 100) <= 75 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
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
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        if InsideRange(arg1, arg2, 0, 180, -99, 1) then
            if arg1:GetRandam_Int(1, 100) <= 80 then
                arg2:ClearSubGoal()
                local local2 = arg1:GetRandam_Int(1, 100)
                if local2 <= 25 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3002, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
                elseif local2 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
                elseif local2 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3010, TARGET_ENE_0, 3.7 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3003, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
                end
                return true
            end
        elseif InsideRange(arg1, arg2, 0, 180, 1, 2) and arg1:GetRandam_Int(1, 100) <= 80 then
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3002, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 6, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 6)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:IsStartAttack() == false then
        if InsideRange(arg1, arg2, 0, 180, 4, 999) then
            if arg1:GetRandam_Int(1, 100) <= 85 then
                arg2:ClearSubGoal()
                SwordSilverKnight_Act10(arg1, arg2, paramTbl)
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

RegisterTableGoal(GOAL_Silverknight141000_SwordAfterAttackAct, "GOAL_Silverknight141000_SwordAfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141000_SwordAfterAttackAct, true)
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

RegisterTableGoal(GOAL_Silverknight141000_SwordStepAttack, "GOAL_Silverknight141000_SwordStepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141000_SwordStepAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    if InsideRange(arg1, arg2, 0, 180, -99, 2) then
        local local0 = arg1:GetRandam_Int(1, 100)
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            if local0 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            elseif local0 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3005, TARGET_ENE_0, 3.3 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3007, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3007, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
        elseif local0 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3005, TARGET_ENE_0, 3.7 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3003, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        end
    elseif InsideRange(arg1, arg2, 0, 180, 2, 3) then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
    elseif InsideRange(arg1, arg2, 0, 90, 3, 5) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3004, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
