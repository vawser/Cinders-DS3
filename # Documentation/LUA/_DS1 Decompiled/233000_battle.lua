REGISTER_GOAL(GOAL_Jujin233000_Battle, "Jujin233000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.8
local Att3002_Dist_min = 2.5
local Att3002_Dist_max = 6.5
local Att3004_Dist_min = 0
local Att3004_Dist_max = 1.8
local Att3005_Dist_min = 0
local Att3005_Dist_max = 3.8
local Att3006_Dist_min = 0
local Att3006_Dist_max = 4
REGISTER_GOAL_NO_UPDATE(GOAL_Jujin233000_Battle, 1)
Jujin233000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 8 then
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[3] = 15
      actPerArr[4] = 5
      actPerArr[9] = 40
   elseif targetDist >= 2.5 then
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[3] = 15
      actPerArr[4] = 15
      actPerArr[9] = 30
   else
      actPerArr[1] = 30
      actPerArr[2] = 20
      actPerArr[3] = 20
      actPerArr[4] = 30
      actPerArr[9] = 0
   end
   defFuncParamTbl[1] = {Att3005_Dist_max, 0, 3005, DIST_Middle}
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 30, 70, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3006_Dist_max, 0, 3006, DIST_Middle}
   actFuncArr[4] = REGIST_FUNC(ai, goal, Jujin233000_Act04)
   defFuncParamTbl[9] = {Att3002_Dist_max, 0, 30, 70, 3002, 3003, nil, nil}
   local atkAfterOddsTbl = {0, 50, 0, 5, 20, 15, 10}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Jujin233000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3004
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Jujin233000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Jujin233000Battle_Terminate = function(ai, goal)
end

Jujin233000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local superStepDist = 3
   local superStepPer = 15
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 3.5
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 25
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 3.5
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 6.5
   local oddsGuardBreak_Act = 30
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist <= 3.8 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local distMissSwing_Int = 6.5
   local oddsMissSwing_Int = 30
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist <= 3.8 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local distResNear = 7
   local distResFar = 18
   local oddsResNear = 0
   local oddsResFar = 40
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif ResBehavID == 2 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local oddsResponse = 30
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


