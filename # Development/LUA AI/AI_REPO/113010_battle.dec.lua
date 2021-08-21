RegisterTableGoal(GOAL_DarkBloodSlug_113010_Battle, "GOAL_DarkBloodSlug_113010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkBloodSlug_113010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    _COMMON_InitEnemyAct(arg0, arg1, arg2)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    _COMMON_SetEnemyActRate(arg0, arg1, arg2, 1)
    arg0["ForceWalkDist"] = 999
    arg0["ForceRunDist"] = 999
    arg0["RunRate"] = 0
    arg0["GuardRare"] = 0
    arg0["BackStepRate"] = 0
    arg0["StepFrontRate"] = 0
    arg0["StepFrontInterval"] = 0
    arg0["IsBack"] = false
    local local0 = 100
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local3 = arg1:GetTeamOrder(ORDER_TYPE_Role)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        arg1:SetStringIndexedNumber("ActRate01", 0)
    else
        arg1:SetStringIndexedNumber("ActRate02", 0)
    end
    local local4 = _COMMON_SelectEnemyAct(arg0, arg1, arg2, TARGET_ENE_0, 0, 0)
    if local4 ~= nil then
        local0 = local4(arg0, arg1, arg2, nil)
    end
    arg0:AfterAction(arg1, arg2, local0)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

Goal["ActBase01"] = 3002
Goal.Act01 = function (arg0, arg1, arg2, arg3)
    local local0 = 3002
    arg0["ForceWalkDist"] = 0 + 0
    arg0["ForceRunDist"] = 0 + 0
    arg0["RunRate"] = 0
    arg0["GuardRare"] = 0
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_ENE_0, local0, arg0["ForceWalkDist"], arg0["ForceRunDist"], arg0["RunRate"], arg0["GuardRare"], arg0["BackStepRate"], arg0["StepFrontRate"], arg0["StepFrontInterval"], arg0["IsBack"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 20, TARGET_ENE_0, 40, local0)
    return 100
end

Goal["ActBase02"] = 1003002
Goal.Act02 = function (arg0, arg1, arg2, arg3)
    local local0 = 3002
    arg0["ForceWalkDist"] = 0 + 0
    arg0["ForceRunDist"] = 0 + 0
    arg0["RunRate"] = 0
    arg0["GuardRare"] = 0
    arg2:AddSubGoal(GOAL_EnemyBeforeAttack, 5, TARGET_ENE_0, TARGET_ENE_0, local0, arg0["ForceWalkDist"], arg0["ForceRunDist"], arg0["RunRate"], arg0["GuardRare"], arg0["BackStepRate"], arg0["StepFrontRate"], arg0["StepFrontInterval"], arg0["IsBack"])
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 20, TARGET_ENE_0, 0, local0)
    return 100
end

Goal.AfterAction = function (arg0, arg1, arg2, arg3)
    if arg3 ~= nil and arg1:GetRandam_Float(0, 100) <= arg3 then
        arg2:AddSubGoal(GOAL_EnemyAfterAttack, arg1:GetRandam_Float(2, 3.5), TARGET_ENE_0, TARGET_ENE_0, 0, 0, 5, 0, 0, 0)
    end
    return 
end

return 
