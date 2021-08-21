RegisterTableGoal(GOAL_GreaterDemon_520000_Battle, "GOAL_GreaterDemon_520000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GreaterDemon_520000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5400) then
        arg2:AddSubGoal(GOAL_COMMON_ExecAction, -1, 1500)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg2:AddSubGoal(GOAL_GreaterDemon_HU_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_GreaterDemon_Battle, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

return 
