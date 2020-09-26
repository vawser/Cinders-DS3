REGISTER_LOGIC_FUNC(LOGIC_ID_PondAunt6530, "PondAunt6530_Logic", "PondAunt6530_Interupt")
PondAunt6530_Logic = function(ai)
   ai:AddTopGoal(GOAL_PondAunt6530_Battle, -1, 0, 0, 0, 0)
end

PondAunt6530_Interupt = function(ai, goal)
end


