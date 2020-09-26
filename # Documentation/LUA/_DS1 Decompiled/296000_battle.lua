REGISTER_GOAL(GOAL_totem296000_Battle, "totem296000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.5
local Att3001_Dist_min = 0
local Att3001_Dist_max = 3
local Att3002_Dist_min = 0
local Att3002_Dist_max = 1.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 3
local Att3004_Dist_min = 0
local Att3004_Dist_max = 1.5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 3
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.5
local Att3007_Dist_min = 0
local Att3007_Dist_max = 3
local Att3008_Dist_min = 0
local Att3008_Dist_max = 1.5
local Att3009_Dist_min = 0
local Att3009_Dist_max = 2.5
REGISTER_GOAL_NO_UPDATE(GOAL_totem296000_Battle, 1)
totem296000Battle_Activate = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
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
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 20) and targetDist <= 1.5 then
      Act01Per = 55
      Act02Per = 30
      Act09Per = 10
      Act10Per = 5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 15) and targetDist <= 3 then
      Act02Per = 60
      Act10Per = 20
      Act11Per = 20
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 20) and targetDist <= 1.5 then
      Act03Per = 55
      Act04Per = 30
      Act09Per = 10
      Act10Per = 5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 15) and targetDist <= 3 then
      Act04Per = 60
      Act10Per = 20
      Act11Per = 20
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 20) and targetDist <= 1.5 then
      Act05Per = 55
      Act06Per = 30
      Act09Per = 10
      Act10Per = 5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 15) and targetDist <= 3 then
      Act06Per = 60
      Act10Per = 20
      Act11Per = 20
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 20) and targetDist <= 1.5 then
      Act07Per = 55
      Act08Per = 30
      Act09Per = 10
      Act10Per = 5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 15) and targetDist <= 3 then
      Act08Per = 60
      Act10Per = 20
      Act11Per = 20
   elseif targetDist <= 1.5 then
      Act09Per = 80
      Act10Per = 20
   elseif targetDist <= 2.5 then
      Act10Per = 80
      Act11Per = 20
   else
      Act11Per = 100
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per)
   if fateAct <= Act01Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, ai:GetRandam_Float(1.3, 2.8), TARGET_None, true, -1)
   end
end

totem296000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

totem296000Battle_Terminate = function(ai, goal)
end

totem296000Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and targetDist >= 7 and fate <= 75 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_None, false, -1)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
      return true
   end
   return false
end


