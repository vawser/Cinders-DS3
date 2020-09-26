REGISTER_GOAL(GOAL_Hammer_m11_225001_Battle, "Hammer_m11_225001Battle")
local Att3000_Dist_min = -0.5
local Att3000_Dist_max = 3.4
local Att3001_Dist_min = 0
local Att3001_Dist_max = 2.6
local Att3002_Dist_min = 2.3
local Att3002_Dist_max = 4.5
local Att3003_Dist_min = -1.5
local Att3003_Dist_max = 4.5
local Att3004_Dist_min = 5.5
local Att3004_Dist_max = 9.2
local Att3005_Dist_min = -1
local Att3005_Dist_max = 3.5
local Att3006_Dist_min = -1.4
local Att3006_Dist_max = 1.1
REGISTER_GOAL_NO_UPDATE(GOAL_Hammer_m11_225001_Battle, 1)
Hammer_m11_225001Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local GetWellSpace_Odds = 0
   if not ai:IsInsideTargetRegion(TARGET_ENE_0, 1812990) then
      Act07Per = 100
   elseif targetDist >= 15 then
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
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per)
   local flag = ai:GetNumber(0)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and flag == 0 then
      Hammer225001_Act08(ai, goal)
      ai:SetNumber(0, 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and flag == 1 and ai:GetNumber(1) <= 2 then
      Hammer225001_Act09(ai, goal)
      local StateNo = ai:GetNumber(1)
      ai:SetNumber(1, StateNo + 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812996) and flag == 1 then
      Hammer225001_Act10(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and flag == 1 and ai:GetNumber(1) == 3 then
      Hammer225001_Act11(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812351) then
      Hammer225001_Act12(ai, goal)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812352) then
      Hammer225001_Act12(ai, goal)
   elseif fateAct <= Act01Per then
      Hammer225001_Act01(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      Hammer225001_Act02(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      Hammer225001_Act03(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      Hammer225001_Act04(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      Hammer225001_Act05(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      Hammer225001_Act06(ai, goal)
      GetWellSpace_Odds = 100
   else
      Hammer225001_Act07(ai, goal)
      GetWellSpace_Odds = 0
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      Hammer225001_GetWellSpace_Act(ai, goal)
   end
end

Hammer225001_Act01 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
end

Hammer225001_Act02 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 20)
   GetWellSpace_Odds = 100
end

Hammer225001_Act03 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 45)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 45)
   end
   GetWellSpace_Odds = 100
end

Hammer225001_Act04 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
end

Hammer225001_Act05 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
end

Hammer225001_Act06 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
end

Hammer225001_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 2, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF)
   GetWellSpace_Odds = 0
end

Hammer225001_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer225001_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer225001_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3012, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer225001_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3013, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer225001_Act12 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = 6
   local DashDist = 8
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 20)
   GetWellSpace_Odds = 100
end

Hammer225001_GetWellSpace_Act = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 75 then
   elseif fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   elseif fate <= 95 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      return true
   end
   return false
end

Hammer_m11_225001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hammer_m11_225001Battle_Terminate = function(ai, goal)
end

Hammer_m11_225001Battle_Interupt = function(ai, goal)
   local distDamagedStep = 3
   local oddsDamagedStep = 30
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 5
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


