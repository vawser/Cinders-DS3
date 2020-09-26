REGISTER_GOAL(GOAL_COMMON_ApproachTarget, "ApproachTarget")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 0, "ˆÚ“®‘ÎÛ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 1, "“ž’B”»’è‹——£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 2, "ù‰ñ‘ÎÛ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 3, "•à‚­?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 4, "ƒK[ƒhEzState”Ô†", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTarget, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachTarget, true)
ApproachTarget_Activate = function(ai, goal)
   local life_time = goal:GetLife()
   local targetType = goal:GetParam(0)
   local range = goal:GetParam(1)
   local turnTarget = goal:GetParam(2)
   local bWalk = goal:GetParam(3)
   local guardActionId = goal:GetParam(4)
   local moveTargetType = AI_DIR_TYPE_CENTER
   local distDir = 0
   local resultTypeIfGuardSuccess = goal:GetParam(5)
   local isLifeSuccessGuard = goal:GetParam(6)
   goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life_time, targetType, moveTargetType, range, turnTarget, bWalk, moveTargetType, distDir)
   if guardActionId > 0 then
      local targetDist = ai:GetDist(targetType)
      if range < targetDist then
         ai:DoEzAction(life_time, guardActionId)
      end
   end
end

ApproachTarget_Update = function(ai, goal, dT)
   local guardActionId = goal:GetParam(4)
   if guardActionId > 0 then
      if ai:IsInterupt(INTERUPT_Damaged) then
         return GOAL_RESULT_Failed
      elseif ai:IsInterupt(INTERUPT_SuccessGuard) then
         local resultTypeIfGuardSuccess = goal:GetParam(5)
         if resultTypeIfGuardSuccess ~= GOAL_RESULT_Continue then
            return resultTypeIfGuardSuccess
         end
      end
   end
   if goal:GetLife() <= 0 then
      local isLifeSuccessGuard = goal:GetParam(6)
      if isLifeSuccessGuard then
         return GOAL_RESULT_Success
      else
         return GOAL_RESULT_Failed
      end
   end
   return GOAL_RESULT_Continue
end

ApproachTarget_Terminate = function(ai, goal)
end

ApproachTarget_Interupt = function(ai, goal)
   return false
end


