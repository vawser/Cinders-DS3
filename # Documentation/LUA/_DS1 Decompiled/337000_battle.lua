REGISTER_GOAL(GOAL_Kinobori337000_Battle, "Kinobori337000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.3
local Att3001_Dist_min = 0
local Att3001_Dist_max = 3.35
local Att3002_Dist_min = 1.9
local Att3002_Dist_max = 4.7
local Att3003_Dist_min = 1.9
local Att3003_Dist_max = 5.55
local Att13000_Dist_min = 0
local Att13000_Dist_max = 10
local Att13001_Dist_min = 0
local Att13001_Dist_max = 10
local Att13002_Dist_min = 0
local Att13002_Dist_max = 10
local Att13003_Dist_min = 0
local Att13003_Dist_max = 10
REGISTER_GOAL_NO_UPDATE(GOAL_Kinobori337000_Battle, 1)
Kinobori337000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 95, 2)
   if ai:HasSpecialEffectId(TARGET_SELF, 5111) then
      if targetDist <= 7.5 and targetDistY <= -2.5 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_None, 0, -1)
      elseif targetDist <= 2.5 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, DIST_None, 0, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, DIST_None, 0, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
      end
   else
      local Act01Per = 0
      local Act02Per = 0
      local Act03Per = 0
      local Act04Per = 0
      local Act05Per = 0
      local Act06Per = 0
      local Act07Per = 0
      local Act08Per = 0
      local Act09Per = 0
      if targetDist >= 4.7 then
         Act01Per = 5
         Act02Per = 5
         Act03Per = 45
         Act04Per = 45
      elseif targetDist >= 3.3 then
         Act01Per = 35
         Act02Per = 35
         Act03Per = 15
         Act04Per = 15
      elseif targetDist >= 1.9 then
         Act01Per = 45
         Act02Per = 45
         Act03Per = 5
         Act04Per = 5
      elseif targetDist >= 1 then
         if ai:IsFinishTimer(1) == true then
            Act01Per = 45
            Act02Per = 46
            Act05Per = 3
            Act08Per = 3
            Act09Per = 3
         else
            Act01Per = 50
            Act02Per = 50
         end
      elseif targetDist >= 0.6 then
         if ai:IsFinishTimer(1) == true then
            Act01Per = 20
            Act02Per = 20
            Act05Per = 20
            Act08Per = 20
            Act09Per = 20
         else
            Act01Per = 50
            Act02Per = 50
         end
      elseif ai:IsFinishTimer(1) == true then
         Act01Per = 15
         Act02Per = 15
         Act05Per = 20
         Act07Per = 30
         Act08Per = 10
         Act09Per = 10
      else
         Act01Per = 25
         Act02Per = 25
         Act07Per = 50
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per)
      if fateAct <= Act01Per then
         local AppDist = Att3000_Dist_max
         local DashDist = Att3000_Dist_max + 3
         local Odds_Guard = 0
         local AttID = 3000
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per then
         local AppDist = Att3001_Dist_max
         local DashDist = Att3001_Dist_max + 3
         local Odds_Guard = 0
         local AttID = 3001
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         local AppDist = Att3002_Dist_max
         local DashDist = Att3002_Dist_max + 3
         local Odds_Guard = 0
         local AttID = 3002
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
         local AppDist = Att3003_Dist_max
         local DashDist = Att3003_Dist_max + 3
         local Odds_Guard = 0
         local AttID = 3003
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
         ai:SetTimer(1, 3)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
         ai:SetTimer(1, 3)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2.5)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
         ai:SetTimer(1, 3)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
         ai:SetTimer(1, 3)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
         GetWellSpace_Odds = 0
      end
      local fateGWS = ai:GetRandam_Int(1, 100)
      if fateGWS <= GetWellSpace_Odds then
         if fate2 <= 60 then
         elseif fate2 <= 65 then
            goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
         elseif fate2 <= 85 then
            if fate3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
            elseif fate3 <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
         -- Tried to add an 'end' here but it's incorrect
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

Kinobori337000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kinobori337000Battle_Terminate = function(ai, goal)
end

Kinobori337000Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, 6)
         if fate <= 15 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
         elseif fate <= 30 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2.5)
         elseif fate <= 45 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
         elseif fate <= 60 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
         else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3004, TARGET_ENE_0, DIST_None)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
         -- Tried to add an 'end' here but it's incorrect
         local distDamagedStep = 5
         local oddsDamagedStep = 25
         local bkStepPer = 30
         local leftStepPer = 35
         local rightStepPer = 35
         local safetyDist = 2.5
         if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
            return true
         end
         local distResNear = 6
         local distResFar = 15
         local oddsResNear = 0
         local oddsResFar = 15
         local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
         if ResBehavID == 1 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            return true
         elseif ResBehavID == 2 then
            if fate2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
            end
            return true
         end
         local oddsResponse = 35
         local bkStepPer = 50
         local leftStepPer = 25
         local rightStepPer = 25
         local safetyDist = 2.5
         if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
            return true
         end
         return false
end


