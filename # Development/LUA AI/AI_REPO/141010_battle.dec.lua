RegisterTableGoal(GOAL_Silverknight141010_spearSwitch, "GOAL_Silverknight141010_spearSwitch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141010_spearSwitch, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_Silverknight141010_spearBattle, -1)
    return 
end

return 
