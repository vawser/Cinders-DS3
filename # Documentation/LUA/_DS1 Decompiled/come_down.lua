REGISTER_GOAL(GOAL_COMMON_ComeDown, "ComeDown")
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ComeDown, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComeDown, true)
ComeDown_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, goal:GetLife(), 9510, TARGET_NONE, DIST_None)
end

ComeDown_Update = function(ai, goal)
   ai:SetNumber(0, 0)
   local goalDistY = goal:GetParam(0)
   if ai:IsLanding() then
      return GOAL_RESULT_Failed
   end
   local resultSubGoal = goal:GetLastSubGoalResult()
   if resultSubGoal == GOAL_RESULT_Success or resultSubGoal == GOAL_RESULT_Failed then
      local distY = ai:GetDistY(TARGET_ENE_0)
      if distY < goalDistY then
         goal:AddSubGoal(GOAL_COMMON_Attack, goal:GetLife(), 9510, TARGET_NONE, DIST_None)
      end
   end
   local distY = ai:GetDistY(TARGET_ENE_0)
   if distY <= goalDistY then
      ai:SetNumber(0, 1)
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

ComeDown_Terminate = function(ai, goal)
end

ComeDown_Interupt = function(ai, goal)
   return false
end


