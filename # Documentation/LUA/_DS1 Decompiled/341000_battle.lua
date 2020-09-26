REGISTER_GOAL(GOAL_Kaeruei341000_Battle, "Kaeruei341000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.4
local Att3001_Dist_min = 0
local Att3001_Dist_max = 2.4
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4.3
local Att13000_Dist_min = 0
local Att13000_Dist_max = 1.7
local Att13001_Dist_min = 0
local Att13001_Dist_max = 2.4
local Att13002_Dist_min = 0
local Att13002_Dist_max = 4.6
local Att13003_Dist_min = 0
local Att13003_Dist_max = 4.7
local Att13004_Dist_min = 4.9
local Att13004_Dist_max = 5.2
REGISTER_GOAL_NO_UPDATE(GOAL_Kaeruei341000_Battle, 1)
Kaeruei341000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsSleepSpecialEffectId(TARGET_SELF, 5105) then
      if targetDist >= 8 then
         actPerArr[1] = 5
         actPerArr[2] = 5
         actPerArr[3] = 10
         actPerArr[9] = 80
      elseif targetDist >= 2 then
         actPerArr[1] = 30
         actPerArr[2] = 30
         actPerArr[3] = 40
         actPerArr[9] = 0
      else
         actPerArr[1] = 50
         actPerArr[2] = 50
         actPerArr[3] = 0
         actPerArr[9] = 0
      end
   elseif targetDist >= 15 then
      actPerArr[4] = 0
      actPerArr[5] = 5
      actPerArr[6] = 10
      actPerArr[7] = 15
      actPerArr[8] = 30
      actPerArr[10] = 40
   elseif targetDist >= 6.5 then
      actPerArr[4] = 5
      actPerArr[5] = 10
      actPerArr[6] = 20
      actPerArr[7] = 30
      actPerArr[8] = 45
      actPerArr[10] = 0
   elseif targetDist >= 2 then
      actPerArr[4] = 10
      actPerArr[5] = 20
      actPerArr[6] = 35
      actPerArr[7] = 35
      actPerArr[8] = 0
      actPerArr[10] = 0
   else
      actPerArr[4] = 40
      actPerArr[5] = 50
      actPerArr[6] = 0
      actPerArr[7] = 10
      actPerArr[8] = 0
      actPerArr[10] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   defFuncParamTbl[1] = {Att3000_Dist_max, 0, 3000, DIST_Middle, nil}
   actFuncArr[2] = REGIST_FUNC(ai, goal, Kaeruei341000_Act02)
   defFuncParamTbl[3] = {Att3002_Dist_max, 0, 3002, DIST_Middle, nil}
   actFuncArr[4] = REGIST_FUNC(ai, goal, Kaeruei341000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Kaeruei341000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Kaeruei341000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Kaeruei341000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Kaeruei341000_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, Kaeruei341000_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, Kaeruei341000_Act10)
   local atkAfterOddsTbl = {0, 60, 0, 0, 10, 15, 15}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Kaeruei341000_Act02 = function(ai, goal, paramTbl)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 70)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act04 = function(ai, goal, paramTbl)
   local AppDist = Att13000_Dist_max
   local DashDist = Att13000_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3000
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act05 = function(ai, goal, paramTbl)
   local AppDist = Att13001_Dist_max
   local DashDist = Att13001_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 70)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act06 = function(ai, goal, paramTbl)
   local AppDist = Att13002_Dist_max
   local DashDist = Att13002_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3002
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act07 = function(ai, goal, paramTbl)
   local AppDist = Att13003_Dist_max
   local DashDist = Att13003_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3003
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act08 = function(ai, goal, paramTbl)
   local AppDist = Att13004_Dist_max
   local DashDist = Att13004_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3004
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kaeruei341000_Act09 = function(ai, goal, paramTbl)
   local AppDist = 8
   local DashDist = 10
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kaeruei341000_Act10 = function(ai, goal, paramTbl)
   local AppDist = 10
   local DashDist = 12
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 7)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kaeruei341000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kaeruei341000Battle_Terminate = function(ai, goal)
end

Kaeruei341000Battle_Interupt = function(ai, goal)
   local superStepDist = 3
   local superStepPer = 10
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local oddsResponse = 20
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 4
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


