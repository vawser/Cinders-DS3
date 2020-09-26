REGISTER_LOGIC_FUNC(LOGIC_ID_HeldKnight_laughtrec6590, "HeldKnight_laughtrec6590_Logic", "HeldKnight_laughtrec6590_Interupt")
HeldKnight_laughtrec6590_Logic = function(ai)
   ai:AddTopGoal(GOAL_HeldKnight_laughtrec6590_Battle, -1, 0, 0, 0, 0)
end

HeldKnight_laughtrec6590_Interupt = function(ai, goal)
end


