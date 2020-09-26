REGISTER_GOAL(GOAL_GoldenChimera347101_Battle, "GoldenChimera347101Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 5.5
local Att3004_Dist_min = 0
local Att3004_Dist_max = 2.5
local Att3006_Dist_min = 2
local Att3006_Dist_max = 5
local Att3007_Dist_min = 8.5
local Att3007_Dist_max = 10.5
local Att3008_Dist_min = 8.5
local Att3008_Dist_max = 10.5
local Att3009_Dist_min = 7.5
local Att3009_Dist_max = 8.5
local Att3010_Dist_min = 0
local Att3010_Dist_max = 8.5
local Att3012_Dist_min = 0
local Att3012_Dist_max = 4.5
local Att3014_Dist_min = 0
local Att3014_Dist_max = 1
local Att3020_Dist_min = 10.5
local Att3020_Dist_max = 14.5
local Att3021_Dist_min = 13.5
local Att3021_Dist_max = 16.5
local Att3022_Dist_min = 2.5
local Att3022_Dist_max = 12.5
REGISTER_GOAL_NO_UPDATE(GOAL_GoldenChimera347101_Battle, 1)
OnIf_347101 = function(ai, goal, codeNo)
   if codeNo == 0 then
      GoldenChimera347101_ActAfter_RealTime(ai, goal)
   end
   if codeNo == 1 then
      GoldenChimera347101_FlyingDecision01(ai, goal)
   end
   if codeNo == 2 then
      GoldenChimera347101_FlyingDecision02(ai, goal)
   end
   if codeNo == 3 then
      GoldenChimera347101_FlyingDecision03(ai, goal)
   end
   if codeNo == 4 then
      GoldenChimera347101_BackStepDecision01(ai, goal)
   end
   if codeNo == 5 then
      GoldenChimera347101_ChargeDecision01(ai, goal)
   end
end

GoldenChimera347101Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
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
   local Act20Per = 0
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local friendDist = ai:GetDist(TARGET_FRI_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   local eventNo = ai:GetEventRequest(1)
   local habataki = 1
   if ai:IsFinishTimer(0) == false then
      habataki = 0.5
   end
   if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
      if eventNo == 10 then
         Act19Per = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and targetDist <= 5 then
            Act08Per = 100
         else
            Act16Per = 100
         end
      elseif ai:GetNumber(0) == 1 then
         Act15Per = 100
      elseif ai:GetNumber(3) == 1 then
         Act14Per = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 150) and targetDist <= 3 then
         Act02Per = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 150) and targetDist <= 3 then
         Act03Per = 100
      elseif targetDist >= 20 then
         Act02Per = 5
         Act03Per = 5
         Act05Per = 0
         Act06Per = 15
         Act07Per = 15
         Act09Per = 0
         Act10Per = 10
         Act12Per = 20
         Act13Per = 15
         Act14Per = 15
         Act17Per = 0
      elseif targetDist >= 15 then
         Act02Per = 10
         Act03Per = 10
         Act05Per = 0
         Act06Per = 15
         Act07Per = 15
         Act09Per = 0
         Act10Per = 10
         Act12Per = 10
         Act13Per = 10
         Act14Per = 20
         Act17Per = 0
      elseif targetDist >= 10 then
         Act02Per = 10
         Act03Per = 10
         Act05Per = 0
         Act06Per = 10
         Act07Per = 10
         Act09Per = 15
         Act10Per = 15
         Act12Per = 10
         Act13Per = 10
         Act14Per = 10
         Act17Per = 0
      elseif targetDist >= 7 then
         Act02Per = 5
         Act03Per = 5
         Act05Per = 35 * habataki
         Act06Per = 0
         Act07Per = 0
         Act09Per = 25
         Act10Per = 20
         Act12Per = 0
         Act13Per = 0
         Act14Per = 0
         Act17Per = 0
      elseif targetDist >= 4 then
         Act02Per = 20
         Act03Per = 20
         Act05Per = 40 * habataki
         Act06Per = 0
         Act07Per = 0
         Act09Per = 0
         Act10Per = 0
         Act12Per = 0
         Act13Per = 5
         Act14Per = 5
         Act17Per = 10
      else
         Act02Per = 33
         Act03Per = 33
         Act05Per = 0
         Act06Per = 0
         Act07Per = 0
         Act09Per = 0
         Act10Per = 0
         Act12Per = 0
         Act13Per = 0
         Act14Per = 0
         Act17Per = 34
      end
   else
      if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
         if eventNo == 10 then
            Act19Per = 100
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and targetDist <= 3 then
               Act08Per = 100
            else
               Act16Per = 100
            end
         elseif ai:GetNumber(3) == 1 then
            Act14Per = 100
         elseif (((ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 14.3) and friendDist <= 20) or not ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 18.9) or friendDist <= 15 or ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 28.1) and friendDist <= 10)) then
            Act18Per = 100
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 150) and targetDist <= 3 then
            Act02Per = 100
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 150) and targetDist <= 3 then
            Act03Per = 100
         elseif targetDist >= 20 then
            Act02Per = 5
            Act03Per = 5
            Act05Per = 0
            Act06Per = 15
            Act07Per = 15
            Act09Per = 0
            Act10Per = 10
            Act12Per = 20
            Act13Per = 15
            Act14Per = 15
            Act17Per = 0
         elseif targetDist >= 15 then
            Act02Per = 10
            Act03Per = 10
            Act05Per = 0
            Act06Per = 15
            Act07Per = 15
            Act09Per = 0
            Act10Per = 10
            Act12Per = 10
            Act13Per = 10
            Act14Per = 20
            Act17Per = 0
         elseif targetDist >= 10 then
            Act02Per = 15
            Act03Per = 15
            Act05Per = 0
            Act06Per = 10
            Act07Per = 10
            Act09Per = 15
            Act10Per = 15
            Act12Per = 10
            Act13Per = 10
            Act14Per = 10
            Act17Per = 0
         elseif targetDist >= 7 then
            Act02Per = 5
            Act03Per = 5
            Act05Per = 0
            Act06Per = 0
            Act07Per = 0
            Act09Per = 25
            Act10Per = 20
            Act12Per = 0
            Act13Per = 5
            Act14Per = 5
            Act17Per = 0
         elseif targetDist >= 4 then
            Act02Per = 20
            Act03Per = 20
            Act05Per = 0
            Act06Per = 0
            Act07Per = 0
            Act09Per = 0
            Act10Per = 0
            Act12Per = 0
            Act13Per = 5
            Act14Per = 5
            Act17Per = 10
         else
            Act02Per = 33
            Act03Per = 33
            Act05Per = 0
            Act06Per = 0
            Act07Per = 0
            Act09Per = 0
            Act10Per = 0
            Act12Per = 0
            Act13Per = 0
            Act14Per = 0
            Act17Per = 34
         end
      else
         Act02Per = 100
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per + Act18Per)
      if fateAct <= Act01Per then
         GoldenChimera347101_Act01(ai, goal)
      elseif fateAct <= Act01Per + Act02Per then
         GoldenChimera347101_Act02(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         GoldenChimera347101_Act03(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
         GoldenChimera347101_Act04(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
         GoldenChimera347101_Act05(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
         GoldenChimera347101_Act06(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
         GoldenChimera347101_Act07(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
         GoldenChimera347101_Act08(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
         GoldenChimera347101_Act09(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
         GoldenChimera347101_Act10(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per then
         GoldenChimera347101_Act11(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per then
         GoldenChimera347101_Act12(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per then
         GoldenChimera347101_Act13(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per then
         GoldenChimera347101_Act14(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per then
         GoldenChimera347101_Act15(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per then
         GoldenChimera347101_Act16(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per then
         GoldenChimera347101_Act17(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per + Act18Per then
         GoldenChimera347101_Act18(ai, goal)
      else
         GoldenChimera347101_Act19(ai, goal)
      end
end

GoldenChimera347101_Act01 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 50)
   GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
end

GoldenChimera347101_Act02 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max - 1
   local DashDist = Att3000_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   if fate2 <= 0 then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      if fate3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 20)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 40)
      end
   end
   GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
end

GoldenChimera347101_Act03 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max - 1
   local DashDist = Att3000_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   if fate2 <= 0 then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      if fate3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 20)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 40)
      end
   end
   GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
end

GoldenChimera347101_Act05 = function(ai, goal, paramTbl)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
   ai:SetNumber(0, 1)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   ai:SetTimer(0, 30)
end

GoldenChimera347101_Act06 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
end

GoldenChimera347101_Act07 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
end

GoldenChimera347101_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   local fate = ai:GetRandam_Int(1, 100)
   if tailDmgLv ~= PARTS_DMG_FINAL then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and targetDist <= 5 and fate <= 33 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and targetDist <= 5 and fate <= 66 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and targetDist <= 3 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      else
         GoldenChimera347101_Act16(ai, goal)
      end
   else
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and targetDist <= 2 and fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3024, TARGET_NONE, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and targetDist <= 3 and fate <= 100 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      else
         GoldenChimera347101_Act16(ai, goal)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
end

GoldenChimera347101_Act09 = function(ai, goal, paramTbl)
   local AppDist = Att3009_Dist_max
   local DashDist = Att3009_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 4)
end

GoldenChimera347101_Act10 = function(ai, goal, paramTbl)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 5)
end

GoldenChimera347101_Act12 = function(ai, goal, paramTbl)
   local AppDist = Att3020_Dist_max
   local DashDist = Att3020_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
end

GoldenChimera347101_Act13 = function(ai, goal, paramTbl)
   local AppDist = Att3021_Dist_max
   local DashDist = Att3021_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

GoldenChimera347101_Act14 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3022_Dist_max
   local DashDist = Att3022_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 3)
end

GoldenChimera347101_Act15 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local GetWellSpace_Odds = 0
   if ai:HasSpecialEffectId(TARGET_ENE_0, 5521) then
      if targetDist <= 8 then
         if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 10, 1212000) then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, 0, 0)
            GetWellSpace_Odds = 100
            ai:SetNumber(1, ai:GetNumber(1) + 40)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, 0)
            GetWellSpace_Odds = 100
            ai:SetNumber(1, ai:GetNumber(1) + 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, 0)
         GetWellSpace_Odds = 100
         ai:SetNumber(1, ai:GetNumber(1) + 0)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      GetWellSpace_Odds = 0
      ai:SetNumber(1, ai:GetNumber(1) + 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   ai:SetNumber(0, 0)
   GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
end

GoldenChimera347101_Act16 = function(ai, goal, paramTbl)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
   end
   ai:SetNumber(1, ai:GetNumber(1) + 0)
end

GoldenChimera347101_Act17 = function(ai, goal, paramTbl)
   local AppDist = Att3014_Dist_max
   local DashDist = Att3014_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 20)
   GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
end

GoldenChimera347101_Act18 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 10, 1212000) then
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
         if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
            if fate <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
         end
      elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      ai:SetNumber(1, ai:GetNumber(1) + 0)
end

GoldenChimera347101_Act19 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 3, TARGET_SELF, false, -1)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, DIST_None, 0, 0)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_None, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
   end
   ai:SetNumber(1, ai:GetNumber(1) + 0)
end

GoldenChimera347101_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

GoldenChimera347101_ActAfter_RealTime = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:GetNumber(2) >= 20 then
      local CanStepFR = 0
      local CanStepFL = 0
      local CanStepB = 0
      local CanStepR = 0
      local CanStepL = 0
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 20, 1212000) then
         if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
            if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
               CanStepFR = 1
               CanStepFL = 1
            else
               CanStepFR = 1
            end
         elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
            CanStepFL = 1
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 25, 1212000) then
         CanStepB = 1
      end
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 10, 1212000) and ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
         CanStepL = 1
      end
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 10, 1212000) and ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
         CanStepR = 1
      end
      if CanStepFR == 1 then
         if CanStepFL == 1 then
            if CanStepB == 1 then
               if fate <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                  ai:SetNumber(3, 1)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
                  GoldenChimera347101_SideWalk(ai, goal)
               end
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               ai:SetNumber(3, 1)
            end
         elseif CanStepB == 1 then
            if fate <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               ai:SetNumber(3, 1)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
               GoldenChimera347101_SideWalk(ai, goal)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            ai:SetNumber(3, 1)
         end
      elseif CanStepFL == 1 then
         if CanStepB == 1 then
            if fate <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               ai:SetNumber(3, 1)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
               GoldenChimera347101_SideWalk(ai, goal)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            ai:SetNumber(3, 1)
         end
      elseif CanStepB == 1 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
         GoldenChimera347101_SideWalk(ai, goal)
      elseif CanStepL == 1 then
         if CanStepR == 1 then
            if fate <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
         end
      elseif CanStepR == 1 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      else
      end
         ai:SetNumber(2, 0)
      elseif ai:GetNumber(1) >= 40 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         GoldenChimera347101_SideWalk(ai, goal)
         ai:SetNumber(1, 0)
         ai:SetNumber(2, ai:GetNumber(2) + 10)
      else
      end
