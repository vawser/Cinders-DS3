REGISTER_GOAL(GOAL_LightKnight_Rapier256002_Battle, "LightKnight_Rapier256002Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.1
local Att3003_Dist_min = 3.5
local Att3003_Dist_max = 5.5
local Att3004_Dist_min = 1.5
local Att3004_Dist_max = 2.4
local Att3005_Dist_min = 0
local Att3005_Dist_max = 1.3
REGISTER_GOAL_NO_UPDATE(GOAL_LightKnight_Rapier256002_Battle, 1)
OnIf_256002 = function(ai, goal, codeNo)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

LightKnight_Rapier256002Battle_Activate = function(ai, goal)
   local ObserveNo = 0
   local BackstabDist = 5
   local BackstabAng = 30
   ObserveAreaForBackstab(ai, goal, ObserveNo, BackstabDist, BackstabAng)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   if ai:IsLadderAct(TARGET_SELF) then
      actPerArr[2] = 100
   elseif hprate <= 0.4 and ai:IsFinishTimer(0) == true then
      if targetDist >= 4.5 then
         actPerArr[1] = 0
         actPerArr[2] = 15
         actPerArr[3] = 10
         actPerArr[4] = 75
         actPerArr[7] = 0
         actPerArr[8] = 0
      elseif targetDist >= 3 then
         actPerArr[1] = 7
         actPerArr[2] = 20
         actPerArr[3] = 8
         actPerArr[4] = 50
         actPerArr[7] = 15
         actPerArr[8] = 0
      else
         actPerArr[1] = 0
         actPerArr[2] = 35
         actPerArr[3] = 20
         actPerArr[4] = 35
         actPerArr[7] = 0
         actPerArr[8] = 10
      end
   elseif targetDist >= 8 then
      actPerArr[1] = 0
      actPerArr[2] = 15
      actPerArr[3] = 15
      actPerArr[7] = 70
      actPerArr[8] = 0
   elseif targetDist >= 3.5 then
      actPerArr[1] = 15
      actPerArr[2] = 40
      actPerArr[3] = 15
      actPerArr[7] = 30
      actPerArr[8] = 0
   elseif targetDist >= 1.5 then
      actPerArr[1] = 35
      actPerArr[2] = 35
      actPerArr[3] = 15
      actPerArr[7] = 0
      actPerArr[8] = 25
   else
      actPerArr[1] = 0
      actPerArr[2] = 65
      actPerArr[3] = 20
      actPerArr[7] = 0
      actPerArr[8] = 15
   end
   -- Tried to add an 'end' here but it's incorrect
   defFuncParamTbl[1] = {Att3004_Dist_max, 75, 3004, DIST_Middle, nil}
   defFuncParamTbl[2] = {Att3000_Dist_max, 75, 10, 30, nil, nil, nil, nil}
   defFuncParamTbl[3] = {Att3005_Dist_max, 100, 3005, DIST_Middle, nil}
   actFuncArr[4] = REGIST_FUNC(ai, goal, LightKnight_Rapier256002_Act04)
   defFuncParamTbl[7] = {Att3003_Dist_max, 75, 3003, DIST_Middle, nil}
   defFuncParamTbl[8] = {nil}
   local atkAfterOddsTbl = {100, 60, 5, 5, 0, 15, 15}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

LightKnight_Rapier256002_Act04 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 2.5)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

LightKnight_Rapier256002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LightKnight_Rapier256002Battle_Terminate = function(ai, goal)
end

LightKnight_Rapier256002Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distResponse = 3
   local oddsResponse = 25
   local oddsStep = 20
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 2.8
   local oddsLeaveAndSide = 50
   local timeSide = 3.5
   local distLeave = 2.5
   if FindAttack_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distResponse = 3
   local oddsResponse = 25
   local oddsStep = 40
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 2.8
   local oddsLeaveAndSide = 50
   local timeSide = 3.5
   local distLeave = 2.5
   if Damaged_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distGuardBreak_Act = 2.1
   local oddsGuardBreak_Act = 30
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local distMissSwing_Int = 5.5
   local oddsMissSwing_Int = 60
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 8
   local oddsUseItem_Act = 15
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 4.5
   local distResFar = 13
   local oddsResNear = 0
   local oddsResFar = 50
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif ResBehavID == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   end
   local oddsResponse = 50
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 2.8
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distSuccessGuard_Act = 2.1
   local oddsSuccessGuard_Act = 50
   if SuccessGuard_Act(ai, goal, distSuccessGuard_Act, oddsSuccessGuard_Act) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local ParryDist = 3
   local ParryAng = 60
   local ParryThrowDist = 4
   local ParryThrowAng = 60
   if Parry_Act(ai, goal, ParryDist, ParryAng, ParryThrowDist, ParryThrowAng) then
      return true
   end
   local ObserveNo = 0
   local ApproachDist = 1
   local TimerIndex = 0
   local Time = 20
   if Backstab_Act(ai, goal, ObserveNo, ApproachDist, TimerIndex, Time) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   end
   return false
end


