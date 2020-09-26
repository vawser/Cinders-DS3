REGISTER_GOAL(GOAL_HonebutoSk_Senshi292001_Battle, "HonebutoSk_Senshi292001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.7
local Att3001_Dist_min = 0
local Att3001_Dist_max = 1.6
local Att3002_Dist_min = 0
local Att3002_Dist_max = 2.2
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.2
local Att3004_Dist_min = 0
local Att3004_Dist_max = 5.5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 2.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 6.5
local Att3007_Dist_min = 0
local Att3007_Dist_max = 0.7
REGISTER_GOAL_NO_UPDATE(GOAL_HonebutoSk_Senshi292001_Battle, 1)
HonebutoSk_Senshi292001Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 5.5 then
      actPerArr[1] = 10
      actPerArr[2] = 5
      actPerArr[3] = 40
      actPerArr[4] = 40
      actPerArr[5] = 0
      actPerArr[9] = 5
   elseif targetDist >= 2.7 then
      actPerArr[1] = 50
      actPerArr[2] = 25
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[9] = 25
   else
      actPerArr[1] = 35
      actPerArr[2] = 17
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 30
      actPerArr[9] = 18
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, HonebutoSk_Senshi292001_Act01)
   defFuncParamTbl[2] = {Att3000_Dist_max, 75, 33, 33, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3004_Dist_max, 75, 3004, DIST_Middle}
   actFuncArr[4] = REGIST_FUNC(ai, goal, HonebutoSk_Senshi292001_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, HonebutoSk_Senshi292001_Act05)
   defFuncParamTbl[9] = {Att3000_Dist_max, 75, 33, 33, 3000, 3001, 3003, nil}
   local atkAfterOddsTbl = {100, 40, 15, 15, 0, 15, 15}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HonebutoSk_Senshi292001_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3005
   local AttDist = DIST_Middle
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, 180)
   GetWellSpace_Odds = 75
   return GetWellSpace_Odds
end

HonebutoSk_Senshi292001_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 75
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HonebutoSk_Senshi292001_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 75
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HonebutoSk_Senshi292001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HonebutoSk_Senshi292001Battle_Terminate = function(ai, goal)
end

HonebutoSk_Senshi292001Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distResponse = 3
   local oddsResponse = 50
   local oddsStep = 30
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   local oddsLeaveAndSide = 50
   local timeSide = 4.5
   local distLeave = 2.5
   if Damaged_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distGuardBreak_Act = 2.2
   local oddsGuardBreak_Act = 50
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Int = 2.2
   local oddsMissSwing_Int = 30
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local oddsResponse = 1
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 4
   if MissSwingSelf_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local oddsResponse = 20
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distSuccessGuard_Act = 2.2
   local oddsSuccessGuard_Act = 50
   if SuccessGuard_Act(ai, goal, distSuccessGuard_Act, oddsSuccessGuard_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


