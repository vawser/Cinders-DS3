RegisterTableGoal(GOAL_GiantNorm628000_Battle, "GiantNorm628000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantNorm628000_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16440)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16445)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = 0
    local local8 = 0
    local local9 = 1
    local local10 = arg1:GetHpRate(TARGET_SELF)
    if 0 <= arg1:GetToTargetAngle(TARGET_ENE_0) then
        local8 = 1
    else
        local7 = 1
    end
    if arg1:IsFinishTimer(0) == false then
        local9 = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16431) then
            local0[57] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16286) then
            if local3 < 27 and local10 <= 0.8 and not arg1:HasSpecialEffectId(TARGET_SELF, 16446) then
                local0[64] = 1000
            elseif local3 < 5.9 then
                local0[51] = 40 * local8
                local0[52] = 40 * local7
                local0[53] = 40 * local8
                local0[54] = 40 * local7
                local0[55] = 50 * local8
                local0[56] = 50 * local7
                local0[60] = 0
                local0[61] = 0
                local0[62] = 200
                local0[63] = 0
                local0[66] = 200 * local7
                local0[67] = 200 * local8
            elseif local3 < 7.5 then
                local0[51] = 70 * local8
                local0[52] = 70 * local7
                local0[53] = 0
                local0[54] = 0
                local0[55] = 0
                local0[56] = 0
                local0[60] = 0
                local0[61] = 0
                local0[62] = 500
                local0[63] = 0
            elseif local3 < 27 then
                local0[51] = 0
                local0[52] = 0
                local0[53] = 0
                local0[54] = 0
                local0[55] = 0
                local0[56] = 0
                local0[59] = 0
                local0[60] = 0
                local0[61] = 0
                local0[62] = 100
                local0[63] = 0
                local0[64] = 0
            elseif local3 < 85 then
                local0[51] = 0
                local0[52] = 0
                local0[53] = 0
                local0[54] = 0
                local0[55] = 0
                local0[56] = 0
                local0[59] = 100
                local0[60] = 0
                local0[61] = 0
                local0[62] = 0
                local0[63] = 0
            else
                local0[51] = 0
                local0[52] = 0
                local0[53] = 0
                local0[54] = 0
                local0[55] = 0
                local0[56] = 0
                local0[59] = 0
                local0[60] = 100
                local0[61] = 0
                local0[62] = 0
                local0[63] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16287) and arg1:HasSpecialEffectId(TARGET_SELF, 16286) then
            local0[83] = 100
        elseif local3 < 27 and local10 <= 0.8 and not arg1:HasSpecialEffectId(TARGET_SELF, 16446) then
            local0[64] = 1000
        elseif local3 < 5.9 then
            local0[51] = 40 * local8
            local0[52] = 40 * local7
            local0[53] = 40 * local8
            local0[54] = 40 * local7
            local0[55] = 50 * local8
            local0[56] = 50 * local7
            local0[60] = 0
            local0[61] = 0
            local0[62] = 200
            local0[63] = 0
            local0[66] = 200 * local7
            local0[67] = 200 * local8
        elseif local3 < 7.5 then
            local0[51] = 70 * local8
            local0[52] = 70 * local7
            local0[53] = 0
            local0[54] = 0
            local0[55] = 0
            local0[56] = 0
            local0[60] = 0
            local0[61] = 0
            local0[62] = 500
            local0[63] = 0
        elseif local3 < 42 then
            local0[60] = 0
            local0[61] = 500
            local0[62] = 500
            local0[63] = 0
        else
            local0[60] = 0
            local0[61] = 0
            local0[62] = 500
            local0[63] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16449) then
        local0[30] = 100
    elseif local3 < 2.5 and arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 25 * local8
        local0[4] = 25 * local7
        local0[5] = 65 * local8
        local0[6] = 65 * local7
        local0[20] = 0
        local0[25] = 0
        local0[30] = 20 * local9
        local0[35] = 0
    elseif local3 < 5 and arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
        local0[1] = 50 * local8
        local0[2] = 50 * local7
        local0[3] = 40 * local8
        local0[4] = 40 * local7
        local0[5] = 20 * local8
        local0[6] = 20 * local7
        local0[20] = 0
        local0[25] = 0
        local0[30] = 15 * local9
        local0[35] = 0
    elseif local3 < 8 and arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
        local0[1] = 35 * local8
        local0[2] = 35 * local7
        local0[3] = 15 * local8
        local0[4] = 15 * local7
        local0[5] = 0
        local0[6] = 0
        local0[20] = 0
        local0[25] = 0
        local0[30] = 15
        local0[35] = 0
    elseif local3 < 12 and arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[20] = 0
        local0[25] = 0
        local0[30] = 15
        local0[35] = 0
    elseif local3 < 27 and arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[20] = 70
        local0[30] = 30
        local0[35] = 500
    elseif local3 < 40 and arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[20] = 500
        local0[25] = 70
        local0[30] = 30
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
        local0[25] = 70
        local0[30] = 30
    elseif local3 < 2.5 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 25 * local8
        local0[4] = 25 * local7
        local0[5] = 65 * local8
        local0[6] = 65 * local7
    elseif local3 < 5 then
        local0[1] = 50 * local8
        local0[2] = 50 * local7
        local0[3] = 40 * local8
        local0[4] = 40 * local7
        local0[5] = 20 * local8
        local0[6] = 20 * local7
    else
        local0[1] = 35 * local8
        local0[2] = 35 * local7
        local0[3] = 15 * local8
        local0[4] = 15 * local7
        local0[5] = 0
        local0[6] = 0
    end
    local0[90] = 0
    local0[91] = 0
    local0[92] = 0
    local0[1] = SetCoolTime(arg1, arg2, 3002, 3, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 3, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 3, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 3, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 3, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 3, local0[6], 1)
    local0[20] = SetCoolTime(arg1, arg2, 3020, 20, local0[20], 1)
    local0[25] = SetCoolTime(arg1, arg2, 3025, 20, local0[25], 1)
    local0[30] = SetCoolTime(arg1, arg2, 3030, 20, local0[30], 1)
    local0[35] = SetCoolTime(arg1, arg2, 3035, 20, local0[35], 1)
    local0[51] = SetCoolTime(arg1, arg2, 1003002, 5, local0[51], 1)
    local0[52] = SetCoolTime(arg1, arg2, 1003003, 5, local0[52], 1)
    local0[53] = SetCoolTime(arg1, arg2, 1003006, 5, local0[53], 1)
    local0[54] = SetCoolTime(arg1, arg2, 1003007, 5, local0[54], 1)
    local0[55] = SetCoolTime(arg1, arg2, 1003008, 5, local0[55], 1)
    local0[56] = SetCoolTime(arg1, arg2, 1003009, 5, local0[56], 1)
    local0[62] = SetCoolTime(arg1, arg2, 1003022, 10, local0[62], 1)
    local0[64] = SetCoolTime(arg1, arg2, 1003029, 30, local0[64], 1)
    local0[66] = SetCoolTime(arg1, arg2, 1003036, 30, local0[66], 1)
    local0[67] = SetCoolTime(arg1, arg2, 1003037, 30, local0[67], 1)
    local0[85] = SetCoolTime(arg1, arg2, 1003011, 30, local0[85], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16448) then
        local0[30] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act06)
    local1[20] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act20)
    local1[25] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act25)
    local1[30] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act30)
    local1[35] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act35)
    local1[51] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act51)
    local1[52] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act52)
    local1[53] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act53)
    local1[54] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act54)
    local1[55] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act55)
    local1[56] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act56)
    local1[57] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act57)
    local1[59] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act59)
    local1[60] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act60)
    local1[61] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act61)
    local1[62] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act62)
    local1[63] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act63)
    local1[64] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act64)
    local1[66] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act66)
    local1[67] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act67)
    local1[82] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act82)
    local1[83] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act83)
    local1[85] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act85)
    local1[90] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act90)
    local1[91] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act91)
    local1[92] = REGIST_FUNC(arg1, arg2, GiantNorm628000_Act92)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GiantNorm628000_ActAfter_AdjustSpace), local2)
    return 
