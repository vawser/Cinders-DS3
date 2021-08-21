RegisterTableGoal(GOAL_RuinCapitalKing_Battle, "GOAL_RuinCapitalKing_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_RuinCapitalKing_Battle, true)
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
    arg1:AddObserveChrDmySphere(0, TARGET_ENE_0, 103, 1.5)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideObserve(0) then
        local0[4] = 100
    else
        if 30 <= local3 then
            local0[1] = 100
            local0[6] = 50
        elseif 10 <= local3 then
            local0[1] = 100
            local0[6] = 100
        elseif 5 <= local3 then
            local0[5] = 10
            local0[6] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            local0[2] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            local0[3] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[5] = 100
            local0[2] = 30
            local0[3] = 30
        else
            local0[5] = 100
            local0[6] = 100
        end
        if arg1:GetAttackPassedTime(3006) <= 30 then
            local0[5] = 0
        else
            local0[5] = 100
        end
    end
    local1[1] = REGIST_FUNC(arg1, arg2, RuinCapitalKing_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, RuinCapitalKing_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, RuinCapitalKing_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, RuinCapitalKing_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, RuinCapitalKing_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, RuinCapitalKing_Act06)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, RuinCapitalKing_ActAfter_AdjustSpace), local2)
    return 
end

function RuinCapitalKing_Act01(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, 15.2 - arg0:GetMapHitRadius(TARGET_SELF), 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RuinCapitalKing_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RuinCapitalKing_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RuinCapitalKing_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RuinCapitalKing_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3006, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RuinCapitalKing_Act06(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, 10 - arg0:GetMapHitRadius(TARGET_SELF), 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3007, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, -1, 60, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RuinCapitalKing_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuinCapitalKing_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_RuinCapitalKing_AfterAttackAct, "GOAL_RuinCapitalKing_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuinCapitalKing_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    if local0 <= 1.5 and local2 <= 0 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 4), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(35, 60), true, true, -1)
    elseif local0 <= 3.5 and -90 <= local1 and local1 <= 90 and local2 <= 20 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(35, 60), true, true, -1)
    elseif local0 <= 6.5 and -90 <= local1 and local1 <= 90 and local2 <= 25 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(35, 60), true, true, -1)
    else
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, 0, 0, 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
