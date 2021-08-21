RegisterTableGoal(GOAL_GreatWolf_810000_Battle, "GOAL_GreatWolf_810000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GreatWolf_810000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0.64)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    if arg1:GetNpcThinkParamID() == 603001 and local6 == 10 then
        local0[30] = 100
    elseif arg1:GetNpcThinkParamID() == 603001 and local7 <= 0.3 then
        local0[31] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13100) and 3 <= local3 then
        local0[24] = 100
    elseif arg1:GetNpcThinkParamID() == 603002 and local6 == 10 then
        local0[30] = 100
    elseif arg1:GetNpcThinkParamID() == 603002 and local7 <= 0.3 then
        local0[31] = 100
    elseif local7 <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 13105) then
        local0[12] = 100
    elseif 5 <= local3 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[1] = 1
        local0[4] = 33
        local0[5] = 33
        local0[20] = 33
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[1] = 1
        local0[4] = 15
        local0[5] = 15
        local0[7] = 40
        local0[8] = 40
        local0[16] = 20
        local0[20] = 10
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[7] = 0
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            local0[8] = 0
        end
    elseif 10 <= local3 then
        local0[1] = 20
        local0[3] = 10
        local0[4] = 10
        local0[5] = 10
        local0[9] = 10
        local0[25] = 50
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 175) then
            local0[10] = 15
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 175) then
            local0[11] = 15
        end
    else
        local0[1] = 20
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 10
        local0[7] = 10
        local0[8] = 10
        local0[15] = 10
        local0[16] = 10
        local0[25] = 50
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[7] = 0
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            local0[8] = 0
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 9, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 45, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 40, local0[3], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 60, local0[4], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 60, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 60, local0[5], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 60, local0[5], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 20, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3011, 20, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3008, 15, local0[8], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 15, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3014, 60, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3015, 40, local0[10], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3016, 40, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3015, 40, local0[11], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3016, 40, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3017, 60, local0[12], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3009, 15, local0[15], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3012, 15, local0[16], 1)
    local0[25] = SetCoolTime(arg1, arg2, 3018, 20, local0[25], 0)
    if arg1:IsFinishTimer(1) == false then
        local0[3] = 0
    end
    if arg1:IsFinishTimer(2) == false then
        local0[6] = 1
    end
    if arg1:IsFinishTimer(3) == false then
        local0[10] = 1
    end
    if arg1:IsFinishTimer(3) == false then
        local0[11] = 1
    end
    if arg1:IsFinishTimer(4) == false then
        local0[9] = 1
    end
    if arg1:IsFinishTimer(5) == false then
        local0[4] = 1
    end
    if arg1:IsFinishTimer(5) == false then
        local0[5] = 1
    end
    if arg1:GetNpcThinkParamID() == 603001 then
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[10] = 0
        local0[11] = 0
        local0[25] = 0
    end
    if arg1:GetNpcThinkParamID() == 603002 then
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 0
        local0[8] = 0
        local0[10] = 0
        local0[11] = 0
        local0[25] = 0
    end
    if 0.6 <= local7 then
        local0[4] = 0
        local0[5] = 0
        local0[25] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act05)
    local1[7] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act17)
    local1[20] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act25)
    local1[30] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act31)
    local1[40] = REGIST_FUNC(arg1, arg2, GreatWolf_810000_Act40)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_WolfKing_ActAfter_AdjustSpace), local2)
    return 
end

