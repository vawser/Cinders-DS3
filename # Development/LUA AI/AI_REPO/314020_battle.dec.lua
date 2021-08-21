RegisterTableGoal(GOAL_Hellkite_314020_Battle, "Hellkite_314020_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
        local0[21] = 50
        local0[22] = 50
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[21] = 40
        local0[22] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif 20 <= local3 then
        local0[1] = 100
        local0[2] = 150
        local0[3] = 30
        local0[4] = 10
        local0[5] = 10
        local0[6] = 10
        local0[7] = 0
        local0[8] = 60
        local0[9] = 0
        local0[10] = 50
        local0[11] = 0
        local0[12] = 0
    elseif 13 <= local3 then
        local0[1] = 40
        local0[2] = 80
        local0[3] = 50
        local0[4] = 20
        local0[5] = 20
        local0[6] = 20
        local0[7] = 0
        local0[8] = 80
        local0[9] = 50
        local0[10] = 50
        local0[11] = 0
        local0[12] = 0
    elseif 9 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[3] = 150
        local0[4] = 30
        local0[5] = 30
        local0[6] = 30
        local0[7] = 0
        local0[8] = 80
        local0[9] = 80
        local0[10] = 100
        local0[11] = 0
        local0[12] = 0
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 100
        local0[5] = 100
        local0[6] = 100
        local0[7] = 100
        local0[8] = 0
        local0[9] = 80
        local0[10] = 80
        local0[11] = 0
        local0[12] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Hellkite_314020_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Hellkite_314020_ActAfter_AdjustSpace), local2)
    return 
end

function Hellkite_314020_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 27.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 27.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 27.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 27.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 16.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 16.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 16.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 16.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 14.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 14.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 14.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 26.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 26.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 26.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 26.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 10.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 10.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 10.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 12.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 12.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 12.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetEventMoveTarget(3202914)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0.4, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 52.8 - arg0:GetMapHitRadius(TARGET_SELF), 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Hellkite_314020_Act21(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function Hellkite_314020_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Hellkite_314020_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    else
        return false
    end
end

RegisterTableGoal(GOAL_Hellkite_314020_AfterAttackAct, "Hellkite_314020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Hellkite_314020_AfterAttackAct, true)
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
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
