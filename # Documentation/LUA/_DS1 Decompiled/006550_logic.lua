REGISTER_LOGIC_FUNC(LOGIC_ID_TempleKnight6550, "TempleKnight6550_Logic", "TempleKnight6550_Interupt")
TempleKnight6550_Logic = function(ai)
   ai:AddTopGoal(GOAL_TempleKnight6550_Battle, -1, 0, 0, 0, 0)
end

TempleKnight6550_Interupt = function(ai, goal)
end


