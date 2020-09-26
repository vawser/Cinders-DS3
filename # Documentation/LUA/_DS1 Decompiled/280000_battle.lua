REGISTER_GOAL(GOAL_HusiCrystal_Sword280000_Battle, "HusiCrystal_Sword280000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.7
local Att3004_Dist_min = 1.7
local Att3004_Dist_max = 3
local Att3005_Dist_min = 5
local Att3005_Dist_max = 7.2
local Att3006_Dist_min = 11
local Att3006_Dist_max = 11.7
local Att3007_Dist_min = 0
local Att3007_Dist_max = 2
REGISTER_GOAL_NO_UPDATE(GOAL_HusiCrystal_Sword280000_Battle, 1)
HusiCrystal_Sword280000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   if eventNo == 10 then
      actPerArr[8] = 100
   elseif ai:IsLadderAct(TARGET_SELF) then
      actPerArr[2] = 100
   elseif targetDist >= 8 then
      actPerArr[1] = 5
      actPerArr[2] = 5
      actPerArr[3] = 10
      actPerArr[7] = 80
   elseif targetDist >= 4 then
      actPerArr[1] = 20
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[7] = 60
   elseif targetDist >= 2.5 then
      actPerArr[1] = 30
      actPerArr[2] = 30
      actPerArr[3] = 20
      actPerArr[7] = 20
   else
      actPerArr[1] = 35
      actPerArr[2] = 35
      actPerArr[3] = 30
      actPerArr[7] = 0
   end
   defFuncParamTbl[1] = {Att3007_Dist_max, 30, 3007, DIST_Middle}
   defFuncParamTbl[2] = {Att3000_Dist_max, 30, 20, 40, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3003_Dist_max, 30, 3003, DIST_Middle}
   actFuncArr[7] = REGIST_FUNC(ai, goal, HusiCrystal_Sword280000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, HusiCrystal_Sword280000_Act08)
   local atkAfterOddsTbl = {30, 5, 20, 15, 10, 10, 10}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HusiCrystal_Sword280000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if Att3006_Dist_min <= targetDist and fate <= 20 then
      local AppDist = Att3006_Dist_max
      local DashDist = Att3006_Dist_max + 2
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   elseif Att3005_Dist_min <= targetDist and fate2 <= 50 then
      local AppDist = Att3005_Dist_max
      local DashDist = Att3005_Dist_max + 2
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   else
      local AppDist = Att3004_Dist_max
      local DashDist = Att3004_Dist_max + 2
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiCrystal_Sword280000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiCrystal_Sword280000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiCrystal_Sword280000Battle_Terminate = function(ai, goal)
end

HusiCrystal_Sword280000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distResponse = 3
   local oddsResponse = 15
   local oddsStep = 50
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local timeSide = 2.5
   local distLeave = 2.5
   if FindAttack_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distMissSwing_Int = 3
   local oddsMissSwing_Int = 30
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distGuardBreak_Act = 3
   local oddsGuardBreak_Act = 30
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 8.5
   local distResFar = 18
   local oddsResNear = 0
   local oddsResFar = 15
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif ResBehavID == 2 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         return true
      elseif fate <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local oddsResponse = 20
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


