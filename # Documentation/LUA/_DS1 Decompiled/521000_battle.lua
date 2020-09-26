REGISTER_GOAL(GOAL_HolySwordWolf521000_Battle, "HolySwordWolf521000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 5.2
local Att3003_Dist_min = 8
local Att3003_Dist_max = 13.5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 4.1
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.5
local Att3007_Dist_min = 3.1
local Att3007_Dist_max = 4.6
local Att3008_Dist_min = 3.2
local Att3008_Dist_max = 6.2
local Att3009_Dist_min = 0
local Att3009_Dist_max = 2
local Att3011_Dist_min = 8
local Att3011_Dist_max = 12
local Att13000_Dist_min = 0
local Att13000_Dist_max = 4.2
local Att13002_Dist_min = 0
local Att13002_Dist_max = 3.5
local Att13003_Dist_min = 0
local Att13003_Dist_max = 2.6
local Att13004_Dist_min = 0
local Att13004_Dist_max = 3.8
REGISTER_GOAL_NO_UPDATE(GOAL_HolySwordWolf521000_Battle, 1)
HolySwordWolf521000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
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
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      if targetDist >= 2.6 then
         Act08Per = 65
         Act09Per = 35
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 176) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
         Act10Per = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 176) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
         Act11Per = 100
      else
         Act08Per = 35
         Act09Per = 65
      end
   elseif targetDist >= 13.5 then
      Act01Per = 10
      Act02Per = 60
      Act03Per = 10
      Act04Per = 0
      Act07Per = 0
      Act12Per = 0
      Act13Per = 20
   elseif targetDist >= 10 then
      Act01Per = 20
      Act02Per = 0
      Act03Per = 25
      Act04Per = 5
      Act07Per = 0
      Act12Per = 0
      Act13Per = 50
   elseif targetDist >= 5.2 then
      Act01Per = 40
      Act02Per = 0
      Act03Per = 35
      Act04Per = 20
      Act07Per = 5
      Act12Per = 0
      Act13Per = 0
   elseif targetDist >= 1.5 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 176) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) and fate <= 80 then
         Act05Per = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 176) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) and fate <= 80 then
         Act06Per = 100
      else
         Act01Per = 35
         Act02Per = 0
         Act03Per = 35
         Act04Per = 5
         Act07Per = 25
         Act12Per = 0
      end
   else
      Act01Per = 15
      Act02Per = 0
      Act03Per = 15
      Act04Per = 30
      Act07Per = 10
      Act12Per = 30
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      if fate2 <= Act01Per then
         local AppDist = Att3000_Dist_max
         local DashDist = Att3000_Dist_max + 4
         local Odds_Guard = 0
         BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate3 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
         elseif fate3 <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif fate2 <= Act01Per + Act02Per then
         local AppDist = Att3003_Dist_max
         local DashDist = Att3003_Dist_max + 4
         local Odds_Guard = 0
         BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate3 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 60)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 60)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif fate2 <= Act01Per + Act02Per + Act03Per then
         local AppDist = Att3005_Dist_max
         local DashDist = Att3005_Dist_max + 4
         local Odds_Guard = 0
         BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 50)
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per then
         local AppDist = Att3006_Dist_max
         local DashDist = Att3006_Dist_max + 4
         local Odds_Guard = 0
         BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 49)
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
         local AppDist = Att13000_Dist_max
         local DashDist = Att13000_Dist_max + 200
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate3 <= 45 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
         local AppDist = Att13002_Dist_max
         local DashDist = Att13002_Dist_max + 200
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 45)
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per then
         local AppDist = Att3009_Dist_max
         local DashDist = Att3009_Dist_max + 4
         local Odds_Guard = 0
         BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate3 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, -1, 35)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, -1, 35)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         local AppDist = Att3011_Dist_max
         local DashDist = Att3011_Dist_max + 4
         local Odds_Guard = 0
         BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, -1, 45)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      HolySwordWolf521000_ActAfter_AdjustSpace(ai, goal)
end

HolySwordWolf521000_ActAfter_AdjustSpace = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local KN_fate = ai:GetRandam_Int(1, 100)
   local KN_fate2 = ai:GetRandam_Int(1, 100)
   if hprate <= 0.1 then
      if KN_fate <= 60 then
      elseif KN_fate <= 80 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 3.6, TARGET_ENE_0, true, -1)
         return true
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
         return true
      end
      return true
   elseif KN_fate <= 30 then
   elseif KN_fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      return true
   elseif KN_fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
      return true
   elseif KN_fate <= 100 then
      if KN_fate2 <= 60 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   else
   end
end

HolySwordWolf521000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HolySwordWolf521000Battle_Terminate = function(ai, goal)
end

HolySwordWolf521000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if not ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      local distGuardBreak_Act = 5.8
      local oddsGuardBreak_Act = 80
      if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         return true
      end
      local distUseItem_Act = 5.8
      local oddsUseItem_Act = 15
      if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         return true
      end
      local distResNear = 8
      local distResFar = 25
      local oddsResNear = 0
      local oddsResFar = 30
      local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
      if ResBehavID == 1 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
         end
         return true
      elseif ResBehavID == 2 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
         end
         return true
      end
   end
   return false
end


