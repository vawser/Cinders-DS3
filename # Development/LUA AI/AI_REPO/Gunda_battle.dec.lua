RegisterTableGoal(GOAL_Gunda_511000_Battle, "GundaBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(10, 3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3.8)
    if arg1:GetNpcThinkParamID() == 511100 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:SetStringIndexedNumber("Gunda_ADAdjustment", -1)
        arg1:SetStringIndexedNumber("Gunda_ForceRunDist", 999)
        arg1:SetStringIndexedNumber("Gunda_Odds_Run", 100)
    elseif arg1:GetNpcThinkParamID() == 511100 then
        arg1:SetStringIndexedNumber("Gunda_ADAdjustment", -1)
        arg1:SetStringIndexedNumber("Gunda_ForceRunDist", 999)
        arg1:SetStringIndexedNumber("Gunda_Odds_Run", 0)
    else
        arg1:SetStringIndexedNumber("Gunda_ADAdjustment", 0)
        arg1:SetStringIndexedNumber("Gunda_ForceRunDist", 999)
        arg1:SetStringIndexedNumber("Gunda_Odds_Run", 0)
    end
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:GetHpRate(TARGET_SELF) <= 0.55 and arg1:GetNpcThinkParamID() == 511100 == false and arg1:HasSpecialEffectId(TARGET_SELF, 5404) == false then
        local0[50] = 100
    elseif arg1:GetHpRate(TARGET_SELF) < 0.65 and arg1:GetNpcThinkParamID() == 511100 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[30] = 100
    elseif arg1:GetNumber(0) == 0 then
        local0[21] = 10
    elseif arg1:GetNpcThinkParamID() == 511100 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
            if InsideRange(arg1, arg2, 180, 150, -1, 4 - arg1:GetMapHitRadius(TARGET_SELF)) then
                local0[6] = 90
                local0[12] = 30
                local0[13] = 20
                local0[20] = 10
            else
                local0[20] = 10
            end
        elseif InsideRange(arg1, arg2, 105, 60, -1, 2) then
            local0[12] = 10
            local0[13] = 20
            local0[16] = 20
        elseif InsideRange(arg1, arg2, -105, 60, -1, 2) then
            local0[3] = 30
            local0[11] = 30
            local0[12] = 10
            local0[13] = 10
        elseif 10 <= local3 then
            local0[1] = 30
            local0[2] = 25
            local0[9] = 10
            local0[16] = 10
        elseif 8 <= local3 then
            local0[1] = 30
            local0[4] = 10
            local0[5] = 10
            local0[9] = 10
            local0[16] = 10
        elseif 3 <= local3 then
            local0[4] = 20
            local0[5] = 20
            local0[9] = 20
            local0[10] = 10
            local0[16] = 20
        else
            local0[3] = 20
            local0[7] = 20
            local0[8] = 20
            local0[10] = 10
            local0[11] = 10
            local0[12] = 10
            local0[13] = 20
            local0[16] = 20
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
        if InsideRange(arg1, arg2, 180, 150, -1, 4 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[6] = 70
            local0[20] = 30
        else
            local0[20] = 10
        end
    elseif InsideRange(arg1, arg2, 105, 60, -1, 3) then
        local0[4] = 55
        local0[5] = 45
    elseif InsideRange(arg1, arg2, -105, 60, -1, 3) then
        local0[4] = 25
        local0[5] = 35
        local0[8] = 40
    elseif 10 <= local3 then
        local0[1] = 75
        local0[2] = 25
    elseif 8 <= local3 then
        local0[1] = 30
        local0[2] = 55
        local0[9] = 15
    elseif 3 <= local3 then
        local0[4] = 10
        local0[5] = 10
        local0[9] = 75
    elseif 1.5 <= local3 then
        local0[4] = 10
        local0[5] = 10
        local0[7] = 35
        local0[8] = 10
        local0[9] = 35
    else
        local0[3] = 20
        local0[4] = 10
        local0[5] = 10
        local0[7] = 25
        local0[8] = 10
        local0[9] = 25
    end
    if arg1:GetNpcThinkParamID() == 511100 then
        local0[2] = 0
    end
    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        if arg1:GetNpcThinkParamID() == 511100 then
            local0[1] = local0[1] + 30
            local0[2] = local0[2] + 30
        else
            local0[21] = local0[21] + 300
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 8, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3009, 8, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3010, 16, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 8, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3012, 8, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3020, 16, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3021, 8, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3022, 12, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3026, 8, local0[13], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3021, 8, local0[13], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3026, 8, local0[16], 1)
    if arg1:GetNpcThinkParamID() == 511000 then
        local0[6] = 0
        local0[7] = local0[7] * 0.2
        local0[7] = SetCoolTime(arg1, arg2, 3010, 30, local0[7], 1)
    end
    if arg1:GetNpcThinkParamID() == 511100 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GundaBattle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GundaBattle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GundaBattle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GundaBattle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GundaBattle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GundaBattle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GundaBattle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GundaBattle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GundaBattle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GundaBattle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GundaBattle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GundaBattle_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GundaBattle_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, GundaBattle_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, GundaBattle_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, GundaBattle_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, GundaBattle_Act17)
    local1[20] = REGIST_FUNC(arg1, arg2, GundaBattle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GundaBattle_Act21)
    local1[30] = REGIST_FUNC(arg1, arg2, GundaBattle_Act30)
    local1[40] = REGIST_FUNC(arg1, arg2, GundaBattle_Act40)
    local1[50] = REGIST_FUNC(arg1, arg2, GundaBattle_Act50)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GundaBattle_ActAfter_AdjustSpace), local2)
    return 
