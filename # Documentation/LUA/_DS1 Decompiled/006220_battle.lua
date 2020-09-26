REGISTER_GOAL(GOAL_Blacksmith_Rickelt6220_Battle, "Blacksmith_Rickelt6220Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Blacksmith_Rickelt6220_Battle, 1)
Blacksmith_Rickelt6220Battle_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
end

Blacksmith_Rickelt6220Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Blacksmith_Rickelt6220Battle_Terminate = function(ai, goal)
end

Blacksmith_Rickelt6220Battle_Interupt = function(ai, goal)
   return false
end


