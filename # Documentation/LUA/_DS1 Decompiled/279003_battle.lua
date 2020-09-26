REGISTER_GOAL(GOAL_BlackKnight_Spear279003_Battle, "BlackKnight_Spear279003Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.6
local Att3004_Dist_min = 3.3
local Att3004_Dist_max = 4.9
local Att3005_Dist_min = 5.9
local Att3005_Dist_max = 7.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.3
local Att3008_Dist_min = 0
local Att3008_Dist_max = 2.2
local Att3010_Dist_min = 2.6
local Att3010_Dist_max = 3.5
local Att3012_Dist_min = 0
local Att3012_Dist_max = 2.8
local Att3013_Dist_min = 4.7
local Att3013_Dist_max = 5.7
REGISTER_GOAL_NO_UPDATE(GOAL_BlackKnight_Spear279003_Battle, 1)
BlackKnight_Spear279003Battle_Activate = function(ai, goal)
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
      if targetDist >= 7 then
         actPerArr[4] = 20
      elseif targetDist >= 3 then
         actPerArr[4] = 80
      else
         actPerArr[4] = 150
      end
   end
   if targetDist >= 5.9 then
      actPerArr[1] = 25 * MoveAttackOdds
      actPerArr[2] = 10
      actPerArr[3] = 5
      actPerArr[5] = 25 * MoveAttackOdds
      actPerArr[6] = 5 * MoveAttackOdds
      actPerArr[7] = 0
      actPerArr[8] = 15 * MoveAttackOdds
      actPerArr[9] = 5
   elseif targetDist >= 4.7 then
      actPerArr[1] = 20 * MoveAttackOdds
      actPerArr[2] = 15
      actPerArr[3] = 5
      actPerArr[5] = 15 * MoveAttackOdds
      actPerArr[6] = 5 * MoveAttackOdds
      actPerArr[7] = 0
      actPerArr[8] = 30 * MoveAttackOdds
      actPerArr[9] = 5
   elseif targetDist >= 3.3 then
      actPerArr[1] = 15 * MoveAttackOdds
      actPerArr[2] = 15
      actPerArr[3] = 15
      actPerArr[5] = 0 * MoveAttackOdds
      actPerArr[6] = 15 * MoveAttackOdds
      actPerArr[7] = 15
      actPerArr[8] = 0 * MoveAttackOdds
      actPerArr[9] = 15
   else
      actPerArr[1] = 0 * MoveAttackOdds
      actPerArr[2] = 20
      actPerArr[3] = 15
      actPerArr[5] = 0 * MoveAttackOdds
      actPerArr[6] = 20 * MoveAttackOdds
      actPerArr[7] = 20
      actPerArr[8] = 0 * MoveAttackOdds
      actPerArr[9] = 15
   end
   local myThinkId = ai:GetNpcThinkParamID()
   if myThinkId == 279003 then
      actPerArr[6] = 0
      actPerArr[9] = 0
   end
   defFuncParamTbl[1] = {Att3004_Dist_max, 75, 3004, DIST_Middle}
   actFuncArr[2] = REGIST_FUNC(ai, goal, BlackKnight_Spear279003_Act02)
   defFuncParamTbl[3] = {Att3003_Dist_max, 75, 3003, DIST_Middle}
   local Att2nd = 3010
   if myThinkId == 279003 then
      Att2nd = 3003
   end
   defFuncParamTbl[4] = {Att3006_Dist_max, 75, 3006, DIST_Middle, Att2nd, DIST_Middle, nil}
   actFuncArr[5] = REGIST_FUNC(ai, goal, BlackKnight_Spear279003_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, BlackKnight_Spear279003_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, BlackKnight_Spear279003_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, BlackKnight_Spear279003_Act08)
   defFuncParamTbl[9] = {Att3008_Dist_max, 75, 30, 60, 3008, 3009, 3011, nil}
   local atkAfterFunc = REGIST_FUNC(ai, goal, BlackKnight_Spear279003_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

BlackKnight_Spear279003_Act02 = function(ai, goal, paramTbl)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 90
   local fate = ai:GetRandam_Int(1, 100)
   local Odds_Com1 = 30
   local Odds_Com2 = 30
   local Odds_Com3 = 40
   local myThinkId = ai:GetNpcThinkParamID()
   if myThinkId == 279003 then
      Odds_Com3 = 0
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   local fate_Com = ai:GetRandam_Int(1, Odds_Com1 + Odds_Com2 + Odds_Com3)
   if fate_Com <= Odds_Com1 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate_Com <= Odds_Com1 + Odds_Com2 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Spear279003_Act05 = function(ai, goal, paramTbl)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Spear279003_Act06 = function(ai, goal, paramTbl)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max + 2
   local Odds_Guard = 50
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, -1, 70)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Spear279003_Act07 = function(ai, goal, paramTbl)
   local AppDist = Att3012_Dist_max
   local DashDist = Att3012_Dist_max + 2
   local Odds_Guard = 50
   local AttID = 3012
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Middle, -1, 50)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Spear279003_Act08 = function(ai, goal, paramTbl)
   local AppDist = Att3013_Dist_max
   local DashDist = Att3013_Dist_max + 2
   local Odds_Guard = 50
   local AttID = 3013
   local AttDist = DIST_Middle
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, DIST_Middle, -1, 30)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Spear279003_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local GW_fate = ai:GetRandam_Int(0, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local friendNum = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + bRight, TARGET_ENE_0, 2)
   if GW_fate <= 40 and friendNum < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif GW_fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
   elseif GW_fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif GW_fate <= 75 then
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

BlackKnight_Spear279003Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BlackKnight_Spear279003Battle_Terminate = function(ai, goal)
end

BlackKnight_Spear279003Battle_Interupt = function(ai, goal)
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
   local distMissSwing_Int = 2.5
   local oddsMissSwing_Int = 35
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local distUseItem_Act = 7.5
   local oddsUseItem_Act = 55
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist <= 5.8 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      elseif not ai:IsRideEdgeFlag(TARGET_SELF) and not ai:IsRideEdgeFlag(TARGET_ENE_0) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 6
   local distResFar = 18
   local oddsResNear = 40
   local oddsResFar = 100
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
   local oddsResponse = 40
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


