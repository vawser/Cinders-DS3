RegisterTableGoal(GOAL_YUPA620000_Battle, "GOAL_YUPA620000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_YUPA620000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(1, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
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
    local local7 = arg1:GetDistYSigned(TARGET_ENE_0)
    if arg1:GetNumber(0) == 0 then
        local0[24] = 100
    elseif local3 - local7 <= 2 and 4 <= local7 then
        local0[25] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16207) == false then
        if arg1:GetHpRate(TARGET_SELF) <= 0.42 then
            local0[14] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[1] = 1
                local0[5] = 80
                local0[11] = 10
                local0[20] = 10
            else
                local0[1] = 1
                local0[6] = 80
                local0[11] = 10
                local0[20] = 10
            end
        elseif 14 <= local3 then
            local0[1] = 1
            local0[2] = 0
            local0[3] = 36
            local0[4] = 18
            local0[9] = 0
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
            local0[16] = 36
            local0[21] = 0
            local0[22] = 0
            local0[25] = 10
        elseif 5.3 <= local3 then
            local0[1] = 1
            local0[2] = 10
            local0[3] = 30
            local0[4] = 10
            local0[9] = 0
            local0[11] = 0
            local0[12] = 20
            local0[13] = 0
            local0[16] = 30
            local0[21] = 0
            local0[22] = 0
            local0[25] = 0
            if local3 <= 7 then
                local0[16] = 0
            end
        elseif 2.3 <= local3 then
            local0[1] = 1
            local0[2] = 30
            local0[3] = 0
            local0[4] = 0
            local0[9] = 0
            local0[11] = 0
            local0[12] = 40
            local0[13] = 20
            local0[21] = 10
            local0[22] = 0
        else
            local0[1] = 25
            local0[2] = 0
            local0[3] = 0
            local0[4] = 15
            local0[9] = 0
            local0[11] = 20
            local0[12] = 0
            local0[13] = 20
            local0[21] = 0
            local0[22] = 20
            if 1.8 <= local3 then
                local0[11] = 0
            end
            if local3 <= 0.8 then
                local0[22] = 0
            end
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[1] = 1
            local0[5] = 90
            local0[11] = 0
            local0[20] = 10
        else
            local0[1] = 1
            local0[6] = 90
            local0[11] = 0
            local0[20] = 10
        end
    elseif 5.3 <= local3 then
        local0[1] = 1
        local0[2] = 0
        local0[3] = 36
        local0[4] = 36
        local0[9] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[15] = 27
        local0[21] = 0
        local0[22] = 0
        local0[25] = 10
        if local3 <= 10 then
            local0[25] = 0
        end
    elseif 2.3 <= local3 then
        local0[1] = 5
        local0[2] = 25
        local0[3] = 0
        local0[4] = 20
        local0[9] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 20
        local0[14] = 20
        local0[21] = 0
        local0[22] = 0
    else
        local0[1] = 5
        local0[2] = 0
        local0[3] = 0
        local0[4] = 30
        local0[9] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 45
        local0[14] = 20
        local0[21] = 0
        local0[22] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 9, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3004, 6, local0[2], 0)
    local0[3] = SetCoolTime(arg1, arg2, 3008, 6, local0[3], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3010, 25, local0[4], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3036, 25, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3015, 6, local0[5], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3016, 6, local0[6], 0)
    local0[10] = SetCoolTime(arg1, arg2, 3030, 45, local0[10], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3031, 45, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3022, 15, local0[11], 0)
    local0[12] = SetCoolTime(arg1, arg2, 3028, 25, local0[12], 0)
    local0[13] = SetCoolTime(arg1, arg2, 3007, 6, local0[13], 0)
    local0[14] = SetCoolTime(arg1, arg2, 3031, 60, local0[14], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3030, 60, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3024, 20, local0[15], 0)
    local0[16] = SetCoolTime(arg1, arg2, 3026, 20, local0[16], 0)
    local0[25] = SetCoolTime(arg1, arg2, 3036, 30, local0[25], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, YUPA620000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, YUPA620000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, YUPA620000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, YUPA620000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, YUPA620000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, YUPA620000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, YUPA620000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, YUPA620000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, YUPA620000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, YUPA620000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, YUPA620000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, YUPA620000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, YUPA620000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, YUPA620000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, YUPA620000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, YUPA620000_Act16)
    local1[20] = REGIST_FUNC(arg1, arg2, YUPA620000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, YUPA620000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, YUPA620000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, YUPA620000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, YUPA620000_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, YUPA620000_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, YUPA620000_ActAfter_AdjustSpace), local2)
    return 
end

