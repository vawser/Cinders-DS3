RegisterTableGoal(GOAL_Sullivan_515000_Switch, "GOAL_Sullivan_515000_Switch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Sullivan_515000_Switch, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:GetNumber(0) == 0 and not arg1:HasSpecialEffectId(TARGET_SELF, 10931) then
        local0[19] = 100
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 10930) and arg1:GetHpRate(TARGET_SELF) <= 0.6 then
        local0[14] = 100
    elseif 20 <= local3 then
        local0[2] = 10
        local0[3] = 40
        local0[18] = 40
        if arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
            local0[17] = 80
        end
    elseif 10 <= local3 then
        local0[2] = 30
        local0[3] = 10
        local0[17] = 30
        local0[18] = 40
    elseif 6 <= local3 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[10] = 100
        else
            local0[8] = 30
            local0[15] = 30
            local0[17] = 40
            if arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
                local0[16] = 100
            end
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 2.2 <= local3 then
        local0[4] = 10
        local0[5] = 30
        local0[6] = 10
        local0[9] = 20
        local0[12] = 30
        if not arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
            local0[17] = 50
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 0.2 <= local3 then
        local0[4] = 45
        local0[9] = 45
        local0[20] = 10
        if arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
            local0[16] = 50
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 0.2 <= local3 then
        local0[6] = 45
        local0[9] = 45
        local0[20] = 10
        if arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
            local0[16] = 50
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and -1.5 <= local3 then
        local0[10] = 90
        local0[20] = 10
    else
        local0[1] = 100
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 30, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 30, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 30, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 30, local0[6], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 30, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 30, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3009, 30, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3010, 30, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3011, 30, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3012, 30, local0[13], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3014, 30, local0[15], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3015, 14, local0[16], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3016, 20, local0[17], 0)
    local0[17] = SetCoolTime(arg1, arg2, 3023, 20, local0[17], 0)
    local0[18] = SetCoolTime(arg1, arg2, 3017, 5, local0[18], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act06)
    local1[8] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SulivanNormal_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SulivanNormal_ActAfter_AdjustSpace), local2)
    return 
end

function SulivanNormal_Act01(arg0, arg1, arg2)
    local local0 = 999
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act02(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act04(arg0, arg1, arg2)
    local local0 = 5
    if arg0:GetDist(TARGET_ENE_0) <= local0 then
        local local1 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.8, TARGET_ENE_0, 5, TARGET_SELF, false, 0)
        local1:SetLifeEndSuccess(true)
    else
        Approach_Act_Flex(arg0, arg1, local0, 5 + 999, 5 + 999, 0, 0, 1.5, 1.5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5 + 999, 5 + 999, 0, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act06(arg0, arg1, arg2)
    local local0 = 5
    if arg0:GetDist(TARGET_ENE_0) <= local0 then
        local local1 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.8, TARGET_ENE_0, 5, TARGET_SELF, false, 0)
        local1:SetLifeEndSuccess(true)
    else
        Approach_Act_Flex(arg0, arg1, local0, 5 + 999, 5 + 999, 0, 0, 1.5, 1.5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8, 8 + 999, 8 + 999, 0, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8, 8 + 999, 8 + 999, 0, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10, 10 + 999, 10 + 999, 0, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.8, 6.8 + 999, 6.8 + 999, 0, 0, 3.5, 3.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5 + 999, 5 + 999, 0, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act15(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.8, TARGET_ENE_0, 2, TARGET_SELF, false, 0)
    local0:SetLifeEndSuccess(true)
    Approach_Act_Flex(arg0, arg1, 8, 8 + 999, 8 + 999, 0, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act17(arg0, arg1, arg2)
    local local0 = 3016
    local local1 = arg0:GetHpRate(TARGET_SELF)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10930) then
        local0 = 3023
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act19(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SulivanNormal_Act20(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -3, TARGET_SELF, false, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SulivanNormal_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SulivanNormal_Act22(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SulivanNormal_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 10930) and arg1:GetHpRate(TARGET_SELF) <= 0.65 then
            SulivanNormal_Act14(arg1, arg2, paramTbl)
        else
            SulivanNormal_Act13(arg1, arg2, paramTbl)
        end
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and 8 <= local0 and local1 <= 70 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and 8 <= local0 and local1 <= 30 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    end
    return false
end

return 
