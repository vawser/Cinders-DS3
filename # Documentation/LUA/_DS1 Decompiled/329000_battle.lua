REGISTER_GOAL(GOAL_Ohmushi329000_Battle, "Ohmushi329000Battle")
local Att3000_Dist_min = 0.7
local Att3000_Dist_max = 1.1
local Att3001_Dist_min = 1.5
local Att3001_Dist_max = 3.4
local Att3002_Dist_min = 1.5
local Att3002_Dist_max = 3.3
local Att3003_Dist_min = 0
local Att3003_Dist_max = 3.9
local Att3004_Dist_min = 0
local Att3004_Dist_max = 3.9
REGISTER_GOAL_NO_UPDATE(GOAL_Ohmushi329000_Battle, 1)
Ohmushi329000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   local EventNo = ai:GetEventRequest()
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 160, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 161, 3)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 170, 2)
   ai:AddObserveChrDmySphere(3, TARGET_ENE_0, 171, 2)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 96) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 170) and targetDist <= 2.1 then
      actPerArr[1] = 5
      actPerArr[2] = 95
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 78) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 170) and targetDist <= 2.1 then
      actPerArr[1] = 5
      actPerArr[2] = 0
      actPerArr[3] = 95
      actPerArr[4] = 0
      actPerArr[5] = 0
   elseif ai:IsInsideObserve(2) and targetDist <= 2.5 then
      actPerArr[1] = 5
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 95
      actPerArr[5] = 0
   elseif ai:IsInsideObserve(3) and targetDist <= 2.5 then
      actPerArr[1] = 5
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 95
   else
      actPerArr[1] = 100
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
   end
   defFuncParamTbl[1] = {Att3000_Dist_max, 0, 3000, DIST_Middle}
   actFuncArr[2] = REGIST_FUNC(ai, goal, Ohmushi329000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Ohmushi329000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, Ohmushi329000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Ohmushi329000_Act05)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Ohmushi329000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Ohmushi329000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ohmushi329000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ohmushi329000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ohmushi329000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ohmushi329000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 30 then
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
      return true
   end
   return false
end

Ohmushi329000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ohmushi329000Battle_Terminate = function(ai, goal)
end

Ohmushi329000Battle_Interupt = function(ai, goal)
   return false
end


