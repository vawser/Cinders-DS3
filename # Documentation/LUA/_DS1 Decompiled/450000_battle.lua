REGISTER_GOAL(GOAL_TheAbyss450000_Battle, "TheAbyss450000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4
local Att3003_Dist_min = 0
local Att3003_Dist_max = 7
local Att3006_Dist_min = 6
local Att3006_Dist_max = 12
local Att3020_Dist_min = 8
local Att3020_Dist_max = 10
local Att3009_Dist_min = 0
local Att3009_Dist_max = 3
local Att3010_Dist_min = 0
local Att3010_Dist_max = 100
local Att3012_Dist_min = 0
local Att3012_Dist_max = 15
local Att3013_Dist_min = 7
local Att3013_Dist_max = 13
local Att3014_Dist_min = 10
local Att3014_Dist_max = 20
local Att3015_Dist_min = 0
local Att3015_Dist_max = 5
local Att3018_Dist_min = 0
local Att3018_Dist_max = 5
local Att3019_Dist_min = 0
local Att3019_Dist_max = 6.5
local Att3022_Dist_min = 0
local Att3022_Dist_max = 2.5
local Att3023_Dist_min = 8
local Att3023_Dist_max = 12
REGISTER_GOAL_NO_UPDATE(GOAL_TheAbyss450000_Battle, 1)
OnIf_450000 = function(ai, goal, codeNo)
   if codeNo == 2 then
      TheAbyss450000_ActAfter(ai, goal)
   end
end

