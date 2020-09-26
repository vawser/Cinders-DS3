REGISTER_LOGIC_FUNC(LOGIC_ID_Nanimosinai11000, "Nanimosinai11000_Logic", "Nanimosinai11000_Interupt")
Nanimosinai11000_Logic = function(ai)
   ai:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
end

Nanimosinai11000_Interupt = function(ai, goal)
end


