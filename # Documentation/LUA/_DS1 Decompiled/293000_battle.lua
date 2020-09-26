REGISTER_GOAL(GOAL_Syarin293000_Battle, "Syarin293000Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Syarin293000_Battle, 1)
Syarin293000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistY(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, 2, 0)
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_SELF, DIST_None)
   elseif targetDist >= 5 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 75 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 3)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1.5, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
      end
   end
end

Syarin293000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Syarin293000Battle_Terminate = function(ai, goal)
end

Syarin293000Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_ChangedAnimIdOffset) then
      return true
   end
   return false
end