end

GoldenChimera347101_SideWalk = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

GoldenChimera347101_FlyingDecision01 = function(ai, goal)
   local GetWellSpace_Odds = 0
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   if GetWellSpace_Odds == 100 then
      GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
   end
end

GoldenChimera347101_FlyingDecision02 = function(ai, goal)
   local GetWellSpace_Odds = 0
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   if GetWellSpace_Odds == 100 then
      GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
   end
end

GoldenChimera347101_FlyingDecision03 = function(ai, goal)
   local GetWellSpace_Odds = 0
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 20, 1212000) then
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
         if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
            if fate <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
         end
         -- Tried to add an 'end' here but it's incorrect
         ai:SetNumber(1, 0)
         GetWellSpace_Odds = 100
      elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
         ai:SetNumber(1, 0)
         GetWellSpace_Odds = 100
      else
         goal:ClearSubGoal()
         GetWellSpace_Odds = 0
      end
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      ai:SetNumber(3, 0)
      if GetWellSpace_Odds == 100 then
         GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
      end
end

GoldenChimera347101_BackStepDecision01 = function(ai, goal)
   local GetWellSpace_Odds = 0
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 0, 0)
      ai:SetNumber(1, 0)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   if GetWellSpace_Odds == 100 then
      GoldenChimera347101_ActAfter_AdjustSpace(ai, goal)
   end
