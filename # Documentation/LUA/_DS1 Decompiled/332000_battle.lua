REGISTER_GOAL(GOAL_ThreeHaori332000_Battle, "ThreeHaori332000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 50
local Att3001_Dist_min = 0
local Att3001_Dist_max = 50
local Att3003_Dist_min = 0
local Att3003_Dist_max = 6.5
local Att3004_Dist_min = 0
local Att3004_Dist_max = 99
local Att3005_Dist_min = 0
local Att3005_Dist_max = 8
local Att3006_Dist_min = 0
local Att3006_Dist_max = 10
local Att3007_Dist_min = 0
local Att3007_Dist_max = 10
local Att3008_Dist_min = 0
local Att3008_Dist_max = 99
REGISTER_GOAL_NO_UPDATE(GOAL_ThreeHaori332000_Battle, 1)
OnIf_332000 = function(ai, goal, codeNo)
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

ThreeHaori332000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local activeBreathChr = ai:GetEventRequest(0)
   local Bunsin_flag = ai:GetEventRequest(1)
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
   local FirstImpression = ai:GetNumber(0)
   local Bunsin_Odds = 1
   if Bunsin_flag == 1 then
      Bunsin_Odds = 0
   elseif Bunsin_flag == 2 then
      Bunsin_Odds = 99999
   elseif ai:IsFinishTimer(0) == false then
      Bunsin_Odds = 0
   elseif FirstImpression == 0 then
      Bunsin_Odds = 99999
   elseif activeBreathChr <= 1 then
      Bunsin_Odds = 3
   elseif activeBreathChr <= 3 then
      Bunsin_Odds = 2
   elseif activeBreathChr <= 5 then
      Bunsin_Odds = 1.5
   elseif activeBreathChr <= 6 then
      Bunsin_Odds = 1
   elseif activeBreathChr <= 8 then
      Bunsin_Odds = 0
   else
      Bunsin_Odds = 99999
   end
   if role == ROLE_TYPE_Kankyaku and fate <= 100 then
      Act06Per = 30
      Act08Per = 70
      Act07Per = 100 * Bunsin_Odds
   elseif role == ROLE_TYPE_Torimaki and fate2 <= 100 then
      Act06Per = 70
      Act08Per = 30
      Act07Per = 100 * Bunsin_Odds
   elseif targetDist >= 8 then
      Act01Per = 60
      Act02Per = 40
      Act07Per = 100 * Bunsin_Odds
   elseif targetDist >= 6.5 then
      Act01Per = 30
      Act02Per = 30
      Act03Per = 40
      Act07Per = 100 * Bunsin_Odds
   elseif targetDist >= 4 then
      Act01Per = 20
      Act02Per = 20
      Act03Per = 35
      Act04Per = 10
      Act05Per = 10
      Act06Per = 5
      Act07Per = 100 * Bunsin_Odds
   else
      Act01Per = 0
      Act02Per = 0
      Act03Per = 10
      Act04Per = 15
      Act05Per = 15
      Act06Per = 60
      Act07Per = 100 * Bunsin_Odds
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
      ThreeHaori332000StepForLeave(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      ai:SetNumber(0, 1)
      if hprate <= 0.3 then
         ai:SetTimer(0, 9999)
      else
         ai:SetTimer(0, 15)
      end
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 100
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      ThreeHaori332000_ActAfter_AdjustSpace(ai, goal)
   end
end

ThreeHaori332000_ActAfter_AdjustSpace = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2.5), TARGET_NONE, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

ThreeHaori332000StepForLeave = function(ai, goal)
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
      ai:SetTimer(1, 5)
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3008, TARGET_ENE_0, DIST_None, 0)
   end
end

ThreeHaori332000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ThreeHaori332000Battle_Terminate = function(ai, goal)
end

ThreeHaori332000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and ai:IsFinishTimer(1) == true and fate <= 50 then
      ai:SetTimer(1, 5)
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3008, TARGET_ENE_0, DIST_None, 0)
      return true
   end
   return false
end


