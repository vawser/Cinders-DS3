REGISTER_LOGIC_FUNC(LOGIC_ID_HusibitoKojiki251000, "HusibitoKojiki251000_Logic", "HusibitoKojiki251000_Interupt")
HusibitoKojiki251000_Logic = function(ai)
   local eventNo = ai:GetEventRequest(0)
   if eventNo == 1 then
      ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 0, TARGET_SELF, false, -1)
   else
      COMMON_EasySetup3(ai)
   end
end

HusibitoKojiki251000_Interupt = function(ai, goal)
end


