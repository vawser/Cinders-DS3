RegisterTableGoal(GOAL_LordYupa_118001_Battle, "LordYupa_118001_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingCastleKight_bow_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(0, 5)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 5 then
        local0[3] = 70
        local0[24] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 4 then
        local0[3] = 10
        local0[6] = 30
        local0[20] = 20
        local0[22] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 4 then
        local0[3] = 10
        local0[7] = 30
        local0[20] = 20
        local0[22] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 20
    elseif 10 <= local3 then
        local0[1] = 40
        local0[2] = 10
        local0[3] = 0
        local0[4] = 20
        local0[5] = 30
        local0[6] = 0
        local0[7] = 0
        local0[8] = 20
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
    elseif 3 <= local3 then
        local0[1] = 5
        local0[2] = 10
        local0[3] = 10
        local0[4] = 5
        local0[5] = 0
        local0[6] = 5
        local0[7] = 5
        local0[8] = 10
        local0[21] = 30
        local0[22] = 20
        local0[23] = 0
    elseif 1.8 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 0
        local0[4] = 20
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[21] = 0
        local0[22] = 10
        local0[23] = 10
    else
        local0[1] = 30
        local0[2] = 0
        local0[3] = 0
        local0[4] = 20
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[21] = 0
        local0[22] = 10
        local0[23] = 20
    end
    if SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_SideStep")) then
        local0[6] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_SideStep")) then
        local0[7] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3006, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3008, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3011, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3012, 5, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3009, 15, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3010, 15, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3005, 15, local0[8], 1)
    if arg1:IsFinishTimer(0) == false then
        local0[21] = 0
    end
    local0[22] = SetCoolTime(arg1, arg2, 6002, 6, local0[22], 1)
    local0[22] = SetCoolTime(arg1, arg2, 6003, 6, local0[22], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act08)
    local1[20] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, LordYupa_118001_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, LordYupa_118001_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function LordYupa_118001_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 9, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 9, 0, 0, 3, 3)
    local local0 = 3000
    local local1 = 3003
    local local2 = 3004
    local local3 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg0:GetRandam_Int(1, 100)
    if local8 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, local6, local7, 0, 0)
    elseif local8 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, local6, local7, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118001_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.9 - arg0:GetMapHitRadius(TARGET_SELF), 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 9, 7.9 - arg0:GetMapHitRadius(TARGET_SELF) + 9, 0, 0, 3, 3)
    local local0 = 3006
    local local1 = 3007
    local local2 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118001_Act03(arg0, arg1, arg2)
    local local0 = 3008
    local local1 = 3004
    local local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
    elseif local6 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118001_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 9, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 9, 0, 0, 3, 3)
    local local0 = 3011
    local local1 = 3013
    local local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118001_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9, 0, 0, 3, 3)
    local local0 = 3012
    local local1 = 3017
    local local2 = 3001
    local local3 = 3002
    local local4 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 1.5 then
        if local9 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local6, local7, local8, 0, 0)
        elseif local9 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        end
    elseif local9 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local7, local8, 0, 0)
    elseif local9 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118001_Act06(arg0, arg1, arg2)
    local local0 = 3009
    local local1 = arg0:GetRandam_Int(1, 100)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118001_Act07(arg0, arg1, arg2)
    local local0 = 3010
    local local1 = arg0:GetRandam_Int(1, 100)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118001_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF), 7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 0, 0, 3, 3)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 3005
    local local3 = 3015
    local local4 = 3004
    local local5 = 3008
    local local6 = 3014
    local local7 = 5.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local9 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local10, TurnTime, FrontAngle, 0, 0)
    elseif local1 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local10, 0, 0)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, 11.1 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local10, 0, 0)
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10, 0, 0)
    elseif local1 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local9, 0, 0)
    elseif local1 <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, DistToAtt4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local6, TARGET_ENE_0, DistToAtt7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LordYupa_118001_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118001_Act21(arg0, arg1, arg2)
    arg0:SetTimer(0, 5)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 90), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118001_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    if local1 <= 30 and InsideRange(arg0, arg1, 90, 180, -9999, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 2)
    elseif local1 <= 30 and InsideRange(arg0, arg1, -90, 180, -9999, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 2)
    elseif InsideRange(arg0, arg1, 90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118001_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
        LordYupa_118001_Act02(arg0, arg1, arg2)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
        LordYupa_118001_Act08(arg0, arg1, arg2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118001_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LordYupa_118001_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = 2 - arg1:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetDist(TARGET_ENE_0) <= 1.5 and arg1:GetRandam_Int(1, 100) <= 15 then
        arg2:ClearSubGoal()
        LordYupa_118001_Act06(arg1, arg2, paramTbl)
    end
    return false
end

return 
