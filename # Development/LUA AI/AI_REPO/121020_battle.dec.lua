RegisterTableGoal(GOAL_BlueMan_Deep_121020_battle, "BlueMan_Deep_121020_battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_Deep_121020_battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(0, 10)
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
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetNumber(0)
    if local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[4] = 50
        local0[10] = 50
        local0[11] = 50
    elseif local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[4] = 80
        local0[9] = 10
        local0[10] = 40
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 50
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and arg1:GetRandam_Int(1, 100) <= 40 then
        local0[10] = 40
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 40
        local0[10] = 0
        local0[11] = 80
    elseif 6 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 80
        local0[9] = 20
        local0[10] = 0
        local0[11] = 40
    elseif 2 <= local3 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 20
        local0[4] = 20
        local0[10] = 80
        local0[11] = 20
    else
        local0[1] = 10
        local0[2] = 0
        local0[3] = 10
        local0[4] = 20
        local0[10] = 60
        local0[11] = 0
    end
    local0[5] = SetCoolTime(arg1, arg2, 3006, 20, local0[5], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 5, local0[4], 0)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 8, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3012, 20, local0[9], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlueMan_Deep_121020_ActAfter_AdjustSpace), local2)
    return 
end

function BlueMan_Deep_121020_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = 3000
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.5 - arg0:GetMapHitRadius(TARGET_SELF), 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 1.5
    local local2 = 20
    local local3 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act05(arg0, arg1, arg2)
    local local0 = 3006
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = 3005
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act07(arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local local3 = 60
    local local4 = 0
    local local5 = 5
    local local6 = 5
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act08(arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local local3 = 60
    local local4 = 0
    local local5 = 5
    local local6 = 5
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act09(arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local local3 = 60
    local local4 = 0
    local local5 = 5
    local local6 = 5
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 12
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_Deep_121020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
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
    elseif GuardBreak_Act(arg1, arg2, 2.6, 75) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    elseif Damaged_Act(arg1, arg2, 4.5, 40) then
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_BlueMan_Deep_121020_AfterAttackAct, "BlueMan_Deep_121020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_Deep_121020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 360)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
