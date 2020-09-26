REGISTER_GOAL(GOAL_BigInunezumi120200_Battle, "BigInunezumi120200Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.1
local Att3001_Dist_min = 0
local Att3001_Dist_max = 1.6
local Att3002_Dist_min = 0
local Att3002_Dist_max = 1.7
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.6
local Att3004_Dist_min = 2
local Att3004_Dist_max = 3.5
local Att3005_Dist_min = 2
local Att3005_Dist_max = 3.5
local Att3006_Dist_min = 5
local Att3006_Dist_max = 7.3
REGISTER_GOAL_NO_UPDATE(GOAL_BigInunezumi120200_Battle, 1)
BigInunezumi120200Battle_Activate = function(ai, goal)
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
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   ai:AddObserveRegion(0, TARGET_ENE_0, 1002700)
   ai:AddObserveRegion(1, TARGET_ENE_0, 1002701)
   ai:AddObserveRegion(2, TARGET_ENE_0, 1002702)
   ai:AddObserveRegion(3, TARGET_ENE_0, 1002704)
   ai:SetEventMoveTarget(1002703)
   local Sumade = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1002700) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1002701) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1002702) then
      Act05Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1002704) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) and targetDist <= 3.5 then
         Act06Per = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) and targetDist <= 3.5 then
         Act07Per = 100
      elseif targetDist >= 5.1 then
         Act01Per = 10
         Act02Per = 15
         Act03Per = 10
         Act04Per = 15
         Act08Per = 50
      else
         Act01Per = 25
         Act02Per = 25
         Act03Per = 25
         Act04Per = 25
         Act08Per = 0
      end
   else
      Act05Per = 100
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
         local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per)
         if fateAct <= Act01Per then
            local AppDist = Att3000_Dist_max
            local DashDist = Att3000_Dist_max + 2
            local Odds_Guard = 0
            Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, DIST_Middle, -1, 32)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per then
            local AppDist = Att3001_Dist_max
            local DashDist = Att3001_Dist_max + 2
            local Odds_Guard = 0
            Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, DIST_Middle, -1, 32)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per then
            local AppDist = Att3002_Dist_max
            local DashDist = Att3002_Dist_max + 2
            local Odds_Guard = 0
            Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_Middle, -1, 32)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
            local AppDist = Att3003_Dist_max
            local DashDist = Att3003_Dist_max + 2
            local Odds_Guard = 0
            Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, DIST_Middle, -1, 32)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
            if Sumade >= 2 then
               ai:SetEventMoveTarget(1002703)
               goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, POINT_EVENT, 0, TARGET_SELF, True, -1)
               goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
               goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
               GetWellSpace_Odds = 0
            elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
               local Odds_Guard = 0
               goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3004, TARGET_ENE_0, DIST_Middle, 0)
               GetWellSpace_Odds = 100
            elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
               local Odds_Guard = 0
               goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3005, TARGET_ENE_0, DIST_Middle, 0)
               GetWellSpace_Odds = 100
            else
               local AppDist = Att3006_Dist_max
               local DashDist = Att3006_Dist_max + 1.5
               local Odds_Guard = 0
               Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_Middle, -1, 32)
               GetWellSpace_Odds = 100
            end
         end
      end
      local fateGWS = ai:GetRandam_Int(1, 100)
      if fateGWS <= GetWellSpace_Odds then
         if fate2 <= 70 then
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         end
      end
end

BigInunezumi120200Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BigInunezumi120200Battle_Terminate = function(ai, goal)
end

BigInunezumi120200Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 2)
      ai:Replaning()
      return true
   end
   return false
end


