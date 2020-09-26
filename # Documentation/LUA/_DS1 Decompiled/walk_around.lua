REGISTER_GOAL(GOAL_COMMON_WalkAround, "WalkAround")
WalkAround_Activate = function(ai, goal)
   local attackDist = goal:GetParam(0)
   local turnDir = ai:GetRandam_Int(0, 1)
   local dist = 1.5
   local walk = 1
   local life = 10
   if turnDir == 0 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, POINT_INITIAL, AI_DIR_TYPE_F, dist, TARGET_SELF, walk)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, POINT_INITIAL, AI_DIR_TYPE_R, dist, TARGET_SELF, walk)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, POINT_INITIAL, AI_DIR_TYPE_B, dist, TARGET_SELF, walk)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, POINT_INITIAL, AI_DIR_TYPE_L, dist, TARGET_SELF, walk)
   else
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, POINT_INITIAL, AI_DIR_TYPE_B, dist, TARGET_SELF, walk)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, POINT_INITIAL, AI_DIR_TYPE_L, dist, TARGET_SELF, walk)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, POINT_INITIAL, AI_DIR_TYPE_F, dist, TARGET_SELF, walk)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, POINT_INITIAL, AI_DIR_TYPE_R, dist, TARGET_SELF, walk)
   end
end

WalkAround_Update = function(ai, goal)
   local attackDist = goal:GetParam(0)
   if ai:IsSearchTarget(TARGET_ENE_0) == true and ai:GetDist(TARGET_ENE_0) < attackDist then
      return GOAL_RESULT_Failed
   end
   return GOAL_RESULT_Continue
end

WalkAround_Terminate = function(ai, goal)
end

WalkAround_Interupt = function(ai, goal)
   return false
end


