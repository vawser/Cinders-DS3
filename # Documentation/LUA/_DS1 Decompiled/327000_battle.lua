REGISTER_GOAL(GOAL_basilisk327000_Battle, "basilisk327000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.2
local Att3001_Dist_min = 5.2
local Att3001_Dist_max = 8.2
REGISTER_GOAL_NO_UPDATE(GOAL_basilisk327000_Battle, 1)
basilisk327000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 15 then
      actPerArr[1] = 5
      actPerArr[2] = 95
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
   elseif targetDist >= 10.5 then
      actPerArr[1] = 20
      actPerArr[2] = 80
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
   elseif targetDist >= 7 then
      actPerArr[1] = 25
      actPerArr[2] = 0
      actPerArr[3] = 70
      actPerArr[4] = 0
      actPerArr[5] = 5
   elseif targetDist >= 2.5 then
      actPerArr[1] = 70
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 30
   else
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 60
      actPerArr[5] = 40
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, basilisk327000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, basilisk327000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, basilisk327000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, basilisk327000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, basilisk327000_Act05)
   local atkAfterFunc = REGIST_FUNC(ai, goal, basilisk327000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

basilisk327000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist >= 18 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 15, TARGET_SELF, true, -1)
   elseif targetDist >= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 13, TARGET_SELF, true, -1)
   elseif targetDist >= 12 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
   else
   end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      GetWellSpace_Odds = 100
      return GetWellSpace_Odds
end

basilisk327000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist >= 18 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 15, TARGET_SELF, true, -1)
   elseif targetDist >= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 13, TARGET_SELF, true, -1)
   elseif targetDist >= 12 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
   elseif targetDist >= 10 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8.5, TARGET_SELF, true, -1)
   else
   end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8.5, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      GetWellSpace_Odds = 100
      return GetWellSpace_Odds
end

basilisk327000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

basilisk327000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

basilisk327000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

basilisk327000_ActAfter_AdjustSpace = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 10 then
   elseif fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   elseif fate2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif fate2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   end
   return true
   return false
end

basilisk327000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

basilisk327000Battle_Terminate = function(ai, goal)
end

basilisk327000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local superStepDist = 4
   local superStepPer = 25
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local distDamagedStep = 4
   local oddsDamagedStep = 15
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


