REGISTER_GOAL(GOAL_Funiku320000_Battle, "Funiku320000Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Funiku320000_Battle, 1)
Funiku320000Battle_Activate = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targethprate = ai:GetHpRate(TARGET_ENE_0)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local AtkDist = 1
   ai:AddObserveRegion(1, TARGET_SELF, 1002800)
   if AtkDist <= targetDist then
      if fate <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2, 4), TARGET_NONE, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 0.8, TARGET_SELF, true, -1)
      end
   elseif fate <= 55 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 40) then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_Middle)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 40) then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_Middle)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 40) then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 40) then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle)
      else
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1.5, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 0, 15)
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
end

Funiku320000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Funiku320000Battle_Terminate = function(ai, goal)
end

Funiku320000Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideObserve(1) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
      return true
   end
   return false
end


