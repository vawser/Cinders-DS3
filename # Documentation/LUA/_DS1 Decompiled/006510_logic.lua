REGISTER_LOGIC_FUNC(LOGIC_ID_BlackIron_Knight6510, "BlackIron_Knight6510_Logic", "BlackIron_Knight6510_Interupt")
BlackIron_Knight6510_Logic = function(ai)
   ai:AddTopGoal(GOAL_BlackIron_Knight6510_Battle, -1, 0, 0, 0, 0)
end

BlackIron_Knight6510_Interupt = function(ai, goal)
end


