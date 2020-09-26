REGISTER_GOAL(GOAL_Nanimosinai11000_Battle, "Nanimosinai11000Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Nanimosinai11000_Battle, 1)
Nanimosinai11000Battle_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
end

Nanimosinai11000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Nanimosinai11000Battle_Terminate = function(ai, goal)
end

Nanimosinai11000Battle_Interupt = function(ai, goal)
   return false
end


