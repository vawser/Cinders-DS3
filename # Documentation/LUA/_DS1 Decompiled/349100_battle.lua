REGISTER_GOAL(GOAL_DriftItemEvil349100_Battle, "DriftItemEvil349100Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 0.9
local Att3002_Dist_min = 0
local Att3002_Dist_max = 1
local Att3003_Dist_min = 6
local Att3003_Dist_max = 14
REGISTER_GOAL_NO_UPDATE(GOAL_DriftItemEvil349100_Battle, 1)
DriftItemEvil349100Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 10 then
      actPerArr[2] = 5
      actPerArr[3] = 5
      actPerArr[4] = 90
   elseif targetDist >= 6 then
      actPerArr[2] = 20
      actPerArr[3] = 20
      actPerArr[4] = 60
   else
      actPerArr[2] = 55
      actPerArr[3] = 45
      actPerArr[4] = 0
   end
   actFuncArr[2] = REGIST_FUNC(ai, goal, DriftItemEvil349100_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, DriftItemEvil349100_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, DriftItemEvil349100_Act04)
   local atkAfterOddsTbl = {0, 70, 10, 10, 10, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

DriftItemEvil349100_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local jumptimer = ai:GetRandam_Int(20, 30)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   if ai:IsFinishTimer(0) == true then
      if targetDist >= 10 then
         ai:SetTimer(0, jumptimer)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      elseif targetDist >= 7 then
         ai:SetTimer(0, jumptimer)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 7, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      elseif targetDist >= 3.8 then
         ai:SetTimer(0, jumptimer)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3.8, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      else
      end
   else
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DriftItemEvil349100_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local jumptimer = ai:GetRandam_Int(20, 30)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 0
   if ai:IsFinishTimer(0) == true then
      if targetDist >= 10 then
         ai:SetTimer(0, jumptimer)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      elseif targetDist >= 7 then
         ai:SetTimer(0, jumptimer)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 7, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      elseif targetDist >= 3.8 then
         ai:SetTimer(0, jumptimer)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3.8, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      else
      end
   else
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DriftItemEvil349100_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 40)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DriftItemEvil349100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DriftItemEvil349100Battle_Terminate = function(ai, goal)
end

DriftItemEvil349100Battle_Interupt = function(ai, goal)
   return false
end


