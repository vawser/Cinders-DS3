RegisterTableGoal(GOAL_DwarfishHuman_120000_Battle, "DwarfishHuman_120000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DwarfishHuman_120000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 30, 10)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = math.abs(arg1:GetDistYSigned(TARGET_ENE_0))
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = 0
    local local8 = 0
    local local9 = 0
    local local10 = 0
    local local11 = 1
    local local12 = arg1:GetEventRequest()
    if arg1:GetNpcThinkParamID() == 120003 then
        local7 = 1
        local11 = 0
    end
    if arg1:GetNpcThinkParamID() == 120004 then
        local8 = 1
        local11 = 0
    end
    if arg1:GetNpcThinkParamID() == 120005 then
        local11 = 0
    end
    if arg1:GetNpcThinkParamID() == 120010 then
        local10 = 1
    end
    if arg1:GetNpcThinkParamID() == 120006 then
        local9 = 1
    end
    if local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 0
        local0[10] = 40
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 50
    elseif arg1:GetNumber(2) == 0 and arg1:GetNpcThinkParamID() == 120009 then
        arg1:SetEventMoveTarget(3412420)
        if arg1:IsInsideTargetRegion(TARGET_SELF, 3412420) == true then
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_SELF, 0, 0, 0)
            arg1:SetNumber(2, 1)
        else
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0.4, TARGET_SELF, false, -1)
        end
    elseif arg1:GetNumber(1) == 0 and local9 == 1 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 10) then
        local0[18] = 100
        arg1:SetNumber(1, 1)
    elseif local9 == 1 and 20 <= local4 and 10 <= arg1:GetAttackPassedTime(3012) and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 10) then
        local0[18] = 100
    elseif local9 == 1 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 5) then
        local0[13] = 80
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and local4 <= 30 and arg1:GetHpRate(TARGET_SELF) <= 0.3 then
        local0[14] = 40
        local0[7] = 60
    elseif local8 == 1 and 13 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 then
        local0[16] = 100
    elseif local8 == 1 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 then
        local0[15] = 100
    elseif local8 == 1 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 then
        local0[2] = 100
    elseif local7 == 1 and 8 <= arg1:GetAttackPassedTime(3014) and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 and local4 <= 65 then
        local0[2] = 100
    elseif local10 == 1 then
        if 6.5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 then
            local0[9] = 100
        else
            local0[5] = 1
            local0[7] = 4
            local0[10] = 80
            local0[13] = 5
            local0[13] = 10
        end
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 180, 3) and local4 <= 40 and arg1:GetHpRate(TARGET_SELF) <= 0.3 and 20 <= arg1:GetAttackPassedTime(3007) then
        local0[8] = 100
    elseif 8 <= local3 then
        local0[1] = 10
        local0[3] = 0
        local0[4] = 5
        local0[5] = 10
        local0[6] = 10
        local0[7] = 0
        local0[8] = 0
        local0[9] = 10 * local11
        local0[11] = 10
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[17] = 0
    elseif 5 <= local3 then
        local0[1] = 10
        local0[3] = 10
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0 * local11
        local0[12] = 0
        local0[13] = 10
        local0[14] = 10
        local0[17] = 20
    elseif 2.5 <= local3 then
        local0[1] = 10
        local0[3] = 10
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0 * local11
        local0[12] = 0
        local0[13] = 10
        local0[14] = 10
        local0[17] = 20
    elseif 1 <= local3 then
        local0[1] = 20
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0 * local11
        local0[12] = 0
        local0[13] = 10
        local0[14] = 10
        local0[17] = 10
    else
        local0[1] = 10
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0 * local11
        local0[12] = 0
        local0[13] = 10
        local0[14] = 10
        local0[17] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3014, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3007, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3009, 10, local0[9], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3011, 10, local0[12], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3014, 10, local0[15], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act18)
    local1[20] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DwarfishHuman_120000_ActAfter_AdjustSpace), local2)
    return 
end

