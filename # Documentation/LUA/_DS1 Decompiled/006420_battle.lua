REGISTER_GOAL(GOAL_Ninja6420_Battle, "Ninja6420Battle")
local NormalR_min = 0
local NormalR_max = 2
local Guard_NormalR_min = 0
local Guard_NormalR_max = 1.5
local LargeR_min = 0
local LargeR_max = 3.8
local Whand_jyaku_min = 0
local Whand_jyaku_max = 2.1
local Whand_kyou_min = 0
local Whand_kyou_max = 3.3
local PushR_min = 0
local PushR_max = 1.1
local Magic_min = 0
local Magic_max = 3.4
local Backstep_Atk_min = 0
local Backstep_Atk_max = 0.5
local Rolling_Atk_min = 4.1
local Rolling_Atk_max = 5.1
REGISTER_GOAL_NO_UPDATE(GOAL_Ninja6420_Battle, 1)
Ninja6420Battle_Activate = function(ai, goal)
   ai:StartDash()
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BothHandOff = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   ai:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 40, 4)
   if targetDist >= 8 then
      actPerArr[1] = 11
      actPerArr[3] = 12
      actPerArr[5] = 5
      actPerArr[7] = 22
      actPerArr[11] = 50
   elseif targetDist >= 5.1 then
      actPerArr[1] = 10
      actPerArr[3] = 15
      actPerArr[5] = 10
      actPerArr[7] = 15
      actPerArr[11] = 50
   elseif targetDist >= 2 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 2
         actPerArr[3] = 3
         actPerArr[5] = 35
         actPerArr[9] = 10
         actPerArr[11] = 50
      else
         actPerArr[1] = 20
         actPerArr[3] = 20
         actPerArr[5] = 10
         actPerArr[9] = 10
         actPerArr[11] = 40
      end
   elseif targetDist >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 2
         actPerArr[3] = 3
         actPerArr[5] = 35
         actPerArr[8] = 40
         actPerArr[9] = 10
      else
         actPerArr[1] = 10
         actPerArr[3] = 15
         actPerArr[5] = 15
         actPerArr[8] = 50
         actPerArr[9] = 10
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      actPerArr[1] = 2
      actPerArr[3] = 2
      actPerArr[5] = 34
      actPerArr[6] = 2
      actPerArr[8] = 50
      actPerArr[9] = 10
   else
      actPerArr[1] = 15
      actPerArr[3] = 20
      actPerArr[5] = 10
      actPerArr[6] = 10
      actPerArr[8] = 40
      actPerArr[9] = 5
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, Ninja6420_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Ninja6420_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Ninja6420_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, Ninja6420_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Ninja6420_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Ninja6420_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Ninja6420_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Ninja6420_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, Ninja6420_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, Ninja6420_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, Ninja6420_Act11)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Ninja6420_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Ninja6420_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, NormalR_max, TARGET_SELF, false, -1)
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

Ninja6420_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Guard_NormalR_max, TARGET_SELF, false, 4)
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

Ninja6420_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, LargeR_max, TARGET_SELF, false, 4)
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

Ninja6420_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, PushR_max, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ninja6420_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR2(ai, goal)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic_max, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 10)
   elseif targetDist <= Magic_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic_min, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 10)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 10)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ninja6420_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ninja6420_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Rolling_Atk_max, TARGET_SELF, false, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ninja6420_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ninja6420_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ninja6420_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ninja6420_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ninja6420_Battle_Attack_After = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   CommonNPC_ChangeWepL1(ai, goal)
   if fate <= 25 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      elseif fate2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      end
   elseif fate2 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, MoveDist, TARGET_ENE_0, false, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(90, 120), false, true, 4)
   end
   -- Tried to add an 'end' here but it's incorrect
end

Ninja6420Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ninja6420Battle_Terminate = function(ai, goal)
end

Ninja6420Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local FindATKDist = 3
      local FindATKPer = 50
      local MoveDist = 3
      if targetDist <= FindATKDist and fate <= FindATKPer then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local Suc_GuardDist = 3
      local Suc_GuardPer = 100
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
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, combRunDist, TARGET_ENE_0, false, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         end
         return true
      end
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
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local ResDist = 3
      local ResPer = 30
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
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 4)
      goal:ClearSubGoal()
      CommonNPC_ChangeWepR1(ai, goal)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 0.6, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 10)
      return true
   end
   return false
end


