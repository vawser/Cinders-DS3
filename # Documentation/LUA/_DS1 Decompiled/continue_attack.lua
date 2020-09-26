REGISTER_GOAL(GOAL_COMMON_ContinueAttack, "ContinueAttack")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 0, "EzStateî‘çÜ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 1, "çUåÇëŒè€ÅyTypeÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 2, "ê¨å˜ãóó£ÅyÇçÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 3, "ñΩíÜÇµÇΩÇÁê¨å˜ÅH", 0)
ContinueAttack_Activate = function(ai, goal)
   local behaviorNo = goal:GetParam(0)
   local target = goal:GetParam(1)
   ai:TurnTo(target)
   ai:SetAttackRequest(behaviorNo)
   goal:AddGoalScopedTeamRecord(COORDINATE_TYPE_Attack, target, 0)
end

ContinueAttack_Update = function(ai, goal)
   local behaviorNo = goal:GetParam(0)
   local target = goal:GetParam(1)
   local distType = goal:GetParam(2)
   local successType = goal:GetParam(3)
   local targetDist = ai:GetDist(target)
   if distType <= targetDist then
      return GOAL_RESULT_Failed
   elseif goal:GetLife() <= 0 then
      return GOAL_RESULT_Success
   elseif successType == true and ai:IsHitAttack() == true then
      return GOAL_RESULT_Success
   end
   ai:TurnTo(target)
   ai:SetAttackRequest(behaviorNo)
   return GOAL_RESULT_Continue
end

ContinueAttack_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ContinueAttack, true)
ContinueAttack_Interupt = function(ai, goal)
   return false
end