function GreatWolf_810000_Act01(arg0, arg1, arg2)
    local local0 = 4.1 + 3
    local local1 = 4.1 + 7
    local local2 = 4.1 + 7
    if arg0:GetNpcThinkParamID() == 603002 then
        local1 = 9999
        local2 = 9999
    end
    if local0 < arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 0, 0, 1.8, 1.8)
    end
    local local3 = 3007
    local local4 = 2.38 + 5
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 5.6 + 5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act02(arg0, arg1, arg2)
    local local0 = 3.1 + 10
    local local1 = 3.1 + 10
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 603002 then
        local0 = 9999
        local1 = 9999
    end
    Approach_Act_Flex(arg0, arg1, 3.1, local0, local1, 0, 0, 1.8, 1.8)
    local local3 = 999
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act03(arg0, arg1, arg2)
    arg0:SetTimer(1, 30)
    local local0 = 11.6
    local local1 = 11.6
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 603002 then
        local0 = 9999
        local1 = 9999
    end
    Approach_Act_Flex(arg0, arg1, 11.6, local0, local1, 0, 0, 1.8, 1.8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act04(arg0, arg1, arg2)
    arg0:SetTimer(5, 60)
    local local0 = 4
    local local1 = 4
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 603002 then
        local0 = 9999
        local1 = 9999
    end
    Approach_Act_Flex(arg0, arg1, 2, local0, local1, 100, 0, 1.8, 1.8)
    local local3 = 3004
    local local4 = 999
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = 16.5
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act05(arg0, arg1, arg2)
    arg0:SetTimer(5, 60)
    local local0 = 2
    local local1 = 4
    local local2 = 4
    if arg0:GetNpcThinkParamID() == 603002 then
        local1 = 9999
        local2 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0 + 2.15, TARGET_SELF, false, 0)
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 100, 0, 1.8, 1.8)
    local local3 = 999
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act07(arg0, arg1, arg2)
    local local0 = 4
    local local1 = 12
    local local2 = 12
    if arg0:GetNpcThinkParamID() == 603002 then
        local1 = 9999
        local2 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 100, 0, 1.8, 1.8)
    end
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act08(arg0, arg1, arg2)
    local local0 = 4
    local local1 = 12
    local local2 = 12
    if arg0:GetNpcThinkParamID() == 603002 then
        local1 = 9999
        local2 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 100, 0, 1.8, 1.8)
    end
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act09(arg0, arg1, arg2)
    arg0:SetTimer(4, 40)
    local local0 = 16.5 + 5
    local local1 = 16.5 + 5
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 603002 then
        local0 = 9999
        local1 = 9999
    end
    Approach_Act_Flex(arg0, arg1, 16.5, local0, local1, 100, 0, 1.8, 1.8)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act10(arg0, arg1, arg2)
    local local0 = 9.8
    local local1 = 9.8 + 5
    local local2 = 9.8 + 5
    local local3 = 100
    local local4 = 0
    local local5 = 1.8
    local local6 = 1.8
    local local7 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2.5, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 4)
    return 
end

function GreatWolf_810000_Act11(arg0, arg1, arg2)
    local local0 = 9.8
    local local1 = 9.8 + 5
    local local2 = 9.8 + 5
    local local3 = 100
    local local4 = 0
    local local5 = 1.8
    local local6 = 1.8
    local local7 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2.5, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act12(arg0, arg1, arg2)
    local local0 = 8.6 + 5
    local local1 = 8.6 + 5
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 603002 then
        local0 = 9999
        local1 = 9999
    end
    Approach_Act_Flex(arg0, arg1, 8.6, local0, local1, 100, 0, 1.8, 1.8)
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local7:SetLifeEndSuccess(true)
    local7 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
    local7:SetLifeEndSuccess(true)
    local7 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    local7:SetLifeEndSuccess(true)
    local7 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    local7:SetLifeEndSuccess(true)
    local7 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
    local7:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 3.64, 3.64 + 5, 3.64 + 5, 0, 0, 1.8, 1.8)
    local local1 = 3007
    local local2 = 2.38 + 2
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 6.83, 6.83 + 5, 6.83 + 5, 0, 0, 1.8, 1.8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act17(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local local0 = arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 2, TARGET_ENE_0, AI_DIR_TYPE_ToR, 8, TARGET_SELF, true)
        local0:SetLifeEndSuccess(true)
    else
        local local0 = arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 2, TARGET_ENE_0, AI_DIR_TYPE_ToL, 8, TARGET_SELF, true)
        local0:SetLifeEndSuccess(true)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_SELF, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 10, 12, 12, 0, 0, 1.8, 1.8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act30(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreatWolf_810000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 1.8, TARGET_ENE_0, AI_DIR_TYPE_ToL, 6, TARGET_SELF, false)
    GetWellSpace_Odds = 100
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
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsFinishTimer(1) == true and not arg1:HasSpecialEffectId(TARGET_SELF, 13100) and arg1:GetNpcThinkParamID() == 603004 and not arg1:GetNpcThinkParamID() == 603002 and arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 40, 999) and 4 <= local0 then
        arg2:ClearSubGoal()
        GreatWolf_810000_Act03(arg1, arg2, paramTbl)
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) and 4 <= local0 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2, TARGET_SELF, false, 0)
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and 9 <= local0 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg2:ClearSubGoal()
                local local3 = arg1:GetRandam_Int(1, 100)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                arg2:ClearSubGoal()
                local local3 = arg1:GetRandam_Int(1, 100)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and 15 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and not arg1:HasSpecialEffectId(TARGET_SELF, 13104) and local1 <= 30 then
        if 15 <= local0 and arg1:GetNpcThinkParamID() == 603004 then
            arg2:ClearSubGoal()
            GreatWolf_810000_Act03(arg1, arg2, paramTbl)
        elseif 10 <= local0 then
            arg2:ClearSubGoal()
            GreatWolf_810000_Act09(arg1, arg2, paramTbl)
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and arg1:GetNpcThinkParamID() == 603004 and 50 <= local1 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5031 and arg1:GetNpcThinkParamID() == 603004 then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10, 0, 0)
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:GetNpcThinkParamID() == 603004 and 50 <= local1 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 999, 0, 0)
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and arg1:GetNpcThinkParamID() == 603004 then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 10, 0, 0)
    end
    return 
end

function GOAL_WolfKing_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

return 
