REGISTER_GOAL(GOAL_HebibitoA269000_Battle, "HebibitoA269000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.2
local Att3003_Dist_min = 0
local Att3003_Dist_max = 3.6
local Att3005_Dist_min = 0
local Att3005_Dist_max = 3.5
local Att3006_Dist_min = 10
local Att3006_Dist_max = 11.4
local Att3007_Dist_min = 0
local Att3007_Dist_max = 2.5
local Att3008_Dist_min = 0
local Att3008_Dist_max = 20
REGISTER_GOAL_NO_UPDATE(GOAL_HebibitoA269000_Battle, 1)
HebibitoA269000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   local fate = ai:GetRandam_Int(30, 60)
   if ai:IsLadderAct(TARGET_SELF) then
      actPerArr[3] = 100
   elseif targetDist >= 12 then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, fate)
         actPerArr[1] = 0
         actPerArr[2] = 0
         actPerArr[3] = 0
         actPerArr[4] = 100
         actPerArr[9] = 0
         actPerArr[7] = 0
      else
         actPerArr[1] = 0
         actPerArr[2] = 10
         actPerArr[3] = 20
         actPerArr[4] = 0
         actPerArr[9] = 20
         actPerArr[7] = 50
      end
   elseif targetDist >= 10 then
      actPerArr[1] = 0
      actPerArr[2] = 25
      actPerArr[3] = 20
      actPerArr[4] = 0
      actPerArr[9] = 30
      actPerArr[7] = 25
   elseif targetDist >= 3.5 then
      actPerArr[1] = 15
      actPerArr[2] = 25
      actPerArr[3] = 30
      actPerArr[4] = 0
      actPerArr[9] = 30
      actPerArr[7] = 0
   else
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[3] = 20
      actPerArr[4] = 0
      actPerArr[9] = 30
      actPerArr[7] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, HebibitoA269000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, HebibitoA269000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, HebibitoA269000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, HebibitoA269000_Act04)
   actFuncArr[7] = REGIST_FUNC(ai, goal, HebibitoA269000_Act07)
   actFuncArr[9] = REGIST_FUNC(ai, goal, HebibitoA269000_Act09)
   local atkAfterOddsTbl = {100, 50, 10, 10, 0, 15, 15}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HebibitoA269000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 100
   if fate <= 20 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3007, TARGET_ENE_0, DIST_Near, 40)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 3, 3007, TARGET_ENE_0, DIST_Middle, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 100
   if fate <= 20 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3000, TARGET_ENE_0, DIST_Near, 0, 30)
   elseif fate <= 60 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 3, 3000, TARGET_ENE_0, DIST_Middle, 0, 30)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, DIST_Middle, 0, 30)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 3, 3000, TARGET_ENE_0, DIST_Middle, 0, 30)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, DIST_Middle, 0, 30)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3002, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3005, TARGET_ENE_0, DIST_Middle, 0, 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HebibitoA269000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 100
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 30, 0, 10)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 30, 0, 10)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HebibitoA269000Battle_Terminate = function(ai, goal)
end

HebibitoA269000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local distResponse = 3.5
   local oddsResponse = 15
   local oddsStep = 50
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local timeSide = 4
   local distLeave = 3.5
   if FindAttack_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distResponse = 3.5
   local oddsResponse = 15
   local oddsStep = 50
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local timeSide = 4.5
   local distLeave = 3.5
   if Damaged_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distResNear = 6.5
   local distResFar = 18
   local oddsResNear = 0
   local oddsResFar = 25
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif ResBehavID == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
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
   local oddsSuccessGuard_Act = 100
   local fate = ai:GetRandam_Int(1, 100)
   if SuccessGuard_Act(ai, goal, distSuccessGuard_Act, oddsSuccessGuard_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


