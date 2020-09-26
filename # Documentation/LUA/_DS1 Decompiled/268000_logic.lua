REGISTER_LOGIC_FUNC(LOGIC_ID_Ghost_Runaway268000, "Ghost_Runaway268000_Logic", "Ghost_Runaway268000_Interupt")
Ghost_Runaway268000_Logic = function(ai)
   local myThinkId = ai:GetNpcThinkParamID()
   local DoObserveRegion = 0
   local ObserveRegion01 = 0
   local ObserveRegion02 = 0
   ObserveRegion01 = 1602860
   ObserveRegion02 = 1602860
   DoObserveRegion = 1
   if DoObserveRegion == 1 then
      if not ai:IsInsideTargetRegion(TARGET_SELF, ObserveRegion01) and not ai:IsInsideTargetRegion(TARGET_SELF, ObserveRegion02) then
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 2, TARGET_SELF, false, -1)
         ai:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
      else
         COMMON_EasySetup3(ai)
      end
   else
      COMMON_EasySetup3(ai)
   end
   -- Tried to add an 'end' here but it's incorrect
end

Ghost_Runaway268000_Interupt = function(ai, goal)
end