TheAbyss450000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   ai:SetNumber(0, 0)
   ai:SetNumber(4, 0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = 1
   local fate4 = 1
   local fate5 = 1
   local fate6 = 1
   if ai:GetNumber(1) <= 10 then
      fate3 = 1
   elseif ai:GetNumber(1) <= 20 then
      fate3 = 2
   elseif ai:GetNumber(1) <= 40 then
      fate3 = 4
   elseif ai:GetNumber(1) <= 50 then
      fate3 = 6
   else
      fate3 = 10
   end
   if ai:GetNumber(2) <= 10 then
      fate4 = 1
   elseif ai:GetNumber(2) <= 20 then
      fate4 = 1.5
   elseif ai:GetNumber(2) <= 40 then
      fate4 = 2
   elseif ai:GetNumber(2) <= 50 then
      fate4 = 2.5
   else
      fate4 = 3
   end
   if ai:IsFinishTimer(0) == true then
      fate5 = 1
   else
      fate5 = 0
   end
   if hprate <= 0.6 then
      fate6 = 1
   else
      fate6 = 0
   end
   if hprate == 1 and ai:GetNumber(3) == 0 then
      actPerArr[14] = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and fate <= 70 then
      if targetDist <= 3 then
         actPerArr[6] = 80
         actPerArr[20] = 20
      else
         actPerArr[6] = 0
         actPerArr[20] = 100
      end
   elseif hprate <= 0.6 and ai:GetNumber(5) == 0 then
      if targetDist <= 5 then
         actPerArr[15] = 100
      elseif targetDist <= 9 then
         actPerArr[16] = 100
      else
         actPerArr[17] = 100
      end
   elseif targetDist >= 16 then
      actPerArr[1] = 0
      actPerArr[2] = 0 * fate5
      actPerArr[3] = 0
      actPerArr[4] = 15
      actPerArr[5] = 15
      actPerArr[7] = 0
      actPerArr[8] = 0
      actPerArr[9] = 20
      actPerArr[10] = 0
      actPerArr[11] = 15
      actPerArr[14] = 0
      actPerArr[15] = 15 * fate6
      actPerArr[16] = 0 * fate6
      actPerArr[17] = 20 * fate6
   elseif targetDist >= 12 then
      actPerArr[1] = 0
      actPerArr[2] = 0 * fate5
      actPerArr[3] = 0
      actPerArr[4] = 15
      actPerArr[5] = 15
      actPerArr[7] = 0
      actPerArr[8] = 0
      actPerArr[9] = 20
      actPerArr[10] = 0
      actPerArr[11] = 15
      actPerArr[14] = 0
      actPerArr[15] = 10 * fate6
      actPerArr[16] = 10 * fate6
      actPerArr[17] = 15 * fate6
   elseif targetDist >= 8 then
      actPerArr[1] = 0
      actPerArr[2] = 0 * fate5
      actPerArr[3] = 10
      actPerArr[4] = 15
      actPerArr[5] = 15
      actPerArr[7] = 0
      actPerArr[8] = 10
      actPerArr[9] = 10
      actPerArr[10] = 0
      actPerArr[11] = 10
      actPerArr[14] = 0
      actPerArr[15] = 5 * fate6
      actPerArr[16] = 15 * fate6
      actPerArr[17] = 10 * fate6
   elseif targetDist >= 5 then
      actPerArr[1] = 10
      actPerArr[2] = 0 * fate5
      actPerArr[3] = 15
      actPerArr[4] = 10
      actPerArr[5] = 10
      actPerArr[7] = 5
      actPerArr[8] = 10
      actPerArr[9] = 10
      actPerArr[10] = 5 * fate3
      actPerArr[11] = 0
      actPerArr[14] = 0
      actPerArr[15] = 10 * fate6
      actPerArr[16] = 15 * fate6
      actPerArr[17] = 0 * fate6
   elseif targetDist >= 3 then
      actPerArr[1] = 20
      actPerArr[2] = 10 * fate5
      actPerArr[3] = 10
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[7] = 15
      actPerArr[8] = 15
      actPerArr[9] = 10
      actPerArr[10] = 10 * fate3
      actPerArr[11] = 0
      actPerArr[14] = 0
      actPerArr[15] = 10 * fate4 * fate6
      actPerArr[16] = 0 * fate6
      actPerArr[17] = 0 * fate6
   else
      actPerArr[1] = 20
      actPerArr[2] = 10 * fate5
      actPerArr[3] = 10
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[7] = 25
      actPerArr[8] = 15
      actPerArr[9] = 0
      actPerArr[10] = 10 * fate3
      actPerArr[11] = 0
      actPerArr[14] = 0
      actPerArr[15] = 10 * fate4 * fate6
      actPerArr[16] = 0 * fate6
      actPerArr[17] = 0 * fate6
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, TheAbyss450000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, TheAbyss450000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, TheAbyss450000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, TheAbyss450000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, TheAbyss450000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, TheAbyss450000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, TheAbyss450000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, TheAbyss450000_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, TheAbyss450000_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, TheAbyss450000_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, TheAbyss450000_Act11)
   actFuncArr[14] = REGIST_FUNC(ai, goal, TheAbyss450000_Act14)
   actFuncArr[15] = REGIST_FUNC(ai, goal, TheAbyss450000_Act15)
   actFuncArr[16] = REGIST_FUNC(ai, goal, TheAbyss450000_Act16)
   actFuncArr[17] = REGIST_FUNC(ai, goal, TheAbyss450000_Act17)
   actFuncArr[20] = REGIST_FUNC(ai, goal, TheAbyss450000_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, TheAbyss450000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

TheAbyss450000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max - 1
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   local AttDist = Att3000_Dist_max
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 20 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
      end
   elseif fate <= 60 then
      if fate2 <= 50 then
         if fate3 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist, 0)
         elseif fate3 <= 55 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, AttDist, 0)
         elseif fate3 <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, AttDist, 0)
         end
      elseif fate3 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
      elseif fate3 <= 55 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, AttDist, 0)
      elseif fate3 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, AttDist, 0)
      end
   elseif fate2 <= 50 then
      if fate3 <= 25 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
      elseif fate3 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, AttDist, 0)
      elseif fate3 <= 55 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, AttDist, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
      elseif fate3 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, AttDist, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
      elseif fate3 <= 85 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, AttDist, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, AttDist, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, AttDist, 0)
      end
   elseif fate3 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist, 0)
   elseif fate3 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, AttDist, 0)
   elseif fate3 <= 55 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
   elseif fate3 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
   elseif fate3 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, AttDist, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AttDist = Att3002_Dist_max
   ai:SetTimer(0, 10)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max - 2
   local DashDist = Att3003_Dist_max - 2
   local Odds_Guard = 0
   local AttDist = Att3003_Dist_max
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, AttDist, 0)
   end
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max
   local Odds_Guard = 0
   local AttDist = Att3006_Dist_max
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 1.3, 20)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3020_Dist_max
   local DashDist = Att3020_Dist_max
   local Odds_Guard = 0
   local AttDist = Att3020_Dist_max
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   ai:SetNumber(4, 1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 1.3, 20)
   if targetDist <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, DIST_None, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_None, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AttDist = Att3009_Dist_max
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3009, TARGET_ENE_0, AttDist, 0, 0)
   ai:SetNumber(0, 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3015_Dist_max - 1.5
   local DashDist = Att3015_Dist_max + 2
   local Odds_Guard = 0
   local AttDist = Att3015_Dist_max
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
   elseif fate <= 60 then
      if fate2 <= 35 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, AttDist, 0)
      elseif fate2 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist, 0)
      end
   elseif fate2 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, AttDist, 0)
   elseif fate2 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, AttDist, 0)
   elseif fate2 <= 35 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
   elseif fate2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
   elseif fate2 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
   elseif fate2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist, 0)
   elseif fate2 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, AttDist, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3018_Dist_max - 2
   local DashDist = Att3018_Dist_max + 1
   local Odds_Guard = 0
   local AttDist = Att3018_Dist_max
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3019_Dist_max
   local DashDist = Att3019_Dist_max + 1
   local Odds_Guard = 0
   local AttDist = Att3019_Dist_max
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3022_Dist_max
   local DashDist = Att3022_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3022_Dist_max
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   ai:SetNumber(1, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, AttDist, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, AttDist, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3023_Dist_max + 0
   local DashDist = Att3023_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3023_Dist_max
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, AttDist, 1.3, 20)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act14 = function(ai, goal, paramTbl)
   local AppDist = Att3010_Dist_max
   ai:SetNumber(3, 1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, AppDist, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TheAbyss450000_Act15 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3012_Dist_max + 0
   local DashDist = Att3012_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3012_Dist_max + 5
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   ai:SetNumber(2, 0)
   ai:SetNumber(5, 1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, AttDist, 0, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act16 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3013_Dist_max + 0
   local DashDist = Att3013_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3013_Dist_max + 5
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   ai:SetNumber(5, 1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, AttDist, 1.3, 20)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act17 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3014_Dist_max + 0
   local DashDist = Att3014_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3014_Dist_max + 5
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   ai:SetNumber(5, 1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, AttDist, 0, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act20 = function(ai, goal, paramTbl)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TheAbyss450000_ActAfter = function(ai, goal)
   local GW_fate = ai:GetRandam_Int(1, 100)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist <= 3 then
      if GW_fate <= 60 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif GW_fate <= 90 then
         if fate <= 0 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 0)
      end
   elseif targetDist <= 5 then
      if GW_fate <= 50 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif GW_fate <= 90 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 0)
      end
   elseif targetDist <= 12 then
      if GW_fate <= 20 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif GW_fate <= 80 then
         if fate <= 60 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            do break end
         end
      elseif GW_fate <= 0 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif GW_fate <= 75 then
         if fate <= 100 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
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
end

TheAbyss450000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

TheAbyss450000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

TheAbyss450000Battle_Terminate = function(ai, goal)
end

TheAbyss450000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_TargetIsGuard) and ai:GetNumber(0) == 1 then
      ai:SetNumber(0, 0)
      if fate <= 60 then
         local AttDist = Att3023_Dist_max
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3023, TARGET_ENE_0, AttDist, 0)
      else
      end
         return true
         -- Tried to add an 'end' here but it's incorrect
         if ai:GetNumber(4) == 0 then
            local distUseItem_Act = 20
            local oddsUseItem_Act = 30
            if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
               local AppDist = 20
               local DashDist = 20
               local Odds_Guard = 0
               goal:ClearSubGoal()
               if targetDist <= 5 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3002, TARGET_ENE_0, DIST_None, 0, 90)
               elseif targetDist <= 8 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3019, TARGET_ENE_0, DIST_None, 0, 90)
               elseif targetDist <= 12 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3006, TARGET_ENE_0, DIST_None, 1.3, 0)
               elseif targetDist <= 15 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3023, TARGET_ENE_0, DIST_None, 0, 90)
               else
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3010, TARGET_ENE_0, DIST_None, 0, 0)
               end
               return true
            end
         end
         if ai:GetNumber(4) == 0 then
            local distResNear = 8
            local distResFar = 30
            local oddsResNear = 40
            local oddsResFar = 70
            local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
            if ResBehavID == 1 then
               if targetDist <= 6 then
                  if fate <= 80 then
                     goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3018, TARGET_ENE_0, DIST_None, 0, 90)
                  elseif fate2 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                  end
               elseif fate <= 80 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3019, TARGET_ENE_0, DIST_None, 0, 90)
               elseif fate2 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
               -- Tried to add an 'end' here but it's incorrect
               return true
            elseif ResBehavID == 2 then
               if targetDist <= 12 then
                  if fate <= 80 then
                     goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3006, TARGET_ENE_0, DIST_None, 1.3, 20)
                  elseif fate2 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                  end
               elseif targetDist <= 15 then
                  if fate <= 70 then
                     goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3023, TARGET_ENE_0, DIST_None, 0, 90)
                  elseif fate2 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                  end
               elseif fate2 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
               return true
            end
         end
         return false
end


