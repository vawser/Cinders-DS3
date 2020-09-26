REGISTER_GOAL(GOAL_ArmoredTask_BackGuard346100_Battle, "ArmoredTask_BackGuard346100Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2
local Att3001_Dist_min = 0
local Att3001_Dist_max = 10
local Att3002_Dist_min = 0
local Att3002_Dist_max = 1.4
local Att3004_Dist_min = 0
local Att3004_Dist_max = 1.6
local Att3005_Dist_min = 0
local Att3005_Dist_max = 1.6
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.1
local Att3007_Dist_min = 0
local Att3007_Dist_max = 3.5
local Att3008_Dist_min = 0
local Att3008_Dist_max = 8
local Att3009_Dist_min = 2.5
local Att3009_Dist_max = 4
REGISTER_GOAL_NO_UPDATE(GOAL_ArmoredTask_BackGuard346100_Battle, 1)
ArmoredTask_BackGuard346100Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local kakutimer = ai:GetRandam_Int(120, 180)
   local eventNo = ai:GetEventRequest(0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
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
   ai:SetEventMoveTarget(1702751)
   local Sumade = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1702750) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1702752) then
      Act09Per = 100
   elseif ai:IsFinishTimer(0) == true and targetDist >= 12 then
      ai:SetTimer(0, kakutimer)
      Act04Per = 100
   elseif targetDist <= 1.1 and fate <= 80 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 45) then
      Act07Per = 100
   elseif targetDist <= 2 and fate <= 80 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
      Act05Per = 100
   elseif targetDist <= 2 and fate <= 80 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
      Act06Per = 100
   elseif targetDist >= 12 then
      Act01Per = 25
      Act02Per = 55
      Act03Per = 20
      Act08Per = 0
   elseif targetDist >= 4 then
      Act01Per = 40
      Act02Per = 35
      Act03Per = 20
      Act08Per = 5
   else
      Act01Per = 35
      Act02Per = 10
      Act03Per = 35
      Act08Per = 20
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per)
   if fateAct <= Act01Per then
      if targetDist >= 6 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3009_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 1.5, 30)
      elseif targetDist >= 4.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3009_Dist_min, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 1.5, 30)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, -1)
      end
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      if targetDist >= 10 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3008_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 1.5, 30)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, Att3001_Dist_max, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 1.5, 30)
      end
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      local AppDist = Att3002_Dist_max
      local DashDist = Att3002_Dist_max + 2
      local Odds_Guard = 0
      BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 1, 20)
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_None)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3008_Dist_max, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 1.5, 30)
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      local AppDist = Att3007_Dist_max
      local DashDist = Att3007_Dist_max + 2
      local Odds_Guard = 0
      BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 1.5, 10)
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
      GetWellSpace_Odds = 100
   elseif Sumade >= 2 then
      ai:SetEventMoveTarget(1702751)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 2.5, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      ArmoredTask_BackGuard346100_ActAfter_AdjustSpace(ai, goal)
   end
end

ArmoredTask_BackGuard346100_ActAfter_AdjustSpace = function(ai, goal)
   local KN_fate = ai:GetRandam_Int(1, 100)
   if KN_fate <= 80 then
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
   end
end

ArmoredTask_BackGuard346100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ArmoredTask_BackGuard346100Battle_Terminate = function(ai, goal)
end

ArmoredTask_BackGuard346100Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   return false
end


