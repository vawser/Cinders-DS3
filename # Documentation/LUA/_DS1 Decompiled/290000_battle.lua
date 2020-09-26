REGISTER_GOAL(GOAL_Skeleton_Falchion290000_Battle, "Skeleton_Falchion290000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.2
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.2
local Att3004_Dist_min = 0
local Att3004_Dist_max = 3.1
local Att3005_Dist_min = 0
local Att3005_Dist_max = 2.5
local Att3006_Dist_min = 3
local Att3006_Dist_max = 6
local Att3007_Dist_min = 4
local Att3007_Dist_max = 9
local Att3008_Dist_min = 3.5
local Att3008_Dist_max = 6.5
REGISTER_GOAL_NO_UPDATE(GOAL_Skeleton_Falchion290000_Battle, 1)
Skeleton_Falchion290000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      actPerArr[3] = 100
   elseif targetDist >= 8 then
      actPerArr[1] = 25
      actPerArr[2] = 25
      actPerArr[3] = 5
      actPerArr[4] = 0
      actPerArr[6] = 30
      actPerArr[7] = 15
      actPerArr[8] = 0
   elseif targetDist >= 3.5 then
      actPerArr[1] = 15
      actPerArr[2] = 20
      actPerArr[3] = 15
      actPerArr[4] = 0
      actPerArr[6] = 15
      actPerArr[7] = 15
      actPerArr[8] = 20
   elseif targetDist >= 1.5 then
      actPerArr[1] = 20
      actPerArr[2] = 35
      actPerArr[3] = 20
      actPerArr[4] = 0
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[8] = 25
   else
      actPerArr[1] = 10
      actPerArr[2] = 30
      actPerArr[3] = 30
      actPerArr[4] = 30
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[8] = 0
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act04)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act06)
   defFuncParamTbl[7] = {Att3008_Dist_max, 75, 3008, DIST_Middle}
   local atkAfterFunc = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Skeleton_Falchion290000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, Att3004_Dist_max, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, Att3000_Dist_max, 0)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, Att3003_Dist_max, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3005
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if Att3007_Dist_min <= targetDist and fate <= 40 then
      local AppDist = Att3007_Dist_max
      local DashDist = Att3007_Dist_max + 2
      local Odds_Guard = 75
      local AttID = 3007
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   else
      local AppDist = Att3006_Dist_max
      local DashDist = Att3006_Dist_max + 2
      local Odds_Guard = 75
      local AttID = 3006
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local KN_fate = ai:GetRandam_Int(1, 100)
   if KN_fate <= 25 then
   elseif KN_fate <= 35 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0)
      return true
   elseif KN_fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0)
      return true
   elseif KN_fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      return true
   end
   return false
end

Skeleton_Falchion290000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Skeleton_Falchion290000Battle_Terminate = function(ai, goal)
end

Skeleton_Falchion290000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ParryDist = 3
   local ParryAng = 60
   local ParryThrowDist = 4
   local ParryThrowAng = 60
   if Parry_Act(ai, goal, ParryDist, ParryAng, ParryThrowDist, ParryThrowAng) then
      return true
   end
   local distResponse = 3
   local oddsResponse = 25
   local oddsStep = 50
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local timeSide = 4.5
   local distLeave = 2.5
   if FindAttack_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distResponse = 3
   local oddsResponse = 25
   local oddsStep = 50
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local timeSide = 4.5
   local distLeave = 2.5
   if Damaged_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distMissSwing_Int = 3.1
   local oddsMissSwing_Int = 50
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist <= 2.2 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local distUseItem_Act = 6
   local oddsUseItem_Act = 5
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist <= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 6
   local distResFar = 18
   local oddsResNear = 20
   local oddsResFar = 30
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
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


