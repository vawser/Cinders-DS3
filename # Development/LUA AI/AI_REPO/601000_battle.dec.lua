RegisterTableGoal(GOAL_BossFather_601000_Battle, "GOAL_BossFather_601000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BossFather_601000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetHpRate(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if local7 <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 13137) == true then
            if 5 <= local3 then
                local0[4] = 40
            else
                local0[12] = 100
            end
        elseif arg1:GetNumber(0) == 0 then
            local0[10] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local3 <= 3 then
            local0[7] = 70
            local0[12] = 30
            local0[20] = 1
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local3 <= 3 then
            local0[6] = 30
            local0[13] = 40
            local0[12] = 30
            local0[20] = 1
        elseif 20 <= local3 then
            local0[15] = 100
        elseif 15 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 40
            local0[5] = 0
            local0[8] = 40
            local0[9] = 0
            local0[11] = 0
            local0[12] = 0
            local0[15] = 20
        elseif 10 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 50
            local0[5] = 0
            local0[8] = 20
            local0[9] = 0
            local0[11] = 0
            local0[12] = 0
            local0[15] = 30
        elseif 4.5 <= local3 then
            local0[1] = 0
            local0[2] = 20
            local0[3] = 20
            local0[4] = 40
            local0[5] = 0
            local0[8] = 0
            local0[9] = 0
            local0[11] = 0
            local0[12] = 0
            local0[15] = 20
        elseif 2.5 <= local3 then
            local0[1] = 0
            local0[2] = 20
            local0[3] = 0
            local0[4] = 10
            local0[5] = 20
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[11] = 20
            local0[12] = 15
            local0[15] = 15
        else
            local0[1] = 20
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[8] = 0
            local0[9] = 30
            local0[10] = 0
            local0[11] = 20
            local0[12] = 30
        end
    else
        local0[25] = 50
        local0[26] = 50
    end
    if 0.6 <= local7 then
        local0[12] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 40, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3008, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3010, 15, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3011, 15, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3015, 15, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3016, 15, local0[9], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3012, 15, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3013, 80, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3014, 15, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3019, 90, local0[14], 0)
    local0[15] = SetCoolTime(arg1, arg2, 3021, 60, local0[15], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act20)
    local1[25] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, BossFather_601000_Act26)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BossFather_ActAfter_AdjustSpace), local2)
    return 
end

function BossFather_601000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.54, 4.54 + 2, 4.54 + 2, 100, 0, 1.8, 1.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.57, 5.57 + 2, 5.57 + 2, 100, 0, 1.8, 1.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 99, 99 + 2, 99 + 2, 100, 0, 1.8, 1.8)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5.57, 3, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.66, 4.66 + 2, 4.66 + 2, 100, 0, 1.8, 1.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 99, 99 + 2, 99 + 2, 100, 0, 1.8, 1.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 99, 99 + 2, 99 + 2, 100, 0, 1.8, 1.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15, 15 + 2, 15 + 2, 100, 0, 1.8, 1.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 99, 99 + 2, 99 + 2, 100, 0, 1.8, 1.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.8, 2.8 + 2, 2.8 + 2, 100, 0, 1.8, 1.8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 4 + 2, 4 + 2, 100, 0, 3, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act14(arg0, arg1, arg2)
    arg0:SetTimer(1, 60)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act15(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3021, TARGET_ENE_0, 5.57, 3, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BossFather_601000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BossFather_601000_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 30002, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BossFather_601000_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 30002, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
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
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if arg1:GetDist(TARGET_ENE_0) <= 5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
        end
    end
    return 
end

function BossFather_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

return 
