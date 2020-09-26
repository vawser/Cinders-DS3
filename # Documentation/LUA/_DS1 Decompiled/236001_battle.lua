REGISTER_GOAL(GOAL_FourKnightC_Thunder236001_Battle, "FourKnightC_Thunder236001Battle")
local Att3000_Dist_min = 1.8
local Att3000_Dist_max = 4.8
local Att3002_Dist_min = 0.5
local Att3002_Dist_max = 1
local Att3003_Dist_min = -1.1
local Att3003_Dist_max = 1.3
local Att3004_Dist_min = 2
local Att3004_Dist_max = 4
local Att3006_Dist_min = 5.3
local Att3006_Dist_max = 6.7
local Att3007_Dist_min = 12
local Att3007_Dist_max = 18
local Att3008_Dist_min = 0
local Att3008_Dist_max = 0
local Att3009_Dist_min = 3.2
local Att3009_Dist_max = 10.2
REGISTER_GOAL_NO_UPDATE(GOAL_FourKnightC_Thunder236001_Battle, 1)
OnIf_236001 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local OddsLR = ai:GetRandam_Int(1, 100)
   if codeNo == 0 then
      if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_NONE, 0, AI_DIR_TYPE_L, 3.7)
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_NONE, 0, AI_DIR_TYPE_R, 3.7)
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_FRI_0, 0, AI_DIR_TYPE_B, 4)
      elseif OddsLR <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_NONE, 0, AI_DIR_TYPE_L, 3.7)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_NONE, 0, AI_DIR_TYPE_R, 3.7)
      end
   end
end

FourKnightC_Thunder236001Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   ai:AddObserveArea(0, TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 13)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   local GetWellSpace_Odds = 0
   if targetDist >= 12 then
      Act01Per = 25
      Act02Per = 15
      Act03Per = 0
      Act04Per = 50
      Act05Per = 0
      Act06Per = 0
      Act07Per = 0
      Act08Per = 10
   elseif targetDist >= 6.7 then
      Act01Per = 60
      Act02Per = 10
      Act03Per = 0
      Act04Per = 0
      Act05Per = 20
      Act06Per = 0
      Act07Per = 0
      Act08Per = 10
   elseif targetDist >= 3.3 then
      Act01Per = 20
      Act02Per = 20
      Act03Per = 0
      Act04Per = 0
      Act05Per = 40
      Act06Per = 0
      Act07Per = 0
      Act08Per = 20
   elseif targetDist >= 1 then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 25
      Act04Per = 0
      Act05Per = 0
      Act06Per = 37
      Act07Per = 38
      Act08Per = 0
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 60
      Act04Per = 0
      Act05Per = 0
      Act06Per = 20
      Act07Per = 20
      Act08Per = 0
   else
      Act01Per = 0
      Act02Per = 0
      Act03Per = 50
      Act04Per = 0
      Act05Per = 0
      Act06Per = 25
      Act07Per = 25
      Act08Per = 0
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per)
   if fateAct <= Act01Per then
      FourKnightC_Thunder236001_Act01(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      FourKnightC_Thunder236001_Act02(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      FourKnightC_Thunder236001_Act03(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      FourKnightC_Thunder236001_Act04(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      FourKnightC_Thunder236001_Act05(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      FourKnightC_Thunder236001_Act06(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      FourKnightC_Thunder236001_Act07(ai, goal)
      GetWellSpace_Odds = 100
   else
      FourKnightC_Thunder236001_Act08(ai, goal)
      GetWellSpace_Odds = 100
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      FourKnightC_Thunder236001_GetWellSpace_Act(ai, goal)
   end
end

FourKnightC_Thunder236001_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 4
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 4
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

FourKnightC_Thunder236001_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, -1)
end

FourKnightC_Thunder236001_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 4
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3009_Dist_max
   local DashDist = Att3009_Dist_max + 4
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 4
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 4
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 4
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
end

FourKnightC_Thunder236001_GetWellSpace_Act = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate2 = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local friendNum = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + bRight, TARGET_ENE_0, 2)
   if fate2 <= 50 then
   elseif fate2 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   end
end

FourKnightC_Thunder236001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FourKnightC_Thunder236001Battle_Terminate = function(ai, goal)
end

FourKnightC_Thunder236001Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 7
   local oddsGuardBreak_Act = 80
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist <= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Int = 7
   local oddsMissSwing_Int = 70
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local distUseItem_Act = 8
   local oddsUseItem_Act = 30
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist <= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 3.2
   local distResFar = 10.2
   local oddsResNear = 0
   local oddsResFar = 50
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      return true
   elseif ResBehavID == 2 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end


