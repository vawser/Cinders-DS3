REGISTER_GOAL(GOAL_DraZonbiLegs342100_Battle, "DraZonbiLegs342100Battle")
local Att3000_Dist_min = 7
local Att3000_Dist_max = 12
local Att3002_Dist_min = 0
local Att3002_Dist_max = 5
local Att3003_Dist_min = -5
local Att3003_Dist_max = 0.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 3.8
local Att3007_Dist_min = 8
local Att3007_Dist_max = 16
REGISTER_GOAL_NO_UPDATE(GOAL_DraZonbiLegs342100_Battle, 1)
DraZonbiLegs342100Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local Act00Per = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   local Act09Per = 0
   local GetWellSpace_Odds = 100
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 2.7)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 4, 2.7)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 50) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and fate <= 75 and targetDist <= 7 then
      Act01Per = 100
   elseif (fate <= 80 and ai:IsInsideObserve(0)) or ai:IsInsideObserve(1) then
      Act02Per = 50
      Act05Per = 50
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 85) and fate <= 75 and targetDist <= 2.5 and targetDist >= 0.1 then
      Act03Per = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 60) and fate <= 80 and targetDist <= 2.3 and targetDist >= 0.1 then
      Act04Per = 100
   elseif targetDist >= 10 then
      Act00Per = 25
      Act02Per = 0
      Act05Per = 0
      Act06Per = 60
      Act07Per = 10
      Act08Per = 5
      Act09Per = 0
   elseif targetDist >= 7 then
      Act00Per = 55
      Act02Per = 0
      Act05Per = 0
      Act06Per = 0
      Act07Per = 30
      Act08Per = 10
      Act09Per = 5
   elseif targetDist >= 4 then
      Act00Per = 5
      Act02Per = 0
      Act05Per = 0
      Act06Per = 0
      Act07Per = 50
      Act08Per = 25
      Act09Per = 20
   else
      Act00Per = 0
      Act02Per = 0
      Act05Per = 40
      Act06Per = 0
      Act07Per = 15
      Act08Per = 30
      Act09Per = 15
   end
   local fateAct = ai:GetRandam_Int(1, Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per)
   if fateAct <= Act00Per then
      DraZonbiLegs342100_Act00(ai, goal)
   elseif fateAct <= Act00Per + Act01Per then
      DraZonbiLegs342100_Act01(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per then
      DraZonbiLegs342100_Act02(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per then
      DraZonbiLegs342100_Act03(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per then
      DraZonbiLegs342100_Act04(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      DraZonbiLegs342100_Act05(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      DraZonbiLegs342100_Act06(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      DraZonbiLegs342100_Act07(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      DraZonbiLegs342100_Act08(ai, goal)
   else
      DraZonbiLegs342100_Act09(ai, goal)
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds and fateGWS <= GetWellSpace_Odds then
      DraZonbiLegs342100_GetWellSpace_Act(ai, goal)
   end
end

DraZonbiLegs342100_Act00 = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act01 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act04 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act06 = function(ai, goal)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3007, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act07 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act08 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3003, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act09 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_GetWellSpace_Act = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local waittime = ai:GetRandam_Int(2, 3)
   if fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, waittime, TARGET_SELF, 0, 0, 0)
   end
end

DraZonbiLegs342100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DraZonbiLegs342100Battle_Terminate = function(ai, goal)
end

DraZonbiLegs342100Battle_Interupt = function(ai, goal)
   return false
end


