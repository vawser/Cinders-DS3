REGISTER_GOAL(GOAL_DragonOracle6370_Battle, "DragonOracle6370Battle")
local NormalR_min = 0
local NormalR_max = 1.7
local LargeR_min = 0
local LargeR_max = 1.2
local PushR_min = 0
local PushR_max = 1
local Magic_min = 8
local Magic_max = 8
local Magic2_min = 8
local Magic2_max = 8
local Magic3_min = 4
local Magic3_max = 4
local NPC_ATK_Parry_min = 0
local NPC_ATK_Parry_max = 0.8
local Backstep_Atk_min = 0
local Backstep_Atk_max = 1.5
local Rolling_Atk_min = 3.5
local Rolling_Atk_max = 4.5
REGISTER_GOAL_NO_UPDATE(GOAL_DragonOracle6370_Battle, 1)
DragonOracle6370Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local MagicValue1 = 1
   local Magic1Limit = ai:GetNumber(0)
   if Magic1Limit >= 5 or ai:HasSpecialEffectId(TARGET_SELF, 610) then
      MagicValue1 = 0
   end
   local MagicValue2 = 1
   local Magic2Limit = ai:GetNumber(1)
   if Magic2Limit >= 5 or ai:HasSpecialEffectId(TARGET_SELF, 1800) or ai:HasSpecialEffectId(TARGET_SELF, 610) then
      MagicValue2 = 0
   end
   local MagicValue3 = 1
   local Magic3Limit = ai:GetNumber(2)
   if Magic3Limit >= 5 or ai:HasSpecialEffectId(TARGET_SELF, 1800) or ai:HasSpecialEffectId(TARGET_SELF, 610) then
      MagicValue3 = 0
   end
   local hprate = ai:GetHpRate(TARGET_SELF)
   local Kaifuku = 0
   if hprate <= 0.5 then
      Kaifuku = 1
   end
   if targetDist >= 8 then
      actPerArr[1] = 15
      actPerArr[2] = 10000 * MagicValue1 * Kaifuku
      actPerArr[3] = 15
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[6] = 60
      actPerArr[7] = 0
      actPerArr[8] = 50 * MagicValue2
      actPerArr[9] = 10 * MagicValue3
   elseif targetDist >= 5 then
      actPerArr[1] = 20
      actPerArr[2] = 10000 * MagicValue1 * Kaifuku
      actPerArr[3] = 20
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[6] = 50
      actPerArr[7] = 0
      actPerArr[8] = 50 * MagicValue2
      actPerArr[9] = 10 * MagicValue3
   elseif targetDist >= 1.5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 0
         actPerArr[2] = 10000 * MagicValue1 * Kaifuku
         actPerArr[3] = 20
         actPerArr[4] = 20
         actPerArr[5] = 0
         actPerArr[6] = 0
         actPerArr[7] = 50
         actPerArr[8] = 50 * MagicValue2
         actPerArr[9] = 10 * MagicValue3
      else
         actPerArr[1] = 20
         actPerArr[2] = 10000 * MagicValue1 * Kaifuku
         actPerArr[3] = 20
         actPerArr[4] = 0
         actPerArr[5] = 0
         actPerArr[6] = 0
         actPerArr[7] = 50
         actPerArr[8] = 50 * MagicValue2
         actPerArr[9] = 10 * MagicValue3
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      actPerArr[1] = 0
      actPerArr[2] = 10000 * MagicValue1 * Kaifuku
      actPerArr[3] = 15
      actPerArr[4] = 15
      actPerArr[5] = 20
      actPerArr[6] = 0
      actPerArr[7] = 50
      actPerArr[8] = 50 * MagicValue2
      actPerArr[9] = 10 * MagicValue3
   else
      actPerArr[1] = 15
      actPerArr[2] = 10000 * MagicValue1 * Kaifuku
      actPerArr[3] = 15
      actPerArr[4] = 0
      actPerArr[5] = 20
      actPerArr[6] = 0
      actPerArr[7] = 50
      actPerArr[8] = 50 * MagicValue2
      actPerArr[9] = 10 * MagicValue3
   end
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, DragonOracle6370_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, DragonOracle6370_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, DragonOracle6370_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, DragonOracle6370_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, DragonOracle6370_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, DragonOracle6370_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, DragonOracle6370_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, DragonOracle6370_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, DragonOracle6370_Act09)
   local atkAfterFunc = REGIST_FUNC(ai, goal, DragonOracle6370_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

DragonOracle6370_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 100
   CommonNPC_ChangeWepR1(ai, goal)
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

DragonOracle6370_Act02 = function(ai, goal, paramTbl)
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

DragonOracle6370_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = LargeR_max
   local DashDist = LargeR_max + 5
   local Odds_Guard = 100
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

DragonOracle6370_Act04 = function(ai, goal, paramTbl)
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

DragonOracle6370_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 100
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonOracle6370_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Rolling_Atk_max
   local DashDist = Rolling_Atk_max + 5
   local Odds_Guard = 100
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonOracle6370_Act07 = function(ai, goal, paramTbl)
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

DragonOracle6370_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic2Limit = ai:GetNumber(0)
   CommonNPC_ChangeWepR2(ai, goal)
   ai:ChangeEquipMagic(1)
   if Magic2_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic2_max, TARGET_SELF, false, 4)
   elseif targetDist <= Magic2_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic2_min, TARGET_ENE_0, false, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   ai:SetNumber(0, Magic2Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonOracle6370_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic3Limit = ai:GetNumber(2)
   CommonNPC_ChangeWepR2(ai, goal)
   ai:ChangeEquipMagic(2)
   if Magic3_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic3_max, TARGET_SELF, false, 4)
   elseif targetDist <= Magic3_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic3_min, TARGET_ENE_0, false, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   ai:SetNumber(2, Magic3Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonOracle6370_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
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
   elseif fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif fate <= 60 then
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

DragonOracle6370Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DragonOracle6370Battle_Terminate = function(ai, goal)
end

DragonOracle6370Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local ParryDist = 3
   local ParryAng = 60
   local ParryThrowDist = 4
   local ParryThrowAng = 60
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
      local combRunPer = 40
      if targetDist < combRunDist and fate <= combRunPer then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
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
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end


