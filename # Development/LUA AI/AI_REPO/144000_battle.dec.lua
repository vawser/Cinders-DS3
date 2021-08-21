RegisterTableGoal(GOAL_PilgrimMouja_Miracles_144000_Battle, "PilgrimMouja_Miracles")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PilgrimMouja_Miracles_144000_Battle, true)
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
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:GetNpcThinkParamID() == 110054 then
        Approach_Act(arg1, arg2, 1, 9999, 0, 3)
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[8] = 10
        local0[7] = 10
        local0[10] = 30
        local0[11] = 30
        local0[12] = 50
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[8] = 20
        local0[7] = 20
        local0[10] = 30
        local0[11] = 30
        local0[12] = 30
    elseif InsideDir(arg1, arg2, 180, 90) and local3 <= 1.5 then
        local0[12] = 100
    elseif InsideDir(arg1, arg2, 90, 90) and local3 <= 1.5 then
        local0[1] = 35
        local0[5] = 35
        local0[12] = 30
    elseif InsideDir(arg1, arg2, -90, 90) and local3 <= 1.5 then
        local0[2] = 35
        local0[5] = 35
        local0[12] = 30
    elseif InsideDir(arg1, arg2, 180, 270) then
        local0[12] = 100
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:GetNpcThinkParamID() == 144071 then
        local0[8] = 100
    elseif 8.3 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[7] = 100
        local0[8] = 100
        local0[10] = 40
        local0[11] = 40
        local0[12] = 30
    elseif 5.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[5] = 20
        local0[8] = 100
        local0[7] = 120
        local0[10] = 10
        local0[11] = 10
        local0[12] = 30
    elseif 3.5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[5] = 20
        local0[8] = 70
        local0[7] = 80
        local0[10] = 20
        local0[11] = 20
        local0[12] = 20
    elseif 1.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[5] = 10
        local0[8] = 40
        local0[7] = 50
        local0[10] = 30
        local0[11] = 30
        local0[12] = 5
    else
        local0[1] = 30
        local0[2] = 30
        local0[5] = 20
        local0[8] = 0
        local0[7] = 30
        local0[10] = 30
        local0[11] = 30
        local0[12] = 20
    end
    if arg1:GetNpcThinkParamID() == 144072 then
        local0[11] = 0
        if 3.5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[5] = 0
        end
    else
        local0[10] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 8, local0[2], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3003, 20, local0[5], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3010, 15, local0[7], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act02)
    local1[5] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_Act13)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, PilgrimMouja_Miracles_ActAfter_AdjustSpace), local2)
    return 
end

function PilgrimMouja_Miracles_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_TEAM_LEADER)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = arg0:GetHpRate(TARGET_TEAM_LEADER)
    local local3 = arg0:GetHpRate(TARGET_FRI_0)
    if local0 <= 10 and 0 < local2 then
        return false
    elseif local1 <= 10 and 0 < local3 then
        return false
    end
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3.5, 4)
end

function PilgrimMouja_Miracles_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_TEAM_LEADER)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = arg0:GetHpRate(TARGET_TEAM_LEADER)
    local local3 = arg0:GetHpRate(TARGET_FRI_0)
    if local0 <= 10 and 0 < local2 then
        return false
    elseif local1 <= 10 and 0 < local3 then
        return false
    end
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3.5, 4)
end

function PilgrimMouja_Miracles_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_TEAM_LEADER)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = arg0:GetHpRate(TARGET_TEAM_LEADER)
    local local3 = arg0:GetHpRate(TARGET_FRI_0)
    if local0 <= 10 and 0 < local2 then
        return false
    elseif local1 <= 10 and 0 < local3 then
        return false
    end
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3.5, 4)
end

