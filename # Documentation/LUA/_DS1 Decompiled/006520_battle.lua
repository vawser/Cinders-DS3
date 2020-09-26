REGISTER_GOAL(GOAL_Witch6520_Battle, "Witch6520Battle")
local LargeR_min = 0
local LargeR_max = 1.5
local PushR_min = 0
local PushR_max = 1
local Magic_min = 7
local Magic_max = 15
local Magic2_min = 7
local Magic2_max = 15
local Magic3_min = 8
local Magic3_max = 16
local Magic4_min = 10
local Magic4_max = 18
REGISTER_GOAL_NO_UPDATE(GOAL_Witch6520_Battle, 1)
Witch6520Battle_Activate = function(ai, goal)
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
   if myThinkId == 6520 then
      PointFrontOfWall = 1602010
   elseif myThinkId == 6521 then
      PointFrontOfWall = 1202894
      MoveArea1 = 1202891
      MoveArea2 = 1202892
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
         Witch6520_Battle(ai, goal)
      end
   elseif playerDist >= 20 or targetDist >= 10 or isFindTarget == false then
      local walk = true
      if playerDist >= 2.2 then
         walk = false
      end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, walk, -1)
   else
      Witch6520_Battle(ai, goal)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

Witch6520_Battle = function(ai, goal)
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
   local MagicValue1 = 100
   local Magic1Limit = ai:GetNumber(0)
   if Magic1Limit >= 20 then
      MagicValue1 = 1
   end
   local MagicValue2 = 100
   local Magic2Limit = ai:GetNumber(1)
   if Magic2Limit >= 20 then
      MagicValue2 = 1
   end
   local MagicValue3 = 100
   local Magic3Limit = ai:GetNumber(2)
   if Magic3Limit >= 10 then
      MagicValue3 = 1
   end
   local MagicValue4 = 0
   local Magic4Limit = ai:GetNumber(3)
   if MagicValue1 == 1 and MagicValue1 == 2 and MagicValue1 == 3 then
      local MagicValue4 = 1
   end
   if Magic4Limit >= 5 then
      MagicValue4 = 0
   end
   local GuardTaiou = 0
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      GuardTaiou = 1
   end
   local Buturi = 0
   if ai:HasSpecialEffectId(TARGET_ENE_0, 5444) then
      Buturi = 10000
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 1500) then
      actPerArr[1] = 85
      actPerArr[18] = 5
      actPerArr[19] = 5
      actPerArr[20] = 5
   elseif targetDist >= 1.5 then
      actPerArr[2] = 0 + Buturi
      actPerArr[15] = 30
      actPerArr[16] = 10 * MagicValue4
      actPerArr[18] = 10 * MagicValue1
      actPerArr[19] = 10 * MagicValue2
      actPerArr[20] = 10 * MagicValue3
   else
      actPerArr[2] = 30
      actPerArr[15] = 30
      actPerArr[16] = 10 * MagicValue4
      actPerArr[17] = 5 * GuardTaiou
      actPerArr[18] = 10 * MagicValue1
      actPerArr[19] = 10 * MagicValue2
      actPerArr[20] = 10 * MagicValue3
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Witch6520_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Witch6520_Act02)
   actFuncArr[15] = REGIST_FUNC(ai, goal, Witch6520_Act15)
   actFuncArr[16] = REGIST_FUNC(ai, goal, Witch6520_Act16)
   actFuncArr[17] = REGIST_FUNC(ai, goal, Witch6520_Act17)
   actFuncArr[18] = REGIST_FUNC(ai, goal, Witch6520_Act18)
   actFuncArr[19] = REGIST_FUNC(ai, goal, Witch6520_Act19)
   actFuncArr[20] = REGIST_FUNC(ai, goal, Witch6520_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Witch6520_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Witch6520_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Witch6520_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local AppDist = LargeR_max
   local DashDist = LargeR_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Witch6520_Act15 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist >= 7 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Witch6520_Act16 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic4Limit = ai:GetNumber(3)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(3)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic4_min, TARGET_ENE_0, false, -1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_ENE_0)
   ai:SetNumber(1, Magic4Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Witch6520_Act17 = function(ai, goal, paramTbl)
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

Witch6520_Act18 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic1Limit = ai:GetNumber(0)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(0)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic_max, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   elseif targetDist <= Magic_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic_min, TARGET_ENE_0, false, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   end
   ai:SetNumber(0, Magic1Limit + 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Witch6520_Act19 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic2Limit = ai:GetNumber(1)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(1)
   if Magic2_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic2_max, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   elseif targetDist <= Magic2_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic2_min, TARGET_ENE_0, false, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   end
   ai:SetNumber(1, Magic2Limit + 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Witch6520_Act20 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic3Limit = ai:GetNumber(2)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(2)
   if Magic3_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic3_max, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   elseif targetDist <= Magic3_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic3_min, TARGET_ENE_0, false, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   end
   ai:SetNumber(2, Magic3Limit + 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Witch6520_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   if fate <= 80 then
      if fate2 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Witch6520Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Witch6520Battle_Terminate = function(ai, goal)
end

Witch6520Battle_Interupt = function(ai, goal)
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
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         return true
      end
   end
   return false
end


