REGISTER_GOAL(GOAL_HumanityM417100_Battle, "HumanityM417100Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 0.5
REGISTER_GOAL_NO_UPDATE(GOAL_HumanityM417100_Battle, 1)
OnIf_417100 = function(ai, goal, codeNo)
   if codeNo == 0 then
      HumanityM417100_ActAfter(ai, goal)
   end
end

HumanityM417100Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = 1
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
      actPerArr[10] = 100
   elseif targetDist >= 2 then
      actPerArr[2] = 100
   else
      actPerArr[1] = 100
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, HumanityM417100_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, HumanityM417100_Act02)
   actFuncArr[10] = REGIST_FUNC(ai, goal, HumanityM417100_Act10)
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanityM417100_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HumanityM417100_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max + 0
   local DashDist = Att3000_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3000_Dist_max + 0
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 80 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HumanityM417100_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max + 0
   local DashDist = Att3000_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3000_Dist_max + 0
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 60 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 90)
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 1, 4, TARGET_ENE_0, true, -1)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
   elseif fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_SELF, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HumanityM417100_Act10 = function(ai, goal, paramTbl)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HumanityM417100_ActAfter = function(ai, goal)
   local GW_fate = ai:GetRandam_Int(1, 100)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist <= 2 then
      if fate <= 10 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
      end
   elseif targetDist <= 5 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 7, TARGET_SELF, true, -1)
      end
   elseif fate <= 100 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

HumanityM417100_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

HumanityM417100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HumanityM417100Battle_Terminate = function(ai, goal)
end

HumanityM417100Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distUseItem_Act = 20
   local oddsUseItem_Act = 100
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
      return true
   end
   local distResNear = 10
   local distResFar = 30
   local oddsResNear = 100
   local oddsResFar = 100
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   local bRight = ai:GetRandam_Int(0, 1)
   if ResBehavID == 1 then
      if fate <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
      elseif fate <= 85 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 90), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3001, TARGET_ENE_0, DIST_None, 0, 90)
      end
      return true
   elseif ResBehavID == 2 then
      if fate <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
      elseif fate <= 100 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 90), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3001, TARGET_ENE_0, DIST_None, 0, 90)
      end
      return true
   end
   return false
end


