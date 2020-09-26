REGISTER_LOGIC_FUNC(LOGIC_ID_Wataa1540, "Wataa1540_Logic", "Wataa1540_Interupt")
Wataa1540_Logic = function(ai)
   ai:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 5, POINT_AutoWalkAroundTest, AI_DIR_TYPE_CENTER, 1, TARGET_LOCALPLAYER, false)
end

Wataa1540_Interupt = function(ai, goal)
   if ai:DbgAutoRemo_IsWaitCommand() then
      goal:ClearSubGoal()
      local wait = ai:DbgAutoRemo_GetWaitCommandTime()
      ai:AddTopGoal(GOAL_COMMON_Wait, wait, TARGET_NONE, 0, 0, 0)
      ai:DbgAutoRemo_ResetWaitCommand()
      return true
   end
   return false
end


