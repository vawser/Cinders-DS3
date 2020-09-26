REGISTER_GOAL(GOAL_WD_Seath_Muteki529001_Battle, "WD_Seath_Muteki529001Battle")
local Att3000_Dist_min = -0.2
local Att3000_Dist_max = 2
local Att3001_Dist_min = 6.2
local Att3001_Dist_max = 8.9
local Att3002_Dist_min = -2.4
local Att3002_Dist_max = 9.1
local Att3003_Dist_min = -2.4
local Att3003_Dist_max = 4.6
local Att3004_Dist_min = -2
local Att3004_Dist_max = 5.3
local Att3005_Dist_min = -2.4
local Att3005_Dist_max = 9.3
local Att3006_Dist_min = -2.4
local Att3006_Dist_max = 4
local Att3007_Dist_min = -2.4
local Att3007_Dist_max = 4
local Att3008_Dist_min = -4
local Att3008_Dist_max = -2.9
local Att3009_Dist_min = -4
local Att3009_Dist_max = -0.8
local Att3010_Dist_min = -2.4
local Att3010_Dist_max = -2.47
REGISTER_GOAL_NO_UPDATE(GOAL_WD_Seath_Muteki529001_Battle, 1)
WD_Seath_Muteki529001Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest()
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 130, 3)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 131, 4)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 132, 5)
   ai:AddObserveChrDmySphere(3, TARGET_ENE_0, 133, 3)
   ai:AddObserveChrDmySphere(4, TARGET_ENE_0, 134, 4)
   ai:AddObserveChrDmySphere(5, TARGET_ENE_0, 135, 5)
   ai:AddObserveChrDmySphere(6, TARGET_ENE_0, 136, 3)
   ai:AddObserveChrDmySphere(7, TARGET_ENE_0, 137, 4)
   ai:AddObserveChrDmySphere(8, TARGET_ENE_0, 138, 5)
   ai:AddObserveChrDmySphere(9, TARGET_ENE_0, 139, 3)
   ai:AddObserveChrDmySphere(10, TARGET_ENE_0, 140, 4)
   ai:AddObserveChrDmySphere(11, TARGET_ENE_0, 141, 5)
   ai:AddObserveChrDmySphere(12, TARGET_ENE_0, 142, 3)
   ai:AddObserveChrDmySphere(13, TARGET_ENE_0, 143, 4)
   ai:AddObserveChrDmySphere(14, TARGET_ENE_0, 144, 5)
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
   local GetWellSpace_Odds = 100
   if ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 9999)
      ai:SetTimer(1, 20)
   end
   if ai:IsFinishTimer(1) == true then
      Act05Per = 100
   elseif ai:IsInsideObserve(3) or ai:IsInsideObserve(4) or ai:IsInsideObserve(6) or ai:IsInsideObserve(7) or ai:IsInsideObserve(9) or ai:IsInsideObserve(10) or ai:IsInsideObserve(12) or ai:IsInsideObserve(13) then
      Act00Per = 100
      if ai:IsInsideObserve(2) or ai:IsInsideObserve(5) or ai:IsInsideObserve(8) or ai:IsInsideObserve(11) or ai:IsInsideObserve(14) then
         Act01Per = 100
      end
      if ai:IsInsideObserve(6) or ai:IsInsideObserve(7) or ai:IsInsideObserve(8) then
         Act02Per = 100
      end
      if ai:IsInsideObserve(6) or ai:IsInsideObserve(9) or ai:IsInsideObserve(12) then
         Act03Per = 80
      end
      if ai:IsInsideObserve(3) or ai:IsInsideObserve(4) or ai:IsInsideObserve(6) or ai:IsInsideObserve(7) then
         Act04Per = 80
      end
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(3) or ai:IsInsideObserve(6) or ai:IsInsideObserve(9) or ai:IsInsideObserve(12) then
         Act10Per = 0
      end
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 15) and targetDist <= 18.7 then
         Act02Per = 100
      end
      if targetDist <= -1 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 10) then
            Act00Per = 0
            Act02Per = 70
            Act08Per = 10
            Act09Per = 10
            Act05Per = 0
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 64) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            Act08Per = 50
            Act10Per = 50
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 54) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            Act09Per = 50
            Act10Per = 50
         else
            Act06Per = 40
            Act07Per = 40
            Act10Per = 20
         end
      else
         Act11Per = 0
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         local fateAct = ai:GetRandam_Int(1, Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per)
         if fateAct <= Act00Per then
            WD_Seath_Muteki529001_Act00(ai, goal)
         elseif fateAct <= Act00Per + Act01Per then
            WD_Seath_Muteki529001_Act01(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per then
            WD_Seath_Muteki529001_Act02(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per then
            WD_Seath_Muteki529001_Act03(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per then
            WD_Seath_Muteki529001_Act04(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
            WD_Seath_Muteki529001_Act05(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
            WD_Seath_Muteki529001_Act06(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
            WD_Seath_Muteki529001_Act07(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
            WD_Seath_Muteki529001_Act08(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
            WD_Seath_Muteki529001_Act09(ai, goal)
         elseif fateAct <= Act00Per + Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
            WD_Seath_Muteki529001_Act10(ai, goal)
         else
            WD_Seath_Muteki529001_Act11(ai, goal)
         end
         local fateGWS = ai:GetRandam_Int(1, 100)
         if fateGWS <= GetWellSpace_Odds then
            WD_Seath_Muteki529001_GetWellSpace_Act(ai, goal)
         end
end

WD_Seath_Muteki529001_Act00 = function(ai, goal)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act01 = function(ai, goal)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act02 = function(ai, goal)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act03 = function(ai, goal)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act04 = function(ai, goal)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act05 = function(ai, goal)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act06 = function(ai, goal)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act07 = function(ai, goal)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act08 = function(ai, goal)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act09 = function(ai, goal)
   local AppDist = Att3009_Dist_max
   local DashDist = Att3009_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act10 = function(ai, goal)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act11 = function(ai, goal)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max + 200
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
end

WD_Seath_Muteki529001_GetWellSpace_Act = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   else
   end
end

WD_Seath_Muteki529001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

WD_Seath_Muteki529001Battle_Terminate = function(ai, goal)
end

WD_Seath_Muteki529001Battle_Interupt = function(ai, goal)
   return false
end


