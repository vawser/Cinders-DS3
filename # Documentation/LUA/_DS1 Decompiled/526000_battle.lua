REGISTER_GOAL(GOAL_Donsyoku526000_Battle, "Donsyoku526000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 4
local Att3001_Dist_min = 0
local Att3001_Dist_max = 1.5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4
local Att3003_Dist_min = 0
local Att3003_Dist_max = 6
local Att3005_Dist_min = 0
local Att3005_Dist_max = 8
local Att3006_Dist_min = 0
local Att3006_Dist_max = 8
local Att3007_Dist_min = 0
local Att3007_Dist_max = 5
local Att3008_Dist_min = 0
local Att3008_Dist_max = 25
local Att3009_Dist_min = 8
local Att3009_Dist_max = 14
local Att3010_Dist_min = -6
local Att3010_Dist_max = -3
REGISTER_GOAL_NO_UPDATE(GOAL_Donsyoku526000_Battle, 1)
Donsyoku526000Battle_Activate = function(ai, goal)
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
   local Act01PerOdds = 0
   local Act02PerOdds = 0
   local Act03PerOdds = 0
   local Act04PerOdds = 0
   local Act05PerOdds = 0
   local Act06PerOdds = 0
   local Act07PerOdds = 0
   local Act08PerOdds = 0
   local Act09PerOdds = 0
   local Act10PerOdds = 0
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) and targetDist <= -0.5 then
      Act01PerOdds = 3
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and targetDist <= -3 then
      Act06PerOdds = 3
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and targetDist >= 0 and targetDist <= 2 then
      Act02PerOdds = 1
   else
      Act02PerOdds = 0.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 200) and targetDist >= 0 and targetDist <= 5 then
      Act03PerOdds = 1.5
   else
      Act03PerOdds = 0.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and targetDist >= 0 and targetDist <= 5 then
      Act04PerOdds = 1.5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 220) then
      Act04PerOdds = 0
   else
      Act04PerOdds = 0.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 330) and targetDist >= 0 and targetDist <= 10 then
      Act05PerOdds = 2.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) then
      if targetDist >= 2 then
         Act07PerOdds = 2.5
      else
         Act07PerOdds = 5
      end
   elseif targetDist <= 3 then
      Act07PerOdds = 1
   end
   -- Tried to add an 'end' here but it's incorrect
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and targetDist >= 8 and targetDist <= 14 then
      Act09PerOdds = 1
   elseif targetDist >= 8 and targetDist <= 14 then
      Act09PerOdds = 0.75
   elseif targetDist >= 4 and targetDist <= 8 then
      Act09PerOdds = 0.25
   end
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 120, 16)
   if ai:IsInsideObserve(0) and hprate <= 0.6 and ai:IsFinishTimer(1) == true then
      Act08PerOdds = 1
   end
   if targetDist >= 10 and targetDist <= 25 then
      Act10PerOdds = 1.5
   elseif targetDist >= 10 then
      Act10PerOdds = 1
   end
   if targetDist >= 10 then
      Act01Per = 0 * Act01PerOdds
      Act02Per = 5 * Act02PerOdds
      Act03Per = 5 * Act03PerOdds
      Act04Per = 5 * Act04PerOdds
      Act05Per = 0 * Act05PerOdds
      Act06Per = 0 * Act06PerOdds
      Act07Per = 0 * Act07PerOdds
      Act08Per = 15 * Act08PerOdds
      Act09Per = 15 * Act09PerOdds
      Act10Per = 30 * Act10PerOdds
   elseif targetDist >= 2 then
      Act01Per = 0 * Act01PerOdds
      Act02Per = 30 * Act02PerOdds
      Act03Per = 30 * Act03PerOdds
      Act04Per = 30 * Act04PerOdds
      Act05Per = 15 * Act05PerOdds
      Act06Per = 0 * Act06PerOdds
      Act07Per = 15 * Act07PerOdds
      Act08Per = 15 * Act08PerOdds
      Act09Per = 15 * Act09PerOdds
      Act10Per = 0 * Act10PerOdds
   else
      Act01Per = 30 * Act01PerOdds
      Act02Per = 30 * Act02PerOdds
      Act03Per = 30 * Act03PerOdds
      Act04Per = 30 * Act04PerOdds
      Act05Per = 15 * Act05PerOdds
      Act06Per = 30 * Act06PerOdds
      Act07Per = 15 * Act07PerOdds
      Act08Per = 15 * Act08PerOdds
      Act09Per = 0 * Act09PerOdds
      Act10Per = 0 * Act10PerOdds
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per)
   if fateAct <= Act01Per then
      Donsyoku_Act1(ai, goal)
   elseif fateAct <= Act01Per + Act02Per then
      Donsyoku_Act2(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      Donsyoku_Act3(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      Donsyoku_Act4(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      Donsyoku_Act5(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      Donsyoku_Act6(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      Donsyoku_Act7(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      Donsyoku_Act8(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
      Donsyoku_Act9(ai, goal)
   else
      Donsyoku_Act10(ai, goal)
   end
end

Donsyoku_Act1 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3000, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku_Act2 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3001_Dist_max, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Attack, 30, 3001, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku_Act3 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Attack, 30, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku_Act4 = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, true, -1)
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 30, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 30, 3003, TARGET_ENE_0, 15, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Donsyoku_Act5 = function(ai, goal)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   if tailDmgLv == PARTS_DMG_FINAL then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3006, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Donsyoku_Act6 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3010, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku_Act7 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 30, 3007, TARGET_ENE_0, DIST_Middle, 0, -1)
end

Donsyoku_Act8 = function(ai, goal)
   ai:SetTimer(1, 30)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3008, TARGET_ENE_0, DIST_None, 0)
end

Donsyoku_Act9 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_ENE_0, Att3009_Dist_max, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 30, 3009, TARGET_ENE_0, DIST_Middle, -1, 20)
end

Donsyoku_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 25, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 30, 3003, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3004, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku526000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Donsyoku526000Battle_Terminate = function(ai, goal)
end

Donsyoku526000Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_SuccessThrow) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, 0, 0, 0, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local eventNo = ai:GetEventRequest(0)
      if eventNo == 1 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and targetDist <= 5 and ai:IsFinishTimer(0) == true and fate <= 100 then
         ai:SetTimer(0, 30)
         goal:ClearSubGoal()
         if fate2 <= 25 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 30, 3003, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 30, 3003, TARGET_ENE_0, DIST_None, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
   end
   return false
end


