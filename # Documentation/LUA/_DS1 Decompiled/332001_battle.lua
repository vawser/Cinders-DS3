REGISTER_GOAL(GOAL_ThreeHaoriBunsin332001_Battle, "ThreeHaoriBunsin332001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 50
local Att3001_Dist_min = 0
local Att3001_Dist_max = 50
local Att3003_Dist_min = 0
local Att3003_Dist_max = 6.5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 8
local Att3006_Dist_min = 0
local Att3006_Dist_max = 10
local Att3007_Dist_min = 0
local Att3007_Dist_max = 10
REGISTER_GOAL_NO_UPDATE(GOAL_ThreeHaoriBunsin332001_Battle, 1)
OnIf_332001 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local AA01Per = 0
   local AA02Per = 0
   local AA03Per = 0
   if targetDist >= 10 then
      AA01Per = 0
      AA02Per = 20
      AA03Per = 80
   elseif targetDist >= 4 then
      AA01Per = 0
      AA02Per = 20
      AA03Per = 80
   else
      AA01Per = 0
      AA02Per = 20
      AA03Per = 80
   end
   if fate <= AA01Per then
   elseif fate <= AA01Per + AA02Per then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 1.5), 0, 0, 0, 0)
   elseif fate2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
   elseif fate2 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
   end
end

ThreeHaoriBunsin332001Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local fate5 = ai:GetRandam_Int(1, 100)
   local activeBreathChr = ai:GetEventRequest(0)
   local DisAppear_flag = ai:GetEventRequest(1)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   if DisAppear_flag == 1 then
      Act07Per = 100
   elseif role == ROLE_TYPE_Kankyaku and fate <= 100 then
      Act06Per = 30
      Act08Per = 70
   elseif role == ROLE_TYPE_Torimaki and fate2 <= 100 then
      Act06Per = 70
      Act08Per = 30
   elseif targetDist >= 8 then
      Act01Per = 30
      Act02Per = 20
      Act06Per = 30
      Act08Per = 20
   elseif targetDist >= 6.5 then
      Act01Per = 20
      Act02Per = 20
      Act03Per = 20
      Act06Per = 25
      Act08Per = 15
   elseif targetDist >= 4 then
      Act01Per = 10
      Act02Per = 20
      Act03Per = 20
      Act04Per = 10
      Act05Per = 10
      Act06Per = 25
      Act08Per = 5
   else
      Act01Per = 0
      Act02Per = 0
      Act03Per = 10
      Act04Per = 15
      Act05Per = 15
      Act06Per = 60
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per)
   if fateAct <= Act01Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3001_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_None, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_None, 0)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 1, 90)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 1, 90)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      ThreeHaoriBunsin332001StepForLeave(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3009, TARGET_ENE_0, DIST_None, 0)
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 100
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      ThreeHaoriBunsin332001_ActAfter_AdjustSpace(ai, goal)
   end
end

ThreeHaoriBunsin332001_ActAfter_AdjustSpace = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2.5), TARGET_NONE, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

ThreeHaoriBunsin332001StepForLeave = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 8, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 720, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 6)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 8, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 722, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 6)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 8, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 723, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 6)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 8, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 721, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 5, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 710, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 5, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 5, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 5, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 3, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 3, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 3, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 3, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 1, 90)
   end
end

ThreeHaoriBunsin332001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ThreeHaoriBunsin332001Battle_Terminate = function(ai, goal)
end

ThreeHaoriBunsin332001Battle_Interupt = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
   if ai:IsInterupt(INTERUPT_Damaged) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3009, TARGET_ENE_0, DIST_None, 0)
      return true
   end
   return false
end


