REGISTER_GOAL(GOAL_KuraguSpider_Child340000_Battle, "KuraguSpider_Child340000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.2
local Att3001_Dist_min = 0
local Att3001_Dist_max = 1.5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 1.6
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.5
local Att3004_Dist_min = 0
local Att3004_Dist_max = 4.5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 4.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 3
REGISTER_GOAL_NO_UPDATE(GOAL_KuraguSpider_Child340000_Battle, 1)
KuraguSpider_Child340000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local GetWellSpace_Odds = 0
   if targetDist >= 7.7 then
      Act01Per = 5
      Act02Per = 10
      Act03Per = 80
      Act04Per = 0
      Act05Per = 5
   elseif targetDist >= 5.6 then
      Act01Per = 10
      Act02Per = 0
      Act03Per = 80
      Act04Per = 0
      Act05Per = 10
   elseif targetDist >= 2.1 then
      Act01Per = 25
      Act02Per = 50
      Act03Per = 0
      Act04Per = 0
      Act05Per = 25
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
      Act01Per = 8
      Act02Per = 14
      Act03Per = 0
      Act04Per = 70
      Act05Per = 8
   else
      Act01Per = 25
      Act02Per = 50
      Act03Per = 0
      Act04Per = 0
      Act05Per = 25
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per)
   if fateAct <= Act01Per then
      KuraguSpider_Child340000_Act01(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      KuraguSpider_Child340000_Act02(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      KuraguSpider_Child340000_Act03(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      KuraguSpider_Child340000_Act04(ai, goal)
      GetWellSpace_Odds = 0
   else
      KuraguSpider_Child340000_Act05(ai, goal)
      GetWellSpace_Odds = 100
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      KuraguSpider_Child340000_ActAfter_AdjustSpace(ai, goal, paramTbl)
   end
end

KuraguSpider_Child340000_Act01 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   if targetDist >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, Att3001_Dist_max, 0)
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3000, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_Act02 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   if targetDist >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, Att3003_Dist_max, 0)
      if fate <= 50 then
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif fate <= 50 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_Act03 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   if targetDist >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, Att3005_Dist_max, 0)
      if fate <= 50 then
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif fate <= 50 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_Act04 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_Act05 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 0
   if targetDist >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, Att3001_Dist_max, 0)
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3001, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 20 then
      if fate2 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1.8)
      elseif fate2 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 5.4)
      end
   elseif fate <= 30 then
      if fate2 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 1.8)
      elseif fate2 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 3.6)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 3.6)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5.4)
      end
   elseif fate <= 40 then
      if fate2 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 1.8)
      elseif fate2 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 3.6)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 3.6)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5.4)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

KuraguSpider_Child340000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

KuraguSpider_Child340000Battle_Terminate = function(ai, goal)
end

KuraguSpider_Child340000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local oddsResponse = 20
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


