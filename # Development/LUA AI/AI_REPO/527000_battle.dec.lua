RegisterTableGoal(GOAL_PursuitHeroine527000_Switch, "PursuitHeroineSwitch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PursuitHeroine527000_Switch, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg2:AddSubGoal(GOAL_PursuitHeroine527000_HU_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_PursuitHeroine527000_Battle, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
