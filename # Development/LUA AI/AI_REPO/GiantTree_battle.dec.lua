RegisterTableGoal(GOAL_GiantTree_Battle, "GOAL_GiantTree_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantTree_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = 0
    local local8 = 0
    local local9 = 0
    local local10 = 0
    local local11 = 0
    local local12 = 0
    local local13 = 0
    local local14 = 0
    local local15 = 0
    local local16 = 0
    local local17 = 0
    local local18 = 0
    local local19 = 0
    local local20 = 0
    local local21 = 0
    local local22 = 0
    local local23 = 0
    local local24 = 0
    if InsideRange(arg1, arg2, 25, 35, 8 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 17 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local7 = 1
    end
    if InsideRange(arg1, arg2, -25, 35, 8 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 17 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local8 = 1
    end
    if InsideRange(arg1, arg2, 90, 35, 8 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 16.5 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local9 = 1
    end
    if InsideRange(arg1, arg2, 270, 35, 8 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 16.5 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local10 = 1
    end
    if not not InsideRange(arg1, arg2, 100, 40, 9, 12) or InsideRange(arg1, arg2, 140, 40, 13.5, 17) then
        local11 = 1
    end
    if not not InsideRange(arg1, arg2, -100, 40, 9, 12) or InsideRange(arg1, arg2, -140, 40, 13.5, 17) then
        local12 = 1
    end
    if local3 <= 8 + 3 - arg1:GetMapHitRadius(TARGET_SELF) then
        local13 = 1
    end
    if InsideRange(arg1, arg2, 0, 70, -999 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 13 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local14 = 1
    end
    if InsideRange(arg1, arg2, 0, 90, -999 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 9.5 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local15 = 1
    end
    if InsideRange(arg1, arg2, -15, 90, -999 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 14 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local16 = 1
    end
    if InsideRange(arg1, arg2, 15, 90, -999 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 12 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local17 = 1
    end
    if InsideRange(arg1, arg2, 0, 45, -999 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 6 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local18 = 1
    end
    if InsideRange(arg1, arg2, 0, 45, -999 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 22 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local19 = 1
    end
    if InsideRange(arg1, arg2, 0, 60, 25 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 50 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local20 = 1
    end
    if InsideRange(arg1, arg2, 0, 45, 20 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 27 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local21 = 1
    end
    if InsideRange(arg1, arg2, 0, 360, -99 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 8 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local22 = 1
    end
    if InsideRange(arg1, arg2, 0, 60, 18 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 28 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local23 = 1
    end
    if InsideRange(arg1, arg2, 0, 60, 25 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 35 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local24 = 1
    end
    if arg1:GetNumber(0) == 0 then
        local20 = 0
        local21 = 0
        local23 = 0
        local24 = 0
    end
    if arg1:IsFinishTimer(1) == false then
        local13 = 0
        local14 = 0
    end
    if arg1:GetEventRequest() == 10 and arg1:HasSpecialEffectId(TARGET_SELF, 11451) == false then
        local0[20] = 100
    elseif local16 == 1 and 35 <= arg1:GetAttackPassedTime(3009) and arg1:GetRandam_Int(1, 100) <= 80 then
        local0[10] = 100
    elseif local17 == 1 and 35 <= arg1:GetAttackPassedTime(3010) and arg1:GetRandam_Int(1, 100) <= 80 then
        local0[11] = 100
    elseif local7 == 1 and 12 <= arg1:GetAttackPassedTime(3000) and arg1:GetRandam_Int(1, 100) <= 60 then
        local0[1] = 100
    elseif local8 == 1 and 12 <= arg1:GetAttackPassedTime(3001) and arg1:GetRandam_Int(1, 100) <= 60 then
        local0[2] = 100
    elseif local9 == 1 and 12 <= arg1:GetAttackPassedTime(3002) and arg1:GetRandam_Int(1, 100) <= 60 then
        local0[3] = 100
    elseif local10 == 1 and 12 <= arg1:GetAttackPassedTime(3003) and arg1:GetRandam_Int(1, 100) <= 60 then
        local0[4] = 100
    elseif local11 == 1 and 12 <= arg1:GetAttackPassedTime(3004) and arg1:GetRandam_Int(1, 100) <= 75 then
        local0[5] = 100
    elseif local12 == 1 and 12 <= arg1:GetAttackPassedTime(3005) and arg1:GetRandam_Int(1, 100) <= 75 then
        local0[6] = 100
    elseif local13 == 1 and 20 <= arg1:GetAttackPassedTime(3006) and arg1:GetRandam_Int(1, 100) <= 25 then
        local0[7] = 100
    elseif local14 == 1 and 20 <= arg1:GetAttackPassedTime(3007) and arg1:GetRandam_Int(1, 100) <= 25 then
        local0[8] = 100
    elseif local15 == 1 and 10 <= arg1:GetAttackPassedTime(3008) and arg1:GetRandam_Int(1, 100) <= 60 then
        local0[9] = 100
    elseif local18 == 1 and 10 <= arg1:GetAttackPassedTime(3011) and arg1:GetRandam_Int(1, 100) <= 60 then
        local0[12] = 100
    elseif local22 == 1 and 20 <= arg1:GetAttackPassedTime(3019) and arg1:GetRandam_Int(1, 100) <= 50 then
        local0[16] = 100
    elseif local19 == 1 and 10 <= arg1:GetAttackPassedTime(3012) and arg1:GetRandam_Int(1, 100) <= 80 then
        local0[13] = 100
    elseif local21 == 1 and 20 <= arg1:GetAttackPassedTime(3018) and arg1:GetRandam_Int(1, 100) <= 50 then
        local0[15] = 100
    elseif local23 == 1 and 20 <= arg1:GetAttackPassedTime(3020) and arg1:GetRandam_Int(1, 100) <= 50 then
        local0[17] = 100
    elseif local21 == 1 and 10 <= arg1:GetAttackPassedTime(3018) and arg1:GetRandam_Int(1, 100) <= 100 then
        local0[18] = 100
    elseif local20 == 1 and 20 <= arg1:GetAttackPassedTime(3017) and arg1:GetRandam_Int(1, 100) <= 100 then
        local0[14] = 100
    else
        if 15 <= local3 then
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[12] = 0
            local0[21] = 100
            local0[23] = 0
            local0[24] = 0
        elseif 8 <= local3 then
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[12] = 0
            local0[21] = 100
            local0[23] = 0
            local0[24] = 0
        elseif 3 <= local3 then
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[12] = 0
            local0[21] = 10
            local0[23] = 10
            local0[24] = 80
        else
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[12] = 0
            local0[21] = 0
            local0[23] = 20
            local0[24] = 80
        end
        if arg1:IsFinishTimer(0) == false and 0 < local0[24] then
            local0[24] = 1
        end
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act18)
    local1[20] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act21)
    local1[23] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, GiantTree_Battle_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GiantTree_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function GiantTree_Battle_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    local0:SetTargetAngle(0, 90, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0)
    local0:SetTargetAngle(1, 270, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 + 3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg0:SetTimer(1, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 + 3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 1.5, 40, 0, 0)
    arg0:SetTimer(1, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.5 + 3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 1.5, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6 + 3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 1.5, 25, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 22 + 3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 1.5, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 50 + 3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 999, 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act15(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 27 + 3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999, 1.5, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 28 + 3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 1.5, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 999, 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3030, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act21(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 999, 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_Turn, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, 30)
    return 
end

function GiantTree_Battle_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantTree_Battle_Act24(arg0, arg1, arg2)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 0.5), TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantTree_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GiantTree_Battle_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local1 = arg1:GetDist(TARGET_ENE_0)
        local local2 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(arg1, arg2, 25, 35, 7 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 17 + 3 - arg1:GetMapHitRadius(TARGET_SELF) + 1) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfAngle) then
        if arg1:IsTargetOutOfAngleInterruptSlot(0) then
            if InsideRange(arg1, arg2, -15, 90, -999 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 12 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            elseif InsideRange(arg1, arg2, 105, 60, 9 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 12 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            end
        elseif arg1:IsTargetOutOfAngleInterruptSlot(1) then
            if InsideRange(arg1, arg2, 15, 90, -999 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 14 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            elseif InsideRange(arg1, arg2, 255, 60, 9 + 3 - arg1:GetMapHitRadius(TARGET_SELF), 12 + 3 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, SuccessDist, 0, 0)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_GiantTree_Battle_AfterAttackAct, "GiantTree_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantTree_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetNumber(0, 1)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
