REGISTER_GOAL(GOAL_Artorius410000_Battle, "Artorius410000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 5
local Att3002_Dist_min = 2
local Att3002_Dist_max = 6.5
local Att3003_Dist_min = 7
local Att3003_Dist_max = 9
local Att3004_Dist_min = 4
local Att3004_Dist_max = 6
local Att3005_Dist_min = 10
local Att3005_Dist_max = 13.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 20
local Att3007_Dist_min = 4
local Att3007_Dist_max = 5.5
local Att3008_Dist_min = 0
local Att3008_Dist_max = 2
local Att3010_Dist_min = 0
local Att3010_Dist_max = 2
local Att3011_Dist_min = 0
local Att3011_Dist_max = 2
local Att3012_Dist_min = 0
local Att3012_Dist_max = 4
local Att3023_Dist_min = 0
local Att3023_Dist_max = 5
REGISTER_GOAL_NO_UPDATE(GOAL_Artorius410000_Battle, 1)
OnIf_410000 = function(ai, goal, codeNo)
   if codeNo == 0 then
      ai:SetTimer(0, 40)
   end
   if codeNo == 1 then
      ai:SetTimer(1, 10)
   end
   if codeNo == 2 then
      Artorius410000_ActAfter(ai, goal)
   end
   if codeNo == 3 then
      ai:SetTimer(2, 10)
   end
end

Artorius410000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   ai:SetNumber(0, 0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = 1
   if ai:IsFinishTimer(1) == true then
      fate3 = 1
   else
      fate3 = 2
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and fate <= 70 then
      if targetDist <= 3 then
         actPerArr[10] = 80
         actPerArr[20] = 20
      else
         actPerArr[10] = 0
         actPerArr[20] = 100
      end
   elseif targetDist <= 3.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 130) and fate <= 70 and ai:IsFinishTimer(2) == true then
      actPerArr[11] = 100
   elseif hprate <= 0.25 and hprate >= 0.15 and fate2 <= 5 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      actPerArr[12] = 100
   elseif hprate <= 0.8 and hprate >= 0.15 and fate2 <= 7 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      actPerArr[12] = 100
   elseif hprate <= 1 and hprate >= 0.15 and fate2 <= 0 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      actPerArr[12] = 100
   elseif hprate <= 0.25 and fate2 <= 100 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) == 2 then
      actPerArr[12] = 100
   elseif hprate <= 0.5 and fate2 <= 100 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) == 1 then
      actPerArr[12] = 100
   elseif hprate <= 0.8 and fate2 <= 100 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) == 0 then
      actPerArr[12] = 100
   elseif hprate == 1 and ai:GetNumber(2) == 0 then
      actPerArr[7] = 100
   elseif targetDist >= 15 then
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[3] = 25
      actPerArr[4] = 20
      actPerArr[5] = 40
      actPerArr[6] = 0
      actPerArr[8] = 15
      actPerArr[9] = 0
      actPerArr[13] = 0
   elseif targetDist >= 9 then
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[3] = 20
      actPerArr[4] = 20
      actPerArr[5] = 25 * fate3
      actPerArr[6] = 0
      actPerArr[8] = 35
      actPerArr[9] = 0
      actPerArr[13] = 0
   elseif targetDist >= 7 then
      actPerArr[1] = 0
      actPerArr[2] = 15
      actPerArr[3] = 30
      actPerArr[4] = 30
      actPerArr[5] = 0 * fate3
      actPerArr[6] = 0
      actPerArr[8] = 25 * fate3
      actPerArr[9] = 0
      actPerArr[13] = 0
   elseif targetDist >= 5 then
      actPerArr[1] = 15
      actPerArr[2] = 15
      actPerArr[3] = 20 * fate3
      actPerArr[4] = 20 * fate3
      actPerArr[5] = 0
      actPerArr[6] = 0
      actPerArr[8] = 15 * fate3
      actPerArr[9] = 0
      actPerArr[13] = 15
   elseif targetDist >= 3 then
      actPerArr[1] = 20
      actPerArr[2] = 15
      actPerArr[3] = 10
      actPerArr[4] = 10
      actPerArr[5] = 0
      actPerArr[6] = 10
      actPerArr[8] = 15 * fate3
      actPerArr[9] = 0
      actPerArr[13] = 20
   else
      actPerArr[1] = 25
      actPerArr[2] = 10
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[6] = 25
      actPerArr[8] = 0
      actPerArr[9] = 20
      actPerArr[13] = 20
   end
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, Artorius410000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Artorius410000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Artorius410000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, Artorius410000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Artorius410000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Artorius410000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Artorius410000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Artorius410000_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, Artorius410000_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, Artorius410000_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, Artorius410000_Act11)
   actFuncArr[12] = REGIST_FUNC(ai, goal, Artorius410000_Act12)
   actFuncArr[13] = REGIST_FUNC(ai, goal, Artorius410000_Act13)
   actFuncArr[20] = REGIST_FUNC(ai, goal, Artorius410000_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Artorius410000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Artorius410000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max - 1
   local DashDist = Att3000_Dist_max + 1
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local AttDist = Att3000_Dist_max + 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
   elseif fate <= 60 then
      if fate2 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AppDist, 0)
      elseif fate2 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, AppDist, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AppDist, 0)
      end
   elseif fate2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AppDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AppDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, AppDist, 0)
   elseif fate2 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AppDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AppDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AppDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AppDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AppDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AppDist, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max - 1
   local DashDist = Att3002_Dist_max + 1
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local AttDist = Att3002_Dist_max + 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 90)
   elseif fate <= 60 then
      if fate2 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AppDist, 0)
      elseif fate2 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AppDist, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AppDist, 0)
      end
   elseif fate2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AppDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AppDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AppDist, 0)
   elseif fate2 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AppDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AppDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, AppDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AppDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AppDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AppDist, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   local AttDist = Att3004_Dist_max
   ai:SetTimer(1, 0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, AttDist, 0)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   local AttDist = Att3007_Dist_max
   ai:SetTimer(1, 0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, AttDist, -1, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, AttDist, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max - 1
   local DashDist = Att3005_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3005_Dist_max + 2
   local Distmin = Att3005_Dist_min - 1
   local Distmax = Att3005_Dist_max + 0
   ai:SetTimer(1, 0)
   if Distmin <= targetDist and targetDist <= Distmax then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3005, TARGET_ENE_0, AttDist, 0)
   elseif targetDist <= Distmin then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, AttDist, 0)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, AttDist, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

