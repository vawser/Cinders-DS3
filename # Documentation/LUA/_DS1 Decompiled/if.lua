REGISTER_GOAL(GOAL_COMMON_If, "If")
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_If, 0.5, 1)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_If, 1, "識別用コードNo", 0)
If_Activate = function(ai, goal)
   local battleId = goal:GetBattleGoalId()
   local codeNo = goal:GetParam(0)
   local funcName = "OnIf_"
   _loadstring = function(str)
      local f, err = loadstring("return function (arg) " .. str .. " end", str)
      if f then
         return f()
      else
         return f, err
      end
   end
   local f = _loadstring(funcName .. battleId .. "(arg.ai, arg.goal, arg.codeNo)")
   class = {ai = ai, goal = goal, codeNo = codeNo}
   f(class)
end

If_Update = function(ai, goal)
   if goal:GetSubGoalNum() <= 0 then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

If_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_If, true)
If_Interupt = function(ai, goal)
   return false
end


