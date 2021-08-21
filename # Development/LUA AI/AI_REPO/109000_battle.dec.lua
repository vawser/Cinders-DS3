RegisterTableGoal(GOAL_MoujaSoldier_Gunda_109000_Battle, "GOAL_MoujaSoldier_Gunda_109000_Battle")
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
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[1] = 50
        local0[2] = 50
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 50
        local0[2] = 50
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if 5.55 <= local3 then
            local0[20] = 100
        else
            local0[20] = 40
            local0[5] = 60
        end
    elseif 10 <= local3 then
        local0[1] = 60
        local0[2] = 20
        local0[3] = 20
        local0[4] = 80
    elseif 5.5 <= local3 then
        local0[1] = 50
        local0[2] = 30
        local0[3] = 20
        local0[4] = 70
    elseif 3 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 30
        local0[4] = 10
    elseif 1 <= local3 then
        local0[1] = 20
        local0[2] = 40
        local0[3] = 40
    else
        local0[1] = 10
        local0[2] = 45
        local0[3] = 45
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 15, local0[3], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_Act05)
    local1[10] = REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaSoldierGunda109000_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldierGunda109000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6 - arg0:GetMapHitRadius(TARGET_SELF), 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 3, 8)
    local local0 = 3000
    local local1 = 3003
    local local2 = 3004
    local local3 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5
    local local4 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5
    local local5 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local6 = 0
    local local7 = 360
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierGunda109000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6 - arg0:GetMapHitRadius(TARGET_SELF), 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 3, 8)
    local local0 = 3001
    local local1 = 3005
    local local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5
    local local3 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local4 = 0
    local local5 = 360
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierGunda109000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 3, 8)
    local local0 = 3002
    local local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local2 = 0
    local local3 = 360
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierGunda109000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.1 - arg0:GetMapHitRadius(TARGET_SELF), 9.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 9.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 3, 8)
    local local0 = 3006
    local local1 = 3005
    local local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5
    local local3 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local4 = 0
    local local5 = 360
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierGunda109000_Act05(arg0, arg1, arg2)
    local local0 = 3007
    local local1 = 3005
    local local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5
    local local3 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local4 = 0
    local local5 = 360
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierGunda109000_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function MoujaSoldierGunda109000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function MoujaSoldierGunda109000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierGunda109000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_Gunda_109000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interupt = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_MoujaSoldier_Gunda_109000_AfterAttackAct, "GOAL_MoujaSoldier_Gunda_109000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Gunda_109000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
