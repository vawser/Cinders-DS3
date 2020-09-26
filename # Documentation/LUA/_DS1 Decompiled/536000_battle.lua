REGISTER_GOAL(GOAL_LargeCat536000_Battle, "LargeCat536000Battle")
local Att3000_Dist_min = 0.5
local Att3000_Dist_max = 1.1
local Att3001_Dist_min = 2.7
local Att3001_Dist_max = 4.5
local Att3002_Dist_min = 0.5
local Att3002_Dist_max = 1.7
local Att3003_Dist_min = 0.5
local Att3003_Dist_max = 1.1
local Att3004_Dist_min = 0.5
local Att3004_Dist_max = 12.7
local Att3005_Dist_min = 0.5
local Att3005_Dist_max = 24.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 24
REGISTER_GOAL_NO_UPDATE(GOAL_LargeCat536000_Battle, 1)
LargeCat536000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 2)
   local RateStep = 1
   if ai:IsFinishTimer(0) == false then
      RateStep = 0
   end
   local RateUnaru = 1
   if ai:IsFinishTimer(1) == false then
      RateUnaru = 0
   end
   if not ai:IsInsideTargetRegion(TARGET_ENE_0, 1202730) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1202731) then
      actPerArr[11] = 100
   else
      local RateKamiNage = 0
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 15) then
         RateKamiNage = 1
      end
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100) and targetDist <= 0.8 then
         actPerArr[8] = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) and targetDist <= 0.8 then
         actPerArr[9] = 100
      elseif targetDist >= 12.7 then
         actPerArr[1] = 5
         actPerArr[2] = 5
         actPerArr[3] = 5
         actPerArr[4] = 5 * RateKamiNage
         actPerArr[5] = 35
         actPerArr[6] = 40
         actPerArr[7] = 5 * RateUnaru
      elseif targetDist >= 8 then
         actPerArr[1] = 15
         actPerArr[2] = 20
         actPerArr[3] = 15
         actPerArr[4] = 15 * RateKamiNage
         actPerArr[5] = 15
         actPerArr[6] = 10
         actPerArr[7] = 5 * RateUnaru
      elseif targetDist >= 4.5 then
         actPerArr[1] = 32
         actPerArr[2] = 28
         actPerArr[3] = 20
         actPerArr[4] = 20 * RateKamiNage
         actPerArr[5] = 0
         actPerArr[6] = 0
         actPerArr[7] = 0
      elseif targetDist >= 2 then
         actPerArr[1] = 25
         actPerArr[2] = 20
         actPerArr[3] = 25
         actPerArr[4] = 20 * RateKamiNage
         actPerArr[5] = 0
         actPerArr[6] = 0
         actPerArr[7] = 0
         actPerArr[10] = 10 * RateStep
      else
         actPerArr[1] = 10
         actPerArr[2] = 0
         actPerArr[3] = 30
         actPerArr[4] = 40 * RateKamiNage
         actPerArr[5] = 0
         actPerArr[6] = 0
         actPerArr[7] = 0
         actPerArr[10] = 20 * RateStep
      end
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, LargeCat536000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, LargeCat536000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, LargeCat536000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, LargeCat536000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, LargeCat536000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, LargeCat536000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, LargeCat536000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, LargeCat536000_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, LargeCat536000_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, LargeCat536000_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, LargeCat536000_Act11)
   local atkAfterFunc = REGIST_FUNC(ai, goal, LargeCat536000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

LargeCat536000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, DIST_Middle, -1, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3004, TARGET_ENE_0, DIST_Middle, -1, 22)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3005, TARGET_ENE_0, DIST_Middle, -1, 20)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 0
   BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_Middle, 0)
   ai:SetTimer(1, 20)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

LargeCat536000_Act08 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act09 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3008, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act10 = function(ai, goal, paramTbl)
   ai:SetTimer(0, 15)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 9)
end

LargeCat536000_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   ai:SetEventMoveTarget(1202732)
   local Sumade = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if Sumade >= 3 then
      ai:SetEventMoveTarget(1202732)
      if targetDist <= 5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 1, TARGET_ENE_0, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 1, TARGET_SELF, false, -1)
      end
   end
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
end

LargeCat536000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0.5, AI_DIR_TYPE_B, 9)
      return true
   elseif fate <= 45 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0.5, AI_DIR_TYPE_L, 5)
      return true
   elseif fate <= 65 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0.5, AI_DIR_TYPE_R, 5)
      return true
   else
   end
      return false
end

LargeCat536000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LargeCat536000Battle_Terminate = function(ai, goal)
end

LargeCat536000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 10)
      if fate <= 50 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
      elseif fate <= 75 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
      else
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
      end
      return true
   end
   local superStepDist = 4.5
   local superStepPer = 15
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 5
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 3.5
   local oddsGuardBreak_Act = 60
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist >= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Int = 3.5
   local oddsMissSwing_Int = 50
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist >= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 12.7
   local oddsUseItem_Act = 10
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      elseif targetDist >= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   local distResNear = 25
   local distResFar = 100
   local oddsResNear = 0
   local oddsResFar = 85
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
      return true
   elseif ResBehavID == 2 then
      if targetDist >= 35 then
         local AppDist = Att3005_Dist_max
         local DashDist = Att3005_Dist_max + 2
         local Odds_Guard = 0
         BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
      else
         local AppDist = Att3004_Dist_max
         local DashDist = Att3004_Dist_max + 2
         local Odds_Guard = 0
         BusyApproach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3004, TARGET_ENE_0, DIST_Middle, -1, 50)
      end
   end
   return false
end


