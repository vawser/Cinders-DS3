RegisterTableGoal(GOAL_DarkWraith_317000_Battle, "GOAL_DarkWraith_1v_317000_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetHpRate(TARGET_SELF)
    local local7 = arg1:GetEventRequest()
    if InsideDir(arg1, arg2, 90, 100) and local3 <= 2.5 and local4 <= 80 then
        local0[7] = 100
    elseif InsideDir(arg1, arg2, -90, 100) and local3 <= 2.5 and local4 <= 80 then
        local0[8] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif 7 <= local3 then
        local0[1] = 10
        local0[2] = 40
        local0[6] = 10
        local0[11] = 10
        local0[12] = 40
    elseif 3 <= local3 then
        local0[1] = 10
        local0[2] = 27
        local0[3] = 30
        local0[6] = 30
        local0[11] = 10
        local0[12] = 18
        local0[19] = 35
    else
        local0[1] = 30
        local0[2] = 15
        local0[3] = 30
        local0[5] = 20
        local0[6] = 10
        local0[12] = 10
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) and local3 <= 3 then
        local0[4] = 100
    end
    local0[2] = SetCoolTime(arg1, arg2, 3004, 5, local0[2], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3014, 6, local0[11], 0)
    local0[12] = SetCoolTime(arg1, arg2, 3015, 6, local0[12], 2)
    local1[1] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act09)
    local1[11] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act16)
    local1[18] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, DarkWraith317000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DarkWraith317000_ActAfter_AdjustSpace), local2)
    return 
end

function DarkWraith317000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0)
        if arg0:GetRandam_Int(1, 100) <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local0, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetWepCateRight(TARGET_ENE_0)
    local local1 = arg0:GetWepCateLeft(TARGET_ENE_0)
    local local2 = 0
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        local2 = 100
    end
    Approach_Act_Flex(arg0, arg1, 6.4 - arg0:GetMapHitRadius(TARGET_SELF), 6.4 - arg0:GetMapHitRadius(TARGET_SELF), 6.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, local2, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.7 - arg0:GetMapHitRadius(TARGET_SELF), 1.7 - arg0:GetMapHitRadius(TARGET_SELF), 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 4, 8)
    local local0 = 3007
    local local1 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
        arg0:Replaning()
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.6, 5.6, 6, 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.3 - arg0:GetMapHitRadius(TARGET_SELF), 8.3 - arg0:GetMapHitRadius(TARGET_SELF), 8.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetWepCateRight(TARGET_ENE_0)
    local local1 = arg0:GetWepCateLeft(TARGET_ENE_0)
    local local2 = 0
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        local2 = 100
    end
    Approach_Act_Flex(arg0, arg1, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 10.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, local2, 4, 8)
    local local3 = 3002
    local local4 = 3003
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act16(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 10.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 10.7 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    local local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkWraith317000_Act18(arg0, arg1, arg2)
    local local0 = 10
    local local1 = 12
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 5, TARGET_ENE_0, true, -1)
    return 
end

function DarkWraith317000_Act19(arg0, arg1, arg2)
    local local0 = 80
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 5.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(50, 65), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkWraith317000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkWraith317000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DarkWraith_317000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if ReactBackstab_Act(arg1, arg2, 2, 3016, 100) then
        return true
    elseif GuardBreak_Act(arg1, arg2, 2.6, 80) then
        arg2:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_DarkWraith_317000_AfterAttackAct, "GOAL_DarkWraith_317000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkWraith_317000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 5 <= local0 then
        local2[1] = 80
        local2[2] = 20
    elseif 3 <= local0 then
        local2[1] = 80
        local2[2] = 20
    else
        local2[1] = 90
        local2[2] = 10
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 and local3 == 2 then
        DarkWraith317000_Act19(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
