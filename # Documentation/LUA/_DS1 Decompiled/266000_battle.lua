REGISTER_GOAL(GOAL_Husi_Chef266000_Battle, "Husi_Chef266000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.2
local Att3002_Dist_min = 5.5
local Att3002_Dist_max = 7.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 3.3
local Att3005_Dist_min = 0
local Att3005_Dist_max = 0.8
local Att3007_Dist_min = 0
local Att3007_Dist_max = 0.8
REGISTER_GOAL_NO_UPDATE(GOAL_Husi_Chef266000_Battle, 1)
Husi_Chef266000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 8 then
      actPerArr[1] = 10
      actPerArr[2] = 5
      actPerArr[3] = 5
      actPerArr[4] = 5
      actPerArr[7] = 75
   elseif targetDist >= 4 then
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[3] = 15
      actPerArr[4] = 15
      actPerArr[7] = 30
   else
      actPerArr[1] = 30
      actPerArr[2] = 20
      actPerArr[3] = 20
      actPerArr[4] = 30
      actPerArr[7] = 0
   end
   defFuncParamTbl[1] = {Att3007_Dist_max, 0, 3007, DIST_Middle}
   actFuncArr[2] = REGIST_FUNC(ai, goal, Husi_Chef266000_Act02)
   defFuncParamTbl[3] = {Att3003_Dist_max, 0, 3003, DIST_Middle}
   actFuncArr[4] = REGIST_FUNC(ai, goal, Husi_Chef266000_Act04)
   defFuncParamTbl[7] = {Att3002_Dist_max, 0, 3002, DIST_Middle}
   local atkAfterOddsTbl = {0, 70, 5, 5, 5, 15}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Husi_Chef266000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi_Chef266000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3005
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi_Chef266000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi_Chef266000Battle_Terminate = function(ai, goal)
end

Husi_Chef266000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 3
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 2.6
   local oddsGuardBreak_Act = 50
   local fate = ai:GetRandam_Int(1, 100)
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 9.5
   local oddsUseItem_Act = 15
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 5.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 5.5
   local distResFar = 18
   local oddsResNear = 20
   local oddsResFar = 30
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   elseif ResBehavID == 2 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local oddsResponse = 20
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 4
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


