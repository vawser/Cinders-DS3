REGISTER_GOAL(GOAL_Attendant_of_laughtrecB6500_Battle, "Attendant_of_laughtrecB6500Battle")
local PushR_min = 0
local PushR_max = 1
local NormalR2_min = 0
local NormalR2_max = 1
local LargeR2_min = 0
local LargeR2_max = 1.1
local Backstep_Atk2_min = 0
local Backstep_Atk2_max = 1
local Guard_NormalR_min = 0
local Guard_NormalR_max = 0.9
local Magic_min = 7
local Magic_max = 7
local Magic2_min = 7
local Magic2_max = 7
local Magic3_min = 8
local Magic3_max = 8
REGISTER_GOAL_NO_UPDATE(GOAL_Attendant_of_laughtrecB6500_Battle, 1)
Attendant_of_laughtrecB6500Battle_Activate = function(ai, goal)
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
   if Magic1Limit >= 20 then
      MagicValue1 = 0
   end
   local MagicValue2 = 1
   local Magic2Limit = ai:GetNumber(1)
   if Magic2Limit >= 20 then
      MagicValue2 = 0
   end
   local MagicValue3 = 1
   local Magic3Limit = ai:GetNumber(2)
   if Magic3Limit >= 5 then
      MagicValue3 = 0
   end
   local GuardTaiou = 0
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      GuardTaiou = 1
   end
   local hprate = ai:GetHpRate(TARGET_SELF)
   local Kaifuku = 0
   if (ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_POIZON) or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_ILLNESS) or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_BLOOD)) and ai:IsFinishTimer(3) == true then
      Kaifuku = 1
   end
   if targetDist >= 7 then
      actPerArr[3] = 3
      actPerArr[4] = 4
      actPerArr[17] = 3 * GuardTaiou
      actPerArr[18] = 45 * MagicValue1
      actPerArr[19] = 45 * MagicValue2
      actPerArr[20] = 10000 * MagicValue3 * Kaifuku
   elseif targetDist >= 3.5 then
      actPerArr[3] = 5
      actPerArr[4] = 5
      actPerArr[17] = 5 * GuardTaiou
      actPerArr[18] = 40 * MagicValue1
      actPerArr[19] = 45 * MagicValue2
      actPerArr[20] = 10000 * MagicValue3 * Kaifuku
   else
      actPerArr[3] = 10
      actPerArr[4] = 10
      actPerArr[17] = 10 * GuardTaiou
      actPerArr[18] = 35 * MagicValue1
      actPerArr[19] = 35 * MagicValue2
      actPerArr[20] = 10000 * MagicValue3 * Kaifuku
   end
   actFuncArr[3] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecB6500_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecB6500_Act04)
   actFuncArr[17] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecB6500_Act17)
   actFuncArr[18] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecB6500_Act18)
   actFuncArr[19] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecB6500_Act19)
   actFuncArr[20] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecB6500_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Attendant_of_laughtrecB6500_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Attendant_of_laughtrecB6500_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local AppDist = NormalR2_max
   local DashDist = NormalR2_max + 5
   local Odds_Guard = 0
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

Attendant_of_laughtrecB6500_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local AppDist = LargeR2_max
   local DashDist = LargeR2_max + 5
   local Odds_Guard = 0
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

Attendant_of_laughtrecB6500_Act17 = function(ai, goal, paramTbl)
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

Attendant_of_laughtrecB6500_Act18 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic1Limit = ai:GetNumber(0)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(0)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic_max, TARGET_SELF, false, -1)
   elseif targetDist <= Magic_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic_min, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(0, Magic1Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Attendant_of_laughtrecB6500_Act19 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic2Limit = ai:GetNumber(1)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(1)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic2_max, TARGET_SELF, false, -1)
   elseif targetDist <= Magic_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic2_min, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(1, Magic2Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Attendant_of_laughtrecB6500_Act20 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic3Limit = ai:GetNumber(2)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(2)
   if Magic3_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic3_max, TARGET_SELF, false, -1)
   elseif targetDist <= Magic3_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic3_min, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(2, Magic3Limit + 1)
   ai:SetTimer(3, 5)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Attendant_of_laughtrecB6500_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   if fate <= 30 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Attendant_of_laughtrecB6500Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Attendant_of_laughtrecB6500Battle_Terminate = function(ai, goal)
end

Attendant_of_laughtrecB6500Battle_Interupt = function(ai, goal)
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


