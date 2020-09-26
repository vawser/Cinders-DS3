REGISTER_GOAL(GOAL_ThreeHaori_nomal332002_Battle, "ThreeHaori_nomal332002Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 50
local Att3001_Dist_min = 0
local Att3001_Dist_max = 50
local Att3003_Dist_min = 0
local Att3003_Dist_max = 6.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 10
local Att3007_Dist_min = 0
local Att3007_Dist_max = 10
REGISTER_GOAL_NO_UPDATE(GOAL_ThreeHaori_nomal332002_Battle, 1)
ThreeHaori_nomal332002Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   if targetDist >= 8 then
      Act01Per = 60
      Act02Per = 40
   elseif targetDist >= 6.5 then
      Act01Per = 50
      Act02Per = 50
   elseif targetDist >= 4 then
      Act01Per = 20
      Act02Per = 40
      Act03Per = 40
   else
      Act01Per = 15
      Act02Per = 30
      Act03Per = 55
   end
   local myThinkId = ai:GetNpcThinkParamID()
   if myThinkId == 332003 then
      Act03Per = 0
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per)
   if fateAct <= Act01Per then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_None, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_None, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 1, 90)
      GetWellSpace_Odds = 0
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 1, 90)
      GetWellSpace_Odds = 0
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      ThreeHaori_nomal332002_ActAfter_AdjustSpace(ai, goal)
   end
end

ThreeHaori_nomal332002_ActAfter_AdjustSpace = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if fate <= 20 then
   elseif fate <= 100 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 3), 0, 0, 0, 0)
   elseif fate2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif fate2 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   end
end

ThreeHaori_nomal332002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ThreeHaori_nomal332002Battle_Terminate = function(ai, goal)
end

ThreeHaori_nomal332002Battle_Interupt = function(ai, goal)
   return false
end


