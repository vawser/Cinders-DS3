REGISTER_GOAL(GOAL_BigHat_Logarn6030_Battle, "BigHat_Logarn6030Battle")
local NormalR2_min = 0
local NormalR2_max = 1.3
local Backstep_Atk2_min = 0
local Backstep_Atk2_max = 1
local Rolling_Atk2_min = 3.5
local Rolling_Atk2_max = 4
local Magic_min = 7
local Magic_max = 10
local Magic2_min = 7
local Magic2_max = 10
local Magic3_min = 9
local Magic3_max = 12
local Magic4_min = 9
local Magic4_max = 12
local Magic5_min = 9
local Magic5_max = 12
REGISTER_GOAL_NO_UPDATE(GOAL_BigHat_Logarn6030_Battle, 1)
BigHat_Logarn6030Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local myThinkId = ai:GetNpcThinkParamID()
   if myThinkId == 6032 then
      if ai:IsLadderAct(TARGET_SELF) then
         actPerArr[1] = 100
      elseif targetDist >= 7 then
         actPerArr[3] = 2
         actPerArr[8] = 3
         actPerArr[10] = 13
         actPerArr[11] = 14
         actPerArr[12] = 14
         actPerArr[13] = 14
         actPerArr[14] = 40
      elseif targetDist >= 3.5 then
         actPerArr[3] = 5
         actPerArr[8] = 5
         actPerArr[10] = 10
         actPerArr[11] = 10
         actPerArr[12] = 10
         actPerArr[13] = 10
         actPerArr[14] = 35
         actPerArr[20] = 15
      elseif targetDist >= 1 then
         actPerArr[3] = 10
         actPerArr[10] = 8
         actPerArr[11] = 8
         actPerArr[12] = 8
         actPerArr[13] = 8
         actPerArr[14] = 33
         actPerArr[20] = 25
      else
         actPerArr[3] = 5
         actPerArr[6] = 5
         actPerArr[10] = 10
         actPerArr[11] = 10
         actPerArr[12] = 10
         actPerArr[13] = 10
         actPerArr[14] = 35
         actPerArr[20] = 15
      end
   elseif ai:IsLadderAct(TARGET_SELF) then
      actPerArr[1] = 100
   elseif targetDist >= 7 then
      actPerArr[3] = 2
      actPerArr[8] = 3
      actPerArr[10] = 18
      actPerArr[11] = 19
      actPerArr[12] = 29
      actPerArr[13] = 29
   elseif targetDist >= 3.5 then
      actPerArr[3] = 5
      actPerArr[8] = 5
      actPerArr[10] = 15
      actPerArr[11] = 15
      actPerArr[12] = 22
      actPerArr[13] = 23
      actPerArr[20] = 15
   elseif targetDist >= 1 then
      actPerArr[3] = 10
      actPerArr[10] = 10
      actPerArr[11] = 10
      actPerArr[12] = 22
      actPerArr[13] = 23
      actPerArr[20] = 25
   else
      actPerArr[3] = 5
      actPerArr[6] = 5
      actPerArr[10] = 15
      actPerArr[11] = 15
      actPerArr[12] = 22
      actPerArr[13] = 23
      actPerArr[20] = 15
   end
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act01)
   actFuncArr[3] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act03)
   actFuncArr[6] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act06)
   actFuncArr[8] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act06)
   actFuncArr[10] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act11)
   actFuncArr[12] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act12)
   actFuncArr[13] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act13)
   actFuncArr[14] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act14)
   actFuncArr[20] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, BigHat_Logarn6030_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

BigHat_Logarn6030_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 0.8, TARGET_SELF, false, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   local AppDist = NormalR2_max
   local DashDist = NormalR2_max + 5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   local AppDist = Backstep_Atk2_max
   local DashDist = Backstep_Atk2_max + 5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   local AppDist = Rolling_Atk_max
   local DashDist = Rolling_Atk_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(0)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic_max, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif targetDist <= Magic_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic_min, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(1)
   if Magic2_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic2_max, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif targetDist <= Magic2_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic2_min, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act12 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(2)
   if Magic3_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, Magic3_max, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif targetDist <= Magic3_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, Magic3_min, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act13 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(3)
   if Magic4_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, Magic4_max, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif targetDist <= Magic4_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, Magic4_min, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act14 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(4)
   if Magic5_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, Magic5_max, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif targetDist <= Magic5_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, Magic5_min, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act20 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist >= 7 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   if fate <= 40 then
      if fate2 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

BigHat_Logarn6030Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BigHat_Logarn6030Battle_Terminate = function(ai, goal)
end

BigHat_Logarn6030Battle_Interupt = function(ai, goal)
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
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local combRunDist = 3
      local combRunPer = 40
      if targetDist < combRunDist and fate <= combRunPer then
         goal:ClearSubGoal()
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
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
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
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
      local shootIntPer = 80
      if fate <= shootIntPer then
         goal:ClearSubGoal()
         if targetDist > 7 then
            if fate2 <= 30 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
            else
               CommonNPC_ChangeWepR1(ai, goal)
               ai:ChangeEquipMagic(3)
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
      end
   end
   return false
end


