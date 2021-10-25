RegisterTableGoal(GOAL_Corrupted_Gundyr_60000_Switch, "GOAL_Corrupted_Gundyr_60000_Switch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Corrupted_Gundyr_60000_Switch, true)

Goal.Initialize = function (self, ai, goal)
    return 
end

Goal.Activate = function (self, ai, goal)
    -- Has Animation offset 1, switch to HU moveset
    if ai:HasSpecialEffectId(TARGET_SELF, 5404) then
        goal:AddSubGoal(GOAL_Corrupted_Gundyr_60000_HU_Battle, -1)
    else
        goal:AddSubGoal(GOAL_Corrupted_Gundyr_60000_Battle, -1)
    end
    
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

return 
