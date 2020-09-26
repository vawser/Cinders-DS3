REGISTER_GOAL(GOAL_CragSpider528000_Battle, "CragSpider528000Battle")
local Att3000_Dist_min = 1.5
local Att3000_Dist_max = 1.5
local Att3003_Dist_min = 4
local Att3003_Dist_max = 5
local Att3004_Dist_min = 4
local Att3004_Dist_max = 5
local Att3005_Dist_min = 4
local Att3005_Dist_max = 5
local Att3006_Dist_min = 2
local Att3006_Dist_max = 6.5
local Att3007_Dist_min = 0
local Att3007_Dist_max = 2
local Att3008_Dist_min = 0
local Att3008_Dist_max = 2
local Att3009_Dist_min = 0
local Att3009_Dist_max = 2
local Att3010_Dist_min = 0
local Att3010_Dist_max = 6
local Att3012_Dist_min = 10
local Att3012_Dist_max = 16
local Att3013_Dist_min = 2.5
local Att3013_Dist_max = 4.5
REGISTER_GOAL_NO_UPDATE(GOAL_CragSpider528000_Battle, 1)
CragSpider528000Battle_Activate = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local fate5 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 120, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 121, 2)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 122, 2)
   ai:AddObserveChrDmySphere(3, TARGET_ENE_0, 123, 2)
   ai:AddObserveChrDmySphere(4, TARGET_ENE_0, 130, 2)
   ai:AddObserveChrDmySphere(5, TARGET_ENE_0, 131, 2)
   ai:AddObserveChrDmySphere(6, TARGET_ENE_0, 132, 2)
   ai:AddObserveChrDmySphere(7, TARGET_ENE_0, 133, 2)
   ai:AddObserveChrDmySphere(8, TARGET_ENE_0, 140, 2)
   ai:AddObserveChrDmySphere(9, TARGET_ENE_0, 141, 2)
   ai:AddObserveChrDmySphere(10, TARGET_ENE_0, 142, 2)
   ai:AddObserveChrDmySphere(11, TARGET_ENE_0, 143, 2)
   local Att3007Flag = 0
   local Att3008Flag = 0
   local Att3009Flag = 0
   if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) or ai:IsInsideObserve(2) or ai:IsInsideObserve(3) then
      Att3007Flag = 1
   elseif ai:IsInsideObserve(4) or ai:IsInsideObserve(5) or ai:IsInsideObserve(6) or ai:IsInsideObserve(7) then
      Att3008Flag = 1
   elseif ai:IsInsideObserve(8) or ai:IsInsideObserve(9) or ai:IsInsideObserve(10) or ai:IsInsideObserve(11) then
      Att3009Flag = 1
   end
   local Act00Per = 0
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
   local GetWellSpace_Odds = 50
   local SB_Odds = 1
   if ai:IsFinishTimer(0) == false then
      SB_Odds = 0
   else
      SB_Odds = 1
   end
   if targetDist >= 1.5 and targetDist <= 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and fate <= 65 then
      Act00Per = 100
   elseif targetDist >= 4 and targetDist <= 5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and fate2 <= 75 then
      Act01Per = 100
   elseif targetDist <= 5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 110) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) and fate2 <= 75 then
      Act02Per = 100
   elseif targetDist <= 5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 190) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 30) and fate2 <= 75 then
      Act03Per = 100
   elseif Att3007Flag == 1 and fate3 <= 20 then
      Act05Per = 100
   elseif Att3008Flag == 1 and fate3 <= 20 then
      Act06Per = 100
   elseif Att3009Flag == 1 and fate3 <= 20 then
      Act07Per = 100
   elseif targetDist >= 12.5 then
      Act00Per = 5
      Act01Per = 20
      Act04Per = 30 * SB_Odds
      Act05Per = 0
      Act08Per = 0
      Act10Per = 5
      Act11Per = 40
   elseif targetDist >= 5 then
      Act00Per = 35
      Act01Per = 20
      Act04Per = 30 * SB_Odds
      Act05Per = 0
      Act08Per = 0
      Act10Per = 25
      Act11Per = 0
   elseif targetDist >= 2 then
      Act00Per = 35
      Act01Per = 20
      Act04Per = 30 * SB_Odds
      Act05Per = 0
      Act08Per = 0
      Act10Per = 10
      Act11Per = 0
   elseif targetDist >= 1.5 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) then
         Act00Per = 25
         Act01Per = 5
         Act04Per = 10 * SB_Odds
         Act05Per = 10
         Act08Per = 35
         Act09Per = 15
         Act10Per = 0
         Act11Per = 0
      else
         Act00Per = 0
         Act01Per = 10
         Act04Per = 10 * SB_Odds
         Act05Per = 0
         Act08Per = 60
         Act09Per = 35
         Act10Per = 0
         Act11Per = 0
      end
   else
      Act00Per = 0
      Act01Per = 0
      Act04Per = 0
      Act05Per = 0
      Act08Per = 60
      Act09Per = 40
      Act10Per = 0
      Act11Per = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   local fateAct = ai:GetRandam_Int(1, Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per)
   if fateAct <= Act00Per then
      CragSpider528000_Act00(ai, goal)
   elseif fateAct <= Act00Per + Act01Per then
      CragSpider528000_Act01(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per then
      CragSpider528000_Act02(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per then
      CragSpider528000_Act03(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per then
      CragSpider528000_Act04(ai, goal)
      ai:SetTimer(0, 30)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      CragSpider528000_Act05(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      CragSpider528000_Act06(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      CragSpider528000_Act07(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      CragSpider528000_Act08(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
      CragSpider528000_Act09(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
      CragSpider528000_Act10(ai, goal)
   else
      CragSpider528000_Act11(ai, goal)
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      CragSpider528000_GetWellSpace_Act(ai, goal)
   end
end

CragSpider528000_Act00 = function(ai, goal)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   local TurnTime = 1.5
   local SuccessAngle = 20
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, TurnTime, SuccessAngle)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

CragSpider528000_Act01 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   if targetDistY >= 0.1 or targetDistY <= -0.1 then
      local AppDist = 1
      local DashDist = 1 + 3
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 3, 5)
   else
      local AppDist = Att3003_Dist_max
      local DashDist = Att3003_Dist_max + 3
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 3, 5)
   end
end

CragSpider528000_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act04 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   if targetDistY >= 0.2 then
      local AppDist = Att3006_Dist_max
      local DashDist = Att3006_Dist_max + 2
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_Middle, 3, 20)
   else
      local AppDist = Att3006_Dist_max - 2
      local DashDist = Att3006_Dist_max
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_Middle, 3, 20)
   end
end

CragSpider528000_Act05 = function(ai, goal)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 3
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 3, 20)
end

CragSpider528000_Act06 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
end

CragSpider528000_Act10 = function(ai, goal)
   local AppDist = Att3013_Dist_max
   local DashDist = Att3013_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3013, TARGET_ENE_0, DIST_Near, 0)
end

CragSpider528000_Act11 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   if targetDistY >= 0.2 then
      local AppDist = Att3012_Dist_max - 3
      local DashDist = Att3012_Dist_max + 2
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3012, TARGET_ENE_0, DIST_Middle, 3, 5)
   else
      local AppDist = Att3012_Dist_max + 3
      local DashDist = Att3012_Dist_max + 5
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Middle, 3, 5)
   end
end

CragSpider528000_GetWellSpace_Act = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, -1, -1)
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, -1, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, -1, -1)
   end
end

CragSpider528000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

CragSpider528000Battle_Terminate = function(ai, goal)
end

CragSpider528000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distUseItem_Act = 12
   local oddsUseItem_Act = 10
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 16
   local distResFar = 30
   local oddsResNear = 0
   local oddsResFar = 15
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   elseif ResBehavID == 2 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   return false
end


