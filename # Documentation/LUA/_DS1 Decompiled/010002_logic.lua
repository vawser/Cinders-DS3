REGISTER_LOGIC_FUNC(LOGIC_ID_Husi_Runaway10002, "husi_Runaway10002_Logic", "husi_Runaway10002_Interupt")
husi_Runaway10002_Logic = function(ai)
   local eventNo = ai:GetEventRequest()
   if eventNo == 10 then
      ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
   else
      COMMON_EasySetup3(ai)
   end
end

common_DoObjAct10001_Interupt = function(ai, goal)
end


