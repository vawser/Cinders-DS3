REGISTER_GOAL(GOAL_LakeBeast_m12_353001_Battle, "LakeBeast_m12_353001Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_LakeBeast_m12_353001_Battle, 1)
LakeBeast_m12_353001Battle_Activate = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local fate5 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
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
   if targetDist >= 44.6 and targetDist <= 61.3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 38.4) then
      Act06Per = 100
   end
   if targetDist <= 44.6 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 32.6) then
      Act01Per = 100
   end
   if targetDist >= 45.1 and targetDist <= 56.1 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 34.4) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      Act07Per = 100
   end
   if targetDist <= 45.1 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 50) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      Act02Per = 100
   end
   if targetDist >= 46.4 and targetDist <= 60.7 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 38.6) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      Act08Per = 100
   end
   if targetDist <= 46.4 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 47.4) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      Act03Per = 100
   end
   if targetDist >= 53.4 and targetDist <= 65 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 38.4) then
      Act04Per = 100
   end
   if targetDist >= 65 and targetDist <= 90 and targetDistY <= 10 then
      Act09Per = 100
   end
   if targetDist >= 80 and targetDist <= 120 and targetDistY <= 17 then
      Act05Per = 100
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per)
   if fateAct <= Act01Per then
      LakeBeast_m12_353001_Act01(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      LakeBeast_m12_353001_Act02(ai, goal)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      LakeBeast_m12_353001_Act03(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      LakeBeast_m12_353001_Act04(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      LakeBeast_m12_353001_Act05(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      LakeBeast_m12_353001_Act06(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      LakeBeast_m12_353001_Act07(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      LakeBeast_m12_353001_Act08(ai, goal)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
      LakeBeast_m12_353001_Act09(ai, goal)
      GetWellSpace_Odds = 0
   else
      LakeBeast_m12_353001_Act10(ai, goal)
      GetWellSpace_Odds = 0
   end
end

LakeBeast_m12_353001_Act01 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 40, -1, 20)
end

LakeBeast_m12_353001_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
end

LakeBeast_m12_353001_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

LakeBeast_m12_353001_Act04 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 60, -1, 20)
end

LakeBeast_m12_353001_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 70, -1, 20)
end

LakeBeast_m12_353001_Act06 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 45, -1, 20)
end

LakeBeast_m12_353001_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, 45)
end

LakeBeast_m12_353001_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, 45)
end

LakeBeast_m12_353001_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 70, -1, 20)
end

LakeBeast_m12_353001_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
end

LakeBeast_m12_353001_ActAfter_AdjustSpace = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
end

LakeBeast_m12_353001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LakeBeast_m12_353001Battle_Terminate = function(ai, goal)
end

LakeBeast_m12_353001Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   return false
end


