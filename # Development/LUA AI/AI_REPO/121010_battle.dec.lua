RegisterTableGoal(GOAL_BlueMan_DirectSword_121010_battle, "GOAL_BlueMan_DirectSword_121010_battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_DirectSword_121010_battle, true)
Goal.Initialize = function (arg0, arg1, arg2)
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
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[2] = 10
        local0[10] = 40
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 50
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 2.4 - arg1:GetMapHitRadius(TARGET_SELF) + 2) and local4 <= 80 and 15 <= arg1:GetAttackPassedTime(3006) then
        local0[6] = 100
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 2.4 - arg1:GetMapHitRadius(TARGET_SELF) + 4) and local4 <= 60 and 15 <= arg1:GetAttackPassedTime(3006) then
        local0[6] = 100
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 2.4 - arg1:GetMapHitRadius(TARGET_SELF) + 8) and local4 <= 35 and 15 <= arg1:GetAttackPassedTime(3006) then
        local0[6] = 100
    elseif 10 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 15
        local0[4] = 0
        local0[5] = 0
        local0[10] = 0
        local0[11] = 0
    elseif 6 <= local3 then
        local0[1] = 12
        local0[2] = 10
        local0[3] = 12
        local0[4] = 5
        local0[5] = 20
        local0[10] = 0
        local0[11] = 0
    elseif 2 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[10] = 0
        local0[11] = 0
    else
        local0[1] = 8
        local0[2] = 20
        local0[3] = 8
        local0[4] = 14
        local0[5] = 0
        local0[10] = 0
        local0[11] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12132) == true then
        local0[11] = local0[11] + 30
        local0[10] = local0[10] + 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3007, 5, local0[4], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 3, local0[5], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlueMan_DirectSword_ActAfter_AdjustSpace), local2)
    return 
end

function BlueMan_DirectSword_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.2 - arg0:GetMapHitRadius(TARGET_SELF), 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = 3000
    local local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_DirectSword_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.9 - arg0:GetMapHitRadius(TARGET_SELF), 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = 3002
    local local1 = 3003
    local local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 1.5
    local local5 = 20
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_DirectSword_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.8 - arg0:GetMapHitRadius(TARGET_SELF), 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_DirectSword_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_DirectSword_Act05(arg0, arg1, arg2)
    local local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local2 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local local3 = 60
    local local4 = 0
    local local5 = 5
    local local6 = 5
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_DirectSword_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 60, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_DirectSword_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function BlueMan_DirectSword_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function BlueMan_DirectSword_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_DirectSword_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    elseif Damaged_Act(arg1, arg2, 4, 40) then
        arg2:ClearSubGoal()
        if arg1:GetRandam_Int(0, 1) == 0 then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
        else
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
        end
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_BlueMan_DirectSword_121010_AfterAttackAct, "BlueMan_DirectSword_121010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_DirectSword_121010_AfterAttackAct, true)
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
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 13)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 7)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 13)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 7)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 7)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
