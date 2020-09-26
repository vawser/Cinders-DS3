REGISTER_GOAL(GOAL_COMMON_KeepDistYAxis, "KeepDistYAxis")
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_KeepDistYAxis, 0.5, 0.6)
KeepDistYAxis_Activate = function(ai, goal)
   goal:SetNumber(0, 0)
   local turnTarget = goal:GetParam(3)
   ai:TurnTo(turnTarget)
   local moveTarget = goal:GetParam(0)
   local distYFromTarget = ai:GetDistYSigned(moveTarget)
   local rangeMin = goal:GetParam(1)
   local rangeMax = goal:GetParam(2)
   if rangeMin <= -distYFromTarget and -distYFromTarget <= rangeMax then
      goal:SetNumber(0, 2)
   end
end

KeepDistYAxis_Update = function(ai, goal)
   if goal:GetNumber(0) == 2 then
      return GOAL_RESULT_Success
   end
   local turnTarget = goal:GetParam(3)
   ai:TurnTo(turnTarget)
   local moveTarget = goal:GetParam(0)
   local distYFromTarget = ai:GetDistYSigned(moveTarget)
   local rangeMin = goal:GetParam(1)
   local rangeMax = goal:GetParam(2)
   if rangeMin <= -distYFromTarget and -distYFromTarget <= rangeMax then
      goal:SetNumber(0, 1)
   end
   if ai:IsStartAttack() == false or ai:IsEnableCancelMove() then
      if goal:GetNumber(0) ~= 0 then
         goal:SetNumber(0, 0)
         return GOAL_RESULT_Success
      elseif -distYFromTarget < rangeMin then
         ai:SetAttackRequest(705)
      elseif rangeMax < -distYFromTarget then
         ai:SetAttackRequest(706)
      end
   end
   return GOAL_RESULT_Continue
end

KeepDistYAxis_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_KeepDistYAxis, true)
KeepDistYAxis_Interupt = function(ai, goal)
   return false
end


