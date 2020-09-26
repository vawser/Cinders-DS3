REGISTER_GOAL(GOAL_COMMON_TeamReplyHelp, "TeamReplyHelp")
TeamReplyHelp_Activate = function(ai, goal)
   local minWaitTime = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_MinWaitTime)
   local maxWaitTime = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_MaxWaitTime)
   local waitTime = ai:GetRandam_Float(minWaitTime, maxWaitTime)
   goal:AddSubGoal(GOAL_COMMON_Wait, waitTime, TARGET_SELF)
   ai:TeamHelp_Reply()
   local replyAnimId = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ReplyActionId)
   if replyAnimId ~= -1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, goal:GetLife(), replyAnimId, TARGET_FRI_0, DIST_None)
   end
   local BEHAVIOR_TYPE_Walk = 0
   local BEHAVIOR_TYPE_Run = 1
   local BEHAVIOR_TYPE_WalkWithHome = 2
   local BEHAVIOR_TYPE_RunWithHome = 3
   local BEHAVIOR_TYPE_FreeRun = 4
   local BEHAVIOR_TYPE_FreeRunWithHome = 5
   local BEHAVIOR_TYPE_WalkPos = 6
   local BEHAVIOR_TYPE_RunPos = 7
   local behaviorType = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ReplyBehaviorType)
   if behaviorType == BEHAVIOR_TYPE_Walk then
      local targetDist = ai:GetDist(TARGET_FRI_0)
      if targetDist > 3 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, TARGET_FRI_0)
      end
   elseif behaviorType == BEHAVIOR_TYPE_Run then
      local targetDist = ai:GetDist(TARGET_FRI_0)
      if targetDist > 3 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, TARGET_FRI_0)
      end
   elseif behaviorType == BEHAVIOR_TYPE_WalkWithHome then
      local targetDist = ai:GetDist(TARGET_FRI_0)
      if targetDist > 3 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, TARGET_FRI_0)
      end
   elseif behaviorType == BEHAVIOR_TYPE_RunWithHome then
      local targetDist = ai:GetDist(TARGET_FRI_0)
      if targetDist > 3 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, TARGET_FRI_0)
      end
   elseif behaviorType == BEHAVIOR_TYPE_FreeRun then
   elseif behaviorType == BEHAVIOR_TYPE_FreeRunWithHome then
   elseif behaviorType == BEHAVIOR_TYPE_WalkPos then
      local targetDist = ai:GetDist(POINT_AI_FIXED_POS)
      if targetDist > 2 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), POINT_AI_FIXED_POS, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, POINT_AI_FIXED_POS)
      end
   elseif behaviorType == BEHAVIOR_TYPE_RunPos then
      local targetDist = ai:GetDist(POINT_AI_FIXED_POS)
      if targetDist > 2 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), POINT_AI_FIXED_POS, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, POINT_AI_FIXED_POS)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_TeamReplyHelp, 1)
TeamReplyHelp_Update = function(ai, goal)
end

TeamReplyHelp_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TeamReplyHelp, true)
TeamReplyHelp_Interupt = function(ai, goal)
   return false
end


