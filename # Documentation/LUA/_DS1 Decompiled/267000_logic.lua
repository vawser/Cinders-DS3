REGISTER_LOGIC_FUNC(LOGIC_ID_Ghost_Runaway267000, "Ghost_Runaway267000_Logic", "Ghost_Runaway267000_Interupt")
Ghost_Runaway267000_Logic = function(ai)
   local myThinkId = ai:GetNpcThinkParamID()
   local DoObserveRegion = 0
   local ObserveRegion01 = 0
   local ObserveRegion02 = 0
   if myThinkId == 267010 or myThinkId == 267011 then
      ObserveRegion01 = 1602850
      ObserveRegion02 = 1602850
      DoObserveRegion = 1
   elseif myThinkId == 267020 or myThinkId == 267021 then
      ObserveRegion01 = 1602851
      ObserveRegion02 = 1602851
      DoObserveRegion = 1
   elseif myThinkId == 267030 or myThinkId == 267031 then
      ObserveRegion01 = 1602852
      ObserveRegion02 = 1602852
      DoObserveRegion = 1
   elseif myThinkId == 267040 or myThinkId == 267041 then
      ObserveRegion01 = 1602853
      ObserveRegion02 = 1602853
      DoObserveRegion = 1
   elseif myThinkId == 267050 then
      ObserveRegion01 = 1602854
      ObserveRegion02 = 1602854
      DoObserveRegion = 1
   end
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

Ghost_Runaway267000_Interupt = function(ai, goal)
end


