RegisterTableGoal(GOAL_MoujaSoldier_Dagger_110060_Battle, "MoujaSoldier_Dagger_110060_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Dagger_110060_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4.2 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3.4 + 1)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest(0)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = 0
    local local8 = 0
    local local9 = 0
    if arg1:GetNpcThinkParamID() == 144060 or arg1:GetNpcThinkParamID() == 144061 then
        local7 = 1
        if arg1:GetHpRate(TARGET_SELF) <= 0.6 then
            local7 = 2
        end
    end
    if arg1:GetNpcThinkParamID() == 110061 or arg1:GetNpcThinkParamID() == 143061 or arg1:GetNpcThinkParamID() == 144061 then
        local8 = 1
        local9 = 60
    end
    if arg1:GetEventRequest(1) == 100 then
        local0[20] = 100
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[9] = 10 * local8
        local0[11] = 60
        local0[15] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:GetRandam_Int(1, 100) <= 75 then
        local0[9] = 10 * local8
        local0[10] = 10
        local0[11] = 55
        local0[15] = 35
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[13] = 100
    elseif arg1:GetNpcThinkParamID() == 110063 and arg1:GetNumber(5) == 0 then
        local0[6] = 100
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 2.1 - arg1:GetMapHitRadius(TARGET_SELF) + 4) and local6 <= 90 and 5 <= arg1:GetAttackPassedTime(3010) then
        local0[6] = 100
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 2.1 - arg1:GetMapHitRadius(TARGET_SELF) + 8) and local6 <= 80 and 5 <= arg1:GetAttackPassedTime(3010) then
        local0[6] = 100
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 2.1 - arg1:GetMapHitRadius(TARGET_SELF) + 11) and local6 <= 70 and 5 <= arg1:GetAttackPassedTime(3010) then
        local0[6] = 100
    elseif 10 <= local3 then
        local0[2] = 5
        local0[3] = 15
        local0[5] = 3
        local0[9] = 7 * local8
        local0[10] = 30
        local0[12] = 30
        local0[20] = 20 * local7
        local0[21] = 10 * local7
    elseif 5.5 <= local3 then
        local0[1] = 5
        local0[2] = 20
        local0[4] = 5
        local0[5] = 5
        local0[9] = 10 * local8
        local0[10] = 30
        local0[11] = 0
        local0[12] = 20
        local0[20] = 10 * local7
        local0[21] = 20 * local7
    elseif 3 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[4] = 10
        local0[5] = 10
        local0[7] = 25
        local0[9] = 40 * local8
        local0[10] = 10
        local0[11] = 0
        local0[15] = 15
        local0[20] = 0 * local7
        local0[21] = 30 * local7
    elseif 2 <= local3 then
        local0[1] = 10
        local0[4] = 10
        local0[5] = 15
        local0[7] = 70 - local9
        local0[9] = 80 * local8
        local0[10] = 0
        local0[11] = 0
        local0[20] = 0 * local7
        local0[21] = 10 * local7
    elseif 1 <= local3 then
        local0[1] = 10
        local0[4] = 10
        local0[5] = 5
        local0[7] = 70 - local9
        local0[9] = 80 * local8
        local0[10] = 0
        local0[11] = 0
        local0[20] = 0 * local7
        local0[21] = 0 * local7
    else
        local0[1] = 20
        local0[4] = 10
        local0[7] = 40
        local0[8] = 10
        local0[9] = 90 * local8
        local0[10] = 0
        local0[11] = 0
        local0[20] = 0 * local7
        local0[21] = 0 * local7
    end
    if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 10) then
        local0[9] = 0
    end
    if arg1:GetNpcThinkParamID() == 110062 then
        if 5.5 <= local3 then
            local0[10] = local0[10] + 180
            local0[11] = local0[12] + 30
            local0[12] = local0[12] + 120
        elseif 2 <= local3 then
            local0[10] = local0[10] + 130
            local0[11] = local0[12] + 50
            local0[12] = local0[12] + 40
        else
            local0[10] = local0[10] + 0
            local0[11] = local0[12] + 80
            local0[12] = local0[12] + 30
        end
    end
    local0[4] = SetCoolTime(arg1, arg2, 3005, 8, local0[4], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3012, 6, local0[9], 1)
    local0[7] = SetCoolTime(arg1, arg2, 6002, 6, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 6003, 6, local0[7], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act16)
    local1[20] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, MoujaSoldier110060_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaSoldier110060_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldier110060_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 80, 0, 2.5, 8)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 3005
    local local4 = 3006
    local local5 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local9, 0, 0)
    elseif local12 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local9, 0, 0)
    elseif local12 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local9, 0, 0)
    elseif local12 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local9, 0, 0)
    elseif local12 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local9, 0, 0)
    elseif local12 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local9, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.8, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 60, 0, 1.5, 8)
    local local0 = 1.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.8, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 80, 0, 1.5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 80, 0, 2.5, 8)
    local local0 = 3005
    local local1 = 3005
    local local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 1
    local local5 = 60
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 80, 0, 2.5, 8)
    local local0 = 3006
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if 0 < local1 and local0 <= 5 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
        local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif local1 < 0 and local0 <= 5 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
        local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
        local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
        local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    arg1:AddSubGoal(GOAL_MoujaSoldier_Dagger_110060_SelectAttack, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 80, 0, 2.5, 8)
    local local0 = 3001
    local local1 = 3002
    local local2 = 3006
    local local3 = 3005
    local local4 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local9 = 0
    local local10 = 0
    local local11 = arg0:GetRandam_Int(1, 100)
    if local11 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local8, 0, 0)
    elseif local11 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local8, 0, 0)
    elseif local11 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local8, 0, 0)
    elseif local11 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local8, 0, 0)
    elseif local11 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, local8, 0, 0)
    elseif local11 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local8, 0, 0)
    end
    return 
