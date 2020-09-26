REGISTER_GOAL(GOAL_BigCrow351000_Battle, "BigCrow351000Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_BigCrow351000_Battle, 1)
BigCrow351000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if fate <= 33 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Int(30, 100), TARGET_NONE, 0, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_SELF, DIST_None)
   elseif fate <= 66 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Int(30, 100), TARGET_NONE, 0, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_SELF, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Int(30, 100), TARGET_NONE, 0, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_SELF, DIST_None)
   end
end

BigCrow351000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BigCrow351000Battle_Terminate = function(ai, goal)
end

BigCrow351000Battle_Interupt = function(ai, goal)
   return false
end


