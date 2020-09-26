RegisterTableGoal(GOAL_Mimic_212000, "GOAL_Mimic_212000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Mimic_212000, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg2:AddSubGoal(GOAL_Mimic_212000_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_MimicExorcist_212000_Battle, -1)
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

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
