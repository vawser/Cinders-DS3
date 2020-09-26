REGISTER_GOAL(GOAL_BlackKnight_Sword279000_Battle, "BlackKnight_Sword279000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.2
local Att3005_Dist_min = 0
local Att3005_Dist_max = 2.7
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.6
local Att3007_Dist_min = 4.1
local Att3007_Dist_max = 6.2
REGISTER_GOAL_NO_UPDATE(GOAL_BlackKnight_Sword279000_Battle, 1)
BlackKnight_Sword279000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   local MoveAttackOdds = 1
   if ai:IsRideEdgeFlag(TARGET_SELF) or ai:IsRideEdgeFlag(TARGET_ENE_0) then
      MoveAttackOdds = 0
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      if targetDist >= 8 then
         actPerArr[4] = 20
      elseif targetDist >= 4.1 then
         actPerArr[4] = 80
      else
         actPerArr[4] = 150
      end
   end
   if targetDist >= 8 then
      actPerArr[1] = 5
      actPerArr[2] = 5
      actPerArr[5] = 90 * MoveAttackOdds
   elseif targetDist >= 4.1 then
      actPerArr[1] = 20
      actPerArr[2] = 45
      actPerArr[5] = 35 * MoveAttackOdds
      actPerArr[6] = 5
   elseif targetDist >= 1.7 then
      actPerArr[1] = 30
      actPerArr[2] = 45
      actPerArr[5] = 0
      actPerArr[6] = 25
   else
      actPerArr[1] = 20
      actPerArr[2] = 35
      actPerArr[5] = 0
      actPerArr[6] = 45
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act02)
   actFuncArr[4] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act06)
   local atkAfterFunc = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

BlackKnight_Sword279000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 75
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_Act02 = function(ai, goal, paramTbl)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 75
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 75
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_Act05 = function(ai, goal, paramTbl)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 75
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = 1.5
   local DashDist = 3.5
   local Odds_Guard = 75
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45, 0, 0)
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 30)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 60)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local GW_fate = ai:GetRandam_Int(0, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local friendNum = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + bRight, TARGET_ENE_0, 2)
   if GW_fate <= 20 and friendNum < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif GW_fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
   elseif GW_fate <= 37 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif GW_fate <= 45 then
      local fate = ai:GetRandam_Int(1, 100)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

BlackKnight_Sword279000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BlackKnight_Sword279000Battle_Terminate = function(ai, goal)
end

BlackKnight_Sword279000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distResponse = 3
   local oddsResponse = 25
   local oddsStep = 30
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local oddsSideAndLeave = 25
   local timeSide = 4.5
   local distLeave = 2.5
   if Damaged_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, oddsSide, oddsSideAndLeave, timeSide, distLeave) then
      return true
   end
   local distMissSwing_Int = 2.7
   local oddsMissSwing_Int = 30
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 6.2
   local oddsUseItem_Act = 60
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist <= 4 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      elseif not ai:IsRideEdgeFlag(TARGET_SELF) and not ai:IsRideEdgeFlag(TARGET_ENE_0) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 6
   local distResFar = 18
   local oddsResNear = 40
   local oddsResFar = 50
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif ResBehavID == 2 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      elseif fate <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local oddsResponse = 35
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


