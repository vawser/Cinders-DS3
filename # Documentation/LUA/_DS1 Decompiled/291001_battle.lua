REGISTER_GOAL(GOAL_BigSk_Bow291001_Battle, "BigSk_Bow291001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 0
local Att3006_Dist_min = 0
local Att3006_Dist_max = 2.5
REGISTER_GOAL_NO_UPDATE(GOAL_BigSk_Bow291001_Battle, 1)
BigSk_Bow291001Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 12 then
      actPerArr[1] = 100
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 0
   elseif targetDist >= 3 then
      actPerArr[1] = 0
      actPerArr[2] = 100
      actPerArr[3] = 0
      actPerArr[4] = 0
   else
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[3] = 70
      actPerArr[4] = 30
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, BigSk_Bow291001_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, BigSk_Bow291001_Act02)
   defFuncParamTbl[3] = {Att3006_Dist_max, 0, 3006, DIST_Middle}
   actFuncArr[4] = REGIST_FUNC(ai, goal, BigSk_Bow291001_Act04)
   local atkAfterOddsTbl = {0, 100, 0, 0, 0, 0, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

BigSk_Bow291001_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigSk_Bow291001_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigSk_Bow291001_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigSk_Bow291001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BigSk_Bow291001Battle_Terminate = function(ai, goal)
end

BigSk_Bow291001Battle_Interupt = function(ai, goal)
   local distDamagedStep = 3
   local oddsDamagedStep = 25
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


