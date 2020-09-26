REGISTER_GOAL(GOAL_Habel6580_Battle, "Habel6580Battle")
local NormalR_min = 0
local NormalR_max = 3.3
local LargeR_min = 0
local LargeR_max = 3
local Whand_jyaku_min = 0
local Whand_jyaku_max = 3
local Whand_kyou_min = 0
local Whand_kyou_max = 3.1
local Backstep_Atk_min = 0
local Backstep_Atk_max = 2.1
local Backstep_AtkW_min = 0
local Backstep_AtkW_max = 1.3
local Rolling_Atk_min = 3.5
local Rolling_Atk_max = 4.5
local Rolling_AtkW_min = 4
local Rolling_AtkW_max = 5
local PushR_min = 0
local PushR_max = 1
REGISTER_GOAL_NO_UPDATE(GOAL_Habel6580_Battle, 1)
Habel6580Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BothHandOff = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   ai:AddObserveRegion(0, TARGET_ENE_0, 1012799)
   local RYOUTE_odds = 1
   local KATATE_odds = 1
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      RYOUTE_odds = 10
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1012799) then
      if targetDist >= 3.5 then
         actPerArr[1] = 32 * KATATE_odds
         actPerArr[2] = 53 * KATATE_odds
         actPerArr[9] = 32 * RYOUTE_odds
         actPerArr[10] = 53 * RYOUTE_odds
         actPerArr[20] = 15 * RYOUTE_odds
      elseif targetDist >= 2.1 then
         actPerArr[1] = 27 * KATATE_odds
         actPerArr[2] = 48 * KATATE_odds
         actPerArr[9] = 27 * RYOUTE_odds
         actPerArr[10] = 48 * RYOUTE_odds
         actPerArr[17] = 10 * RYOUTE_odds
         actPerArr[20] = 15 * RYOUTE_odds
      else
         actPerArr[1] = 17 * KATATE_odds
         actPerArr[2] = 38 * KATATE_odds
         actPerArr[5] = 20 * KATATE_odds
         actPerArr[9] = 17 * RYOUTE_odds
         actPerArr[10] = 38 * RYOUTE_odds
         actPerArr[13] = 20 * KATATE_odds
         actPerArr[17] = 10 * RYOUTE_odds
         actPerArr[20] = 15 * RYOUTE_odds
      end
   else
      actPerArr[6] = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, Habel6580_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Habel6580_Act02)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Habel6580_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Habel6580_Act06)
   actFuncArr[9] = REGIST_FUNC(ai, goal, Habel6580_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, Habel6580_Act10)
   actFuncArr[13] = REGIST_FUNC(ai, goal, Habel6580_Act13)
   actFuncArr[17] = REGIST_FUNC(ai, goal, Habel6580_Act17)
   actFuncArr[20] = REGIST_FUNC(ai, goal, Habel6580_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Habel6580_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Habel6580_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Habel6580_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = LargeR_max
   local DashDist = LargeR_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Habel6580_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = Backstep_Atk_max
   local DashDist = Backstep_Atk_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Habel6580_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_INITIAL, 0.1, TARGET_ENE_0, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Habel6580_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Whand_jyaku_max
   local DashDist = Whand_jyaku_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Habel6580_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Whand_kyou_max
   local DashDist = Whand_kyou_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Habel6580_Act13 = function(ai, goal, paramTbl)
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

Habel6580_Act17 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = PushR_max
   local DashDist = PushR_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Habel6580_Act20 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Habel6580_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   if fate <= 100 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Habel6580Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Habel6580Battle_Terminate = function(ai, goal)
end

Habel6580Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if not ai:IsInterupt(INTERUPT_Inside_ObserveArea) then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_INITIAL, 0.1, TARGET_ENE_0, True, -1)
      return true
   end
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local FindATKDist = 3
      local FindATKPer = 10
      local MoveDist = 3
      if targetDist <= FindATKDist and fate <= FindATKPer then
         goal:ClearSubGoal()
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, combRunDist, TARGET_ENE_0, true, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
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
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, combRunDist, TARGET_ENE_0, true, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
         end
         return true
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
               if fate <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, combRunDist, TARGET_ENE_0, true, 4)
               else
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
               end
               return true
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


