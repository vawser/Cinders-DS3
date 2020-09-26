REGISTER_GOAL(GOAL_Hakaoh522000_Battle, "Hakaoh522000Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Hakaoh522000_Battle, 1)
Hakaoh522000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local Att3000_Dist_min = 4
   local Att3000_Dist_max = 6
   local Att3001_Dist_min = 2
   local Att3001_Dist_max = 5
   local Att3002_Dist_min = 2
   local Att3002_Dist_max = 7
   local Att3003_Dist_min = 4
   local Att3003_Dist_max = 7
   local Att3004_Dist_min = 3
   local Att3004_Dist_max = 9.3
   local Att3005_Dist_min = 4
   local Att3005_Dist_max = 5
   local Att3006_Dist_min = -4
   local Att3006_Dist_max = 20
   local Att3007_Dist_min = -4
   local Att3007_Dist_max = 3
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   if targetDist >= 10 then
      Act01Per = 10
      Act02Per = 5
      Act03Per = 20
      Act04Per = 20
      Act05Per = 5
      Act06Per = 5
      Act07Per = 35
      Act08Per = 0
   elseif targetDist >= 6 then
      Act01Per = 10
      Act02Per = 5
      Act03Per = 5
      Act04Per = 20
      Act05Per = 20
      Act06Per = 20
      Act07Per = 20
      Act08Per = 0
   elseif targetDist >= 3.5 then
      Act01Per = 10
      Act02Per = 25
      Act03Per = 25
      Act04Per = 10
      Act05Per = 10
      Act06Per = 10
      Act07Per = 10
      Act08Per = 0
   else
      Act01Per = 0
      Act02Per = 20
      Act03Per = 20
      Act04Per = 10
      Act05Per = 0
      Act06Per = 0
      Act07Per = 0
      Act08Per = 50
   end
   if fate2 <= Act01Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate2 <= Act01Per + Act02Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3001_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3004_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3005_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      local AppDist = Att3006_Dist_max
      local DashDist = Att3006_Dist_max + 2
      local Odds_Guard = 0
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   else
      local AppDist = Att3007_Dist_max
      local DashDist = Att3007_Dist_max + 2
      local Odds_Guard = 0
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   end
   Hakaoh522000Battle_Kougeki_Noato(ai, goal)
end

Hakaoh522000Battle_Kougeki_Noato = function(ai, goal)
   local KN_fate = ai:GetRandam_Int(1, 100)
   local KN_fate2 = ai:GetRandam_Int(1, 100)
   if KN_fate <= 70 then
   elseif KN_fate <= 100 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   elseif KN_fate <= 100 then
      if KN_fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   else
   end
end

Hakaoh522000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hakaoh522000Battle_Terminate = function(ai, goal)
end

Hakaoh522000Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   return false
end


