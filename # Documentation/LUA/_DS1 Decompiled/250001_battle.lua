REGISTER_GOAL(GOAL_Husi_Torch250001_Battle, "Husi_Torch250001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2
local Att3002_Dist_min = 2
local Att3002_Dist_max = 6
local Att3003_Dist_min = 2.9
local Att3003_Dist_max = 3.9
local Att3004_Dist_min = 4.6
local Att3004_Dist_max = 6.1
local Att3005_Dist_min = 6.7
local Att3005_Dist_max = 8.2
local Att3006_Dist_min = 1.35
local Att3006_Dist_max = 1.6
REGISTER_GOAL_NO_UPDATE(GOAL_Husi_Torch250001_Battle, 1)
Husi_Torch250001Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 9 then
      actPerArr[1] = 15
      actPerArr[2] = 0
      actPerArr[3] = 25
      actPerArr[7] = 60
   elseif targetDist >= 6 then
      actPerArr[1] = 20
      actPerArr[2] = 5
      actPerArr[3] = 40
      actPerArr[7] = 35
   elseif targetDist >= 3.5 then
      actPerArr[1] = 10
      actPerArr[2] = 40
      actPerArr[3] = 25
      actPerArr[7] = 25
   else
      actPerArr[1] = 30
      actPerArr[2] = 70
      actPerArr[3] = 0
      actPerArr[7] = 0
   end
   defFuncParamTbl[1] = {Att3006_Dist_max, 0, 3006, DIST_Far, 0}
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 30, 70, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3002_Dist_max, 0, 3002, DIST_Middle}
   actFuncArr[7] = REGIST_FUNC(ai, goal, Husi_Torch250001_Act07)
   local atkAfterOddsTbl = {0, 50, 10, 15, 25, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Husi_Torch250001_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if Att3005_Dist_min <= targetDist and fate <= 20 then
      local AppDist = Att3005_Dist_max
      local DashDist = Att3005_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3005
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   elseif Att3004_Dist_min <= targetDist and fate2 <= 50 then
      local AppDist = Att3004_Dist_max
      local DashDist = Att3004_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3004
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   else
      local AppDist = Att3003_Dist_max
      local DashDist = Att3003_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3003
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi_Torch250001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi_Torch250001Battle_Terminate = function(ai, goal)
end

Husi_Torch250001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distMissSwing_Attack = 2
   local oddsMissSwing_Attack = 10
   local AttID = 3000
   if MissSwing_Attack(ai, goal, distMissSwing_Attack, oddsMissSwing_Attack, AttID) then
      return true
   end
   local oddsResponse = 10
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


