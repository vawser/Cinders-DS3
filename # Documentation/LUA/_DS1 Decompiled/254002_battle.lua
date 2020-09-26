REGISTER_GOAL(GOAL_HusiFight_FireBom254002_Battle, "HusiFight_FireBom254002Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.6
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.9
local Att3005_Dist_min = 2.5
local Att3005_Dist_max = 3.8
local Att3006_Dist_min = 3.5
local Att3006_Dist_max = 5.5
local Att3007_Dist_min = 5
local Att3007_Dist_max = 7.5
local Att3008_Dist_min = 2
local Att3008_Dist_max = 5.7
REGISTER_GOAL_NO_UPDATE(GOAL_HusiFight_FireBom254002_Battle, 1)
HusiFight_FireBom254002Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(3)
   local absDistY = math.abs(targetDistY)
   if eventNo == 1 then
      actPerArr[8] = 100
   elseif targetDist >= 5 and targetDistY < -3 then
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[5] = 0
      actPerArr[6] = 100
      actPerArr[7] = 0
   elseif targetDist >= 8 then
      actPerArr[2] = 3
      actPerArr[3] = 3
      actPerArr[5] = 91
      actPerArr[6] = 0
      actPerArr[7] = 3
   elseif targetDist >= 4 then
      actPerArr[2] = 10
      actPerArr[3] = 5
      actPerArr[5] = 80
      actPerArr[6] = 0
      actPerArr[7] = 5
   elseif targetDist >= 2.5 then
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[5] = 75
      actPerArr[6] = 0
      actPerArr[7] = 5
   else
      actPerArr[2] = 40
      actPerArr[3] = 40
      actPerArr[5] = 20
      actPerArr[6] = 0
      actPerArr[7] = 0
   end
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 5, 15, nil, nil, nil, nil}
   actFuncArr[3] = REGIST_FUNC(ai, goal, HusiFight_FireBom254002_Act03)
   actFuncArr[5] = REGIST_FUNC(ai, goal, HusiFight_FireBom254002_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, HusiFight_FireBom254002_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, HusiFight_FireBom254002_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, HusiFight_FireBom254002_Act08)
   local atkAfterOddsTbl = {0, 70, 0, 0, 0, 15, 15}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HusiFight_FireBom254002_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_FireBom254002_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if Att3008_Dist_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3008_Dist_max, TARGET_SELF, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, Att3008_Dist_min, TARGET_ENE_0, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiFight_FireBom254002_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiFight_FireBom254002_Act07 = function(ai, goal, paramTbl)
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
   elseif Att3006_Dist_min <= targetDist and fate2 <= 50 then
      local AppDist = Att3006_Dist_max
      local DashDist = Att3006_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3006
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   else
      local AppDist = Att3005_Dist_max
      local DashDist = Att3005_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3005
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_FireBom254002_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   ai:SetEventMoveTarget(1022711)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 0.8, TARGET_SELF, True, -1)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

OnIf_254002 = function(ai, goal, codeNo)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if codeNo == 0 then
      if Att3008_Dist_max + 3 <= targetDist then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
      end
   end
end

HusiFight_FireBom254002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiFight_FireBom254002Battle_Terminate = function(ai, goal)
end

HusiFight_FireBom254002Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
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
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distMissSwing_Int = 5.7
   local oddsMissSwing_Int = 30
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist <= 1.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
      end
      return true
   end
   local distResNear = 5.7
   local distResFar = 15
   local oddsResNear = 0
   local oddsResFar = 15
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif ResBehavID == 2 then
      if fate <= 50 then
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


