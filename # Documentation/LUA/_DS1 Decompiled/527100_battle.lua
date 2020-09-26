REGISTER_GOAL(GOAL_Griffith_large527100_Battle, "Griffith_large527100Battle")
local Att3000_Dist_min = 2.8
local Att3000_Dist_max = 3.5
local Att3004_Dist_min = 7
local Att3004_Dist_max = 9.8
local Att3005_Dist_min = 14.1
local Att3005_Dist_max = 16.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.5
local Att3007_Dist_min = 12.6
local Att3007_Dist_max = 17
local Att3008_Dist_min = 5.2
local Att3008_Dist_max = 6.5
local Att3011_Dist_min = 9.9
local Att3011_Dist_max = 30
local Att3012_Dist_min = -0.6
local Att3012_Dist_max = 1.2
local Att3013_Dist_min = 0
local Att3013_Dist_max = 15
local Att3015_Dist_min = -6
local Att3015_Dist_max = 1.2
local Att3016_Dist_min = 14.1
local Att3016_Dist_max = 30
local Att3017_Dist_min = 4.3
local Att3017_Dist_max = 7.8
REGISTER_GOAL_NO_UPDATE(GOAL_Griffith_large527100_Battle, 1)
Griffith_large527100Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   ai:AddObserveArea(0, TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 10)
   local canStep701 = 0
   local canStep702 = 0
   local canStep703 = 0
   local canStep = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 8) then
      canStep701 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 6) then
      canStep702 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 6) then
      canStep703 = 1
   end
   if canStep703 == 1 or canStep702 == 1 or canStep701 == 1 then
      canStep = 1
   end
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
   local GetWellSpace_Odds = 0
   if targetDist >= 30 then
      Act04Per = 10
      Act05Per = 10
      Act07Per = 10
      Act08Per = 60
      Act11Per = 10
   elseif targetDist >= 20 then
      Act04Per = 20
      Act05Per = 20
      Act07Per = 15
      Act08Per = 35
      Act11Per = 10
   elseif targetDist >= 14.1 then
      Act04Per = 25
      Act05Per = 25
      Act07Per = 25
      Act11Per = 25
   elseif targetDist >= 7 then
      Act01Per = 10
      Act02Per = 10
      Act03Per = 40
      Act11Per = 20
      Act12Per = 20
   elseif targetDist >= 5 then
      Act01Per = 25
      Act02Per = 25
      Act11Per = 30
      Act12Per = 20
   elseif targetDist >= 4.3 then
      Act01Per = 35
      Act12Per = 35
      Act13Per = 30 * canStep
   elseif targetDist >= 3 then
      Act01Per = 25
      Act02Per = 25
      Act10Per = 20
      Act13Per = 30 * canStep
   elseif targetDist >= 1.5 then
      Act10Per = 50
      Act13Per = 50 * canStep
   else
      Act06Per = 40
      Act09Per = 20
      Act10Per = 20
      Act13Per = 20 * canStep
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per)
   if fateAct <= Act01Per then
      Griffith_large527100_Act01(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      Griffith_large527100_Act02(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      Griffith_large527100_Act03(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      Griffith_large527100_Act04(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      Griffith_large527100_Act05(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      Griffith_large527100_Act06(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      Griffith_large527100_Act07(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      Griffith_large527100_Act08(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
      Griffith_large527100_Act09(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
      Griffith_large527100_Act10(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per then
      Griffith_large527100_Act11(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per then
      Griffith_large527100_Act12(ai, goal)
      GetWellSpace_Odds = 0
   else
      Griffith_large527100_Act13(ai, goal)
      GetWellSpace_Odds = 0
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      Griffith_large527100_ActAfter_AdjustSpace(ai, goal, paramTbl)
   end
end

Griffith_large527100_Act01 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 4.5
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 5 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, 2, 10)
   elseif fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, 2, 10)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, 2, 10)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, 2, 10)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
   end
end

Griffith_large527100_Act02 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 4.5
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 2, 42)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 2, 42)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 2, 42)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith_large527100_Act03 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 4.5
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 2, 35)
end

Griffith_large527100_Act04 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 4.5
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_None, 2, 45)
end

Griffith_large527100_Act05 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 4.5
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith_large527100_Act06 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3012_Dist_max
   local DashDist = Att3012_Dist_max + 4.5
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 2, 35)
end

Griffith_large527100_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_None, 0)
end

Griffith_large527100_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, TARGET_ENE_0, 11.3, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, -1)
end

Griffith_large527100_Act09 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 4.5
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 2, 37)
end

Griffith_large527100_Act10 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3015_Dist_max
   local DashDist = Att3015_Dist_max + 4.5
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_Middle, 0, -1)
end

Griffith_large527100_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3016, TARGET_ENE_0, DIST_None, 0)
end

Griffith_large527100_Act12 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3017_Dist_max
   local DashDist = Att3017_Dist_max + 4.5
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 2, 45)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_Middle, 2, 45)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith_large527100_Act13 = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local canStep701 = 0
   local canStep702 = 0
   local canStep703 = 0
   local canStep = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 8) then
      canStep701 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 6) then
      canStep702 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 6) then
      canStep703 = 1
   end
   if canStep703 == 1 or canStep702 == 1 or canStep701 == 1 then
      canStep = 1
   end
   if canStep701 == 1 or canStep703 == 0 and canStep702 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 8)
   elseif fate3 <= 50 or canStep702 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 6)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 6)
   end
   return true
end

Griffith_large527100_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
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

Griffith_large527100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Griffith_large527100Battle_Terminate = function(ai, goal)
end

Griffith_large527100Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distGuardBreak_Act = 7.8
   local oddsGuardBreak_Act = 50
   local fate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist >= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3017, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 30
   local oddsUseItem_Act = 50
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 9.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, TARGET_ENE_0, 11.3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, -1)
      end
      return true
   end
   local distResNear = 5
   local distResFar = 30
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
      if targetDist >= 9.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, TARGET_ENE_0, 11.3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, -1)
      end
      return true
   end
   return false
end


