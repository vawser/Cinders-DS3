REGISTER_GOAL(GOAL_SnowInunezumi120300_Battle, "SnowInunezumi120300Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 0.8
local Att3001_Dist_min = 0
local Att3001_Dist_max = 0.8
local Att3002_Dist_min = 0.8
local Att3002_Dist_max = 1.9
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1
REGISTER_GOAL_NO_UPDATE(GOAL_SnowInunezumi120300_Battle, 1)
SnowInunezumi120300Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   if targetDist >= 5 then
      Act01Per = 15
      Act02Per = 15
      Act03Per = 55
      Act04Per = 15
   elseif targetDist >= 0.8 then
      Act01Per = 25
      Act02Per = 25
      Act03Per = 25
      Act04Per = 25
   else
      Act01Per = 35
      Act02Per = 35
      Act03Per = 0
      Act04Per = 30
   end
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per)
      if fateAct <= Act01Per then
         local AppDist = Att3000_Dist_max
         local DashDist = Att3000_Dist_max + 1.5
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         end
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per then
         local AppDist = Att3001_Dist_max
         local DashDist = Att3001_Dist_max + 1.5
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         end
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         local AppDist = Att3002_Dist_max
         local DashDist = Att3002_Dist_max + 1.5
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         end
         GetWellSpace_Odds = 100
      else
         local AppDist = Att3003_Dist_max
         local DashDist = Att3003_Dist_max + 1.5
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         end
         GetWellSpace_Odds = 100
      end
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      if fate2 <= 80 then
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
      end
   end
end

SnowInunezumi120300Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

SnowInunezumi120300Battle_Terminate = function(ai, goal)
end

SnowInunezumi120300Battle_Interupt = function(ai, goal)
   local superStepDist = 3
   local superStepPer = 15
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 3.5
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
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


