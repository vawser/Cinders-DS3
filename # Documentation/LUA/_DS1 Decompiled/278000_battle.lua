REGISTER_GOAL(GOAL_Mimic278000_Battle, "Mimic278000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 4.2
local Att3001_Dist_min = 0
local Att3001_Dist_max = 6.1
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4.5
local Att3003_Dist_min = 5
local Att3003_Dist_max = 9.8
local Att3004_Dist_min = 0
local Att3004_Dist_max = 2.7
REGISTER_GOAL_NO_UPDATE(GOAL_Mimic278000_Battle, 1)
Mimic278000Battle_Activate = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local EventNo = ai:GetEventRequest()
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
   local GetWellSpace_Odds = 0
   if ai:HasSpecialEffectId(TARGET_SELF, 5420) then
      if EventNo == 210 then
         Act05Per = 100
      elseif targetDist >= 10 then
         Act00Per = 10
         Act01Per = 10
         Act02Per = 20
         Act03Per = 50
         Act04Per = 10
         GetWellSpace_Odds = 100
      elseif targetDist >= 5 then
         Act00Per = 20
         Act01Per = 20
         Act02Per = 20
         Act03Per = 30
         Act04Per = 10
         GetWellSpace_Odds = 100
      elseif targetDist >= 2.5 then
         Act00Per = 20
         Act01Per = 40
         Act02Per = 20
         Act03Per = 0
         Act04Per = 20
         GetWellSpace_Odds = 100
      else
         Act00Per = 40
         Act01Per = 20
         Act02Per = 10
         Act03Per = 0
         Act04Per = 30
         GetWellSpace_Odds = 100
      end
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5421) then
      if EventNo == 200 then
         Act09Per = 100
      elseif EventNo == 10 then
         Act06Per = 100
      elseif EventNo == 100 then
         Act10Per = 100
      else
         Act07Per = 100
      end
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5422) then
      if EventNo == 100 then
         Act10Per = 100
      elseif EventNo == 201 then
         Act08Per = 100
      else
         Act07Per = 100
      end
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5423) then
      if EventNo == 100 then
         Act10Per = 100
      elseif EventNo == 211 then
         Act08Per = 100
      else
         Act07Per = 100
      end
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 10000, TARGET_SELF, 0, 0, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local fateAct = ai:GetRandam_Int(1, Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per)
   if fateAct <= Act00Per then
      Mimic278000_Act00(ai, goal)
   elseif fateAct <= Act00Per + Act01Per then
      Mimic278000_Act01(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per then
      Mimic278000_Act02(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per then
      Mimic278000_Act03(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per then
      Mimic278000_Act04(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      Mimic278000_Act05(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      Mimic278000_Act06(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      Mimic278000_Act07(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      Mimic278000_Act08(ai, goal)
   elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
      Mimic278000_Act09(ai, goal)
   else
      Mimic278000_Act10(ai, goal)
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      local Odds_Guard = 0
      local Odds_NoAct = 60
      local Odds_BackAndSide = 5
      local Odds_Back = 5
      local Odds_BitWait = 0
      local Odds_Backstep = 30
      GetWellSpace_Act(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
   end
end

Mimic278000_Act00 = function(ai, goal)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3000
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
end

Mimic278000_Act01 = function(ai, goal)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3001
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
end

Mimic278000_Act02 = function(ai, goal)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3002
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
end

Mimic278000_Act03 = function(ai, goal)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3003
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
end

Mimic278000_Act04 = function(ai, goal)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3004
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
end

Mimic278000_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_SELF, DIST_None, 0)
end

Mimic278000_Act06 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, -1)
end

Mimic278000_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 300, TARGET_SELF, 0, 0, 0)
end

Mimic278000_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_SELF, DIST_None, 0)
end

Mimic278000_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_SELF, DIST_None, 0)
end

Mimic278000_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_SELF, DIST_None, 0)
end

Mimic278000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Mimic278000Battle_Terminate = function(ai, goal)
end

Mimic278000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:HasSpecialEffectId(TARGET_SELF, 5420) then
      local distDamagedStep = 3
      local oddsDamagedStep = 10
      local bkStepPer = 50
      local leftStepPer = 25
      local rightStepPer = 25
      local safetyDist = 3
      if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
         return true
      end
      local distGuardBreak_Act = 4.2
      local oddsGuardBreak_Act = 50
      if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
   end
   return false
end


