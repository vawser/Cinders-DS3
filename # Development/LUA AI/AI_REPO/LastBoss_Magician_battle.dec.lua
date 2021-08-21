RegisterTableGoal(GOAL_LastBoss_Magician_Battle, "LastBoss_Magician")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_Magician_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = 1
    local local5 = 1
    local local6 = 1
    local local7 = 1
    local local8 = 1
    local local9 = 1
    local local10 = 1
    local local11 = 1
    local local12 = 1
    local local13 = 1
    if arg1:GetHpRate(TARGET_SELF) <= 0.3 then
        local10 = 2
    else
        local10 = 1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local11 = 0
    else
        local11 = 1
    end
    if 150 <= arg1:GetNumber(2) then
        local4 = arg1:GetRandam_Int(100, 120)
        local6 = 50 * local10
    elseif 100 <= arg1:GetNumber(2) then
        local4 = arg1:GetRandam_Int(90, 120)
        local6 = 40 * local10
    elseif 75 <= arg1:GetNumber(2) then
        local4 = arg1:GetRandam_Int(60, 120)
        local6 = 30 * local10
    elseif 50 <= arg1:GetNumber(2) then
        local4 = arg1:GetRandam_Int(10, 110)
        local6 = 10 * local10
    else
        local4 = arg1:GetRandam_Int(1, 10)
        local6 = 0
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 12118) or not not arg1:HasSpecialEffectId(TARGET_SELF, 12116) or not not arg1:HasSpecialEffectId(TARGET_SELF, 12117) or arg1:HasSpecialEffectId(TARGET_SELF, 12120) then
        local5 = 0
    else
        local5 = 1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12120) then
        local7 = 1.5
        local8 = 1
        local9 = 2
    else
        local7 = 1
        local8 = 1.7
        local9 = 1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12125) then
        local12 = 1
    else
        local12 = 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12126) then
        local13 = 1
    else
        local13 = 20
    end
    if 100 <= local4 then
        local0[30] = 100 * local7
        local0[31] = 100 * local8 * local12
        local0[32] = 100 * local9 * local13
    elseif 15 <= local3 then
        local0[1] = 40
        local0[2] = 10
        local0[3] = 30 * local5
        local0[4] = 0 * local11
        local0[5] = 20 * local6 * local11
    elseif 10 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 40 * local5
        local0[4] = 0 * local11
        local0[5] = 20 * local6 * local11
    elseif 5 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[3] = 45 * local5
        local0[4] = 5 * local11
        local0[5] = 10 * local6 * local11
    else
        local0[1] = 5
        local0[2] = 15
        local0[3] = 45 * local5
        local0[4] = 25 * local11
        local0[5] = 10 * local6 * local11
    end
    local0[3] = SetCoolTime(arg1, arg2, 3003, 30, local0[3], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 8, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3009, 20, local0[5], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act05)
    local1[20] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act20)
    local1[30] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act32)
    local1[33] = REGIST_FUNC(arg1, arg2, LastBoss_Magician_Act33)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, LastBoss528000_ActAfter_AdjustSpace), local2)
    return 
end

function LastBoss_Magician_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 30 - arg0:GetMapHitRadius(TARGET_SELF), 30 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 999, 100, 0, 3, 5)
    local local0 = 100 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = 1
    local local5 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local4 = 10
        local5 = 0
    else
        local4 = 1
        local5 = 1
    end
    if arg0:GetDist(TARGET_ENE_0) <= 12 - arg0:GetMapHitRadius(TARGET_SELF) then
        if local3 <= 30 then
            arg0:SetNumber(2, arg0:GetNumber(2) + 8 * local4)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, local1, local2)
        else
            arg0:SetNumber(2, arg0:GetNumber(2) + 15 * local4)
            if arg0:GetRandam_Int(1, 100) <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 30 - arg0:GetMapHitRadius(TARGET_SELF))
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local0)
            end
        end
    elseif local3 <= 30 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8 * local4)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, local1, local2)
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 15 * local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 30 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local0)
    end
    GetWellSpace_Odds = 100 * local5
    return GetWellSpace_Odds
end

function LastBoss_Magician_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 12 - arg0:GetMapHitRadius(TARGET_SELF), 12 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 999, 100, 0, 3, 5)
    local local1 = 100 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 1
    local local6 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local5 = 10
        local6 = 0
    else
        local5 = 1
        local6 = 1
    end
    if local0 <= 3 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8 * local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 6001, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1)
    elseif local0 <= 10 then
        if local4 <= 65 then
            arg0:SetNumber(2, arg0:GetNumber(2) + 8 * local5)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, local2, local3)
        else
            arg0:SetNumber(2, arg0:GetNumber(2) + 15 * local5)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1)
        end
    elseif local4 <= 30 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8 * local5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, local2, local3)
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 15 * local5)
        if arg0:GetRandam_Int(1, 100) <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 30 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local1)
        end
    end
    GetWellSpace_Odds = 100 * local6
    return GetWellSpace_Odds
end

function LastBoss_Magician_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 1
    local local3 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local2 = 10
        local3 = 0
    else
        local2 = 1
        local3 = 1
    end
    arg0:SetNumber(2, arg0:GetNumber(2) + 30 * local2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 100 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100 * local3
    return GetWellSpace_Odds
end

function LastBoss_Magician_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 999, 100, 0, 3, 5)
    local local0 = 100 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = 1
    local local4 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local3 = 10
        local4 = 0
    else
        local3 = 1
        local4 = 1
    end
    if arg0:GetDist(TARGET_ENE_0) <= 2 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8 * local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 6001, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local0)
    elseif arg0:GetRandam_Int(1, 100) <= 40 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8 * local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, local1, local2)
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 15 * local3)
        if arg0:GetRandam_Int(1, 100) <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 30 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local0)
        end
    end
    GetWellSpace_Odds = 100 * local4
    return GetWellSpace_Odds
end

function LastBoss_Magician_Act05(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = 1
    local local5 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local4 = 10
        local5 = 0
    else
        local4 = 1
        local5 = 1
    end
    if arg0:GetDist(TARGET_ENE_0) <= 5 - arg0:GetMapHitRadius(TARGET_SELF) then
        arg0:SetNumber(2, arg0:GetNumber(2) + 40 * local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 100 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, SuccessDist)
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 40 * local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, SuccessDist, local0, local1)
    end
    GetWellSpace_Odds = 100 * local5
    return GetWellSpace_Odds
end

function LastBoss_Magician_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, 100 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_Magician_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, 100 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_Magician_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20002, TARGET_ENE_0, 100 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss_Magician_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20004, TARGET_ENE_0, 100 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
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
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = 1
    if arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local2 = 0
    else
        local2 = 1
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if 15 <= local0 and local1 <= 50 and 1 <= local2 then
            arg1:SetNumber(2, arg1:GetNumber(2) + 8)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3000, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif 5 <= local0 and local1 <= 40 and 1 <= local2 then
            arg1:SetNumber(2, arg1:GetNumber(2) + 8)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3001, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif 2 <= local0 and local1 <= 50 and 1 <= local2 then
            arg1:SetNumber(2, arg1:GetNumber(2) + 8)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, 20, 0, 0)
            return true
        end
    end
    return false
end

return 
