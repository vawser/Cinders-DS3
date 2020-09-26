REGISTER_GOAL(GOAL_HeavyKnight_Sword257000_Battle, "HeavyKnight_Sword257000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.3
local Att3001_Dist_min = 0
local Att3001_Dist_max = 3.9
local Att3003_Dist_min = 0
local Att3003_Dist_max = 3
local Att3005_Dist_min = 6
local Att3005_Dist_max = 7.8
local Att3007_Dist_min = 0
local Att3007_Dist_max = 1.2
REGISTER_GOAL_NO_UPDATE(GOAL_HeavyKnight_Sword257000_Battle, 1)
OnIf_257000 = function(ai, goal, codeNo)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

HeavyKnight_Sword257000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   if hprate <= 0.4 and ai:IsFinishTimer(0) == true then
      if targetDist >= 6.5 then
         actPerArr[5] = 200
      elseif targetDist >= 3 then
         actPerArr[5] = 100
      else
         actPerArr[5] = 50
      end
   end
   if targetDist >= 12 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 0
         actPerArr[2] = 0
         actPerArr[3] = 5
         actPerArr[4] = 20
         actPerArr[6] = 0
         actPerArr[7] = 75
      else
         actPerArr[1] = 10
         actPerArr[2] = 10
         actPerArr[3] = 10
         actPerArr[4] = 0
         actPerArr[6] = 0
         actPerArr[7] = 70
      end
   elseif targetDist >= 6.5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 5
         actPerArr[2] = 5
         actPerArr[3] = 10
         actPerArr[4] = 50
         actPerArr[6] = 0
         actPerArr[7] = 30
      else
         actPerArr[1] = 20
         actPerArr[2] = 20
         actPerArr[3] = 20
         actPerArr[4] = 0
         actPerArr[6] = 0
         actPerArr[7] = 40
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[3] = 10
      actPerArr[4] = 50
      actPerArr[6] = 0
      actPerArr[7] = 0
   else
      actPerArr[1] = 40
      actPerArr[2] = 40
      actPerArr[3] = 20
      actPerArr[4] = 0
      actPerArr[6] = 0
      actPerArr[7] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, HeavyKnight_Sword257000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, HeavyKnight_Sword257000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, HeavyKnight_Sword257000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, HeavyKnight_Sword257000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, HeavyKnight_Sword257000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, HeavyKnight_Sword257000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, HeavyKnight_Sword257000_Act07)
   local atkAfterOddsTbl = {100, 80, 10, 10, 0, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HeavyKnight_Sword257000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Sword257000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Sword257000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 40)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Sword257000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 40)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Sword257000_Act05 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HeavyKnight_Sword257000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Sword257000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Sword257000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HeavyKnight_Sword257000Battle_Terminate = function(ai, goal)
end

HeavyKnight_Sword257000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distGuard = 3
   local oddsGuard = 5
   local oddsLeaveAndSide = 50
   local timeSide = 4.5
   local distLeave = 2.5
   if Damaged_Guard(ai, goal, distGuard, oddsGuard, oddsLeaveAndSide, timeSide, distLeave) then
      local distUseItem_Act = 10
   end
   local oddsUseItem_Act = 60
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist <= 5.9 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3005_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 7.8
   local distResFar = 14
   local oddsResNear = 0
   local oddsResFar = 60
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif ResBehavID == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   end
   local distSuccessGuard_Act = 3
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


