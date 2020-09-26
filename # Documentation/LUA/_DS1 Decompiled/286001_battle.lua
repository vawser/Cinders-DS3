REGISTER_GOAL(GOAL_Giant_nt286001_Battle, "Giant_nt286001Battle")
local Att3000_Dist_min = 0.2
local Att3000_Dist_max = 2.7
local Att3001_Dist_min = -1.3
local Att3001_Dist_max = 1
local Att3002_Dist_min = -1.3
local Att3002_Dist_max = 0.9
local Att3003_Dist_min = 0
local Att3003_Dist_max = 3.1
local Att3004_Dist_min = 0
local Att3004_Dist_max = 2.7
local Att3005_Dist_min = 0
local Att3005_Dist_max = 1.5
local Att3006_Dist_min = 4.5
local Att3006_Dist_max = 6.7
local Att3007_Dist_min = 0
local Att3007_Dist_max = 100
REGISTER_GOAL_NO_UPDATE(GOAL_Giant_nt286001_Battle, 1)
Giant_nt286001Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   local Act09Per = 0
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 4, 2)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1502720) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1502720) then
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
         Act01Per = 5
         Act02Per = 15
         Act03Per = 15
         Act04Per = 0
         Act05Per = 5
         Act06Per = 50
         Act07Per = 10
      elseif targetDist >= 25 then
         Act08Per = 100
      elseif targetDist >= 18 then
         Act09Per = 100
      elseif targetDist >= 4 then
         Act01Per = 15
         Act02Per = 10
         Act03Per = 10
         Act04Per = 20
         Act05Per = 15
         Act06Per = 0
         Act07Per = 20
      else
         Act01Per = 15
         Act02Per = 15
         Act03Per = 15
         Act04Per = 10
         Act05Per = 15
         Act06Per = 0
         Act07Per = 30
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502750) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1502750) then
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
         Act01Per = 5
         Act02Per = 15
         Act03Per = 15
         Act04Per = 0
         Act05Per = 5
         Act06Per = 50
         Act07Per = 10
      elseif targetDist >= 25 then
         Act08Per = 100
      elseif targetDist >= 18 then
         Act09Per = 100
      elseif targetDist >= 4 then
         Act01Per = 15
         Act02Per = 10
         Act03Per = 10
         Act04Per = 20
         Act05Per = 15
         Act06Per = 0
         Act07Per = 20
      else
         Act01Per = 15
         Act02Per = 15
         Act03Per = 15
         Act04Per = 10
         Act05Per = 15
         Act06Per = 0
         Act07Per = 30
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1512750) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1512750) then
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
         Act01Per = 5
         Act02Per = 15
         Act03Per = 15
         Act04Per = 0
         Act05Per = 5
         Act06Per = 50
         Act07Per = 10
      elseif targetDist >= 25 then
         Act08Per = 100
      elseif targetDist >= 18 then
         Act09Per = 100
      elseif targetDist >= 4 then
         Act01Per = 15
         Act02Per = 10
         Act03Per = 10
         Act04Per = 20
         Act05Per = 15
         Act06Per = 0
         Act07Per = 20
      else
         Act01Per = 15
         Act02Per = 15
         Act03Per = 15
         Act04Per = 10
         Act05Per = 15
         Act06Per = 0
         Act07Per = 30
      end
   elseif targetDist >= 20 then
      Act08Per = 100
   else
      Act09Per = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per)
      if fateAct <= Act01Per then
         local AppDist = Att3000_Dist_max
         local DashDist = Att3000_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3000
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per then
         local AppDist = Att3001_Dist_max
         local DashDist = Att3001_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3001
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         local AppDist = Att3002_Dist_max
         local DashDist = Att3002_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3002
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
         local AppDist = Att3003_Dist_max
         local DashDist = Att3003_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3003
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
         local AppDist = Att3004_Dist_max
         local DashDist = Att3004_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3004
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
         local AppDist = Att3006_Dist_max
         local DashDist = Att3006_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3006
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
         GetWellSpace_Odds = 0
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
         GetWellSpace_Odds = 0
      end
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      local Odds_Guard = 0
      local Odds_NoAct = 50
      local Odds_BackAndSide = 0
      local Odds_Back = 20
      local Odds_BitWait = 30
      local Odds_Backstep = 0
      GetWellSpace_Act(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
   end
end

Giant_nt286001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Giant_nt286001Battle_Terminate = function(ai, goal)
end

Giant_nt286001Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   return false
end