function PilgrimMouja_Miracles_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_TEAM_LEADER)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = 10
    local local3 = 0
    local local4 = 0
    local local5 = 5
    local local6 = arg0:GetHpRate(TARGET_TEAM_LEADER)
    local local7 = arg0:GetHpRate(TARGET_FRI_0)
    local local8 = 3010
    local local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = 0
    local local11 = 0
    if local2 <= local0 and local6 <= 0.8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local5, TARGET_TEAM_LEADER, local2, TARGET_TEAM_LEADER, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local8, TARGET_ENE_0, 999, local10, local11)
    elseif local2 <= local1 and local7 <= 0.8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local5, TARGET_FRI_0, local2, TARGET_FRI_0, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local8, TARGET_ENE_0, 999, local10, local11)
    elseif local0 <= local2 and local6 <= 0.8 and 0 < local6 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local8, TARGET_ENE_0, 999, local10, local11)
    elseif local1 <= local2 and local7 <= 0.8 and 0 < local7 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local8, TARGET_ENE_0, 999, local10, local11)
    elseif arg0:GetHpRate(TARGET_SELF) <= 0.8 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local8, TARGET_ENE_0, 999, local10, local11)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PilgrimMouja_Miracles_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_TEAM_LEADER)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = 10
    local local3 = 0
    local local4 = 0
    local local5 = 5
    local local6 = 3011
    local local7 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    if local2 <= local0 and local0 <= 15 and arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 12217) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local5, TARGET_TEAM_LEADER, local2, TARGET_TEAM_LEADER, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local6, TARGET_ENE_0, 999, local8, local9)
    elseif local2 <= local1 and local1 <= 15 and arg0:HasSpecialEffectId(TARGET_FRI_0, 12217) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local5, TARGET_FRI_0, local2, TARGET_FRI_0, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local6, TARGET_ENE_0, 999, local8, local9)
    elseif local0 <= local2 and arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 12217) == false and 0 < arg0:GetHpRate(TARGET_TEAM_LEADER) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local6, TARGET_ENE_0, 999, local8, local9)
    elseif local1 <= local2 and arg0:HasSpecialEffectId(TARGET_FRI_0, 12217) == false and 0 < arg0:GetHpRate(TARGET_FRI_0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local6, TARGET_ENE_0, 999, local8, local9)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 12216) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local6, TARGET_ENE_0, 999, local8, local9)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PilgrimMouja_Miracles_Act10(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    local0:SetLifeEndSuccess(true)
    if 8 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3), TARGET_ENE_0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PilgrimMouja_Miracles_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 8
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PilgrimMouja_Miracles_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(1, 2)
    if InsideRange(arg0, arg1, 90, 90, -99, 2) then
        if SpaceCheck(arg0, arg1, -90, 3) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif InsideRange(arg0, arg1, -90, 90, -99, 2) then
        if SpaceCheck(arg0, arg1, -90, 3) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 90, 3) and SpaceCheck(arg0, arg1, -90, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif SpaceCheck(arg0, arg1, 90, 3) and SpaceCheck(arg0, arg1, -90, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif SpaceCheck(arg0, arg1, 90, 3) == false and SpaceCheck(arg0, arg1, -90, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        PilgrimMouja_Miracles_Act05(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function PilgrimMouja_Miracles_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PilgrimMouja_Miracles_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PilgrimMouja_Miracles_144000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
    end
    return 
end

RegisterTableGoal(GOAL_PilgrimMouja_Miracles_144000_AfterAttackAct, "GOAL_PilgrimMouja_Miracles_144000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PilgrimMouja_Miracles_144000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Float(2.5, 4.5)
    local local3 = arg1:GetRandam_Int(0, 1)
    local local4 = arg1:GetRandam_Int(30, 45)
    local local5 = arg1:GetRandam_Float(2.5, 4.5)
    local local6 = local0 + arg1:GetRandam_Float(2.5, 4.5)
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
        if local1 <= 100 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        else
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
        end
    elseif 4 <= local0 then
        if local1 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        end
    elseif 2 <= local0 then
        if local1 <= 15 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        elseif local1 <= 25 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
        end
    elseif 0.5 <= local0 then
        if local1 <= 5 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
        elseif local1 <= 20 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
        end
    elseif local1 <= 0 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local3, local4, true, true, local7)
    elseif local1 <= 15 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, local6, TARGET_ENE_0, true, local7)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