end

function MoujaSoldier110060_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    Approach_Act_Flex(arg0, arg1, 1, 1, 1, 80, 0, 2.5, 8)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 80, 0, 1.5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(15, 30), true, true, -1)
    return 
end

function MoujaSoldier110060_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(30, 45))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local local1, local2 = nil
    if 5 <= arg0:GetDist(TARGET_ENE_0) then
        local1 = arg0:GetRandam_Int(6002, 6003)
    elseif local0 < 0 then
        local1 = 6003
        local2 = AI_DIR_TYPE_R
    elseif 0 < local0 then
        local1 = 6002
        local2 = AI_DIR_TYPE_L
    else
        local1 = arg0:GetRandam_Int(6002, 6003)
        if local1 == 6002 then
            local2 = AI_DIR_TYPE_L
        else
            local2 = AI_DIR_TYPE_R
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, local1, TARGET_ENE_0, 0, local2, arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local local1 = nil
    if 5 <= arg0:GetDist(TARGET_ENE_0) then
        local1 = arg0:GetRandam_Int(0, 1)
    elseif local0 < 0 then
        local1 = 1
    elseif 0 < local0 then
        local1 = 0
    else
        local1 = arg0:GetRandam_Int(0, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, local1, arg0:GetRandam_Float(15, 30), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, Dist_BackStep)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 0, 8, 13)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act20(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20 - arg0:GetMapHitRadius(TARGET_SELF), 20 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 20 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20005, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110060_Act21(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20006, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110060_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    local local2 = 2.1 - arg1:GetMapHitRadius(TARGET_SELF)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        arg2:ClearSubGoal()
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 10) then
            if local0 < 2 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            elseif local0 < 5 then
                local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
                local3:SetLifeEndSuccess(true)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_MoujaSoldier_Dagger_110060_SelectAttack, "MoujaSoldier_Dagger_110060_StepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Dagger_110060_SelectAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 999) then
        return 
    elseif local0 <= 2.3 - arg1:GetMapHitRadius(TARGET_SELF) - 1 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3005, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF))
    elseif local0 <= 3.5 - arg1:GetMapHitRadius(TARGET_SELF) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3006, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF))
    elseif local0 <= 5 - arg1:GetMapHitRadius(TARGET_SELF) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3003, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF))
    elseif local0 <= 8.5 - arg1:GetMapHitRadius(TARGET_SELF) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3004, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF))
    else
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), 3004, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF))
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
