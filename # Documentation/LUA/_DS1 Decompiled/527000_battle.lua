REGISTER_GOAL(GOAL_Griffith527000_Battle, "Griffith527000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 4.5
local Att3004_Dist_min = 5.3
local Att3004_Dist_max = 6.2
local Att3005_Dist_min = 9.1
local Att3005_Dist_max = 10.8
local Att3006_Dist_min = 0
local Att3006_Dist_max = 2.4
local Att3007_Dist_min = 10.4
local Att3007_Dist_max = 12.3
local Att3008_Dist_min = 0
local Att3008_Dist_max = 4.5
local Att3011_Dist_min = 3
local Att3011_Dist_max = 6
local Att3012_Dist_min = 10.3
local Att3012_Dist_max = 11.4
local Att3013_Dist_min = 0
local Att3013_Dist_max = 2.5
local Att3016_Dist_min = 0
local Att3016_Dist_max = 8
local Att3017_Dist_min = 0
local Att3017_Dist_max = 4.9
REGISTER_GOAL_NO_UPDATE(GOAL_Griffith527000_Battle, 1)
OnIf_527000 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local OddsLR = ai:GetRandam_Int(1, 100)
   if codeNo == 0 then
      if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_FRI_0, 0, AI_DIR_TYPE_L, 4)
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_FRI_0, 0, AI_DIR_TYPE_R, 4)
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_FRI_0, 0, AI_DIR_TYPE_B, 4)
      elseif OddsLR <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_FRI_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_FRI_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Griffith527000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   ai:AddObserveArea(0, TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 13)
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
   local GetWellSpace_Odds = 0
   if targetDist >= 12.3 then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 0
      Act04Per = 10
      Act05Per = 10
      Act06Per = 10
      Act07Per = 10
      Act08Per = 60
      Act09Per = 0
      Act10Per = 0
      Act11Per = 0
   elseif targetDist >= 10.8 then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 0
      Act04Per = 20
      Act05Per = 20
      Act06Per = 20
      Act07Per = 20
      Act08Per = 20
      Act09Per = 0
      Act10Per = 0
      Act11Per = 0
   elseif targetDist >= 6.2 then
      Act01Per = 10
      Act02Per = 10
      Act03Per = 35
      Act04Per = 0
      Act05Per = 15
      Act06Per = 0
      Act07Per = 10
      Act08Per = 0
      Act09Per = 0
      Act10Per = 10
      Act11Per = 10
   elseif targetDist >= 2.5 then
      Act01Per = 25
      Act02Per = 25
      Act03Per = 0
      Act04Per = 0
      Act05Per = 20
      Act06Per = 0
      Act07Per = 0
      Act08Per = 0
      Act09Per = 0
      Act10Per = 10
      Act11Per = 20
   else
      Act01Per = 13
      Act02Per = 12
      Act03Per = 0
      Act04Per = 0
      Act05Per = 0
      Act06Per = 0
      Act07Per = 0
      Act08Per = 0
      Act09Per = 60
      Act10Per = 5
      Act11Per = 10
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per)
   if fateAct <= Act01Per then
      Griffith527000_Act01(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      Griffith527000_Act02(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      Griffith527000_Act03(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      Griffith527000_Act04(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      Griffith527000_Act05(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      Griffith527000_Act06(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      Griffith527000_Act07(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      Griffith527000_Act08(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
      Griffith527000_Act09(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
      Griffith527000_Act10(ai, goal)
      GetWellSpace_Odds = 0
   else
      Griffith527000_Act11(ai, goal)
      GetWellSpace_Odds = 100
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      Griffith527000_ActAfter_AdjustSpace(ai, goal, paramTbl)
   end
end

Griffith527000_Act01 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 5 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith527000_Act02 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 2
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith527000_Act03 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act04 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act05 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act06 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3012_Dist_max
   local DashDist = Att3012_Dist_max + 2
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_None, 0)
end

Griffith527000_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, -1)
end

Griffith527000_Act09 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3016, TARGET_ENE_0, DIST_None, 0)
end

Griffith527000_Act11 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3017_Dist_max
   local DashDist = Att3017_Dist_max + 2
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3017, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3017, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith527000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local GW_fate = ai:GetRandam_Int(0, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local friendNum = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + bRight, TARGET_ENE_0, 2)
   if GW_fate <= 30 and friendNum < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, -1)
   elseif GW_fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
   elseif GW_fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local fate = ai:GetRandam_Int(1, 100)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Griffith527000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Griffith527000Battle_Terminate = function(ai, goal)
end

Griffith527000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 5)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 0)
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 25
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 6.2
   local oddsGuardBreak_Act = 70
   local fate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist >= 4.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Int = 6.2
   local oddsMissSwing_Int = 50
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist >= 4.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 12.3
   local oddsUseItem_Act = 30
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local oddsResponse = 35
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 4
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distResNear = 3
   local distResFar = 18
   local oddsResNear = 0
   local oddsResFar = 60
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif ResBehavID == 2 then
      if fate <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   return false
end