function YUPA620000_Act01(arg0, arg1, arg2)
    local local0 = 2.5 + 8
    local local1 = 2.5 + 8
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16206) == true then
        local0 = 0
        local1 = 0
        local2 = 0
    end
    Approach_Act_Flex(arg0, arg1, 2.5, local0, local1, local2, 0, 1.5, 3)
    local local3 = 3000
    local local4 = 3002
    local local5 = 999
    local local6 = 0
    local local7 = 0
    local local8 = 4.1
    local local9 = 4.2 + 1
    if arg0:GetRandam_Int(1, 100) <= 30 and arg0:HasSpecialEffectId(TARGET_SELF, 16207) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, local6, local7, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act02(arg0, arg1, arg2)
    local local0 = 4.2 + 8
    local local1 = 4.2 + 8
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16206) == true then
        local0 = 0
        local1 = 0
        local2 = 0
    end
    Approach_Act_Flex(arg0, arg1, 4.2, local0, local1, local2, 0, 1.5, 3)
    local local3 = 3004
    local local4 = 3005
    local local5 = 3006
    local local6 = 999
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = 4.2 + 2
    local local9 = 3.41 + 2
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 20, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act03(arg0, arg1, arg2)
    local local0 = 6.79 + 8
    local local1 = 6.79 + 8
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 16206) == true then
        local0 = 0
        local1 = 0
        local2 = 0
    end
    Approach_Act_Flex(arg0, arg1, 6.79, local0, local1, local2, 0, 1.5, 3)
    local local3 = 3009
    local local4 = 999
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = 8.48 + 2
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act04(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act05(arg0, arg1, arg2)
    local local0 = 3015
    local local1 = 0
    local local2 = 0
    local local3 = 4.2 + 2
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 999, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.1, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act08(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20, 30, 30, 0, 0, 1.5, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3029, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act10(arg0, arg1, arg2)
    local local0 = 3030
    local local1 = 999
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, 3030, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local3:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act11(arg0, arg1, arg2)
    local local0 = 3022
    local local1 = 999
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 30, 99, 99, 0, 0, 1.5, 3)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5, 2.5 + 8, 2.5 + 8, 0, 0, 1.5, 3)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 8.48 + 2, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act14(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, 3030, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local4:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act15(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20, 28, 28, 0, 0, 1.5, 3)
    local local0 = 3024
    local local1 = 999
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act16(arg0, arg1, arg2)
    local local0 = 3025
    local local1 = 999
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function YUPA620000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if 10 <= arg0:GetDist(TARGET_ENE_0) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620000_Act24(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function YUPA620000_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
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
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetDist(TARGET_ENE_0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and 1 <= local2 and local2 < 5.2 and local0 <= 70 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and local0 <= 60 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 16207) then
            if local0 <= 80 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and local2 <= 3 and local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                elseif local2 <= 3 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and local2 <= 3 and local0 <= 50 and arg1:HasSpecialEffectId(TARGET_SELF, 16207) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        elseif local2 <= 15 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 999, 0, 0)
        end
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
        if local2 <= 3.5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and not arg1:HasSpecialEffectId(TARGET_SELF, 16207) and local0 <= 60 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5, 0, 0)
        elseif local2 <= 10 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:HasSpecialEffectId(TARGET_SELF, 16207) and local0 <= 60 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0)
        elseif local2 <= 10 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:HasSpecialEffectId(TARGET_SELF, 16207) and local0 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0)
        elseif local2 <= 5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:HasSpecialEffectId(TARGET_SELF, 16207) and local1 <= 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 5, 0, 0)
        elseif local2 <= 5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:HasSpecialEffectId(TARGET_SELF, 16207) and local1 <= 60 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        end
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5029 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16207) == false then
            if local2 < 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, 0, 0)
            end
        elseif local2 < 5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 12, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, 0)
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 12, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, 0)
        end
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and local2 <= 3.5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and local0 <= 80 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5031 and local2 <= 6 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and 7 <= local2 then
        arg2:ClearSubGoal()
        arg1:SetNumber(1, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5033 and 3.5 <= local2 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:HasSpecialEffectId(TARGET_SELF, 16207) == false then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5034 and local2 <= 3 and not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 12, 0, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5050)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5050 then
        arg2:ClearSubGoal()
        if 0 < arg1:GetHpRate(TARGET_SELF) and arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 5112820) == false and arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 5112822) == false then
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 0, TARGET_ENE_0, 0, 0)
        end
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and 8 <= local2 then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    end
    return 
end

function YUPA620000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_YUPA620000_Battle_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_YUPA620000_Battle_AfterAttackAct, "GOAL_YUPA620000_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_YUPA620000_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
