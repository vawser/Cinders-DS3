REGISTER_GOAL(GOAL_wyvern352000_Battle, "wyvern352000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 10
local Att3001_Dist_min = 0
local Att3001_Dist_max = 4
local Att3002_Dist_min = 0
local Att3002_Dist_max = 12
local Att3003_Dist_min = 0
local Att3003_Dist_max = 16
local Att3004_Dist_min = 0
local Att3004_Dist_max = 12
local Att3005_Dist_min = 0
local Att3005_Dist_max = 16
REGISTER_GOAL_NO_UPDATE(GOAL_wyvern352000_Battle, 1)
wyvern352000Battle_Activate = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local fate5 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetdistXZ = ai:GetDistXZ(TARGET_ENE_0)
   local targetdistYSigned = ai:GetDistYSigned(TARGET_ENE_0)
   local targetdistY = ai:GetDistY(TARGET_ENE_0)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   local Act09Per = 0
   local AttFlag = 0
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1512700) then
      AttFlag = 1
   end
   local HeightFlag = 0
   if targetdistYSigned <= -4 and targetdistYSigned >= -7 then
      HeightFlag = 1
   end
   local DiveAttFlag = 0
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1512701) and ai:IsInsideTargetRegion(TARGET_SELF, 1512701) then
      DiveAttFlag = 1
   end
   if AttFlag == 0 then
      Act09Per = 100
   elseif HeightFlag == 0 then
      Act08Per = 100
   elseif targetdistY * 2 <= targetdistXZ then
      Act01Per = 0
      Act02Per = 5
      Act03Per = 25
      Act04Per = 70
      Act07Per = 0
   elseif targetdistY <= targetdistXZ then
      Act01Per = 5
      Act02Per = 20
      Act03Per = 75
      Act04Per = 0
      Act07Per = 0
   elseif targetdistY * 0.5 <= targetdistXZ then
      Act01Per = 15
      Act02Per = 75
      Act03Per = 0
      Act04Per = 0
      Act07Per = 10
   else
      Act01Per = 65
      Act02Per = 5
      Act03Per = 0
      Act04Per = 0
      Act07Per = 30
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per)
   if fateAct <= Act01Per then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 2, TARGET_SELF, true, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Far, -1, -1)
      GetWellSpace_Odds = 90
   elseif fateAct <= Act01Per + Act02Per then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 3, TARGET_SELF, true, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Far, -1, -1)
      GetWellSpace_Odds = 80
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 6.5, TARGET_SELF, true, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Far, -1, -1)
      GetWellSpace_Odds = 60
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 12, TARGET_SELF, true, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Far, -1, -1)
      GetWellSpace_Odds = 40
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 10, TARGET_SELF, true, 8)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Far, -1, -1)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 10, TARGET_SELF, true, 8)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Far, -1, -1)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 3, TARGET_SELF, true)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      goal:AddSubGoal(GOAL_COMMON_KeepDistYAxis, 10, TARGET_ENE_0, 4, 7, TARGET_ENE_0)
      GetWellSpace_Odds = 0
   else
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 3, TARGET_SELF, true)
      GetWellSpace_Odds = 0
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      wyvern352000_ActAfter_AdjustSpace(ai, goal)
   end
end

wyvern352000_ActAfter_AdjustSpace = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if fate <= 0 then
   elseif fate2 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, -1, 0)
   elseif fate2 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, -1, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, -1, 0)
   end
end

wyvern352000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

wyvern352000Battle_Terminate = function(ai, goal)
end

wyvern352000Battle_Interupt = function(ai, goal)
   return false
end


