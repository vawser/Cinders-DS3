REGISTER_GOAL(GOAL_GoldenChimera347100_Battle, "GoldenChimera347100Battle")
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
REGISTER_GOAL_NO_UPDATE(GOAL_GoldenChimera347100_Battle, 1)
OnIf_347100 = function(ai, goal, codeNo)
   if codeNo == 0 then
      GoldenChimera347100_ActAfter_RealTime(ai, goal)
   end
   if codeNo == 1 then
      GoldenChimera347100_FlyingDecision01(ai, goal)
   end
   if codeNo == 2 then
      GoldenChimera347100_FlyingDecision02(ai, goal)
   end
   if codeNo == 3 then
      GoldenChimera347100_FlyingDecision03(ai, goal)
   end
   if codeNo == 4 then
      GoldenChimera347100_BackStepDecision01(ai, goal)
   end
   if codeNo == 5 then
      GoldenChimera347100_ChargeDecision01(ai, goal)
   end
end

GoldenChimera347100Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   local habataki = 1
   if ai:IsFinishTimer(0) == false then
      habataki = 0.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and targetDist <= 5 then
         actPerArr[8] = 100
      else
         actPerArr[16] = 100
      end
   elseif ai:GetNumber(0) == 1 then
      actPerArr[15] = 100
   elseif ai:GetNumber(3) == 1 then
      actPerArr[14] = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 150) and targetDist <= 3 then
      actPerArr[2] = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 150) and targetDist <= 3 then
      actPerArr[3] = 100
   elseif targetDist >= 20 then
      actPerArr[2] = 5
      actPerArr[3] = 5
      actPerArr[5] = 0
      actPerArr[6] = 15
      actPerArr[7] = 15
      actPerArr[9] = 0
      actPerArr[10] = 10
      actPerArr[12] = 20
      actPerArr[13] = 15
      actPerArr[14] = 15
      actPerArr[17] = 0
   elseif targetDist >= 15 then
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[5] = 0
      actPerArr[6] = 15
      actPerArr[7] = 15
      actPerArr[9] = 0
      actPerArr[10] = 10
      actPerArr[12] = 10
      actPerArr[13] = 10
      actPerArr[14] = 20
      actPerArr[17] = 0
   elseif targetDist >= 10 then
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[5] = 0
      actPerArr[6] = 10
      actPerArr[7] = 10
      actPerArr[9] = 15
      actPerArr[10] = 15
      actPerArr[12] = 10
      actPerArr[13] = 10
      actPerArr[14] = 10
      actPerArr[17] = 0
   elseif targetDist >= 7 then
      actPerArr[2] = 5
      actPerArr[3] = 5
      actPerArr[5] = 35 * habataki
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[9] = 25
      actPerArr[10] = 20
      actPerArr[12] = 0
      actPerArr[13] = 5
      actPerArr[14] = 5
      actPerArr[17] = 0
   elseif targetDist >= 4 then
      actPerArr[2] = 20
      actPerArr[3] = 20
      actPerArr[5] = 40 * habataki
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[9] = 0
      actPerArr[10] = 0
      actPerArr[12] = 0
      actPerArr[13] = 5
      actPerArr[14] = 5
      actPerArr[17] = 10
   else
      actPerArr[2] = 33
      actPerArr[3] = 33
      actPerArr[5] = 0
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[9] = 0
      actPerArr[10] = 0
      actPerArr[12] = 0
      actPerArr[13] = 0
      actPerArr[14] = 0
      actPerArr[17] = 34
   end
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act03)
   actFuncArr[5] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act10)
   actFuncArr[12] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act12)
   actFuncArr[13] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act13)
   actFuncArr[14] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act14)
   actFuncArr[15] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act15)
   actFuncArr[16] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act16)
   actFuncArr[17] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act17)
   actFuncArr[18] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act18)
   local atkAfterFunc = REGIST_FUNC(ai, goal, GoldenChimera347100_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

GoldenChimera347100_Act01 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 50)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act02 = function(ai, goal, paramTbl)
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
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act03 = function(ai, goal, paramTbl)
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
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act05 = function(ai, goal, paramTbl)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
   ai:SetNumber(0, 1)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   ai:SetTimer(0, 30)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GoldenChimera347100_Act06 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act07 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act08 = function(ai, goal, paramTbl)
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
         GoldenChimera347100_Act16(ai, goal)
      end
   else
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and targetDist <= 2 and fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3024, TARGET_NONE, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and targetDist <= 3 and fate <= 100 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      else
         GoldenChimera347100_Act16(ai, goal)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      GetWellSpace_Odds = 100
      return GetWellSpace_Odds
end

GoldenChimera347100_Act09 = function(ai, goal, paramTbl)
   local AppDist = Att3009_Dist_max
   local DashDist = Att3009_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 4)
end

GoldenChimera347100_Act10 = function(ai, goal, paramTbl)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 5)
end

GoldenChimera347100_Act12 = function(ai, goal, paramTbl)
   local AppDist = Att3020_Dist_max
   local DashDist = Att3020_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
end

GoldenChimera347100_Act13 = function(ai, goal, paramTbl)
   local AppDist = Att3021_Dist_max
   local DashDist = Att3021_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

GoldenChimera347100_Act14 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3022_Dist_max
   local DashDist = Att3022_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 3)
end

GoldenChimera347100_Act15 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
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
   return GetWellSpace_Odds
end

GoldenChimera347100_Act16 = function(ai, goal, paramTbl)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
   end
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GoldenChimera347100_Act17 = function(ai, goal, paramTbl)
   local AppDist = Att3014_Dist_max
   local DashDist = Att3014_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 20)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

GoldenChimera347100_ActAfter_RealTime = function(ai, goal)
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
                  if fate <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
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
                     if fate <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
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
                           if fate <= 50 then
                              goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                           else
                              goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                              ai:SetNumber(3, 1)
                           end
                        elseif CanStepB == 1 then
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
                           if fate <= 50 then
                              goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
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
                        end
                     end
                     -- Tried to add an 'end' here but it's incorrect
                  end
                  -- Tried to add an 'end' here but it's incorrect
                  -- Tried to add an 'end' here but it's incorrect
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
               if fate <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
               end
               ai:SetNumber(1, 0)
               ai:SetNumber(2, ai:GetNumber(2) + 10)
            else
            end
end

GoldenChimera347100_FlyingDecision01 = function(ai, goal)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

GoldenChimera347100_FlyingDecision02 = function(ai, goal)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

GoldenChimera347100_FlyingDecision03 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 20, 1212000) then
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
         if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
            if fate <= 50 then
               if targetDist <= 8 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
               end
            elseif targetDist <= 8 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
            end
         elseif targetDist <= 8 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         ai:SetNumber(1, 0)
         GetWellSpace_Odds = 100
      elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
         if targetDist <= 8 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
         end
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
      return GetWellSpace_Odds
end

GoldenChimera347100_BackStepDecision01 = function(ai, goal)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 0, 0)
      ai:SetNumber(1, 0)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
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

GoldenChimera347100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GoldenChimera347100Battle_Terminate = function(ai, goal)
end

GoldenChimera347100Battle_Interupt = function(ai, goal)
   if ai:GetNumber(0) == 0 then
      local fate = ai:GetRandam_Int(1, 100)
      local fate2 = ai:GetRandam_Int(1, 100)
      local fate3 = ai:GetRandam_Int(1, 100)
      local targetDist = ai:GetDist(TARGET_ENE_0)
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
      end
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
   end
   return false
end


