REGISTER_GOAL(GOAL_HusiBan281000_Battle, "HusiBan281000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.8
local Att3002_Dist_min = 0
local Att3002_Dist_max = 2.1
local Att3003_Dist_min = 2.75
local Att3003_Dist_max = 6.45
local Att3004_Dist_min = 0
local Att3004_Dist_max = 4.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 9.5
REGISTER_GOAL_NO_UPDATE(GOAL_HusiBan281000_Battle, 1)
HusiBan281000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 8 then
      actPerArr[2] = 10
      actPerArr[3] = 5
      actPerArr[1] = 50
      actPerArr[9] = 10
      actPerArr[6] = 25
   elseif targetDist >= 4 then
      actPerArr[2] = 15
      actPerArr[3] = 10
      actPerArr[1] = 40
      actPerArr[9] = 10
      actPerArr[6] = 25
   elseif targetDist >= 2.5 then
      actPerArr[2] = 30
      actPerArr[3] = 20
      actPerArr[1] = 10
      actPerArr[9] = 30
      actPerArr[6] = 10
   else
      actPerArr[2] = 35
      actPerArr[3] = 20
      actPerArr[1] = 0
      actPerArr[9] = 35
      actPerArr[6] = 10
   end
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 50, 100, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3002_Dist_max, 0, 3002, DIST_Middle}
   defFuncParamTbl[1] = {Att3003_Dist_max, 0, 3003, DIST_Middle}
   defFuncParamTbl[9] = {Att3004_Dist_max, 0, 50, 100, 3004, 3005, nil, nil}
   defFuncParamTbl[6] = {3006, DIST_None, nil}
   local atkAfterOddsTbl = {0, 10, 40, 30, 20, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HusiBan281000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiBan281000Battle_Terminate = function(ai, goal)
end

HusiBan281000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local guardBreakConutDist = 1.7
   local guardBreakConutPer = 25
   if FindGuardBreak_Act(ai, goal, guardBreakConutDist, guardBreakConutPer) then
      local AppDist = Att3003_Dist_max
      local DashDist = Att3003_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3003
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      return true
   end
   local distMissSwing_Attack = 4.5
   local oddsMissSwing_Attack = 25
   local AttID = 3004
   if MissSwing_Attack(ai, goal, distMissSwing_Attack, oddsMissSwing_Attack, AttID) then
      return true
   end
   return false
end


