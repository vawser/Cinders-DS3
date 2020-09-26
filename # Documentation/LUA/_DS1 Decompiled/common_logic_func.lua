_COMMON_AddCautionAndFindGoal = function(ai, life_time)
   local NPC_THINK_GOAL_ACTION__NONE = 0
   local NPC_THINK_GOAL_ACTION__TURN_TO_TGT = 1
   local NPC_THINK_GOAL_ACTION__WALK_TO_TGT = 2
   local NPC_THINK_GOAL_ACTION__RUN_TO_TGT = 3
   local NPC_THINK_GOAL_ACTION__SET_GOAL = 4
   local NPC_THINK_GOAL_ACTION__LEAVE_TO_TGT = 5
   local idAction = ai:GetReplanningGoalAction()
   if idAction == NPC_THINK_GOAL_ACTION__TURN_TO_TGT then
      ai:AddTopGoal(GOAL_COMMON_Stay, life_time, 0, TARGET_ENE_0)
   elseif idAction == NPC_THINK_GOAL_ACTION__WALK_TO_TGT then
      local targetDist = ai:GetDist(TARGET_ENE_0)
      if targetDist > 3 then
         ai:AddTopGoal(GOAL_COMMON_MoveToSomewhere, life_time, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
      else
         ai:AddTopGoal(GOAL_COMMON_Stay, life_time, 0, TARGET_ENE_0)
      end
   elseif idAction == NPC_THINK_GOAL_ACTION__RUN_TO_TGT then
      local targetDist = ai:GetDist(TARGET_ENE_0)
      if targetDist > 3 then
         ai:AddTopGoal(GOAL_COMMON_MoveToSomewhere, life_time, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         ai:AddTopGoal(GOAL_COMMON_Stay, life_time, 0, TARGET_ENE_0)
      end
   elseif idAction == NPC_THINK_GOAL_ACTION__LEAVE_TO_TGT then
      local targetDist = ai:GetDist(TARGET_ENE_0)
      if targetDist >= 13 then
         ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
      elseif targetDist >= 8 then
         ai:AddTopGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
      else
         ai:AddTopGoal(GOAL_COMMON_LeaveTarget, life_time, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
      end
   elseif idAction == NPC_THINK_GOAL_ACTION__SET_GOAL then
      local idGoal = ai:GetReplanningGoalID()
      ai:AddTopGoal(idGoal, life_time)
   elseif not ai:HasTopSubgoal() then
      local life = -1
      local searchDist = -1
      local isExitWhenFindEnemy = false
      local isRunWhenNonBattle = false
      local arriveDistToBackHome = 0
      ai:AddTopGoal(GOAL_COMMON_NonBattleAct, life, searchDist, isExitWhenFindEnemy, isRunWhenNonBattle, POINT_INIT_POSE, arriveDistToBackHome, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

_COMMON_AddBattleGoal = function(ai)
   local battleGoalId = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
   if ai:IsChangeState() and ai:IsBattleState() and ai:TeamHelp_IsValidCall() then
      ai:AddTopGoal(GOAL_COMMON_TeamCallHelp, 10, TARGET_SELF)
      do break end
      if ai:IsCautionState() then
      elseif ai:TeamHelp_IsValidCall() then
         ai:AddTopGoal(GOAL_COMMON_TeamCallHelp, 10, TARGET_SELF)
      end
   end
   if ai:IsBattleState() then
      ai:ReqPlatoonState(PLATOON_STATE_Battle)
      ai:AddTopGoal(battleGoalId, -1)
   elseif ai:IsCautionState() then
      ai:ReqPlatoonState(PLATOON_STATE_Caution)
      _COMMON_AddCautionAndFindGoal(ai, -1)
   else
      ai:ReqPlatoonState(PLATOON_STATE_Find)
      _COMMON_AddCautionAndFindGoal(ai, -1)
   end
end

_COMMON_SetBattleActLogic = function(ai, funcBattle, funcNonBattle)
   local maxBackhomeDist = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist)
   local backhomeDist = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeDist)
   local backhomeBattleDist = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
   local nonBattleActLife = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__nonBattleActLife)
   if ai:TeamHelp_IsValidReply() then
      local behaviorTime = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ForgetTimeByArrival)
      ai:AddTopGoal(GOAL_COMMON_TeamReplyHelp, behaviorTime)
      return true
   elseif ai:IsForceBattleGoal() then
      ai:ClearForceBattleGoal()
      ai:ReqPlatoonState(PLATOON_STATE_Battle)
      funcBattle()
   else
      local isFindTarget = ai:IsSearchTarget(TARGET_ENE_0)
      if isFindTarget == true then
         local pointDist = ai:GetMovePointEffectRange()
         local targetDist = ai:GetDist(TARGET_ENE_0)
         if maxBackhomeDist < pointDist then
            funcNonBattle(nonBattleActLife, -1, false, false)
            return true
         elseif backhomeDist < pointDist then
            if targetDist < backhomeBattleDist then
               ai:ReqPlatoonState(PLATOON_STATE_Battle)
               funcBattle()
               return true
            else
               funcNonBattle(nonBattleActLife, backhomeBattleDist, false, true)
               return true
            end
         elseif targetDist < backhomeDist then
            funcBattle()
            return true
         else
            funcNonBattle(nonBattleActLife, backhomeDist, false, false)
            return true
         end
      else
         funcNonBattle(-1, -1, true, false)
         return true
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   return false
end

_COMMON_AddNonBattleGoal = function(ai, life, search_dist, isFoundTarget, runNonBattle, nonBattleBackhomeDist, isEnableForceBattleGoal)
   ai:TeamHelp_ValidateCall()
   ai:TeamHelp_ValidateReply()
   ai:AddTopGoal(GOAL_COMMON_NonBattleAct, life, search_dist, false, runNonBattle, POINT_INIT_POSE, nonBattleBackhomeDist, 0, isEnableForceBattleGoal)
end

_COMMON_EasySetup = function(ai, isRunNonBattle, nonBattleBackhomeDist)
   local battleGoalId = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
   local bSet = _COMMON_SetBattleActLogic(ai, function()
      _COMMON_AddBattleGoal(ai)
   end, function(life, search_dist, isFoundTarget, isEnableForceBattleGoal)
      _COMMON_AddNonBattleGoal(ai, life, search_dist, isFoundTarget, isRunNonBattle, nonBattleBackhomeDist, isEnableForceBattleGoal)
   end)
   if bSet == false then
      ai:AddTopGoal(GOAL_COMMON_NonBattleAct, -1, -1, true, 0, 0, POINT_INIT_POSE, 0)
   end
end

COMMON_EasySetup3 = function(ai)
   _COMMON_EasySetup(ai, false, 0)
end

COMMON_EzSetup = function(ai)
   _COMMON_EasySetup(ai, false, 0)
end


