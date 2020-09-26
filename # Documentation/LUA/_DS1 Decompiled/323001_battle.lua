REGISTER_GOAL(GOAL_Kagerou_m17_323001_Battle, "Kagerou_m17_323001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 100
REGISTER_GOAL_NO_UPDATE(GOAL_Kagerou_m17_323001_Battle, 1)
Kagerou_m17_323001Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if targetDist <= 25 then
      goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
      if fate <= 33 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None)
      elseif fate <= 66 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, TARGET_ENE_0, DIST_None)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_None)
      end
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 100, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 10, TARGET_SELF, true)
   else
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 100, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 10, TARGET_SELF, true)
   end
end

Kagerou_m17_323001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kagerou_m17_323001Battle_Terminate = function(ai, goal)
end

Kagerou_m17_323001Battle_Interupt = function(ai, goal)
   return false
end


