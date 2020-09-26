REGISTER_GOAL(GOAL_Bigjelly350000_Battle, "Bigjelly350000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 4.5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 12
local Att3003_Dist_min = 0
local Att3003_Dist_max = 5
local Att3004_Dist_min = 4
local Att3004_Dist_max = 8
local Att3005_Dist_min = 0
local Att3005_Dist_max = 100
REGISTER_GOAL_NO_UPDATE(GOAL_Bigjelly350000_Battle, 1)
Bigjelly350000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local activeBreathChr = ai:GetEventRequest(0)
   local Wisp_Odds = 1
   if ai:IsFinishTimer(0) == false then
      Wisp_Odds = 0
   elseif activeBreathChr == 0 then
      Wisp_Odds = 5
   elseif activeBreathChr == 1 then
      Wisp_Odds = 1.5
   elseif activeBreathChr == 2 then
      Wisp_Odds = 0.8
   elseif activeBreathChr == 3 then
      Wisp_Odds = 0.4
   elseif activeBreathChr == 4 then
      Wisp_Odds = 0.2
   elseif activeBreathChr == 5 then
      Wisp_Odds = 0.1
   elseif activeBreathChr == 6 then
      Wisp_Odds = 0
   else
      Wisp_Odds = 5
   end
   if targetDist >= 12 then
      actPerArr[1] = 50
      actPerArr[2] = 0
      actPerArr[4] = 0
      actPerArr[5] = 30
      actPerArr[6] = 20 * Wisp_Odds
   elseif targetDist >= 8 then
      actPerArr[1] = 25
      actPerArr[2] = 0
      actPerArr[4] = 5
      actPerArr[5] = 50
      actPerArr[6] = 20 * Wisp_Odds
   elseif targetDist >= 4 then
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[4] = 40
      actPerArr[5] = 0
      actPerArr[6] = 20 * Wisp_Odds
   else
      actPerArr[1] = 5
      actPerArr[2] = 45
      actPerArr[4] = 30
      actPerArr[5] = 0
      actPerArr[6] = 20 * Wisp_Odds
   end
   defFuncParamTbl[1] = {Att3002_Dist_max, 0, 3002, DIST_Middle}
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 10, 90, nil, nil, nil, nil}
   actFuncArr[4] = REGIST_FUNC(ai, goal, Bigjelly350000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Bigjelly350000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Bigjelly350000_Act06)
   local atkAfterOddsTbl = {0, 90, 0, 5, 5, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Bigjelly350000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3003
   local AttDist = DIST_None
   local TurnTime = 1.5
   local TurnFaceAngle = 20
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist, TurnTime, TurnFaceAngle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Bigjelly350000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3004
   local AttDist = DIST_None
   local TurnTime = 1.5
   local TurnFaceAngle = 20
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist, TurnTime, TurnFaceAngle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Bigjelly350000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_SELF, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Bigjelly350000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Bigjelly350000Battle_Terminate = function(ai, goal)
end

Bigjelly350000Battle_Interupt = function(ai, goal)
   return false
end