function DwarfishHuman_120000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    local local0 = 3000
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local1:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.8 - arg0:GetMapHitRadius(TARGET_SELF), 10.8 - arg0:GetMapHitRadius(TARGET_SELF), 10.8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act07(arg0, arg1, arg2)
    local local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = 5
    local local6 = 8
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act08(arg0, arg1, arg2)
    local local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local3 = 0
    local local4 = 0
    local local5 = 4
    local local6 = 8
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 30 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 30 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3013, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 50.8 - arg0:GetMapHitRadius(TARGET_SELF), 50.8 - arg0:GetMapHitRadius(TARGET_SELF), 50.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 5, 8)
    local local0 = 3009
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 50.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 13, TARGET_ENE_0, true, -1)
    return 
end

function DwarfishHuman_120000_Act11(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    local0:SetTargetRange(1, 1, 3)
    return 
end

function DwarfishHuman_120000_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, 5)
    return 
end

function DwarfishHuman_120000_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    return 
end

function DwarfishHuman_120000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, -1, 45, 0, 0)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act16(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    local0:SetTargetRange(0, 4, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act17(arg0, arg1, arg2)
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
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 999) then
        return 
    elseif local0 <= 2.4 - arg0:GetMapHitRadius(TARGET_SELF) then
        DwarfishHuman_120000_Act01(arg0, arg1, arg2)
    elseif local0 <= 2.4 - arg0:GetMapHitRadius(TARGET_SELF) then
        DwarfishHuman_120000_Act03(arg0, arg1, arg2)
    elseif local0 <= 5.4 - arg0:GetMapHitRadius(TARGET_SELF) then
        DwarfishHuman_120000_Act05(arg0, arg1, arg2)
    else
        DwarfishHuman_120000_Act06(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act18(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DwarfishHuman_120000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DwarfishHuman_120000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif Damaged_Act(arg1, arg2, 4.5, 100) then
        DwarfishHuman_120000_Act14(arg1, arg2, paramTbl)
        return true
    else
        local local0 = arg1:GetDist(TARGET_ENE_0)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and taegetDist <= 3 then
            DwarfishHuman_120000_Act20(arg1, arg2, paramTbl)
            return true
        else
            local local1 = arg1:GetDist(TARGET_ENE_0)
            local local2 = 2 - arg1:GetMapHitRadius(TARGET_SELF)
            local local3 = 0
            local local4 = 20
            if arg1:IsInsideObserve(0) and flag_back_throw == 1 and arg1:GetRandam_Int(1, 100) <= 80 and 15 <= arg1:GetAttackPassedTime(3012) then
                arg2:ClearSubGoal()
                DwarfishHuman_120000_Act18(arg1, arg2, paramTbl)
                arg1:DeleteObserve(0)
                return true
            else
                return false
            end
        end
    end
end

Goal.Interrupt_TargetOutOfRange = function (arg0, arg1, arg2, arg3)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    print("LEAVETARGET  TARGET OUT OF RANGE")
    if arg3 == 0 then
        if local1 < 30 then
            arg2:ClearSubGoal()
            if arg1:GetHpRate(TARGET_SELF) <= 0.3 then
                DwarfishHuman_120000_Act07(arg1, arg2, paramTbl)
                return true
            else
                DwarfishHuman_120000_Act06(arg1, arg2, paramTbl)
                return true
            end
        elseif local1 < 80 then
            arg2:ClearSubGoal()
            DwarfishHuman_120000_Act13(arg1, arg2, paramTbl)
            return true
        end
    elseif arg3 == 1 and local1 <= 30 then
        arg2:ClearSubGoal()
        DwarfishHuman_120000_Act13(arg1, arg2, paramTbl)
        return true
    end
    return 
end

Goal.Interrupt_FindAttack = function (arg0, arg1, arg2)
    local local0 = 5
    local local1 = 100
    local local2 = arg1:GetDist(TARGET_ENE_0)
    if 1 < local2 and local2 < 5 and 50 <= arg1:GetRandam_Int(1, 100) then
        arg2:ClearSubGoal()
        DwarfishHuman_120000_Act14(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_DwarfishHuman_120000_AfterAttackAct, "DwarfishHuman_120000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DwarfishHuman_120000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 25)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 5)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
