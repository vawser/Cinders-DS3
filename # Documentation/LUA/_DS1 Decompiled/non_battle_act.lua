REGISTER_GOAL(GOAL_COMMON_NonBattleAct, "NonBattleAct")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 0, "“G‚É”½‰ž‚·‚é‹——£ymz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 1, "“G‚¢‚½‚çI—¹H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 2, "‘–‚éH", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 3, "ù‰ñyTYPEz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 4, "‘ƒ‚Ì“ž’…‹——£ymz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 5, "‘Ò‹@ŽžƒS[ƒ‹", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_NonBattleAct, 0.1, 0.2)
NonBattleAct_Activate = function(ai, goal)
   local movePointNo = ai:GetMovePointNumber()
   if movePointNo >= 0 then
      local isWalk = goal:GetParam(2)
      if isWalk == 0 then
         isWalk = true
      else
         isWalk = false
      end
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, isWalk)
   else
      local pointDist = ai:GetMovePointEffectRange()
      local turn_tgt = goal:GetParam(3)
      local arrive_dist = goal:GetParam(4)
      if arrive_dist == 0 then
         arrive_dist = 5
      end
      if arrive_dist < pointDist then
         local isEnableForceBattleGoal = goal:GetParam(6)
         goal:AddSubGoal(GOAL_COMMON_BackToHome, goal:GetLife(), 0, isEnableForceBattleGoal, 0, 0)
      elseif goal:IsExistParam(5) then
         local wait_goalID = goal:GetParam(5)
         if wait_goalID > 0 then
            goal:AddSubGoal(wait_goalID, goal:GetLife())
         else
            goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, turn_tgt)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, turn_tgt)
      end
      -- Tried to add an 'end' here but it's incorrect
   end
end

NonBattleAct_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

NonBattleAct_Terminate = function(ai, goal)
end

NonBattleAct_Interupt = function(ai, goal)
   local isDamaged = false
   if not isDamaged then
      isDamaged = ai:IsInterupt(INTERUPT_Damaged_Stranger)
   end
   if not isDamaged then
      isDamaged = ai:IsInterupt(INTERUPT_Damaged)
   end
   if isDamaged then
      goal:SetTimer(1, 99999)
      return true
   end
   return false
end


