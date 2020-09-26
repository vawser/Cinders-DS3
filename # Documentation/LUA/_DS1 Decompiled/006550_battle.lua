REGISTER_GOAL(GOAL_TempleKnight6550_Battle, "TempleKnight6550Battle")
local NormalR_min = 0
local NormalR_max = 2.5
local LargeR_min = 0
local LargeR_max = 2.5
local Whand_jyaku_min = 0
local Whand_jyaku_max = 2
local Whand_kyou_min = 0
local Whand_kyou_max = 2
local Backstep_Atk_min = 0
local Backstep_Atk_max = 1.5
local Backstep_AtkW_min = 0
local Backstep_AtkW_max = 2
local PushR_min = 0
local PushR_max = 1
local Magic_min = 8
local Magic_max = 8
local Magic2_min = 0
local Magic2_max = 2
REGISTER_GOAL_NO_UPDATE(GOAL_TempleKnight6550_Battle, 1)
TempleKnight6550Battle_Activate = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local playerDist = ai:GetDist(TARGET_LOCALPLAYER)
   local isFindTarget = ai:IsSearchTarget(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(0)
   local myThinkId = ai:GetNpcThinkParamID()
   local selfmp = ai:GetMp(TARGET_SELF)
   local PointFrontWall = 0
   local MoveArea1 = 0
   local MoveArea2 = 0
   if myThinkId == 6550 then
      PointFrontOfWall = 1302997
      MoveArea1 = 1302995
      MoveArea2 = 1302995
   end
   if eventNo == 10 then
      ai:SetEventMoveTarget(PointFrontOfWall)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, 3, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, 0.1, TARGET_SELF, true, -1)
   elseif playerDist <= 0.1 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
      elseif fate <= 85 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 25), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_LOCALPLAYER, 0, 0, 0)
      end
   elseif playerDist <= 0.4 then
      if fate <= 20 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
      elseif fate <= 30 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 25), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_LOCALPLAYER, 0, 0, 0)
      end
   elseif MoveArea1 ~= 0 and not ai:IsInsideTargetRegion(TARGET_LOCALPLAYER, MoveArea1) and not ai:IsInsideTargetRegion(TARGET_LOCALPLAYER, MoveArea2) then
      if targetDist >= 10 or isFindTarget == false then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 1, TARGET_SELF, true, 4)
         goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
      else
         TempleKnight6550_Battle(ai, goal)
      end
   elseif playerDist >= 20 or targetDist >= 10 or isFindTarget == false then
      local walk = true
      if playerDist >= 2.2 then
         walk = false
      end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, walk, -1)
   else
      TempleKnight6550_Battle(ai, goal)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

TempleKnight6550_Battle = function(ai, goal)
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
   if Magic1Limit >= 5 then
      MagicValue1 = 0
   end
   local MagicValue2 = 1
   local Magic2Limit = ai:GetNumber(1)
   if Magic2Limit >= 5 then
      MagicValue2 = 0
   end
   local GuardTaiou = 0
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      GuardTaiou = 1
   end
   local hprate = ai:GetHpRate(TARGET_SELF)
   local Kaifuku = 0
   if hprate <= 0.5 then
      Kaifuku = 1
   end
   if targetDist >= 4 then
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[9] = 60
      actPerArr[18] = 1000 * MagicValue1 * Kaifuku
      actPerArr[20] = 40
   elseif targetDist >= 1 then
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[9] = 60
      actPerArr[17] = 20 * GuardTaiou
      actPerArr[18] = 1000 * MagicValue1 * Kaifuku
      actPerArr[19] = 25 * MagicValue2
      actPerArr[20] = 20
   else
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[5] = 20
      actPerArr[9] = 20
      actPerArr[13] = 10
      actPerArr[17] = 20 * GuardTaiou
      actPerArr[18] = 1000 * MagicValue1 * Kaifuku
      actPerArr[19] = 20 * MagicValue2
      actPerArr[20] = 40
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act02)
   actFuncArr[5] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act05)
   actFuncArr[9] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act09)
   actFuncArr[13] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act13)
   actFuncArr[14] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act14)
   actFuncArr[17] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act17)
   actFuncArr[18] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act18)
   actFuncArr[19] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act19)
   actFuncArr[20] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

TempleKnight_Enemy6551_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act02 = function(ai, goal, paramTbl)
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

TempleKnight_Enemy6551_Act05 = function(ai, goal, paramTbl)
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

TempleKnight_Enemy6551_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Whand_jyaku_max
   local DashDist = Whand_jyaku_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act13 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local AppDist = Backstep_AtkW_max
   local DashDist = Backstep_AtkW_max + 5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act17 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   local AppDist = PushR_max
   local DashDist = PushR_max + 5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act18 = function(ai, goal, paramTbl)
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
   ai:SetNumber(0, Magic1Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act19 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic2Limit = ai:GetNumber(1)
   CommonNPC_ChangeWepR2(ai, goal)
   ai:ChangeEquipMagic(1)
   local AppDist = Magic2_max
   local DashDist = Magic2_max + 5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(1, Magic2Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act20 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
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

TempleKnight_Enemy6551_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   if fate <= 0 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif fate2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      end
   elseif fate <= 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif fate <= 80 then
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

TempleKnight_Enemy6551Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

TempleKnight_Enemy6551Battle_Terminate = function(ai, goal)
end

TempleKnight_Enemy6551Battle_Interupt = function(ai, goal)
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


