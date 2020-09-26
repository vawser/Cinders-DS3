REGISTER_GOAL(GOAL_Knight_of_HolyWomanC6100_Battle, "Knight_of_HolyWomanC6100Battle")
local NormalR_min = 0
local NormalR_max = 2.6
local LargeR_min = 0
local LargeR_max = 2.2
local Whand_jyaku_min = 0
local Whand_jyaku_max = 2.6
local Whand_kyou_min = 0
local Whand_kyou_max = 2.3
local Backstep_Atk_min = 0
local Backstep_Atk_max = 2.1
local Backstep_AtkW_min = 0
local Backstep_AtkW_max = 2.2
local PushR_min = 0
local PushR_max = 1
local Magic_min = 8
local Magic_max = 8
local Magic2_min = 0
local Magic2_max = 1.7
REGISTER_GOAL_NO_UPDATE(GOAL_Knight_of_HolyWomanC6100_Battle, 1)
Knight_of_HolyWomanC6100Battle_Activate = function(ai, goal)
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
   local MagicValue1 = 1
   local Magic1Limit = ai:GetNumber(0)
   if Magic1Limit >= 5 or ai:IsFinishTimer(0) ~= true then
      MagicValue1 = 0
   end
   local GuardTaiou = 0
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      GuardTaiou = 1
   end
   local hprate = ai:GetHpRate(TARGET_SELF)
   local Kaifuku = 0
   if hprate <= 0.75 then
      Kaifuku = 1
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      RYOUTE_odds = 10
   end
   if targetDist >= 4 then
      actPerArr[1] = 35
      actPerArr[2] = 35
      actPerArr[9] = 35 * GuardTaiou * RYOUTE_odds
      actPerArr[10] = 35 * GuardTaiou * RYOUTE_odds
      actPerArr[18] = 10000 * MagicValue1 * Kaifuku
      actPerArr[20] = 30
   elseif targetDist >= 2.1 then
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[9] = 20 * GuardTaiou * RYOUTE_odds
      actPerArr[10] = 20 * GuardTaiou * RYOUTE_odds
      actPerArr[17] = 20 * GuardTaiou
      actPerArr[18] = 10000 * MagicValue1 * Kaifuku
      actPerArr[20] = 35
   else
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[9] = 20 * GuardTaiou * RYOUTE_odds
      actPerArr[10] = 20 * GuardTaiou * RYOUTE_odds
      actPerArr[17] = 20 * GuardTaiou
      actPerArr[18] = 10000 * MagicValue1 * Kaifuku
      actPerArr[20] = 40
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_Act02)
   actFuncArr[9] = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_Act11)
   actFuncArr[17] = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_Act17)
   actFuncArr[18] = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_Act18)
   actFuncArr[20] = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Knight_of_HolyWomanC6100_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Knight_of_HolyWomanC6100_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 100
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

Knight_of_HolyWomanC6100_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = LargeR_max
   local DashDist = LargeR_max + 5
   local Odds_Guard = 100
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

Knight_of_HolyWomanC6100_Act09 = function(ai, goal, paramTbl)
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

Knight_of_HolyWomanC6100_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
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

Knight_of_HolyWomanC6100_Act17 = function(ai, goal, paramTbl)
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

Knight_of_HolyWomanC6100_Act18 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic1Limit = ai:GetNumber(0)
   CommonNPC_ChangeWepR2(ai, goal)
   ai:ChangeEquipMagic(0)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 7, TARGET_ENE_0, Magic_min, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   end
   ai:SetTimer(0, 62)
   ai:SetNumber(0, Magic1Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Knight_of_HolyWomanC6100_Act20 = function(ai, goal, paramTbl)
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

Knight_of_HolyWomanC6100_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 80 then
      if fate2 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Knight_of_HolyWomanC6100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Knight_of_HolyWomanC6100Battle_Terminate = function(ai, goal)
end

Knight_of_HolyWomanC6100Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local FindATKDist = 3
      local FindATKPer = 40
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
      local combRunPer = 50
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
      local oddsGuardBreak_Act = 60
      if targetDist <= distGuardBreak_Act and fate <= oddsGuardBreak_Act then
         goal:ClearSubGoal()
         CommonNPC_ChangeWepR1(ai, goal)
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      goal:ClearSubGoal()
      ai:Replaning()
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
      return true
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local shootIntPer = 75
      if fate <= shootIntPer then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
         else
            local AppDist = LargeR_max
            local DashDist = LargeR_max + 5
            local Odds_Guard = 100
            NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
         return true
      end
      return true
   end
   return false
end


