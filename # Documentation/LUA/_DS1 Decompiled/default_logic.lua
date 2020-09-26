REGISTER_LOGIC_FUNC(LOGIC_ID_Default, "Default_Logic", "Default_Interupt")
Default_Logic = function(ai)
   if ai:IsSearchTarget(TARGET_ENE_0) == true then
      ai:AddTopGoal(GOAL_COMMON_Normal, -1, 0, 0, 0, 0)
      return 
   end
   ai:AddTopGoal(GOAL_COMMON_WalkAround, -1, ai:GetDistParam(DIST_Far), 0, 0, 0)
   return 
end

Default_Interupt = function(ai, goal)
end


