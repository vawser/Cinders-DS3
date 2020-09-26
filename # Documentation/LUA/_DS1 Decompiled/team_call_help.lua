REGISTER_GOAL(GOAL_COMMON_TeamCallHelp, "TeamCallHelp")
TeamCallHelp_Activate = function(ai, goal)
   local callActionId = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_CallActionId)
   local target = goal:GetParam(0)
   ai:TeamHelp_ReserveCall()
   ai:TurnTo(target)
   if ai:IsLookToTarget() == true then
      ai:SetAttackRequest(callActionId)
   end
end

TeamCallHelp_Update = function(ai, goal)
   local callActionId = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_CallActionId)
   local target = goal:GetParam(0)
   if goal:GetLife() <= 0 then
      return GOAL_RESULT_Success
   end
   if ai:IsFinishAttack() then
      return GOAL_RESULT_Success
   end
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

TeamCallHelp_Terminate = function(ai, goal)
   ai:TeamHelp_Call()
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TeamCallHelp, true)
TeamCallHelp_Interupt = function(ai, goal)
   return false
end


