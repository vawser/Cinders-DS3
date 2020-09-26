REGISTER_GOAL(GOAL_HebibitoB270000_Battle, "HebibitoB270000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.5
local Att3004_Dist_min = 0
local Att3004_Dist_max = 1
local Att3005_Dist_min = 0
local Att3005_Dist_max = 3.5
local Att3006_Dist_min = 3
local Att3006_Dist_max = 5.6
local Att3007_Dist_min = 4
local Att3007_Dist_max = 14
local Att3008_Dist_min = 0
local Att3008_Dist_max = 0.9
local Att3009_Dist_min = 0
local Att3009_Dist_max = 20
REGISTER_GOAL_NO_UPDATE(GOAL_HebibitoB270000_Battle, 1)
HebibitoB270000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   local fate = ai:GetRandam_Int(30, 60)
   if ai:IsLadderAct(TARGET_SELF) then
      actPerArr[3] = 100
   elseif targetDist >= 10 then
      actPerArr[1] = 0
      actPerArr[2] = 5
      actPerArr[3] = 5
      actPerArr[4] = 10
      actPerArr[5] = 0
      actPerArr[6] = 80
      actPerArr[7] = 0
   elseif targetDist >= 8 then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, fate)
         actPerArr[1] = 0
         actPerArr[2] = 0
         actPerArr[3] = 0
         actPerArr[4] = 5
         actPerArr[5] = 0
         actPerArr[6] = 15
         actPerArr[7] = 0
         actPerArr[9] = 80
      else
         actPerArr[1] = 0
         actPerArr[2] = 0
         actPerArr[3] = 0
         actPerArr[4] = 20
         actPerArr[5] = 0
         actPerArr[6] = 80
         actPerArr[7] = 0
         actPerArr[9] = 0
      end
   elseif targetDist >= 5.7 then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, fate)
         actPerArr[1] = 0
         actPerArr[2] = 0
         actPerArr[3] = 0
         actPerArr[4] = 10
         actPerArr[5] = 0
         actPerArr[6] = 0
         actPerArr[7] = 0
         actPerArr[9] = 90
      else
         actPerArr[1] = 10
         actPerArr[2] = 10
         actPerArr[3] = 10
         actPerArr[4] = 40
         actPerArr[5] = 20
         actPerArr[6] = 10
         actPerArr[7] = 0
      end
   elseif targetDist >= 3 then
      actPerArr[1] = 5
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[4] = 15
      actPerArr[5] = 25
      actPerArr[6] = 0
      actPerArr[7] = 35
   else
      actPerArr[1] = 20
      actPerArr[2] = 25
      actPerArr[3] = 25
      actPerArr[4] = 0
      actPerArr[5] = 30
      actPerArr[6] = 0
      actPerArr[7] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, HebibitoB270000_Act01)
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 0, 0, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3004_Dist_max, 0, 3004, DIST_Middle}
   actFuncArr[4] = REGIST_FUNC(ai, goal, HebibitoB270000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, HebibitoB270000_Act05)
   defFuncParamTbl[6] = {3007, DIST_Far, nil}
   actFuncArr[7] = REGIST_FUNC(ai, goal, HebibitoB270000_Act07)
   actFuncArr[9] = REGIST_FUNC(ai, goal, HebibitoB270000_Act09)
   local atkAfterOddsTbl = {0, 50, 5, 5, 0, 20, 20}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HebibitoB270000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 5)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoB270000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoB270000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3008, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HebibitoB270000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HebibitoB270000_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HebibitoB270000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HebibitoB270000Battle_Terminate = function(ai, goal)
end

HebibitoB270000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local superStepDist = 3
   local superStepPer = 25
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 25
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 3
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 10
   local oddsGuardBreak_Act = 50
   local fate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist >= 5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 10
   local oddsUseItem_Act = 40
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 10.5
   local distResFar = 20
   local oddsResNear = 0
   local oddsResFar = 40
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   elseif ResBehavID == 2 then
      if fate <= 40 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      elseif fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
      return true
   end
   local oddsResponse = 15
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 3
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


