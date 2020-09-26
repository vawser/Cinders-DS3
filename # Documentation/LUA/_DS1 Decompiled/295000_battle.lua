REGISTER_GOAL(GOAL_Skeleton_Beast295000_Battle, "Skeleton_Beast295000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.2
local Att3001_Dist_min = 0
local Att3001_Dist_max = 2.9
local Att3002_Dist_min = 0
local Att3002_Dist_max = 2.7
local Att3003_Dist_min = 0
local Att3003_Dist_max = 6.1
local Att3004_Dist_min = 4.8
local Att3004_Dist_max = 6.1
local Att3005_Dist_min = 9
local Att3005_Dist_max = 10.7
local Att3006_Dist_min = 0
local Att3006_Dist_max = 5.8
REGISTER_GOAL_NO_UPDATE(GOAL_Skeleton_Beast295000_Battle, 1)
Skeleton_Beast295000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 9 then
      actPerArr[1] = 15
      actPerArr[2] = 15
      actPerArr[3] = 45
      actPerArr[5] = 25
      actPerArr[6] = 0
   elseif targetDist >= 4 then
      actPerArr[1] = 25
      actPerArr[2] = 25
      actPerArr[3] = 25
      actPerArr[5] = 10
      actPerArr[6] = 15
   elseif targetDist >= 2.5 then
      actPerArr[1] = 40
      actPerArr[2] = 30
      actPerArr[3] = 10
      actPerArr[5] = 0
      actPerArr[6] = 20
   else
      actPerArr[1] = 30
      actPerArr[2] = 50
      actPerArr[3] = 10
      actPerArr[5] = 0
      actPerArr[6] = 10
   end
   defFuncParamTbl[1] = {Att3002_Dist_max, 0, 3002, DIST_Near}
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 40, 60, 3000, 3001, 3000, nil}
   defFuncParamTbl[3] = {Att3003_Dist_max, 0, 3003, DIST_Middle}
   actFuncArr[5] = REGIST_FUNC(ai, goal, Skeleton_Beast295000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Skeleton_Beast295000_Act06)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Skeleton_Beast295000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Skeleton_Beast295000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if Att3005_Dist_min <= targetDist and fate <= 40 then
      local AppDist = Att3005_Dist_max
      local DashDist = Att3005_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3005
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   else
      local AppDist = Att3004_Dist_max
      local DashDist = Att3004_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3004
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Beast295000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3006
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Beast295000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local SpinTime = 0
   local SafeDist = 4
   if fate <= 20 then
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 3, TARGET_ENE_0, false, -1)
      return true
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, SpinTime, AI_DIR_TYPE_B, SafeDist)
      return true
   elseif fate2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, SpinTime, AI_DIR_TYPE_L, SafeDist)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, SpinTime, AI_DIR_TYPE_R, SafeDist)
      return true
   end
   return false
end

Skeleton_Beast295000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Skeleton_Beast295000Battle_Terminate = function(ai, goal)
end

Skeleton_Beast295000Battle_Interupt = function(ai, goal)
   local distGuardBreak_Act = 3
   local oddsGuardBreak_Act = 25
   local fate = ai:GetRandam_Int(1, 100)
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


