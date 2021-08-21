RegisterTableGoal(GOAL_BlackKight_LargeSword_130010_Battle, "BlackKight_LargeSword_130010_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 6)
    arg1:SetStringIndexedNumber("Dist_BackStep", 6)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsTargetGuard(TARGET_SELF) == true and arg1:GetRandam_Int(1, 100) <= 70 and InsideRange(arg1, arg2, 0, 90, -99 - arg1:GetMapHitRadius(TARGET_SELF), 2.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[12] = 10
        local0[3] = 10
    elseif 7 <= local3 then
        if InsideDir(arg1, arg2, 180, 330) then
            local0[21] = 100
        else
            local0[1] = 5
            local0[2] = 5
            local0[3] = 5
            local0[4] = 30
            local0[5] = 20
            local0[7] = 5
            local0[8] = 5
        end
    elseif 1.5 <= local3 then
        if InsideDir(arg1, arg2, 180, 315) then
            local0[21] = 100
        else
            local0[1] = 30
            local0[2] = 30
            local0[3] = 30
            local0[7] = 10
            local0[8] = 10
        end
    elseif InsideDir(arg1, arg2, 180, 180) then
        local0[9] = 90
        local0[20] = 10
    elseif InsideDir(arg1, arg2, 60, 60) then
        local0[8] = 50
        local0[20] = 50
    elseif InsideDir(arg1, arg2, -60, 60) then
        local0[1] = 70
        local0[8] = 20
        local0[20] = 10
    else
        local0[1] = 20
        local0[2] = 20
        local0[3] = 20
        local0[7] = 10
        local0[8] = 10
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 0
    end
    local0[4] = SetCoolTime(arg1, arg2, 3010, 7, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3011, 7, local0[5], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3013, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3014, 10, local0[8], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlackKight_LargeSword_130010_ActAfter_AdjustSpace), local2)
    return 
end

function BlackKight_LargeSword_130010_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3003
    local local3 = 3004
    local local4 = 3006
    local local5 = 3008
    local local6 = 3009
    local local7 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local13 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local14 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local15 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local16 = 0
    local local17 = 0
    local local18 = arg0:GetRandam_Int(1, 100)
    if local18 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local11)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local12)
        local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local13)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local7)
    elseif local18 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local13)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
    elseif local18 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local13)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local12)
        local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local11)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
    elseif local18 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local13)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local14)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local7)
    elseif local18 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local13)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local7)
    elseif local18 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local16, local17)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local14, local16, local17)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.7 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.7 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.7 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    local local0 = 3005
    local local1 = 3002
    local local2 = 3003
    local local3 = 3004
    local local4 = 3006
    local local5 = 3009
    local local6 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local13 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local14 = 0
    local local15 = 0
    local local16 = arg0:GetRandam_Int(1, 100)
    if local16 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local14, local15)
        local local17 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        local17:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local16 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local14, local15)
        local local17 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        local17:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local12)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif local16 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local14, local15)
        local local17 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
        local17:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6)
    elseif local16 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local14, local15)
        local local17 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        local17:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local12)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local14, local15)
        local local17 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        local17:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    local local0 = 3007
    local local1 = 3002
    local local2 = 3003
    local local3 = 3006
    local local4 = 3008
    local local5 = 3009
    local local6 = 3014
    local local7 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local12 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local13 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local14 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local15 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local16 = 0
    local local17 = 0
    local local18 = arg0:GetRandam_Int(1, 100)
    if local18 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local10, local16, local17)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
    elseif local18 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
    elseif local18 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local7)
    elseif local18 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local7)
    elseif local18 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local12)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
    elseif local18 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local12)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local7)
    elseif local18 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local11, local16, local17)
        local local19 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local12)
        local19:SetTargetRange(0, -99, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local15)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local7)
    elseif local18 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local13, local16, local17)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local7)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local15, local16, local17)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 8.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 8.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.2 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 7.2 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    local local0 = 3014
    local local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 0, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act09(arg0, arg1, arg2)
    local local0 = 3015
    local local1 = 3002
    local local2 = 3009
    local local3 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local11 = 0
    local local12 = 0
    local local13 = arg0:GetRandam_Int(1, 100)
    if local13 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local11, local12)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3)
    elseif local13 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local11, local12)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local3)
    elseif local13 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local11, local12)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3)
    elseif local13 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local11, local12)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local11, local12)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act20(arg0, arg1, arg2)
    if arg0:IsTargetGuard(TARGET_SELF) == true then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 9910, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_Act21(arg0, arg1, arg2)
    if arg0:IsTargetGuard(TARGET_SELF) == true then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 9910, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackKight_LargeSword_130010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BlackKight_LargeSword_130010_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_Damaged) and arg1:IsTargetGuard(TARGET_SELF) == false and arg1:GetRandam_Int(1, 100) <= 50 then
        if arg1:GetDist(TARGET_ENE_0) <= 2.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and arg1:GetDist(TARGET_ENE_0) <= 2 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(arg1, arg2, 0, 60, 4 - arg1:GetMapHitRadius(TARGET_SELF), 7.2 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:IsFinishTimer(0) == true then
        arg1:SetTimer(0, 10)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, 0, 0)
        arg2:AddSubGoal(GOAL_BlackKight_LargeSword_130010_AfterAttackAct, 10)
        return true
    elseif arg1:IsInterupt(INTERUPT_UseItem) and arg1:IsStartAttack() == false then
        if InsideRange(arg1, arg2, 0, 180, 2.5, 10) then
            if arg1:GetRandam_Int(1, 100) <= 15 then
                arg2:ClearSubGoal()
                if arg1:GetRandam_Int(1, 100) <= 50 then
                    BlackKight_LargeSword_130010_Act04(arg1, arg2, paramTbl)
                else
                    BlackKight_LargeSword_130010_Act05(arg1, arg2, paramTbl)
                end
                return true
            end
        elseif InsideRange(arg1, arg2, 0, 240, -99, 2.5) and arg1:GetRandam_Int(1, 100) <= 15 then
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) <= 75 then
                BlackKight_LargeSword_130010_Act07(arg1, arg2, paramTbl)
            else
                BlackKight_LargeSword_130010_Act08(arg1, arg2, paramTbl)
            end
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_BlackKight_LargeSword_130010_AfterAttackAct, "BlackKight_LargeSword_130010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackKight_LargeSword_130010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_AAA", 8)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 0.25)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 100)
    if 6 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
    elseif 4 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
    else
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        if InsideRange(arg1, arg2, 0, 180, -99, 2) then
            if arg1:GetRandam_Int(1, 100) <= 50 then
                arg2:ClearSubGoal()
                if arg1:GetRandam_Int(1, 100) <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                elseif InsideDir(arg1, arg2, 90, 180) then
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
                else
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
                end
                return true
            end
        elseif InsideRange(arg1, arg2, 180, 180, 2, 3.5) and arg1:GetRandam_Int(1, 100) <= 30 then
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) <= 0 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif InsideDir(arg1, arg2, 90, 180) then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
            else
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
            end
            return true
        end
    end
    return false
end

return 
