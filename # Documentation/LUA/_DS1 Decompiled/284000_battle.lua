REGISTER_GOAL(GOAL_HusiCongestion_Torch284000_Battle, "HusiCongestion_Torch284000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.9
local Att3002_Dist_min = 0
local Att3002_Dist_max = 2.3
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.4
local Att3005_Dist_min = 2.9
local Att3005_Dist_max = 3.9
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.7
REGISTER_GOAL_NO_UPDATE(GOAL_HusiCongestion_Torch284000_Battle, 1)
HusiCongestion_Torch284000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      actPerArr[2] = 100
   elseif targetDist >= 4.4 then
      actPerArr[1] = 10
      actPerArr[2] = 15
      actPerArr[3] = 50
      actPerArr[4] = 10
      actPerArr[9] = 15
   elseif targetDist >= 2 then
      actPerArr[1] = 35
      actPerArr[2] = 15
      actPerArr[3] = 0
      actPerArr[4] = 15
      actPerArr[9] = 35
   else
      actPerArr[1] = 15
      actPerArr[2] = 35
      actPerArr[3] = 0
      actPerArr[4] = 35
      actPerArr[9] = 15
   end
   defFuncParamTbl[1] = {Att3002_Dist_max, 0, 3002, DIST_Middle}
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 30, 100, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3005_Dist_max, 0, 3005, DIST_Middle}
   actFuncArr[4] = REGIST_FUNC(ai, goal, HusiCongestion_Torch284000_Act04)
   defFuncParamTbl[9] = {Att3003_Dist_max, 0, 30, 100, 3003, 3004, nil, nil}
   local atkAfterOddsTbl = {0, 50, 10, 15, 15, 10}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HusiCongestion_Torch284000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiCongestion_Torch284000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiCongestion_Torch284000Battle_Terminate = function(ai, goal)
end

HusiCongestion_Torch284000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distDamagedStep = 3
   local oddsDamagedStep = 5
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