Artorius410000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3011_Dist_max
   local DashDist = Att3011_Dist_max + 2
   local Odds_Guard = 0
   local AttDist = Att3011_Dist_max
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3011, TARGET_ENE_0, AttDist, 0, 90)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act07 = function(ai, goal, paramTbl)
   local AttDist = Att3006_Dist_max
   ai:SetNumber(2, 1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, AttDist, 1, 30)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Artorius410000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   local AttDist = Att3003_Dist_max + 0
   local fate = ai:GetRandam_Int(1, 100)
   ai:SetTimer(1, 0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist, -1, 60)
      if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
         GetWellSpace_Odds = 20
      else
         GetWellSpace_Odds = 60
      end
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, AttDist, 0)
      if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
         GetWellSpace_Odds = 10
      else
         GetWellSpace_Odds = 80
      end
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, AttDist, 0)
      if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
         GetWellSpace_Odds = 50
      else
         GetWellSpace_Odds = 100
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   return GetWellSpace_Odds
end

Artorius410000_Act09 = function(ai, goal, paramTbl)
   local AppDist = Att3010_Dist_max
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local AttDist = Att3010_Dist_max + 8
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif fate2 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, AttDist, 0)
   elseif fate2 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AttDist, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 80
   end
   return GetWellSpace_Odds
end

Artorius410000_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AttDist = Att3008_Dist_max + 8
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3008, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif fate2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, AttDist, 0)
   elseif fate2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AttDist, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 80
   end
   return GetWellSpace_Odds
end

