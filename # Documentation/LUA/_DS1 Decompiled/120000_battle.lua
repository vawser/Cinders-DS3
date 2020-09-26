REGISTER_GOAL(GOAL_Inunezumi120000_Battle, "Inunezumi120000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.2
local Att3001_Dist_min = 0
local Att3001_Dist_max = 1.4
local Att3002_Dist_min = 1
local Att3002_Dist_max = 3.2
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.2
REGISTER_GOAL_NO_UPDATE(GOAL_Inunezumi120000_Battle, 1)
Inunezumi120000Battle_Activate = function(ai, goal)
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
   elseif targetDist >= 1 then
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
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      if fate2 <= 35 then
      elseif fate2 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.8, 1.4), TARGET_ENE_0, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
      end
   end
end

Inunezumi120000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Inunezumi120000Battle_Terminate = function(ai, goal)
end

Inunezumi120000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local superStepDist = 4
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