end

function GiantNorm628000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 3, 3)
    local local0 = 3013
    local local1 = arg0:GetRandam_Int(1, 100)
    if 15 < arg0:GetToTargetAngle(TARGET_ENE_0) then
        local0 = 3014
    end
    local local2 = arg0:GetToTargetAngle(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 3, 3)
    local local0 = 3014
    local local1 = arg0:GetRandam_Int(1, 100)
    if 0 < arg0:GetToTargetAngle(TARGET_ENE_0) then
        local0 = 3013
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 3, 3)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 3, 3)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 3, 3)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 3, 3)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act10(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3010, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act11(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 25, 3011, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act20(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3020, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act25(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3025, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628000_Act30(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3030, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act35(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3035, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act51(arg0, arg1, arg2)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act52(arg0, arg1, arg2)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act53(arg0, arg1, arg2)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act54(arg0, arg1, arg2)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act55(arg0, arg1, arg2)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act56(arg0, arg1, arg2)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act57(arg0, arg1, arg2)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3013, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act59(arg0, arg1, arg2)
    local local0 = 1.5
    if arg0:HasSpecialEffectId(TARGET_SELF, 16432) then
        local0 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, local0, TARGET_ENE_0, 0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16440)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16445)
    local local1 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3020, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act60(arg0, arg1, arg2)
    local local0 = 0.5
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16432) then
        local0 = 0
    else
        local0 = arg0:GetRandam_Float(3, 4.5)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, local0, TARGET_ENE_0, 0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16440)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16445)
    local local2 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3020, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act61(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16440)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3021, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act62(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16445)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3022, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act63(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16440)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3023, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act64(arg0, arg1, arg2)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3020, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act66(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16445)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3022, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act67(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16445)
    local local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3022, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act83(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 25, 3038, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act85(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 50
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 25, 3011, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantNorm628000_Act90(arg0, arg1, arg2)
    local local0 = 0
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(50, 65), true, true, -1)
    local3:SetTargetRange(1, 4.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628000_Act91(arg0, arg1, arg2)
    local local0 = 10
    local local1 = 999
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 5, TARGET_ENE_0, true, -1)
    return 
end

function GiantNorm628000_Act92(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GiantNorm628000_AfterAttackAct, 10)
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
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local1 = 0
    local local2 = 0
    local local3 = 0
    local local4 = 0
    if is_sitting ~= 1 then

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 16445 and arg1:HasSpecialEffectId(TARGET_SELF, 16286) then
            if local0 <= 27 and arg1:GetHpRate(TARGET_SELF) <= 0.8 and not arg1:HasSpecialEffectId(TARGET_SELF, 16446) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif 27 <= local0 and local0 <= 85 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 10, 0, 0)
                return true
            else
                return false
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 16440 and arg1:HasSpecialEffectId(TARGET_SELF, 16286) then
            if local0 <= 75 and 27 <= local0 and arg1:HasSpecialEffectId(TARGET_SELF, 16434) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3033, TARGET_ENE_0, 10, 0, 0)
                return true
            else
                return false
            end
        else
            return false
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_GiantNorm628000_AfterAttackAct, "GiantNorm628000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantNorm628000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    local local2 = 1
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local2 = 0
    end
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10 * local2)
    else
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10 * local2)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
