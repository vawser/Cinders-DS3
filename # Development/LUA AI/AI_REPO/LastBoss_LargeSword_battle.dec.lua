RegisterTableGoal(GOAL_LastBoss_LargeSword_Battle, "LastBoss_LargeSword")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_LargeSword_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 7)
    arg1:SetStringIndexedNumber("Dist_BackStep", 7)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(1, 0)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = 1
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = 1
    local local7 = 1
    local local8 = 1
    local local9 = 1
    local local10 = 1
    local local11 = 1
    local local12 = arg1:GetHpRate(TARGET_SELF)
    if 150 <= arg1:GetNumber(2) then
        local4 = arg1:GetRandam_Int(100, 120)
    elseif 100 <= arg1:GetNumber(2) then
        local4 = arg1:GetRandam_Int(90, 120)
    elseif 75 <= arg1:GetNumber(2) then
        local4 = arg1:GetRandam_Int(60, 120)
    elseif 50 <= arg1:GetNumber(2) then
        local4 = arg1:GetRandam_Int(10, 110)
    else
        local4 = arg1:GetRandam_Int(1, 10)
    end
    if local12 <= 0.3 then
        local6 = 4
        local7 = 1
        local8 = 1
    elseif 0.7 <= local12 then
        local6 = 1
        local7 = 1
        local8 = 4
    else
        local6 = 1.5
        local7 = 1.5
        local8 = 0.5
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12125) then
        local9 = 1
    else
        local9 = 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12126) then
        local10 = 1
    else
        local10 = 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12127) then
        local11 = 1
    else
        local11 = 20
    end
    if 100 <= local4 and local12 <= 0.85 then
        local0[31] = 100 * local6 * local9
        local0[32] = 100 * local7 * local10
        local0[33] = 100 * local8 * local11
    elseif 12 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 5
        local0[4] = 20
        local0[5] = 20
        local0[6] = 20
        local0[10] = 5
        local0[11] = 15
        local0[12] = 0
    elseif 8 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 10
        local0[4] = 20
        local0[5] = 10
        local0[6] = 20
        local0[10] = 10
        local0[11] = 20
        local0[12] = 0
    elseif 5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 5
        local0[4] = 15
        local0[5] = 15
        local0[6] = 15
        local0[10] = 10
        local0[11] = 15
        local0[12] = 5
    elseif 2 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 15
        local0[4] = 5
        local0[5] = 10
        local0[6] = 5
        local0[10] = 15
        local0[11] = 10
        local0[12] = 15
    elseif 70 <= local5 and InsideDir(arg1, arg2, 135, 45) then
        local0[7] = 80
        local0[9] = 20
    elseif 70 <= local5 and InsideDir(arg1, arg2, -135, 45) then
        local0[8] = 80
        local0[9] = 20
    elseif 60 <= local5 and InsideDir(arg1, arg2, -180, 45) then
        local0[9] = 100
    else
        local0[1] = 20
        local0[2] = 20
        local0[3] = 15
        local0[4] = 0
        local0[5] = 10
        local0[6] = 5
        local0[10] = 15
        local0[11] = 0
        local0[12] = 15
    end
    local0[10] = SetCoolTime(arg1, arg2, 3015, 8, local0[10], 0)
    local0[11] = SetCoolTime(arg1, arg2, 3015, 8, local0[11], 0)
    local0[12] = SetCoolTime(arg1, arg2, 3015, 8, local0[12], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act12)
    local1[30] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act32)
    local1[33] = REGIST_FUNC(arg1, arg2, LastBoss_LargeSword_Act33)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, LastBoss528000_ActAfter_AdjustSpace), local2)
    return 
end

function LastBoss_LargeSword_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    if local4 <= 0 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 4)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, local2, local3)
    elseif local4 <= 60 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        if local5 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1)
        elseif local5 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1)
        elseif local5 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1)
        end
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 12)
        if local5 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        elseif local5 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
        elseif local5 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 7.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local1)
        elseif local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        elseif local5 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 7.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    if local4 <= 0 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 4)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, local2, local3)
    elseif local4 <= 60 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
        end
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 12)
        if local5 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1)
        elseif local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 999, 100, 0, 3, 5)
    local local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 4)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, local2, local3)
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        if local4 <= 25 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local1)
        elseif local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1)
        elseif local4 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 6)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, local2, local3)
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 12)
        if arg0:GetRandam_Int(1, 100) <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 6 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    if local4 <= 20 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 4)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, local2, local3)
    elseif local4 <= 60 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1)
        end
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 12)
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12 - arg0:GetMapHitRadius(TARGET_SELF) - 4, 0, 999, 100, 0, 3, 5)
    local local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 10)
    if 3 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local0, local1, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6001, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    if local2 <= 30 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 7)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1)
    elseif local2 <= 75 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 14)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 100)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1)
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 21)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 100)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 14)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 999, 100, 0, 3, 5)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 14)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20002, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_LargeSword_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20004, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss528000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_LastBoss_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

RegisterTableGoal(GOAL_LastBoss_AfterAttackAct, "LastBoss_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = 0
    local local4 = arg1:GetRandam_Float(2, 3)
    local local5 = arg1:GetRandam_Int(0, 1)
    local local6 = arg1:GetRandam_Int(30, 45)
    local local7 = arg1:GetRandam_Float(2, 3)
    local local8 = local0 + arg1:GetRandam_Float(6, 8)
    local local9 = arg1:GetRandam_Float(1, 2)
    local local10 = arg1:GetRandam_Float(1.3, 1.7)
    local local11 = local0 + arg1:GetRandam_Float(3, 5)
    if 10 <= local0 then
        if local2 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, IsGuard)
        elseif local2 <= 100 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, IsGuard)
        else
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
        end
    elseif 6 <= local0 then
        if local2 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, IsGuard)
        elseif local2 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, IsGuard)
        end
    elseif 3 <= local0 then
        if local2 <= 20 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local5, local6, true, true, IsGuard)
        elseif local2 <= 35 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local10, TARGET_ENE_0, local11, TARGET_ENE_0, true, IsGuard)
        end
    elseif local2 <= 0 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local5, local6, true, true, IsGuard)
    elseif local2 <= 30 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local10, TARGET_ENE_0, local11, TARGET_ENE_0, true, IsGuard)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
