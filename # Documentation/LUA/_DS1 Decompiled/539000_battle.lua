REGISTER_GOAL(GOAL_Ja_yearl_demon539000_Battle, "Ja_yearl_demon539000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 12.5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 10.6
local Att3003_Dist_min = 0
local Att3003_Dist_max = 0
local Att3004_Dist_min = 0
local Att3004_Dist_max = 10.4
local Att3006_Dist_min = 0
local Att3006_Dist_max = 11.3
local Att3007_Dist_min = 0
local Att3007_Dist_max = 8
local Att3008_Dist_min = 0
local Att3008_Dist_max = 10
local Att3009_Dist_min = 22
local Att3009_Dist_max = 29
local Att3010_Dist_min = 10
local Att3010_Dist_max = 15
REGISTER_GOAL_NO_UPDATE(GOAL_Ja_yearl_demon539000_Battle, 1)
Ja_yearl_demon539000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest(0)
   local waitTime = ai:GetRandam_Float(0.5, 2)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
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
   local Act14Per = 0
   local Act15Per = 0
   local Act16Per = 0
   local Act17Per = 0
   local Act18Per = 0
   local Act19Per = 0
   local GetWellSpace_Odds = 0
   if ai:IsFinishTimer(1) == true then
      ai:SetTimer(1, 9999)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0, 3), TARGET_ENE_0, 0, 0, 0)
   end
   if role == ROLE_TYPE_Attack then
      if eventNo == 1 and ai:IsFinishTimer(0) == true then
         if targetDist >= 22 then
            Act01Per = 8
            Act02Per = 8
            Act04Per = 8
            Act05Per = 8
            Act06Per = 3
            Act07Per = 0
            Act08Per = 25
            Act09Per = 40
         elseif targetDist >= 12.5 then
            Act01Per = 15
            Act02Per = 15
            Act04Per = 15
            Act05Per = 15
            Act06Per = 5
            Act07Per = 0
            Act09Per = 35
         elseif targetDist >= 8 then
            Act01Per = 18
            Act02Per = 18
            Act04Per = 18
            Act05Per = 18
            Act06Per = 5
            Act07Per = 5
            Act09Per = 18
         elseif targetDist >= 4 then
            Act01Per = 20
            Act02Per = 20
            Act04Per = 20
            Act05Per = 20
            Act06Per = 5
            Act07Per = 5
            Act09Per = 10
         else
            Act01Per = 21
            Act02Per = 21
            Act04Per = 21
            Act05Per = 21
            Act06Per = 5
            Act07Per = 11
         end
      elseif targetDist >= 22 then
         Act01Per = 25
         Act02Per = 25
         Act04Per = 25
         Act05Per = 20
         Act06Per = 5
         Act07Per = 0
      elseif targetDist >= 13.4 then
         Act01Per = 24
         Act02Per = 24
         Act04Per = 24
         Act05Per = 24
         Act06Per = 4
         Act07Per = 0
      elseif targetDist >= 8 then
         Act01Per = 23
         Act02Per = 23
         Act04Per = 23
         Act05Per = 19
         Act06Per = 6
         Act07Per = 6
      elseif targetDist >= 4 then
         Act01Per = 22
         Act02Per = 22
         Act04Per = 22
         Act05Per = 22
         Act06Per = 5
         Act07Per = 7
      else
         Act01Per = 21
         Act02Per = 21
         Act04Per = 21
         Act05Per = 21
         Act06Per = 5
         Act07Per = 11
      end
   elseif role == ROLE_TYPE_Torimaki then
      if eventNo == 1 and ai:IsFinishTimer(0) == true then
         Act08Per = 4
         Act09Per = 4
         Act10Per = 84
         Act12Per = 2
         Act13Per = 2
         Act14Per = 2
         Act15Per = 2
      else
         Act10Per = 84
         Act12Per = 2
         Act13Per = 2
         Act14Per = 2
         Act15Per = 2
      end
   elseif targetDist >= 22 then
      Act10Per = 20
      Act11Per = 80
   elseif targetDist >= 15 then
      if eventNo == 1 and ai:IsFinishTimer(0) == true then
         Act08Per = 25
         Act09Per = 25
         Act10Per = 10
         Act16Per = 10
         Act17Per = 10
         Act18Per = 10
         Act19Per = 10
      else
         Act10Per = 20
         Act16Per = 20
         Act17Per = 20
         Act18Per = 20
         Act19Per = 20
      end
   else
      Act10Per = 50
      Act16Per = 13
      Act17Per = 13
      Act18Per = 12
      Act19Per = 12
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per + Act18Per + Act19Per)
   if fateAct <= Act01Per then
      Ja_yearl_demon539000_Act01(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per then
      Ja_yearl_demon539000_Act02(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      Ja_yearl_demon539000_Act03(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      Ja_yearl_demon539000_Act04(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      Ja_yearl_demon539000_Act05(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      Ja_yearl_demon539000_Act06(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      Ja_yearl_demon539000_Act07(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      Ja_yearl_demon539000_Act08(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
      Ja_yearl_demon539000_Act09(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
      Ja_yearl_demon539000_Act10(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per then
      Ja_yearl_demon539000_Act11(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per then
      Ja_yearl_demon539000_Act12(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per then
      Ja_yearl_demon539000_Act13(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per then
      Ja_yearl_demon539000_Act14(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per then
      Ja_yearl_demon539000_Act15(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per then
      Ja_yearl_demon539000_Act16(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per then
      Ja_yearl_demon539000_Act17(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per + Act18Per then
      Ja_yearl_demon539000_Act18(ai, goal)
      GetWellSpace_Odds = 100
   else
      Ja_yearl_demon539000_Act19(ai, goal)
      GetWellSpace_Odds = 100
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      Ja_yearl_demon539000_GetWellSpace_Act(ai, goal)
   end
end

Ja_yearl_demon539000_Act01 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 10
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3000_Dist_max
      DashDist = Att3000_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act02 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 10
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3002_Dist_max
      DashDist = Att3002_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 1.5, 10)
end

Ja_yearl_demon539000_Act03 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 0
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_Act04 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 10
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3004_Dist_max
      DashDist = Att3000_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 8)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act05 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 10
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3006_Dist_max
      DashDist = Att3006_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_Act06 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 10
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3007_Dist_max
      DashDist = Att3007_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle)
end

Ja_yearl_demon539000_Act08 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fatetime = ai:GetRandam_Int(30, 60)
   ai:SetTimer(0, fatetime)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 15, 22, TARGET_ENE_0, true, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_None, -1, -1)
end

Ja_yearl_demon539000_Act09 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fatetime = ai:GetRandam_Int(30, 60)
   ai:SetTimer(0, fatetime)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 15, 22, TARGET_ENE_0, true, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, -1, -1)
end

Ja_yearl_demon539000_Act10 = function(ai, goal)
   local GW_fate = ai:GetRandam_Int(0, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local friendNum = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + bRight, TARGET_ENE_0, 2)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(50, 110), true, true, -1)
end

Ja_yearl_demon539000_Act11 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = 22
   local DashDist = 32
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 15, 22, TARGET_ENE_0, true, -1)
end

Ja_yearl_demon539000_Act12 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max + 2
   local DashDist = Att3000_Dist_max + 12
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3000_Dist_max + 2
      DashDist = Att3000_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act13 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max + 2
   local DashDist = Att3002_Dist_max + 12
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3002_Dist_max + 2
      DashDist = Att3002_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 1.5, 10)
end

Ja_yearl_demon539000_Act14 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max + 2
   local DashDist = Att3004_Dist_max + 12
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3004_Dist_max + 2
      DashDist = Att3004_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act15 = function(ai, goal)
   local DashFate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max + 2
   local DashDist = Att3006_Dist_max + 12
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if DashFate <= 60 then
      targetDist = ai:GetDist(TARGET_ENE_0)
      AppDist = Att3000_Dist_max + 2
      DashDist = Att3006_Dist_max + 9999
      Odds_Guard = 0
      fate = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_Act16 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max + 2
   local DashDist = Att3000_Dist_max + 12
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act17 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max + 2
   local DashDist = Att3002_Dist_max + 12
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 1.5, 10)
end

Ja_yearl_demon539000_Act18 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max + 2
   local DashDist = Att3004_Dist_max + 12
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act19 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max + 2
   local DashDist = Att3006_Dist_max + 12
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_GetWellSpace_Act = function(ai, goal)
   local GW_fate = ai:GetRandam_Int(0, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local friendNum = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + bRight, TARGET_ENE_0, 2)
   if GW_fate <= 50 then
   elseif GW_fate <= 75 and friendNum < 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(50, 110), true, true, -1)
   else
      local fate = ai:GetRandam_Int(1, 100)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Ja_yearl_demon539000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ja_yearl_demon539000Battle_Terminate = function(ai, goal)
end

Ja_yearl_demon539000Battle_Interupt = function(ai, goal)
   return false
end


