REGISTER_GOAL(GOAL_HusiBanIwa281100_Battle, "HusiBanIwa281100Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.4
local Att3001_Dist_min = 0
local Att3001_Dist_max = 2.4
local Att3002_Dist_min = 0
local Att3002_Dist_max = 1.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 7.4
local Att3004_Dist_min = 0
local Att3004_Dist_max = 3
local Att3005_Dist_min = 0
local Att3005_Dist_max = 20.1
local Att3006_Dist_min = 0
local Att3006_Dist_max = 20
local Att3007_Dist_min = 0
local Att3007_Dist_max = 10
REGISTER_GOAL_NO_UPDATE(GOAL_HusiBanIwa281100_Battle, 1)
HusiBanIwa281100Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   if targetDist >= 8.1 then
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 40
      actPerArr[6] = 60
      actPerArr[9] = 0
   elseif targetDist >= 6.1 then
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[6] = 20
      actPerArr[9] = 80
   elseif targetDist >= 4.1 then
      actPerArr[1] = 10
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[4] = 0
      actPerArr[6] = 0
      actPerArr[9] = 70
   elseif targetDist >= 2.1 then
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[3] = 10
      actPerArr[4] = 0
      actPerArr[6] = 0
      actPerArr[9] = 50
   else
      actPerArr[1] = 25
      actPerArr[2] = 20
      actPerArr[3] = 5
      actPerArr[4] = 0
      actPerArr[6] = 0
      actPerArr[9] = 50
   end
   defFuncParamTbl[1] = {Att3002_Dist_max, 0, 3002, DIST_Middle}
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 30, 70, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3004_Dist_max, 0, 3004, DIST_Middle}
   actFuncArr[4] = REGIST_FUNC(ai, goal, HusiBanIwa281100_Act04)
   defFuncParamTbl[6] = {3007, DIST_Far, nil}
   actFuncArr[9] = REGIST_FUNC(ai, goal, HusiBanIwa281100_Act09)
   local atkAfterOddsTbl = {0, 90, 5, 5, 0, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HusiBanIwa281100_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiBanIwa281100_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiBanIwa281100_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 6.1 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   elseif targetDist >= 4.1 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   elseif targetDist >= 2.1 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiBanIwa281100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiBanIwa281100Battle_Terminate = function(ai, goal)
end

HusiBanIwa281100Battle_Interupt = function(ai, goal)
   local distGuardBreak_Act = 7.4
   local oddsGuardBreak_Act = 30
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist >= 2.3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


