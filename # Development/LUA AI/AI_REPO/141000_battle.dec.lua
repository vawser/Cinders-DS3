RegisterTableGoal(GOAL_Silverknight141000_SwordSwitch, "GOAL_Silverknight141000_SwordSwitch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141000_SwordSwitch, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_Silverknight141000_SwordBattle, -1)
    return 
end

return 