end

function GundaBattle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 18 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 18 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1, 3)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3029
    local local3 = 3014
    local local4 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 11.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 9.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local9 = 0
    local local10 = 0
    local local11 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg0:GetNpcThinkParamID() == 511100 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local11 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, local9, local10)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local8)
        elseif local11 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local7, local9, local10)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local8)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local7, local9, local10)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local8)
        end
    elseif local11 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local8, local9, local10)
    elseif local11 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local9, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local8)
    elseif local11 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local9, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local8)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local9, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaBattle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 16.8 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 16.8 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function GundaBattle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1, 3)
    local local0 = 3003
    local local1 = 3005
    local local2 = 3006
    local local3 = 3014
    local local4 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 9.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg0:GetNpcThinkParamID() == 511100 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local10 <= 30 then
            local local11 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
            local11:SetTargetAngle(0, 0, 75)
            local11 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5)
            local11:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
        elseif local10 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7)
        end
    elseif local10 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local7)
    elseif local10 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaBattle_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 2.5, 5)
    local local0 = 3004
    local local1 = 3005
    local local2 = 3006
    local local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 9.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg0:GetNpcThinkParamID() == 511100 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local8 <= 20 then
            local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9 = local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            local9:SetTargetAngle(0, 0, 75)
            local9 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
            local9 = local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            local9:SetTargetAngle(0, 0, 75)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
        elseif local8 <= 70 then
            local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), local6, local7)
            local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            local9 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local3)
            local9:SetTargetAngle(0, 0, 75)
            local9 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
            local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local5)
        else
            local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9 = local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            local9:SetTargetAngle(0, 0, 75)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
        end
    elseif local8 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaBattle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 7 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 2.5, 5)
    local local0 = 3007
    local local1 = 3008
    local local2 = 3029
    local local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 11.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg0:GetNpcThinkParamID() == 511100 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local8 <= 25 then
            local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5)
            local9 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 9.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
            local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5)
        elseif local8 <= 75 then
            local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local5)
        else
            local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
            local9:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local5)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaBattle_Act06(arg0, arg1, arg2)
    local local0 = 3009
    local local1 = 3008
    local local2 = 3026
    local local3 = 3027
    local local4 = 9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg0:GetNpcThinkParamID() == 511100 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local10 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
        elseif local10 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, local5)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local7)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local8, local9)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 3, 3)
    local local0 = 3010
    local local1 = 3027
    local local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if arg0:GetNpcThinkParamID() == 511100 then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    if arg0:GetNpcThinkParamID() == 511100 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF), local4, local5)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, local2)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), local4, local5)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local2)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
    end
    if arg0:GetNpcThinkParamID() == 511000 then
        GundaBattle_Act21(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaBattle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 8 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1.5, 3)
    local local0 = 3011
    local local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetNpcThinkParamID() == 511100 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5, local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 3, 3)
    local local0 = 3012
    local local1 = 3001
    local local2 = 3013
    local local3 = 3014
    local local4 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNpcThinkParamID() == 511100 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if local10 <= 25 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local5)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
        elseif local10 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local7)
        elseif local10 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local7)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7)
        end
    elseif local10 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
    elseif local10 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7)
    elseif local10 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaBattle_Act10(arg0, arg1, arg2)
    local local0 = 3023
    local local1 = 3020
    local local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    if 0.4 <= arg0:GetHpRate(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 9.8 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9.8 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act13(arg0, arg1, arg2)
    local local0 = 3026
    local local1 = 3021
    local local2 = 3027
    local local3 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            local5:SetTargetRange(1, -99, 5)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
        else
            local local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            local5:SetTargetRange(1, -99, 5)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        local5:SetTargetRange(1, -99, 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
    else
        local local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        local5:SetTargetRange(1, -99, 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act14(arg0, arg1, arg2)
    local local0 = 3009
    local local1 = 3027
    local local2 = 9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
    else
        local local6 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF))
        local6:SetTargetRange(0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act15(arg0, arg1, arg2)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3014
    local local3 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 9.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local5)
    elseif local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 7.2 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GundaBattle_Act16(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("Gunda_ADAdjustment"), arg0:GetStringIndexedNumber("Gunda_ForceRunDist"), arg0:GetStringIndexedNumber("Gunda_Odds_Run"), 0, 1, 3)
    local local0 = 3026
    local local1 = 3027
    local local2 = 3011
    local local3 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local8 <= 65 then
        local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3)
        local9:SetTargetAngle(0, 0, 75)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local5)
    else
        local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3)
        local9:SetTargetAngle(0, 0, 75)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act17(arg0, arg1, arg2)
    local local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local local1 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        local1:SetTargetRange(1, -99, 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
        local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 5.2 - arg0:GetMapHitRadius(TARGET_SELF))
        local1:SetTargetAngle(0, 0, 75)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        if 0.4 <= arg0:GetHpRate(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 9.8 - arg0:GetMapHitRadius(TARGET_SELF))
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 90))
    return 0
