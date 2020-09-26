REGISTER_GOAL(GOAL_HusiFight_Ax254001_Battle, "HusiFight_Ax254001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.6
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.8
local Att3005_Dist_min = 2.5
local Att3005_Dist_max = 3.5
local Att3006_Dist_min = 3.5
local Att3006_Dist_max = 5.2
local Att3007_Dist_min = 5
local Att3007_Dist_max = 7
local Att3008_Dist_min = 2
local Att3008_Dist_max = 5.7
REGISTER_GOAL_NO_UPDATE(GOAL_HusiFight_Ax254001_Battle, 1)
HusiFight_Ax254001Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(3)
   if eventNo == 1 then
      actPerArr[8] = 100
   elseif targetDist >= 8 then
      actPerArr[2] = 40
      actPerArr[3] = 20
      actPerArr[5] = 0
      actPerArr[7] = 40
   elseif targetDist >= 4 then
      actPerArr[2] = 50
      actPerArr[3] = 30
      actPerArr[5] = 0
      actPerArr[7] = 20
   elseif targetDist >= 2.5 then
      actPerArr[2] = 65
      actPerArr[3] = 30
      actPerArr[5] = 0
      actPerArr[7] = 5
   else
      actPerArr[2] = 70
      actPerArr[3] = 30
      actPerArr[5] = 0
      actPerArr[7] = 0
   end
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 5, 15, nil, nil, nil, 80}
   actFuncArr[3] = REGIST_FUNC(ai, goal, HusiFight_Ax254001_Act03)
   actFuncArr[5] = REGIST_FUNC(ai, goal, HusiFight_Ax254001_Act05)
   actFuncArr[7] = REGIST_FUNC(ai, goal, HusiFight_Ax254001_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, HusiFight_Ax254001_Act08)
   local atkAfterOddsTbl = {0, 80, 0, 0, 0, 10, 10}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HusiFight_Ax254001_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 55 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Ax254001_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local LeaveDist = Att3008_Dist_min
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 2
   local Odds_Guard = 100
   Approach_or_Leave_Act(ai, goal, LeaveDist, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3008, TARGET_ENE_0, DIST_None)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Ax254001_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if Att3007_Dist_min <= targetDist and fate <= 20 then
      local AppDist = Att3007_Dist_max
      local DashDist = Att3007_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3007
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      if fate3 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif Att3006_Dist_min <= targetDist and fate2 <= 50 then
      local AppDist = Att3006_Dist_max
      local DashDist = Att3006_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3006
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      if fate3 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
   else
      local AppDist = Att3005_Dist_max
      local DashDist = Att3005_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3005
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      if fate3 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Ax254001_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiFight_Ax254001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiFight_Ax254001Battle_Terminate = function(ai, goal)
end

HusiFight_Ax254001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(3)
   local superStepDist = 3
   local superStepPer = 15
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distMissSwing_Int = 3.5
   local oddsMissSwing_Int = 50
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist >= 1.8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 7.5
   local distResFar = 15
   local oddsResNear = 0
   local oddsResFar = 20
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3.5)
   elseif ResBehavID == 2 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3.5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3.5)
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
   local distSuccessGuard_Act = 3.5
   local oddsSuccessGuard_Act = 30
   if SuccessGuard_Act(ai, goal, distSuccessGuard_Act, oddsSuccessGuard_Act) then
      if targetDist >= 1.8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


