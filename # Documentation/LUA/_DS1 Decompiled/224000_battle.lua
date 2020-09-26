REGISTER_GOAL(GOAL_Nata224000_Battle, "Nata224000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.5
local Att3001_Dist_min = 0
local Att3001_Dist_max = 3.5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 3.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 3.5
local Att3004_Dist_min = 4
local Att3004_Dist_max = 6.5
local Att3005_Dist_min = 2
local Att3005_Dist_max = 3
REGISTER_GOAL_NO_UPDATE(GOAL_Nata224000_Battle, 1)
Nata224000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 8 then
      actPerArr[1] = 0
      actPerArr[2] = 10
      actPerArr[3] = 0
      actPerArr[4] = 10
      actPerArr[7] = 80
      actPerArr[8] = 0
   elseif targetDist >= 4 then
      actPerArr[1] = 15
      actPerArr[2] = 25
      actPerArr[3] = 15
      actPerArr[4] = 25
      actPerArr[7] = 20
      actPerArr[8] = 0
   elseif targetDist >= 2 then
      actPerArr[1] = 20
      actPerArr[2] = 30
      actPerArr[3] = 20
      actPerArr[4] = 30
      actPerArr[7] = 0
      actPerArr[8] = 0
   else
      actPerArr[1] = 15
      actPerArr[2] = 20
      actPerArr[3] = 15
      actPerArr[4] = 20
      actPerArr[7] = 0
      actPerArr[8] = 30
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Nata224000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Nata224000_Act02)
   defFuncParamTbl[3] = {Att3002_Dist_max, 0, 3002, DIST_Middle}
   actFuncArr[4] = REGIST_FUNC(ai, goal, Nata224000_Act04)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Nata224000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Nata224000_Act08)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Nata224000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Nata224000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3005
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3004
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 80 then
   elseif fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   elseif fate2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   end
   return true
   return false
end

Nata224000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Nata224000Battle_Terminate = function(ai, goal)
end

Nata224000Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local superStepDist = 3
   local superStepPer = 15
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 3.5
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 8
   local oddsGuardBreak_Act = 30
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist <= 3.5 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3004_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Attack = 6.5
   local oddsMissSwing_Attack = 30
   local AttID = 3003
   if MissSwing_Attack(ai, goal, distMissSwing_Attack, oddsMissSwing_Attack, AttID) then
      if targetDist <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 9
   local oddsUseItem_Act = 60
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3004_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 12
   local distResFar = 20
   local oddsResNear = 0
   local oddsResFar = 30
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif ResBehavID == 2 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local oddsResponse = 50
   local bkStepPer = 60
   local leftStepPer = 20
   local rightStepPer = 20
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


