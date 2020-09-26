REGISTER_GOAL(GOAL_Husi250000_Battle, "Husi250000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.7
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.8
local Att3004_Dist_min = 2.5
local Att3004_Dist_max = 4
local Att3005_Dist_min = 4
local Att3005_Dist_max = 6
local Att3006_Dist_min = 6
local Att3006_Dist_max = 7.5
local Att3008_Dist_min = 0
local Att3008_Dist_max = 1
REGISTER_GOAL_NO_UPDATE(GOAL_Husi250000_Battle, 1)
Husi250000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   if eventNo == 10 then
      actPerArr[8] = 100
   elseif targetDist >= 8 then
      actPerArr[1] = 5
      actPerArr[2] = 5
      actPerArr[3] = 10
      actPerArr[7] = 80
   elseif targetDist >= 4 then
      actPerArr[1] = 20
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[7] = 60
   elseif targetDist >= 2.5 then
      actPerArr[1] = 30
      actPerArr[2] = 30
      actPerArr[3] = 20
      actPerArr[7] = 20
   else
      actPerArr[1] = 35
      actPerArr[2] = 35
      actPerArr[3] = 30
      actPerArr[7] = 0
   end
   defFuncParamTbl[1] = {Att3008_Dist_max, 0, 3008, DIST_Middle}
   actFuncArr[2] = REGIST_FUNC(ai, goal, Husi250000_Act02)
   defFuncParamTbl[3] = {Att3003_Dist_max, 0, 3003, DIST_Middle}
   actFuncArr[7] = REGIST_FUNC(ai, goal, Husi250000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Husi250000_Act08)
   local atkAfterOddsTbl = {0, 60, 10, 10, 20, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Husi250000_Act02 = function(ai, goal, paramTbl)
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
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi250000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if Att3006_Dist_min <= targetDist and fate <= 20 then
      local AppDist = Att3006_Dist_max
      local DashDist = Att3006_Dist_max + 2
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif Att3005_Dist_min <= targetDist and fate2 <= 50 then
      local AppDist = Att3005_Dist_max
      local DashDist = Att3005_Dist_max + 2
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
   else
      local AppDist = Att3004_Dist_max
      local DashDist = Att3004_Dist_max + 2
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi250000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi250000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi250000Battle_Terminate = function(ai, goal)
end

Husi250000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distMissSwing_Attack = 1.7
   local oddsMissSwing_Attack = 10
   local AttID = 3000
   if MissSwing_Attack(ai, goal, distMissSwing_Attack, oddsMissSwing_Attack, AttID) then
      return true
   end
   local oddsResponse = 10
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


