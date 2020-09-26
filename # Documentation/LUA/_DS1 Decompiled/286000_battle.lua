REGISTER_GOAL(GOAL_Giant286000_Battle, "Giant286000Battle")
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
local Att3010_Dist_min = 0
local Att3010_Dist_max = 100
local Att3011_Dist_min = 0
local Att3011_Dist_max = 100
local Att3012_Dist_min = 0
local Att3012_Dist_max = 100
REGISTER_GOAL_NO_UPDATE(GOAL_Giant286000_Battle, 1)
Giant286000Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest(0)
   local objeventNo = ai:GetEventRequest(1)
   local FireEventNo = ai:GetEventRequest(2)
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
   local Act10Per = 0
   local Act11Per = 0
   local Act12Per = 0
   local Act13Per = 0
   local Act14Per = 0
   local Act15Per = 0
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 4, 2)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and FireEventNo == 6 and eventNo ~= 10 and objeventNo ~= 20 then
      Act15Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and FireEventNo == 5 and objeventNo ~= 20 then
      Act14Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and FireEventNo == 4 and objeventNo ~= 20 then
      Act13Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and FireEventNo == 3 and objeventNo ~= 20 then
      Act10Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and FireEventNo == 2 and objeventNo ~= 20 then
      Act09Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and FireEventNo == 1 and objeventNo ~= 20 then
      Act08Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1502710) then
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
         Act01Per = 5
         Act02Per = 15
         Act03Per = 15
         Act04Per = 0
         Act05Per = 5
         Act06Per = 50
         Act07Per = 10
      elseif targetDist >= 25 then
         Act11Per = 100
      elseif targetDist >= 18 then
         Act12Per = 100
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
      Act11Per = 100
   else
      Act12Per = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per)
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
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502700)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502701)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502702)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3011, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502703)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3011, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502704)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3012, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         GetWellSpace_Odds = 0
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502705)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
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

OnIf_286000 = function(ai, goal, codeNo)
   ai:SetEventFlag(11505105, false)
   goal:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
end

Giant286000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Giant286000Battle_Terminate = function(ai, goal)
end

Giant286000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   return false
end


