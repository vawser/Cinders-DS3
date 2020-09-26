REGISTER_LOGIC_FUNC(LOGIC_ID_SunKnight6540, "sunKnight6540_Logic", "sunKnight6540_Interupt")
sunKnight6540_Logic = function(ai)
   ai:AddTopGoal(GOAL_SunKnight6540_Battle, -1, 0, 0, 0, 0)
end

sunKnight6540_Interupt = function(ai, goal)
end


