REGISTER_GOAL(GOAL_FirewoodKing537000_Battle, "FirewoodKing537000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.2
local Att3006_Dist_min = 0
local Att3006_Dist_max = 3.9
local Att3007_Dist_min = 7
local Att3007_Dist_max = 10.7
local Att3008_Dist_min = 0
local Att3008_Dist_max = 9.1
local Att3010_Dist_min = 8
local Att3010_Dist_max = 9.3
local Att3012_Dist_min = 0
local Att3012_Dist_max = 3.9
local Att3018_Dist_min = 11.5
local Att3018_Dist_max = 13.7
local Att3019_Dist_min = 14
local Att3019_Dist_max = 16
local Att3020_Dist_min = 0
local Att3020_Dist_max = 2.4
local Att3021_Dist_min = 0
local Att3021_Dist_max = 2.8
local Att3022_Dist_min = 7
local Att3022_Dist_max = 10.4
local Suki = 1.8
REGISTER_GOAL_NO_UPDATE(GOAL_FirewoodKing537000_Battle, 1)
FirewoodKing537000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   local Act09Per = 0
   local GetWellSpace_Odds = 100
   local Throw = 1
   if ai:IsFinishTimer(0) == false then
      Throw = 0.25
   else
      Throw = 1
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == true and fate <= 70 and targetDist <= 5 then
      Act02Per = 30
      Act09Per = 70
   elseif targetDist >= 15 then
      Act06Per = 30
      Act07Per = 70
   elseif targetDist >= 12 then
      Act04Per = 15
      Act06Per = 70
      Act07Per = 15
   elseif targetDist >= 10 then
      Act03Per = 30
      Act04Per = 40
      Act06Per = 30
   elseif targetDist >= 7 then
      Act01Per = 10
      Act02Per = 0
      Act03Per = 30
      Act04Per = 15
      Act05Per = 15
      Act06Per = 30
   elseif targetDist >= 4 then
      Act01Per = 28
      Act02Per = 20 * Throw
      Act03Per = 15
      Act04Per = 0
      Act05Per = 37
   else
      Act01Per = 30
      Act02Per = 40 * Throw
      Act03Per = 0
      Act04Per = 0
      Act05Per = 30
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per)
   if fateAct <= Act01Per then
      FirewoodKing537000_Act01(ai, goal)
   elseif fateAct <= Act01Per + Act02Per then
      FirewoodKing537000_Act02(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      FirewoodKing537000_Act03(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      FirewoodKing537000_Act04(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      FirewoodKing537000_Act05(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      FirewoodKing537000_Act06(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
      FirewoodKing537000_Act07(ai, goal)
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
      FirewoodKing537000_Act08(ai, goal)
   else
      FirewoodKing537000_Act09(ai, goal)
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      FirewoodKing537000_GetWellSpace_Act(ai, goal)
   end
end

FirewoodKing537000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   if fate <= 5 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 20)
   elseif fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 45 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_Middle, -1, 20)
   end
   if ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 30)
   else
   end
      GetWellSpace_Odds = 0
end

FirewoodKing537000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   if fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, -1, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, -1, 25)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Near, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   end
end

FirewoodKing537000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local AppDist = Att3012_Dist_max
   local DashDist = Att3012_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   if fate <= 5 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Middle, -1, 40)
      GetWellSpace_Odds = 100
   elseif fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   elseif fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   end
end

FirewoodKing537000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local AppDist = Att3018_Dist_max
   local DashDist = Att3018_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local AppDist = Att3019_Dist_max
   local DashDist = Att3019_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, Suki, TARGET_ENE_0, bRight, ai:GetRandam_Int(20, 30), true, true, -1)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3020_Dist_max
   local DashDist = Att3020_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3020, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3021_Dist_max
   local DashDist = Att3021_Dist_max + 0.5
   local Odds_Guard = 0
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_Middle, -1, 20)
   GetWellSpace_Odds = 100
end

FirewoodKing537000_GetWellSpace_Act = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
   elseif fate <= 22 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
   else
   end
end

FirewoodKing537000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FirewoodKing537000Battle_Terminate = function(ai, goal)
end

FirewoodKing537000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local superStepDist = 4
   local superStepPer = 15
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 5
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 4
   local oddsGuardBreak_Act = 80
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if fate <= 40 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      elseif fate <= 65 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 25)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      elseif fate <= 85 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 25)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 25)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Int = 9.3
   local oddsMissSwing_Int = 80
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist >= 8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      elseif targetDist >= 3.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 9.3
   local oddsUseItem_Act = 40
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      elseif targetDist >= 3.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 0.5
   local distResFar = 25
   local oddsResNear = 0
   local oddsResFar = 100
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
      return true
   elseif ResBehavID == 2 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
   end
   local oddsResponse = 35
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 3
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