Artorius410000_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AttDist = Att3012_Dist_max
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 3)
   if fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3012, TARGET_ENE_0, AttDist, 0, -1)
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 10
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act12 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local AttDist = 20
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 4 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
   if targetDist <= 8 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      end
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   if hprate <= 0.25 then
      ai:SetNumber(1, 3)
   elseif hprate <= 0.5 then
      ai:SetNumber(1, 2)
   elseif hprate <= 0.8 then
      ai:SetNumber(1, 1)
   else
      ai:SetNumber(1, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, AttDist, 0, 90)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 9, TARGET_ENE_0, true, -1)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Artorius410000_Act13 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3023_Dist_max + 0
   local DashDist = Att3023_Dist_max + 1
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local AttDist = Att3023_Dist_max + 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, AttDist, 0, 60)
   elseif fate2 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, AttDist, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AppDist, 0)
   elseif fate2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, AttDist, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AppDist, 0)
   elseif fate2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, AttDist, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AppDist, 0)
   elseif fate2 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, AttDist, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AppDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AppDist, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act20 = function(ai, goal, paramTbl)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Artorius410000_ActAfter = function(ai, goal)
   local GW_fate = ai:GetRandam_Int(1, 100)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist <= 2 then
      if GW_fate <= 75 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif GW_fate <= 100 then
         if fate <= 0 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif targetDist <= 5 then
      if GW_fate <= 65 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif GW_fate <= 90 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif targetDist <= 10 then
      if GW_fate <= 25 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif GW_fate <= 80 then
         if fate <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif GW_fate <= 0 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif GW_fate <= 80 then
      if fate <= 100 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 60), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

Artorius410000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

Artorius410000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Artorius410000Battle_Terminate = function(ai, goal)
end

Artorius410000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   if ai:IsInterupt(INTERUPT_TargetIsGuard) and ai:GetNumber(0) == 1 then
      ai:SetNumber(0, 0)
      goal:ClearSubGoal()
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3023, TARGET_ENE_0, DIST_None, -1)
      elseif fate <= 50 and hprate >= 0.3 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3006, TARGET_ENE_0, DIST_None, 0, 90)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 30
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 5
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distUseItem_Act = 20
   local oddsUseItem_Act = 20
   do
      if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
         local AppDist = Att3005_Dist_max
         local DashDist = Att3005_Dist_max + 2
         local Odds_Guard = 0
         goal:ClearSubGoal()
         if targetDist <= 2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3008, TARGET_ENE_0, DIST_None, 0, 0)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3021, TARGET_ENE_0, DIST_None, 0, 90)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3020, TARGET_ENE_0, DIST_None, 0, 90)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3021, TARGET_ENE_0, DIST_None, 0, 90)
            end
         elseif targetDist <= 5 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3023, TARGET_ENE_0, DIST_None, 0, 90)
         elseif targetDist <= 7 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, DIST_None, -1, 25)
         elseif targetDist <= 10 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, DIST_None, 0, 90)
         else
            Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 2)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3005, TARGET_ENE_0, DIST_None, 0, 90)
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            return true
            -- Tried to add an 'end' here but it's incorrect
         end
         local distResNear = 6
         local distResFar = 20
         local oddsResNear = 60
         local oddsResFar = 80
         local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
         if ResBehavID == 1 then
            if fate <= 80 then
               if targetDist <= 5 then
                  goal:AddSubGoal(GOAL_COMMON_Attack, 2, 3023, TARGET_ENE_0, DIST_None, 0)
               elseif targetDist <= 7 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, DIST_None, -1, 25)
               else
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, DIST_None, 0, 90)
               end
            elseif fate2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
            -- Tried to add an 'end' here but it's incorrect
            return true
         elseif ResBehavID == 2 then
            if fate <= 60 then
               if targetDist <= 11 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, DIST_None, 0, 90)
               else
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3005, TARGET_ENE_0, DIST_None, 0, 90)
               end
            elseif fate2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
            -- Tried to add an 'end' here but it's incorrect
            return true
         end
         return false
end


