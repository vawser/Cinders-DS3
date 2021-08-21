RegisterTableGoal(GOAL_MoujaSoldier_lantern_110030_Battle, "MoujaSoldier110030")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_lantern_110030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest(0)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetRandam_Int(1, 100)
    local local8 = 0
    if arg1:GetNpcThinkParamID() == 144050 then
        local8 = 1
        if arg1:GetHpRate(TARGET_SELF) <= 0.6 then
            local8 = 2
        end
    end
    if arg1:GetEventRequest(1) == 100 then
        local0[20] = 100
    elseif arg1:GetNpcThinkParamID() == 110032 then
        arg2:AddSubGoal(GOAL_MoujaSoldier_lantern_110030_SpecialAct_First, -1)
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 60
        local0[12] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[11] = 50
        local0[12] = 50
    elseif eventNo == 1 and 7 <= local3 then
        local0[12] = 100
    elseif eventNo == 1 and 2 <= local3 then
        local0[14] = 100
    elseif InsideRange(arg1, arg2, 90, 90, -999, 2) then
        local0[2] = 30
        local0[5] = 15
        local0[13] = 55
    elseif InsideRange(arg1, arg2, -90, 90, -999, 2) then
        local0[1] = 30
        local0[5] = 15
        local0[13] = 55
    elseif InsideRange(arg1, arg2, 180, 240, -999, 10) then
        local0[13] = 100
    elseif 10 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[5] = 10
        local0[12] = 30
        local0[20] = 20 * local8
        local0[21] = 10 * local8
    elseif 5.5 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[5] = 15
        local0[12] = 25
        local0[20] = 10 * local8
        local0[21] = 20 * local8
    elseif 1.5 <= local3 then
        local0[1] = 25
        local0[2] = 20
        local0[5] = 35
        local0[12] = 20
        local0[20] = 0 * local8
        local0[21] = 30 * local8
    else
        local0[1] = 30
        local0[2] = 25
        local0[5] = 45
        local0[12] = 0
        local0[20] = 0 * local8
        local0[21] = 0 * local8
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3003, 20, local0[5], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act03)
    local1[5] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act05)
    local1[11] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, MoujaSoldier110030_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaSoldier110030_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldier110030_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.7, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2.5, 100, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.7, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2.5, 100, 0, 4, 8)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 90, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    local local2 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act12(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    local local1 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act14(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    local0:SetTargetRange(1, 2, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act20(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20 - arg0:GetMapHitRadius(TARGET_SELF), 20 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 20 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20005, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110030_Act21(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 100, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 20006, TARGET_ENE_0, 999, -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldier110030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_lantern_110030_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) and arg1:IsTargetOutOfRangeInterruptSlot(1) then
        arg2:ClearSubGoal()
    end
    return false
end

RegisterTableGoal(GOAL_MoujaSoldier_lantern_110030_AfterAttackAct, "GOAL_MoujaSoldier_lantern_110030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_lantern_110030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Float(3, 4)
    local local3 = arg1:GetRandam_Int(0, 1)
    local local4 = arg1:GetRandam_Int(30, 45)
    local local5 = arg1:GetRandam_Float(3, 4)
    local local6 = local0 + arg1:GetRandam_Float(2, 4)
    local local7 = -1
    if arg1:GetRandam_Int(1, 100) <= 0 then
        local7 = 9910
    end
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 8, TARGET_ENE_0, true, local7)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 8, TARGET_ENE_0, true, local7)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 6 <= local0 then
        if local1 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 4 <= local0 then
        if local1 <= 55 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 2 <= local0 then
        if local1 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        elseif local1 <= 55 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
        end
    elseif 0.5 <= local0 then
        if local1 <= 15 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        elseif local1 <= 35 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
        end
    elseif local1 <= 0 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
    elseif local1 <= 40 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_MoujaSoldier_lantern_110030_SpecialAct_First, "GOAL_MoujaSoldier_lantern_110030_SpecialAct_First")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_lantern_110030_SpecialAct_First, true)
Goal.Activate = function (arg0, arg1, arg2)
    arg1:SetEventMoveTarget(3002201)
    if arg1:IsExistReqObjAct() then
        arg2:AddSubGoal(GOAL_COMMON_ObjActTest, 10, OBJ_ACT_TYPE_LEVER)
    elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3002200) == true then
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_SELF, 0, 0, 0)
    else
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0.4, TARGET_SELF, false, -1)
    end
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        arg1:DeleteObserve(0)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_SELF, 0, 0, 0)
        return true
    else
        return false
    end
end

return 
