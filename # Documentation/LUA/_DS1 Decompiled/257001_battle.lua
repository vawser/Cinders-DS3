REGISTER_GOAL(GOAL_HeavyKnight_Mace257001_Battle, "HeavyKnight_Mace257001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.2
local Att3002_Dist_min = 0
local Att3002_Dist_max = 3.3
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.4
local Att3005_Dist_min = 6
local Att3005_Dist_max = 7.8
local Att3007_Dist_min = 0
local Att3007_Dist_max = 1.2
REGISTER_GOAL_NO_UPDATE(GOAL_HeavyKnight_Mace257001_Battle, 1)
OnIf_257001 = function(ai, goal, codeNo)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

HeavyKnight_Mace257001Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local kisou = 0
   local myThinkId = ai:GetNpcThinkParamID()
   if myThinkId == 257012 then
      ai:AddObserveRegion(0, TARGET_ENE_0, 1502723)
      if ai:IsInsideTargetRegion(TARGET_ENE_0, 1502721) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1502722) then
         kisou = 0
      else
         actPerArr[1] = 100
         kisou = 1
      end
   end
   if kisou == 0 then
      if hprate <= 0.4 and ai:IsFinishTimer(0) == true then
         if targetDist >= 6.5 then
            actPerArr[5] = 200
         elseif targetDist >= 3 then
            actPerArr[5] = 100
         else
            actPerArr[5] = 50
         end
         -- Tried to add an 'end' here but it's incorrect
         if targetDist >= 12 then
            if ai:IsTargetGuard(TARGET_ENE_0) == true then
               actPerArr[2] = 0
               actPerArr[3] = 5
               actPerArr[4] = 20
               actPerArr[6] = 0
               actPerArr[7] = 75
               actPerArr[9] = 0
            else
               actPerArr[2] = 10
               actPerArr[3] = 10
               actPerArr[4] = 0
               actPerArr[6] = 0
               actPerArr[7] = 70
               actPerArr[9] = 10
            end
         elseif targetDist >= 6.5 then
            if ai:IsTargetGuard(TARGET_ENE_0) == true then
               actPerArr[2] = 5
               actPerArr[3] = 10
               actPerArr[4] = 50
               actPerArr[6] = 0
               actPerArr[7] = 30
               actPerArr[9] = 5
            else
               actPerArr[2] = 20
               actPerArr[3] = 20
               actPerArr[4] = 0
               actPerArr[6] = 0
               actPerArr[7] = 40
               actPerArr[9] = 20
            end
         elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
            actPerArr[2] = 10
            actPerArr[3] = 20
            actPerArr[4] = 50
            actPerArr[6] = 0
            actPerArr[7] = 0
            actPerArr[9] = 10
         else
            actPerArr[2] = 40
            actPerArr[3] = 20
            actPerArr[4] = 0
            actPerArr[6] = 0
            actPerArr[7] = 0
            actPerArr[9] = 40
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         actFuncArr[1] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act01)
         actFuncArr[2] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act02)
         actFuncArr[3] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act03)
         actFuncArr[4] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act04)
         actFuncArr[5] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act05)
         actFuncArr[6] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act06)
         actFuncArr[7] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act07)
         actFuncArr[9] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act09)
         local atkAfterOddsTbl = {100, 80, 10, 10, 0, 0}
         local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
         Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HeavyKnight_Mace257001_Act01 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, true, 9910)
   goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act02 = function(ai, goal, paramTbl)
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
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 40)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act05 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act06 = function(ai, goal, paramTbl)
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

HeavyKnight_Mace257001_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
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

HeavyKnight_Mace257001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HeavyKnight_Mace257001Battle_Terminate = function(ai, goal)
end

HeavyKnight_Mace257001Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distGuard = 3
   local oddsGuard = 10
   local oddsLeaveAndSide = 50
   local timeSide = 4.5
   local distLeave = 2.5
   if Damaged_Guard(ai, goal, distGuard, oddsGuard, oddsLeaveAndSide, timeSide, distLeave) then
      local distGuardBreak_Act = 3
   end
   local oddsGuardBreak_Act = 65
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
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
   local distUseItem_Act = 10
   local oddsUseItem_Act = 50
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
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
      return true
   end
   return false
end