end

function GundaBattle_Act21(arg0, arg1, arg2)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(4, 6), TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 1600, TARGET_ENE_0, 22 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 12 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act40(arg0, arg1, arg2)
    local local0 = 3000
    local local1 = 3002
    local local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 999)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_Act50(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GundaBattle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    if arg0:GetNpcThinkParamID() == 511100 == false then
        arg1:AddSubGoal(GOAL_Gunda_511000_AfterAttackAct, 10)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:GetNpcThinkParamID() == 511100 then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            local local0 = arg1:GetDist(TARGET_ENE_0)
            local local1 = 12 - arg1:GetMapHitRadius(TARGET_SELF)
            local local2 = arg1:GetHpRate(TARGET_SELF)
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and InsideRange(arg1, arg2, 0, 120, 6.8 - arg1:GetMapHitRadius(TARGET_SELF) - 1, 16.8 - arg1:GetMapHitRadius(TARGET_SELF) + 1) and arg1:HasSpecialEffectId(TARGET_ENE_0, 12301) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if arg1:GetRandam_Int(1, 100) <= 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local1)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1)
                    return true
                end
            elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) and arg1:HasSpecialEffectId(TARGET_ENE_0, 12302) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local1)
                return true
            elseif arg1:GetSpecialEffectActivateInterruptType(0) == 90 and arg1:HasSpecialEffectId(TARGET_ENE_0, 12301) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 12302) == false then
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and InsideRange(arg1, arg2, 210, 150, -99 - arg1:GetMapHitRadius(TARGET_SELF) - 1, 4 - arg1:GetMapHitRadius(TARGET_SELF) + 1) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0)
                GundaBattle_Act14(arg1, arg2, paramTbl)
                return true
            elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and InsideRange(arg1, arg2, 0, 210, 5.5, 22 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                arg2:ClearSubGoal()
                if 0.4 <= local2 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 11.5 - arg1:GetMapHitRadius(TARGET_SELF))
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - arg1:GetMapHitRadius(TARGET_SELF))
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 9.8 - arg1:GetMapHitRadius(TARGET_SELF))
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999)
                end
                return true
            elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and InsideRange(arg1, arg2, 180, 180, -99, 2) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) and local2 <= 0.4 then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg2:ClearSubGoal()
                GundaBattle_Act13(arg1, arg2, paramTbl)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_FindAttack) then
            local local0 = arg1:GetRandam_Int(1, 100)
            if InsideRange(arg1, arg2, 0, 240, -99, 2.5) and arg1:GetHpRate(TARGET_SELF) <= 0.4 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
                arg2:ClearSubGoal()
                GundaBattle_Act17(arg1, arg2, paramTbl)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
            if arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(arg1, arg2, 0, 120, -99 - arg1:GetMapHitRadius(TARGET_SELF), 6.3 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:HasSpecialEffectId(TARGET_SELF, 5028) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:IsFinishTimer(1) == true then
                arg1:SetTimer(1, 6)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 3.8 - arg1:GetMapHitRadius(TARGET_SELF))
                return true
            elseif arg1:IsTargetOutOfRangeInterruptSlot(1) then
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_TargetOutOfAngle) and arg1:IsTargetOutOfAngleInterruptSlot(0) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsInterupt(INTERUPT_Damaged) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) and targetDist <= 5 then
                arg1:Replaning()
                return true
            elseif InsideRange(arg1, arg2, 180, 150, -1, 4 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            arg1:DeleteObserve(0)
            return true
        elseif arg1:IsFinishTimer(2) == true then
            local local0 = arg1:GetDist(TARGET_ENE_0)
            local local2 = 12 - arg1:GetMapHitRadius(TARGET_SELF)
            if GuardBreak_Act(arg1, arg2, 5, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5034) == false then
                    arg1:SetTimer(2, 5)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 7.2 - arg1:GetMapHitRadius(TARGET_SELF))
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local2)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 5034) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5033) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                    arg1:SetTimer(2, 5)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local2)
                    return true
                end
            end
            if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if InsideRange(arg1, arg2, 0, 180, 10 - arg1:GetMapHitRadius(TARGET_SELF) - 3, 18 - arg1:GetMapHitRadius(TARGET_SELF)) then
                    arg1:SetTimer(2, 5)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3000, TARGET_ENE_0, 5)
                    GundaBattle_Act15(arg1, arg2, paramTbl)
                    return true
                elseif InsideRange(arg1, arg2, 0, 180, 2 - arg1:GetMapHitRadius(TARGET_SELF), 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
                    arg1:SetTimer(2, 5)
                    arg2:ClearSubGoal()
                    GundaBattle_Act16(arg1, arg2, paramTbl)
                    return true
                end
            end
        end
        local local0 = arg1:GetRandam_Int(1, 100)
        local local1 = arg1:GetDist(TARGET_ENE_0)
        if arg1:IsInterupt(INTERUPT_Shoot) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5032) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if InsideRange(arg1, arg2, 0, 210, 5, 10) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    if InsideRange(arg1, arg2, 0, 150, 9 - arg1:GetMapHitRadius(TARGET_SELF), 22 - arg1:GetMapHitRadius(TARGET_SELF)) then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999)
                        return true
                    end
                elseif InsideRange(arg1, arg2, 0, 210, 10, 18 - arg1:GetMapHitRadius(TARGET_SELF)) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 999)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
                arg2:ClearSubGoal()
                GundaBattle_Act01(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_Gunda_511000_AfterAttackAct, "GOAL_Gunda_511000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) == false then
        if InsideRange(arg1, arg2, 90, 180, -99, 5) then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3.5), TARGET_ENE_0, 1, 45, true, true, 0)
        elseif InsideRange(arg1, arg2, -90, 180, -99, 5) then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3.5), TARGET_ENE_0, 0, 45, true, true, 0)
        elseif 5 <= arg1:GetDist(TARGET_ENE_0) then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 4.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), 45, true, true, 0)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
