REGISTER_GOAL(GOAL_Leech338000_Battle, "Leech338000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 0.8
local Att3001_Dist_min = 0
local Att3001_Dist_max = 0.8
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4.4
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.7
REGISTER_GOAL_NO_UPDATE(GOAL_Leech338000_Battle, 1)
Leech338000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 8 then
      actPerArr[1] = 5
      actPerArr[2] = 5
      actPerArr[3] = 60
      actPerArr[5] = 30
   elseif targetDist >= 4 then
      actPerArr[1] = 10
      actPerArr[2] = 10
      actPerArr[3] = 60
      actPerArr[5] = 20
   elseif targetDist >= 2.5 then
      actPerArr[1] = 15
      actPerArr[2] = 15
      actPerArr[3] = 30
      actPerArr[5] = 40
   else
      actPerArr[1] = 40
      actPerArr[2] = 40
      actPerArr[3] = 5
      actPerArr[5] = 15
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Leech338000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Leech338000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Leech338000_Act03)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Leech338000_Act05)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Leech338000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Leech338000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Near, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Leech338000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3001, TARGET_ENE_0, DIST_Near, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Leech338000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Near, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Leech338000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3003, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Leech338000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 30 then
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
      return true
   end
   return false
end

Leech338000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Leech338000Battle_Terminate = function(ai, goal)
end

Leech338000Battle_Interupt = function(ai, goal)
   return false
end


