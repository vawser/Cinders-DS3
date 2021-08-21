RegisterTableGoal(GOAL_SkeletonKing_516000_Battle, "SkeletonKing")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SkeletonKing_516000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg2:AddSubGoal(GOAL_SkeletonKing_516000_HeatUp_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_SkeletonKing_516000_Default_Battle, -1)
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
