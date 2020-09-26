REGISTER_GOAL(GOAL_HusiHeavy_Long255001_Battle, "HusiHeavy_Long255001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.1
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2
local Att3004_Dist_min = 0
local Att3004_Dist_max = 2
local Att3005_Dist_min = 2.5
local Att3005_Dist_max = 4.1
local Att3009_Dist_min = 0
local Att3009_Dist_max = 1.8
REGISTER_GOAL_NO_UPDATE(GOAL_HusiHeavy_Long255001_Battle, 1)
OnIf_255001 = function(ai, goal, codeNo)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

HusiHeavy_Long255001Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local eventNo = ai:GetEventRequest(3)
   if eventNo == 1 then
      actPerArr[8] = 100
   elseif hprate <= 0.4 and ai:IsFinishTimer(0) == true then
      if targetDist >= 4.5 then
         actPerArr[7] = 10
         actPerArr[2] = 5
         actPerArr[1] = 5
         actPerArr[3] = 5
         actPerArr[4] = 0
         actPerArr[5] = 75
      elseif targetDist >= 3 then
         actPerArr[7] = 10
         actPerArr[2] = 15
         actPerArr[1] = 15
         actPerArr[3] = 10
         actPerArr[4] = 0
         actPerArr[5] = 50
      else
         actPerArr[7] = 0
         actPerArr[2] = 20
         actPerArr[1] = 15
         actPerArr[3] = 20
         actPerArr[4] = 10
         actPerArr[5] = 35
      end
   elseif targetDist >= 8 then
      actPerArr[7] = 80
      actPerArr[2] = 10
      actPerArr[1] = 10
      actPerArr[3] = 0
      actPerArr[4] = 0
   elseif targetDist >= 4 then
      actPerArr[7] = 50
      actPerArr[2] = 20
      actPerArr[1] = 20
      actPerArr[3] = 10
      actPerArr[4] = 0
   elseif targetDist >= 2.5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[7] = 15
         actPerArr[2] = 10
         actPerArr[1] = 10
         actPerArr[3] = 15
         actPerArr[4] = 50
      else
         actPerArr[7] = 30
         actPerArr[2] = 30
         actPerArr[1] = 30
         actPerArr[3] = 10
         actPerArr[4] = 0
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      actPerArr[7] = 0
      actPerArr[2] = 10
      actPerArr[1] = 10
      actPerArr[3] = 10
      actPerArr[4] = 70
   else
      actPerArr[7] = 0
      actPerArr[2] = 40
      actPerArr[1] = 20
      actPerArr[3] = 40
      actPerArr[4] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   defFuncParamTbl[1] = {Att3003_Dist_max, 75, 3003, DIST_Middle, nil}
   actFuncArr[2] = REGIST_FUNC(ai, goal, HusiHeavy_Long255001_Act02)
   defFuncParamTbl[3] = {Att3004_Dist_max, 75, 3004, DIST_Middle, nil}
   defFuncParamTbl[4] = {Att3009_Dist_max, 75, 3009, DIST_Middle, 3004, DIST_Middle, nil}
   actFuncArr[5] = REGIST_FUNC(ai, goal, HusiHeavy_Long255001_Act05)
   actFuncArr[7] = REGIST_FUNC(ai, goal, HusiHeavy_Long255001_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, HusiHeavy_Long255001_Act08)
   local atkAfterOddsTbl = {100, 60, 10, 10, 0, 10, 10}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HusiHeavy_Long255001_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 75
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiHeavy_Long255001_Act05 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Long255001_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 75
   local AttID = 3005
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiHeavy_Long255001_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Long255001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiHeavy_Long255001Battle_Terminate = function(ai, goal)
end

HusiHeavy_Long255001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(3)
   local distResponse = 3
   local oddsResponse = 15
   local oddsStep = 30
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local timeSide = 3.5
   local distLeave = 2.5
   if FindAttack_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distResponse = 3
   local oddsResponse = 15
   local oddsStep = 30
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local timeSide = 3.5
   local distLeave = 2.5
   if Damaged_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distGuardBreak_Act = 2
   local oddsGuardBreak_Act = 30
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 10.5
   local distResFar = 18
   local oddsResNear = 10
   local oddsResFar = 15
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif ResBehavID == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   end
   local distMissSwing_Int = 4.1
   local oddsMissSwing_Int = 50
   if not eventNo == 1 and MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local oddsResponse = 20
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distSuccessGuard_Act = 2
   local oddsSuccessGuard_Act = 30
   if SuccessGuard_Act(ai, goal, distSuccessGuard_Act, oddsSuccessGuard_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


