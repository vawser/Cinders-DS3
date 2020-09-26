REGISTER_GOAL(GOAL_IzalisQueen325000_Battle, "IzalisQueen325000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.9
local Att3001_Dist_min = 0
local Att3001_Dist_max = 3.5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 2.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.4
local Att3005_Dist_min = 0
local Att3005_Dist_max = 4.6
REGISTER_GOAL_NO_UPDATE(GOAL_IzalisQueen325000_Battle, 1)
IzalisQueen325000Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   if targetDist >= 8 then
      Act01Per = 10
      Act02Per = 35
      Act03Per = 10
      Act04Per = 10
      Act05Per = 35
   elseif targetDist >= 3.5 then
      Act01Per = 20
      Act02Per = 25
      Act03Per = 10
      Act04Per = 25
      Act05Per = 20
   else
      Act01Per = 35
      Act02Per = 10
      Act03Per = 10
      Act04Per = 35
      Act05Per = 10
   end
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per)
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
         local fate2 = ai:GetRandam_Int(1, 100)
         local AppDist = Att3003_Dist_max
         local DashDist = Att3003_Dist_max + 2
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate2 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
         GetWellSpace_Odds = 100
      else
         local AppDist = Att3005_Dist_max
         local DashDist = Att3005_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3005
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      end
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      local Odds_Guard = 0
      local Odds_NoAct = 30
      local Odds_BackAndSide = 0
      local Odds_Back = 30
      local Odds_BitWait = 40
      local Odds_Backstep = 0
      GetWellSpace_Act(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
   end
end

IzalisQueen325000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

IzalisQueen325000Battle_Terminate = function(ai, goal)
end

IzalisQueen325000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   return false
end


