REGISTER_GOAL(GOAL_TrickStar6260_Battle, "TrickStar6260Battle")
local NormalR_min = 0
local NormalR_max = 1.5
local NormalR2_min = 0
local NormalR2_max = 2.1
local LargeR_min = 0
local LargeR_max = 2.5
local LargeR2_min = 0
local LargeR2_max = 2.6
local Whand_jyaku_min = 0
local Whand_jyaku_max = 2.1
local Whand_jyaku2_min = 0
local Whand_jyaku2_max = 2.1
local Whand_kyou_min = 0
local Whand_kyou_max = 2.6
local Whand_kyou2_min = 0
local Whand_kyou2_max = 1.7
local PushR_min = 0
local PushR_max = 0.6
local Magic_min = 5
local Magic_max = 10
local Backstep_Atk_min = 0
local Backstep_Atk_max = 2.2
local Backstep_Atk2_min = 0
local Backstep_Atk2_max = 1.3
local Rolling_Atk_min = 4
local Rolling_Atk_max = 5
local Rolling_Atk2_min = 5
local Rolling_Atk2_max = 6
local Backstep_AtkW_min = 0
local Backstep_AtkW_max = 2.2
local Backstep_AtkW2_min = 0
local Backstep_AtkW2_max = 1.3
local Rolling_AtkW_min = 4
local Rolling_AtkW_max = 5
local Rolling_AtkW2_min = 5
local Rolling_AtkW2_max = 6
REGISTER_GOAL_NO_UPDATE(GOAL_TrickStar6260_Battle, 1)
TrickStar6260Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BothHandOff = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local RYOUTE_odds = 1
   local KATATE_odds = 1
   if ai:IsFinishTimer(0) == true then
      if not ai:IsBothHandMode(TARGET_SELF) then
         RYOUTE_odds = 0
      else
         KATATE_odds = 0
      end
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      RYOUTE_odds = 10
   end
   if targetDist >= 8 then
      actPerArr[1] = 10 * KATATE_odds
      actPerArr[2] = 20 * KATATE_odds
      actPerArr[3] = 10 * KATATE_odds
      actPerArr[4] = 20 * KATATE_odds
      actPerArr[7] = 20 * KATATE_odds
      actPerArr[8] = 20 * KATATE_odds
      actPerArr[9] = 10 * RYOUTE_odds
      actPerArr[10] = 20 * RYOUTE_odds
      actPerArr[11] = 10 * RYOUTE_odds
      actPerArr[12] = 20 * RYOUTE_odds
      actPerArr[15] = 20 * RYOUTE_odds
      actPerArr[16] = 20 * RYOUTE_odds
   elseif targetDist >= 4 then
      actPerArr[1] = 15 * KATATE_odds
      actPerArr[2] = 15 * KATATE_odds
      actPerArr[3] = 15 * KATATE_odds
      actPerArr[4] = 15 * KATATE_odds
      actPerArr[7] = 20 * KATATE_odds
      actPerArr[8] = 20 * KATATE_odds
      actPerArr[9] = 10 * RYOUTE_odds
      actPerArr[10] = 20 * RYOUTE_odds
      actPerArr[11] = 10 * RYOUTE_odds
      actPerArr[12] = 20 * RYOUTE_odds
      actPerArr[15] = 20 * RYOUTE_odds
      actPerArr[16] = 20 * RYOUTE_odds
   elseif targetDist >= 2.1 then
      actPerArr[1] = 25 * KATATE_odds
      actPerArr[2] = 25 * KATATE_odds
      actPerArr[3] = 25 * KATATE_odds
      actPerArr[4] = 25 * KATATE_odds
      actPerArr[9] = 25 * RYOUTE_odds
      actPerArr[10] = 25 * RYOUTE_odds
      actPerArr[11] = 25 * RYOUTE_odds
      actPerArr[12] = 25 * RYOUTE_odds
   elseif targetDist >= 1 then
      actPerArr[1] = 18 * KATATE_odds
      actPerArr[2] = 17 * KATATE_odds
      actPerArr[3] = 18 * KATATE_odds
      actPerArr[4] = 17 * KATATE_odds
      actPerArr[5] = 15 * KATATE_odds
      actPerArr[6] = 15 * KATATE_odds
      actPerArr[9] = 10 * RYOUTE_odds
      actPerArr[10] = 10 * RYOUTE_odds
      actPerArr[11] = 13 * RYOUTE_odds
      actPerArr[12] = 12 * RYOUTE_odds
      actPerArr[13] = 13 * KATATE_odds
      actPerArr[14] = 12 * KATATE_odds
      actPerArr[17] = 30 * RYOUTE_odds
   else
      actPerArr[1] = 15 * KATATE_odds
      actPerArr[2] = 15 * KATATE_odds
      actPerArr[3] = 18 * KATATE_odds
      actPerArr[4] = 17 * KATATE_odds
      actPerArr[5] = 10 * KATATE_odds
      actPerArr[6] = 10 * KATATE_odds
      actPerArr[9] = 15 * RYOUTE_odds
      actPerArr[10] = 15 * RYOUTE_odds
      actPerArr[11] = 18 * RYOUTE_odds
      actPerArr[12] = 17 * RYOUTE_odds
      actPerArr[13] = 10 * KATATE_odds
      actPerArr[14] = 10 * KATATE_odds
      actPerArr[17] = 20 * RYOUTE_odds
      actPerArr[18] = 10 * KATATE_odds
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, TrickStar6260_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, TrickStar6260_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, TrickStar6260_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, TrickStar6260_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, TrickStar6260_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, TrickStar6260_Act06)
   actFuncArr[9] = REGIST_FUNC(ai, goal, TrickStar6260_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, TrickStar6260_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, TrickStar6260_Act11)
   actFuncArr[12] = REGIST_FUNC(ai, goal, TrickStar6260_Act12)
   actFuncArr[13] = REGIST_FUNC(ai, goal, TrickStar6260_Act13)
   actFuncArr[14] = REGIST_FUNC(ai, goal, TrickStar6260_Act14)
   actFuncArr[17] = REGIST_FUNC(ai, goal, TrickStar6260_Act17)
   actFuncArr[18] = REGIST_FUNC(ai, goal, TrickStar6260_Act18)
   local atkAfterFunc = REGIST_FUNC(ai, goal, TrickStar6260_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

TrickStar6260_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = LargeR_max
   local DashDist = LargeR_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = NormalR2_max
   local DashDist = NormalR2_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local AppDist = LargeR2_max
   local DashDist = LargeR2_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = Backstep_Atk_max
   local DashDist = Backstep_Atk_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local AppDist = Backstep_Atk2_max
   local DashDist = Backstep_Atk2_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Whand_jyaku_max
   local DashDist = Whand_jyaku_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = Whand_kyou_max
   local DashDist = Whand_kyou_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Whand_jyaku2_max
   local DashDist = Whand_jyaku2_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act12 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Whand_kyou2_max
   local DashDist = Whand_kyou2_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act13 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Backstep_AtkW_max
   local DashDist = Backstep_AtkW_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act14 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Backstep_AtkW2_max
   local DashDist = Backstep_AtkW2_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act17 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = PushR_max
   local DashDist = PushR_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act18 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TrickStar6260_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   if fate <= 5 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif fate2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      end
   elseif fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif fate <= 15 then
      if fate2 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

TrickStar6260Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

TrickStar6260Battle_Terminate = function(ai, goal)
end

TrickStar6260Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local FindATKDist = 3
      local FindATKPer = 10
      local MoveDist = 3
      if targetDist <= FindATKDist and fate <= FindATKPer then
         goal:ClearSubGoal()
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local Suc_GuardDist = 3
      local Suc_GuardPer = 80
      if targetDist <= Suc_GuardDist and fate <= Suc_GuardPer then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local combRunDist = 3
      local combRunPer = 10
      if targetDist < combRunDist and fate <= combRunPer then
         goal:ClearSubGoal()
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
      end
   end
   if ai:IsInterupt(INTERUPT_GuardBreak) then
      local distGuardBreak_Act = 2
      local oddsGuardBreak_Act = 100
      if targetDist <= distGuardBreak_Act and fate <= oddsGuardBreak_Act then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local ResDist = 3
      local ResPer = 10
      if targetDist < ResDist then
         if fate <= ResPer then
            goal:ClearSubGoal()
            if fate2 <= ResPer then
               if fate3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
               end
            else
               ai:Replaning()
               goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
               return true
            end
         else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
            ai:Replaning()
            return true
         end
      else
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
         ai:Replaning()
         return true
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local shootIntPer = 50
      if fate <= shootIntPer then
         goal:ClearSubGoal()
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         else
            local AppDist = LargeR_max
            local DashDist = LargeR_max + 5
            local Odds_Guard = 100
            NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
         return true
      end
   end
   return false
end


