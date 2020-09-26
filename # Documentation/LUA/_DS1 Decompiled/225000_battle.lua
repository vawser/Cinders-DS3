REGISTER_GOAL(GOAL_Hammer_m10_225000_Battle, "Hammer_m10_225000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3
local Att3001_Dist_min = 0
local Att3001_Dist_max = 2
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.9
local Att3004_Dist_min = 6.5
local Att3004_Dist_max = 8.5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 3
local Att3006_Dist_min = -1.4
local Att3006_Dist_max = 1.1
REGISTER_GOAL_NO_UPDATE(GOAL_Hammer_m10_225000_Battle, 1)
OnIf_225000 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if codeNo == 0 then
      ai:SetEventMoveTarget(1012745)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 5, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 26, 3009, POINT_EVENT, DIST_None, 5, 5)
   elseif codeNo == 1 then
      ai:SetEventMoveTarget(1012744)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 5, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3008, POINT_EVENT, DIST_None, 5, 5)
   elseif codeNo == 2 then
      ai:SetEventMoveTarget(1012745)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 5, 0, 0)
   end
end

Hammer_m10_225000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
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
   local GetWellSpace_Odds = 100
   ai:AddObserveRegion(0, TARGET_SELF, 1012740)
   ai:AddObserveRegion(1, TARGET_SELF, 1012741)
   ai:AddObserveRegion(2, TARGET_ENE_0, 1012742)
   ai:AddObserveRegion(3, TARGET_ENE_0, 1012743)
   ai:AddObserveRegion(4, TARGET_SELF, 1012742)
   ai:AddObserveRegion(5, TARGET_SELF, 1012743)
   if targetDist >= 15 then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 25
      Act04Per = 75
      Act05Per = 0
      Act06Per = 0
   elseif targetDist >= 7 then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 40
      Act04Per = 60
      Act05Per = 0
      Act06Per = 0
   elseif targetDist >= 3 then
      Act01Per = 20
      Act02Per = 15
      Act03Per = 35
      Act04Per = 0
      Act05Per = 15
      Act06Per = 15
   else
      Act01Per = 20
      Act02Per = 20
      Act03Per = 20
      Act04Per = 0
      Act05Per = 20
      Act06Per = 20
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per)
   local flag = ai:GetNumber(0)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1012743) and ai:IsInsideTargetRegion(TARGET_SELF, 1012742) and flag == 0 then
      Hammer_m10_225000_Act09(ai, goal)
      ai:SetNumber(0, 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012742) and ai:IsInsideTargetRegion(TARGET_SELF, 1012743) then
      Hammer_m10_225000_Act07(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012743) and flag == 1 and ai:GetNumber(1) <= 2 then
      Hammer_m10_225000_Act10(ai, goal)
      local StateNo = ai:GetNumber(1)
      ai:SetNumber(1, StateNo + 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012742) and flag == 1 then
      Hammer_m10_225000_Act11(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012743) and flag == 1 and ai:GetNumber(1) == 3 then
      Hammer_m10_225000_Act08(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif fateAct <= Act01Per then
      Hammer_m10_225000_Act01(ai, goal)
   elseif fateAct <= Act01Per + Act02Per then
      Hammer_m10_225000_Act02(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      Hammer_m10_225000_Act03(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      Hammer_m10_225000_Act04(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      Hammer_m10_225000_Act05(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      Hammer_m10_225000_Act06(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      Hammer_m10_225000_Act07(ai, goal)
   else
      Hammer_m10_225000_Act08(ai, goal)
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      Hammer_m10_225000_GetWellSpace_Act(ai, goal)
   end
end

Hammer_m10_225000_Act01 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 17, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act02 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 22, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act03 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if fate <= 50 then
      local AppDist = Att3002_Dist_max
      local DashDist = Att3002_Dist_max + 2
      local Odds_Guard = 0
      BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      if fate2 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 10, 10)
      end
   else
      local AppDist = Att3003_Dist_max
      local DashDist = Att3003_Dist_max + 2
      local Odds_Guard = 0
      BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      if fate2 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 10, 10)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act04 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 27, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act05 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 14, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act06 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 23, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act07 = function(ai, goal)
   ai:SetEventMoveTarget(1012740)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0.8, TARGET_SELF, True, -1)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_Act08 = function(ai, goal)
   ai:SetEventMoveTarget(1012741)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0.7, TARGET_SELF, True, -1)
   goal:AddSubGoal(GOAL_COMMON_If, 26, 0)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_Act09 = function(ai, goal)
   ai:SetEventMoveTarget(1012741)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_EVENT, 0.1, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_If, 26, 2)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3012, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hamme_m10_r225000_Act12 = function(ai, goal)
   ai:SetEventMoveTarget(1012741)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_EVENT, 0.1, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_GetWellSpace_Act = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 30 then
   elseif fate <= 85 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
      return true
   elseif fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      return true
   end
   return false
end

Hammer_m10_225000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hammer_m10_225000Battle_Terminate = function(ai, goal)
end

Hammer_m10_225000Battle_Interupt = function(ai, goal)
   return false
end


