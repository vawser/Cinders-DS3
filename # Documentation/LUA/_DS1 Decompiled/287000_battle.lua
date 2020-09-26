REGISTER_GOAL(GOAL_GiantKnight287000_Battle, "GiantKnight287000Battle")
local Att3000_Dist_min = 0.6
local Att3000_Dist_max = 2
local Att3002_Dist_min = 2.1
local Att3002_Dist_max = 4.8
local Att3004_Dist_min = 3.8
local Att3004_Dist_max = 7.6
local Att3006_Dist_min = 5.5
local Att3006_Dist_max = 7.1
local Att3008_Dist_min = 2.4
local Att3008_Dist_max = 5.6
local Att3009_Dist_min = -5
local Att3009_Dist_max = 0.6
local Att3010_Dist_min = 0.6
local Att3010_Dist_max = 1.6
local Att3012_Dist_min = 0
local Att3012_Dist_max = 2.4
REGISTER_GOAL_NO_UPDATE(GOAL_GiantKnight287000_Battle, 1)
OnIf_287000 = function(ai, goal, codeNo)
   ai:SetTimer(0, 60)
end

GiantKnight287000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   if hprate <= 0.4 and ai:IsFinishTimer(0) == true then
      if targetDist >= 4.5 then
         actPerArr[9] = 300
      elseif targetDist >= 3 then
         actPerArr[9] = 100
      else
         actPerArr[9] = 50
      end
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1512780) then
      actPerArr[11] = 100
   elseif targetDist >= 12 then
      actPerArr[1] = 5
      actPerArr[2] = 5
      actPerArr[3] = 30
      actPerArr[4] = 30
      actPerArr[5] = 30
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[8] = 0
      actPerArr[10] = 0
   elseif targetDist >= 8 then
      actPerArr[1] = 15
      actPerArr[2] = 15
      actPerArr[3] = 25
      actPerArr[4] = 25
      actPerArr[5] = 20
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[8] = 0
      actPerArr[10] = 0
   elseif targetDist >= 5 then
      actPerArr[1] = 30
      actPerArr[2] = 30
      actPerArr[3] = 10
      actPerArr[4] = 10
      actPerArr[5] = 10
      actPerArr[6] = 0
      actPerArr[7] = 10
      actPerArr[8] = 0
      actPerArr[10] = 0
   elseif targetDist >= 1.5 then
      actPerArr[1] = 25
      actPerArr[2] = 20
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[6] = 0
      actPerArr[7] = 30
      actPerArr[8] = 15
      actPerArr[10] = 10
   else
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[6] = 35
      actPerArr[7] = 0
      actPerArr[8] = 35
      actPerArr[10] = 30
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, GiantKnight287000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, GiantKnight287000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, GiantKnight287000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, GiantKnight287000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, GiantKnight287000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, GiantKnight287000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, GiantKnight287000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, GiantKnight287000_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, GiantKnight287000_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, GiantKnight287000_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, GiantKnight287000_Act11)
   local atkAfterFunc = REGIST_FUNC(ai, goal, GiantKnight287000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

GiantKnight287000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 8
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 8
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 9, 18)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 9, 18)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 9, 18)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 8
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 8
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 8
   local Odds_Guard = 0
   local AttID = 3008
   local AttDist = DIST_Middle
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 15, 15)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3009_Dist_max
   local DashDist = Att3009_Dist_max + 8
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 10, 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max + 8
   local Odds_Guard = 0
   local AttID = 3017
   local AttDist = DIST_Middle
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 7, 15)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GiantKnight287000_Act09 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, DIST_None)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GiantKnight287000_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3012_Dist_max
   local DashDist = Att3012_Dist_max + 8
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act11 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 1, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GiantKnight287000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 65 then
   elseif fate <= 75 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 35), true, true, -1)
      return true
   elseif fate <= 85 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      return true
   end
   return false
end

GiantKnight287000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GiantKnight287000Battle_Terminate = function(ai, goal)
end

GiantKnight287000Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local distDamagedStep = 3
   local oddsDamagedStep = 25
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 5
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distUseItem_Act = 8
   local oddsUseItem_Act = 20
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      elseif targetDist >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      elseif targetDist >= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 2.4
   local distResFar = 25
   local oddsResNear = 20
   local oddsResFar = 25
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      if targetDist >= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   elseif ResBehavID == 2 then
      if targetDist >= 5.2 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3004_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         return true
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