end

GoldenChimera347100_ChargeDecision01 = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 15, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, 0, 0)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         ai:SetNumber(1, 0)
         GetWellSpace_Odds = 0
      else
         ai:SetNumber(1, ai:GetNumber(1) + 20)
         GetWellSpace_Odds = 100
      end
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   return GetWellSpace_Odds
end

GoldenChimera347101Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GoldenChimera347101Battle_Terminate = function(ai, goal)
end

GoldenChimera347101Battle_Interupt = function(ai, goal)
   if ai:GetNumber(0) == 0 then
      local fate = ai:GetRandam_Int(1, 100)
      local fate2 = ai:GetRandam_Int(1, 100)
      local fate3 = ai:GetRandam_Int(1, 100)
      local targetDist = ai:GetDist(TARGET_ENE_0)
      local eventNo = ai:GetEventRequest(1)
      if ai:IsInterupt(INTERUPT_GuardBreak) then
         if fate <= 50 then
            if targetDist <= 2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
               local AppDist = Att3014_Dist_max
               local DashDist = 0
               local Odds_Guard = 0
               goal:ClearSubGoal()
               Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3014, TARGET_ENE_0, DIST_None, 0)
               return true
            elseif targetDist <= 8 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
               return true
            else
               return false
            end
         else
            return false
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      if ai:IsInterupt(INTERUPT_UseItem) then
         if fate <= 50 then
            if targetDist <= 2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
               local AppDist = Att3014_Dist_max
               local DashDist = 0
               local Odds_Guard = 0
               goal:ClearSubGoal()
               Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3014, TARGET_ENE_0, DIST_None, 0)
               return true
            elseif targetDist <= 8 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
               return true
            elseif targetDist <= 13 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
               goal:ClearSubGoal()
               if fate2 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3007, TARGET_ENE_0, DIST_None, 0)
               else
                  local AppDist = Att3010_Dist_max
                  local DashDist = Att3010_Dist_max + 2
                  local Odds_Guard = 0
                  Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
               end
               return true
            else
               return false
            end
         else
            return false
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      if ai:IsInterupt(INTERUPT_Shoot) then
         if eventNo == 10 then
            goal:ClearSubGoal()
            if fate3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
            end
            -- Tried to add an 'end' here but it's incorrect
            if fate <= 80 then
               if targetDist <= 8 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                  goal:ClearSubGoal()
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
                  return true
               elseif targetDist <= 13 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                  goal:ClearSubGoal()
                  if fate2 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3007, TARGET_ENE_0, DIST_None, 0)
                  elseif fate2 <= 75 then
                     local AppDist = Att3010_Dist_max
                     local DashDist = Att3010_Dist_max + 2
                     local Odds_Guard = 0
                     Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
                     goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
                  else
                     goal:ClearSubGoal()
                     if fate3 <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
                     else
                        goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
                     end
                  end
                  return true
               elseif targetDist <= 20 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
                  goal:ClearSubGoal()
                  if fate2 <= 50 then
                     local AppDist = Att3020_Dist_max
                     local DashDist = 0
                     local Odds_Guard = 0
                     Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
                     goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3020, TARGET_ENE_0, DIST_None, 0)
                  elseif fate2 <= 75 then
                     local AppDist = Att3010_Dist_max
                     local DashDist = 0
                     local Odds_Guard = 0
                     Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
                     goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_ENE_0, DIST_None, 0)
                  elseif fate3 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
                  end
                  return true
               else
                  return false
               end
            else
               return false
            end
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            if ai:HasSpecialEffectId(TARGET_SELF, 5522) then
               goal:ClearSubGoal()
               if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               end
               return true
            end
            -- Tried to add an 'end' here but it's incorrect
            return false
end


