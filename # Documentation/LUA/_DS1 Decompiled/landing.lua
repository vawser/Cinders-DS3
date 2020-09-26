REGISTER_GOAL(GOAL_COMMON_LiftOff, "LiftOff")
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LiftOff, true)
LiftOff_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 9520, TARGET_NONE, DIST_None)
end

LiftOff_Update = function(ai, goal)
   local goalDistY = 5
   local curDistY = ai:GetDistY(TARGET_ENE_0)
   local resultSubGoal = goal:GetLastSubGoalResult()
   if (resultSubGoal == GOAL_RESULT_Success or resultSubGoal == GOAL_RESULT_Failed) and (ai:IsLanding() or curDistY < goalDistY) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 9520, TARGET_NONE, DIST_None)
   end
   local isLanding = ai:IsLanding()
   if not isLanding and goalDistY <= curDistY then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

LiftOff_Terminate = function(ai, goal)
end

LiftOff_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL(GOAL_COMMON_Landing, "Landing")
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_Landing, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing, true)
Landing_Activate = function(ai, goal)
   local landingPoint = goal:GetParam(0)
   ai:SetAIFixedMoveTarget(landingPoint, TARGET_SELF, 0)
   local successRange = goal:GetParam(1)
   goal:AddSubGoal(GOAL_COMMON_Landing_Move, 10, successRange)
   if ai:GetDistYSigned(TARGET_ENE_0) > 0 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_AI_FIXED_POS, 0.1, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Landing_Landing, 10)
   end
end

Landing_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Landing_Terminate = function(ai, goal)
end

Landing_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL(GOAL_COMMON_Landing_Move, "Landing_Move")
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Landing_Move, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing_Move, true)
Landing_Move_Activate = function(ai, goal)
   local successRange = goal:GetParam(0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_AI_FIXED_POS, successRange, TARGET_SELF, false, -1)
end

Landing_Move_Update = function(ai, goal)
   local distXZ = ai:GetDistXZ(POINT_AI_FIXED_POS)
   if distXZ < 1 then
      return GOAL_RESULT_Success
   end
   if ai:IsLanding() then
      return GOAL_RESULT_Failed
   end
   return GOAL_RESULT_Continue
end

Landing_Move_Terminate = function(ai, goal)
end

Landing_Move_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL(GOAL_COMMON_Landing_Landing, "Landing_Landing")
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Landing_Landing, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing_Landing, true)
Landing_Landing_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, goal:GetLife(), 9510, TARGET_NONE, DIST_None)
end

Landing_Landing_Update = function(ai, goal)
   if ai:IsLanding() then
      local cnt = goal:GetNumber(0)
      if cnt > 10 then
         return GOAL_RESULT_Success
      else
         cnt = cnt + 1
         goal:SetNumber(0, cnt)
      end
   end
   local resultSubGoal = goal:GetLastSubGoalResult()
   if (resultSubGoal == GOAL_RESULT_Success or resultSubGoal == GOAL_RESULT_Failed) and not ai:IsLanding() then
      goal:AddSubGoal(GOAL_COMMON_Attack, goal:GetLife(), 9510, TARGET_NONE, DIST_None)
   end
   if ai:GetDistYSigned(POINT_AI_FIXED_POS) > 1 then
      ai:PrintText("[Landing_Landing_Update]ターゲットより高さが下になりました。失敗を返します。")
      return GOAL_RESULT_Failed
   end
   return GOAL_RESULT_Continue
end

Landing_Landing_Terminate = function(ai, goal)
end

Landing_Landing_Interupt = function(ai, goal)
   return false
end


