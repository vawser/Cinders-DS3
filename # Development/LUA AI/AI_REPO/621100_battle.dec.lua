RegisterTableGoal(GOAL_DarknessDragon621100_Battle, "GOAL_DarknessDragon621100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessDragon621100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("isAfterHeatUp", false)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local7 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local local8 = arg1:IsInsideTargetRegion(TARGET_SELF, 5102880)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16582) then
        local0[25] = 8
    elseif arg1:GetHpRate(TARGET_SELF) < 0.5 and not arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 16575) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[5] = 4
            local0[16] = 2
        else
            local0[16] = 3
        end
        local0[24] = 2
        local0[7] = 1
        if local8 then
            local0[19] = 1
            local0[11] = 1
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 16573) then
        local0[17] = 10
        local0[23] = 5
        local0[16] = 3
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[5] = 3
        end
        if local8 then
            local0[19] = 1
            local0[11] = 1
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 16574) then
        local0[18] = 10
        local0[23] = 5
        local0[16] = 3
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[5] = 3
        end
        if local8 then
            local0[19] = 1
            local0[11] = 1
        end
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 16576) or InsideRange(arg1, arg2, 180, 140, -999, -4) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[5] = 4
            local0[16] = 2
        else
            local0[16] = 3
        end
        local0[23] = 5
        if local8 then
            local0[19] = 1
            local0[11] = 1
        end
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 16571) or InsideRange(arg1, arg2, 45, 90, -999, -4) then
        local0[14] = 6
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[5] = 4
            local0[16] = 2
        else
            local0[16] = 2
        end
        local0[24] = 2
        if local8 then
            local0[19] = 1
            local0[11] = 2
        end
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 16572) or InsideRange(arg1, arg2, -45, 90, -999, -4) then
        local0[15] = 6
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[5] = 4
            local0[16] = 2
        else
            local0[16] = 2
        end
        local0[24] = 2
        if local8 then
            local0[19] = 1
            local0[11] = 2
        end
    elseif InsideRange(arg1, arg2, 180, 90, -999, 999) then
        local0[20] = 10
    elseif InsideRange(arg1, arg2, 90, 90, -999, 999) then
        local0[20] = 10
    elseif InsideRange(arg1, arg2, -90, 90, -999, 999) then
        local0[20] = 10
    elseif 17 < local3 then
        local0[24] = 4
        local0[2] = 4
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[1] = 6
            local0[7] = 1
            local0[22] = 10
        else
            local0[3] = 7
            local0[7] = 3
        end
        if local8 then
            local0[19] = 1
        end
    elseif 8.5 < local3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[6] = 5
            local0[24] = 3
            local0[7] = 1
        else
            local0[7] = 6
            local0[3] = 5
            local0[6] = 4
            local0[24] = 2
        end
        if local8 then
            local0[11] = 1
            local0[19] = 1
        end
    elseif 0 <= local3 or -3 <= local3 then
        local0[4] = 8
        local0[9] = 6
        local0[8] = 8
        local0[12] = 10
        local0[13] = 10
        if local8 then
            local0[19] = 3
            local0[11] = 2
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[24] = 10
            local0[5] = 5
        else
            local0[24] = 5
        end
    else
        local0[24] = 3
        local0[16] = 3
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            local0[5] = 4
        end
        if local8 then
            local0[19] = 2
            local0[11] = 1
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3011, 15, local0[1], 0)
    local0[2] = SetCoolTime(arg1, arg2, 3010, 15, local0[2], 0)
    local0[3] = SetCoolTime(arg1, arg2, 3012, 20, local0[3], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3000, 30, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3014, 50, local0[5], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3008, 10, local0[6], 0)
    local0[8] = SetCoolTime(arg1, arg2, 3029, 30, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3023, 40, local0[9], 0)
    local0[12] = SetCoolTime(arg1, arg2, 3027, 30, local0[12], 0)
    local0[13] = SetCoolTime(arg1, arg2, 3024, 40, local0[13], 0)
    local0[16] = SetCoolTime(arg1, arg2, 3017, 40, local0[16], 0)
    local0[19] = SetCoolTime(arg1, arg2, 3039, 40, local0[19], 0)
    local0[22] = SetCoolTime(arg1, arg2, 3038, 60, local0[22], 0)
    local0[24] = SetCoolTime(arg1, arg2, 3002, 60, local0[24], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act20)
    local1[22] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_621100_DarknessDragon_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_621100_DarknessDragon_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 30, 999, 999, 0, 0, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 30, 999, 999, 0, 0, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 30, 999, 999, 0, 0, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, 3012, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3000, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12, 999, 999, 0, 0, 3, 3)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, local0, 0, 0, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16581) and not arg0:HasSpecialEffectId(TARGET_SELF, 16585) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 30, 999, 999, 0, 0, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.5, 999, 999, 0, 0, 3, 3)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3029, TARGET_ENE_0, local0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16581) and not arg0:HasSpecialEffectId(TARGET_SELF, 16585) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3009, TARGET_ENE_0, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, local0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act09(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3023, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 80, 3006, TARGET_ENE_0, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act11(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    if 5 <= arg0:GetRelativeAngleFromTarget(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3033, TARGET_ENE_0, local0, local1, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, local0, local1, local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 999, 999, 0, 0, 3, 3)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, local0, 0, 0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16581) and not arg0:HasSpecialEffectId(TARGET_SELF, 16585) and 30 < local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local0)
    elseif 30 < local1 then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3032, TARGET_ENE_0, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, local0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.5, 999, 999, 0, 0, 3, 3)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, local0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3031, TARGET_ENE_0, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act14(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act15(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3039, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, arg0:GetRandam_Float(2.5, 4), TARGET_ENE_0, 1, 16, TARGET_ENE_0, true, -1)
    return 
end

function GOAL_621100_DarknessDragon_Act22(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, local0, local1, local2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3038, TARGET_ENE_0, local0, local1, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3016, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act24(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 40, 3002, TARGET_ENE_0, local0, 0, 0)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16582) and arg0:HasSpecialEffectId(TARGET_SELF, 16581) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 40, 3002, TARGET_ENE_0, local0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621100_DarknessDragon_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 40, 3002, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and 5 <= local0 and local0 <= 24 then
            arg2:ClearSubGoal()
            if 50 < arg1:GetRandam_Int(1, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3030, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3031, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and local0 <= 22 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and local0 <= -5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and local0 <= -5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and 15 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    return false
end

function GOAL_621100_DarknessDragon_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DarknessDragon621100_Battle_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_DarknessDragon621100_Battle_AfterAttackAct, "GOAL_DarknessDragon621100_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessDragon621100_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    if (not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) or local0 > 3) and 7 > local0 and 5 > local0 and 3 > local0 then

    end
    if SelectOddsIndex(arg1, {}) == 1 then

    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
