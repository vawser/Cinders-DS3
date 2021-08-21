RegisterTableGoal(GOAL_KingCastleDebu_129000_Battle, "GOAL_KingCastleDebu_129000_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:StartAttackPassedTimer(3008, 0)
    arg1:StartAttackPassedTimer(3010, 0)
    arg1:StartAttackPassedTimer(3013, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) and (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki) then
        if 7 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[5] = 25
            local0[4] = 25
            local0[20] = 50
        elseif 5.5 <= local3 then
            local0[1] = 0
            local0[2] = 25
            local0[3] = 0
            local0[4] = 30
            local0[5] = 25
            local0[22] = 0
            local0[13] = 10
            local0[14] = 10
            local0[12] = 0
        elseif 2.5 <= local3 then
            local0[1] = 10
            local0[2] = 15
            local0[3] = 0
            local0[4] = 20
            local0[5] = 10
            local0[11] = 10
            local0[22] = 0
            local0[13] = 10
            local0[14] = 10
            local0[12] = 15
        elseif InsideDir(arg1, arg2, 180, 120) then
            local0[10] = 20
            local0[9] = 25
            local0[21] = 0
            local0[13] = 0
            local0[14] = 20
            local0[12] = 35
        else
            local0[21] = 0
            local0[2] = 20
            local0[3] = 10
            local0[4] = 20
            local0[13] = 15
            local0[14] = 0
            local0[12] = 35
        end
        if arg1:GetAttackPassedTime(3008) <= 5 then
            local0[5] = 0
        end
        if arg1:GetAttackPassedTime(3010) <= 5 then
            local0[13] = 0
        end
        if arg1:GetAttackPassedTime(3013) <= 15 then
            local0[12] = 0
        end
    end
    local1[1] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act05)
    local1[9] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, KingCastleDebu129000_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, KingCastleDebu129000_ActAfter_AdjustSpace), local2)
    return 
end

function KingCastleDebu129000_Act01(arg0, arg1, arg2)
    local local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0 + 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local0, TARGET_SELF, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(0, 1), 1.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(0, 1)
    local local2 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local2 + 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, true, -1)
    end
    if local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 1.5, 45)
    elseif local0 <= 100 and arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, local1, 1.5, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local1, 0, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, local1, 1.5, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act03(arg0, arg1, arg2)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0 + 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local0, TARGET_SELF, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act04(arg0, arg1, arg2)
    local local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(0, 1)
    local local1 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local1 + 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local1, TARGET_SELF, true, -1)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, local0, 1.5, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, local0, 1.5, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act05(arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0 + 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local0, TARGET_SELF, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(0, 1), 1.5, 75)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(0, 1), 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(0, 1)
    local local2 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, local1, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act11(arg0, arg1, arg2)
    local local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(0, 1)
    local local1 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local1 + 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local1, TARGET_SELF, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, local0, 1.5, 60)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local0, 0, 0, 180)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local1 + 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local1, TARGET_SELF, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(0, 1), 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local2 + 2, TARGET_ENE_0, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, local1, 0, 180)
    if local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    elseif local0 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local2 + 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, local1, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act20(arg0, arg1, arg2)
    local local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Int(-1, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0 + 2, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, local0, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, (5 - arg0:GetMapHitRadius(TARGET_SELF)) / 2, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleDebu129000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_TurnAround, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, AI_DIR_TYPE_B, 60, true, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleDebu129000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_KingCastleDebu_129000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

RegisterTableGoal(GOAL_KingCastleDebu_129000_AfterAttackAct, "GOAL_KingCastleDebu_129000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingCastleDebu_129000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(0, 1)
    local local4 = 0
    local local5 = 0
    if arg1:GetNpcThinkParamID() == 102003 then
        local4 = arg1:GetRandam_Float(2.5, 3)
        local5 = arg1:GetRandam_Float(3, 3.5)
    else
        local4 = arg1:GetRandam_Float(1, 1.5)
        local5 = arg1:GetRandam_Float(1.5, 2.5)
    end
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 1.5 then
            if local1 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 2.5 then
            if local1 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 3.5 then
            if local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg1:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local0 <= 5.5 then
            if local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg1:GetRandam_Int(45, 60), true, true, -1)
            elseif local1 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
            end
        elseif local1 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg1:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg1:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg1:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
