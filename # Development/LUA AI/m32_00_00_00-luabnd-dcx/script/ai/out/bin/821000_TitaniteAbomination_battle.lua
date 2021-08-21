RegisterTableGoal(GOAL_TitaniteAbomination_821000_Battle, "GOAL_TitaniteAbomination_821000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TitaniteAbomination_821000_Battle, true)

Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg2:AddSubGoal(GOAL_DragonAngel_209000_HU_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_DragonAngel_209000_Battle, -1)
    end
    return 
end

return 
