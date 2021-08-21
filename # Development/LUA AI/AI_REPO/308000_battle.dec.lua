RegisterTableGoal(GOAL_BlackBatterfly_308000, "GOAL_BlackBatterfly_308000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackBatterfly_308000, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local0[1] = 30
    local0[2] = 25
    local0[3] = 15
    local0[4] = 30
    local0[5] = 0
    local0[2] = SetCoolTime(arg1, arg2, 3001, 60, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 60, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 40, local0[4], 1)
    if arg1:GetNpcThinkParamID() ~= 308000 then
        local0[4] = 0
    end
    if arg1:GetNumber(1) == 0 then
        arg1:SetNumber(1, 1)
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, BlackBatterfly_308000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlackBatterfly_308000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlackBatterfly_308000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlackBatterfly_308000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BlackBatterfly_308000_Act05)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlackBatterfly_308000_ActAfter_AdjustSpace), local2)
    return 
end

function BlackBatterfly_308000_Act01(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local0:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 15, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackBatterfly_308000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 9, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackBatterfly_308000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 20, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackBatterfly_308000_Act04(arg0, arg1, arg2)
    local local0 = {}
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 308000 then
        if arg0:GetNumber(0) == 0 then
            arg0:SetNumber(0, 1)
            arg1:AddSubGoal(GOAL_COMMON_Wait, 3, POINT_EVENT, 0, 0, 0)
            arg0:SetEventMoveTarget(3012811)
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 10, TARGET_SELF, false, -1, 0, false, AI_CALC_DIST_TYPE__XZ)
        else
            arg0:SetNumber(0, 0)
            arg1:AddSubGoal(GOAL_COMMON_Wait, 3, POINT_EVENT, 0, 0, 0)
            arg0:SetEventMoveTarget(3012810)
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 10, TARGET_SELF, false, -1, 0, false, AI_CALC_DIST_TYPE__XZ)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackBatterfly_308000_Act05(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    if arg0:GetNpcThinkParamID() == 308000 then
        arg0:SetEventMoveTarget(3012810)
        arg0:SetNumber(0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 5, TARGET_SELF, false, -1, 0, false, AI_CALC_DIST_TYPE__XZ)
    else
        arg0:SetEventMoveTarget(3012812)
        arg0:SetNumber(0, 2)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 5, TARGET_SELF, false, -1, 0, false, AI_CALC_DIST_TYPE__XZ)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackBatterfly_308000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

return 
