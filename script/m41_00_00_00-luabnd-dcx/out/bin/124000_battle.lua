RegisterTableGoal(GOAL_HinminMoujaNata_124000_Battle, "HinminMoujaNata_124000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HinminMoujaNata_124000_Battle, true)
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
    local local6 = arg1:GetEventRequest()
    local local7 = 0
    local local8 = 0
    local local9 = 0
    local local10 = 0
    local local11 = 0
    if arg1:GetNpcThinkParamID() == 124001 then
        local7 = 1
        local8 = 1
    elseif arg1:GetNpcThinkParamID() == 124002 then
        local8 = 1
    elseif arg1:GetNpcThinkParamID() == 124003 then
        local10 = 1
        local11 = 1
    elseif arg1:GetNpcThinkParamID() == 124004 then
        local11 = 1
    end
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[11] = 40
        local0[14] = 60
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 3.5
        local0[2] = 3.5
        local0[3] = 3
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[11] = 35
        local0[14] = 55
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif local7 == 1 and 6.5 <= local3 then
        local0[6] = 100
    elseif local8 == 1 and 6.5 <= local3 and 50 <= local4 then
        local0[5] = 100
    elseif local9 == 1 and 13.5 <= local3 then
        local0[10] = 100
    elseif local9 == 1 and local3 <= 13.5 then
        local0[6] = 100
    elseif local10 == 1 and 6.5 <= local3 then
        local0[9] = 100
    elseif local11 == 1 and 6.5 <= local3 and 50 <= local4 then
        local0[8] = 100
    elseif 10 <= local3 then
        local0[1] = 15
        local0[2] = 30
        local0[3] = 30
        local0[4] = 10
        local0[7] = 10
        local0[11] = 0
    elseif 5.5 <= local3 then
        local0[1] = 5
        local0[2] = 20
        local0[3] = 20
        local0[4] = 10
        local0[7] = 5
        local0[11] = 30
    elseif 3 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[7] = 20
        local0[11] = 30
    elseif 1 <= local3 then
        local0[1] = 30
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[7] = 15
        local0[11] = 20
    else
        local0[1] = 45
        local0[2] = 15
        local0[3] = 10
        local0[4] = 5
        local0[7] = 25
        local0[11] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HinminMoujaNata_124000_ActAfter_AdjustSpace), local2)
    return 
end

function HinminMoujaNata_124000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 100, 0, 4, 8)
    local local0 = 3000
    local local1 = 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF), 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF), 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14 - arg0:GetMapHitRadius(TARGET_SELF), 14 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 20, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act06(arg0, arg1, arg2)
    local local0 = math.abs(arg0:GetDistYSigned(TARGET_ENE_0))
    local local1 = arg0:GetRandam_Int(1, 100)
    if 14 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, -1, 45, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 100, 0, 4, 8)
    local local0 = 3006
    local local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.4 - arg0:GetMapHitRadius(TARGET_SELF), 13.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 13.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6.5, 20, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act09(arg0, arg1, arg2)
    local local0 = math.abs(arg0:GetDistYSigned(TARGET_ENE_0))
    local local1 = arg0:GetRandam_Int(1, 100)
    if 14 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, -1, 45, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 30 - arg0:GetMapHitRadius(TARGET_SELF), 30 + 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 30 + 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 20, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function HinminMoujaNata_124000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Float(6, 8), TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 < 1.5 then
        local0 = local0 / 2
    else
        local0 = local0 - 1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local0 + 1.4, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaNata_124000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HinminMoujaNata_124000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    arg1:RegisterTriggerRegion(1000, 1, 1, 5, TARGET_SELF, AI_DIR_TYPE_F, 0)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

Goal.Interrupt_TargetOutOfRange = function (arg0, arg1, arg2, arg3)
    if arg3 == 1 then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_HinminMoujaNata_124000_AfterAttackAct, "HinminMoujaNata_124000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HinminMoujaNata_124000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 45)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
