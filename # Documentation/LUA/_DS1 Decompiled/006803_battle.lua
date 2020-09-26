REGISTER_GOAL(GOAL_BanditC6803_Battle, "BanditC6803Battle")
local NormalR_min = 0
local NormalR_max = 1.5
local Bow_min = 8
local Bow_max = 20
local LargeR_min = 0
local LargeR_max = 2.3
local PushR_min = 0
local PushR_max = 1
local NPC_ATK_Parry_min = 0
local NPC_ATK_Parry_max = 0.8
local Backstep_Atk_min = 0
local Backstep_Atk_max = 2.2
local Rolling_Atk_min = 3.2
local Rolling_Atk_max = 5.2
REGISTER_GOAL_NO_UPDATE(GOAL_BanditC6803_Battle, 1)
BanditC6803Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   if R_Wep == WEP_CATE_Bow then
      if targetDist >= 10 then
         actPerArr[2] = 100
      elseif targetDist >= 5.2 then
         actPerArr[2] = 10
         actPerArr[9] = 90
      else
         actPerArr[10] = 100
      end
   elseif targetDist >= 7.5 then
      actPerArr[2] = 100
   elseif targetDist >= 5.2 then
      actPerArr[1] = 10
      actPerArr[3] = 15
      actPerArr[4] = 0
      actPerArr[5] = 0
      actPerArr[6] = 15
      actPerArr[7] = 0
      actPerArr[8] = 0
      actPerArr[9] = 50
   elseif targetDist >= 2.8 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 0
         actPerArr[3] = 0
         actPerArr[4] = 10
         actPerArr[5] = 0
         actPerArr[7] = 10
         actPerArr[11] = 80
      else
         actPerArr[1] = 10
         actPerArr[3] = 10
         actPerArr[4] = 0
         actPerArr[5] = 10
         actPerArr[7] = 10
         actPerArr[9] = 40
         actPerArr[11] = 0
      end
   elseif targetDist >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 0
         actPerArr[3] = 0
         actPerArr[4] = 10
         actPerArr[5] = 0
         actPerArr[7] = 10
         actPerArr[9] = 40
         actPerArr[11] = 40
      else
         actPerArr[1] = 20
         actPerArr[3] = 20
         actPerArr[4] = 0
         actPerArr[5] = 10
         actPerArr[7] = 10
         actPerArr[9] = 40
         actPerArr[11] = 0
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      actPerArr[1] = 0
      actPerArr[3] = 0
      actPerArr[4] = 10
      actPerArr[5] = 0
      actPerArr[7] = 10
      actPerArr[8] = 10
      actPerArr[9] = 40
      actPerArr[11] = 30
   else
      actPerArr[1] = 20
      actPerArr[3] = 20
      actPerArr[4] = 0
      actPerArr[5] = 10
      actPerArr[7] = 10
      actPerArr[8] = 10
      actPerArr[9] = 40
      actPerArr[11] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, BanditC6803_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, BanditC6803_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, BanditC6803_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, BanditC6803_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, BanditC6803_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, BanditC6803_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, BanditC6803_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, BanditC6803_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, BanditC6803_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, BanditC6803_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, BanditC6803_Act11)
   local atkAfterFunc = REGIST_FUNC(ai, goal, BanditC6803_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

BanditC6803_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   if R_Wep == WEP_CATE_Bow then
      CommonNPC_ChangeWepR2(ai, goal)
   end
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 75
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

BanditC6803_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   if R_Wep ~= WEP_CATE_Bow then
      CommonNPC_ChangeWepR1(ai, goal)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Far, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BanditC6803_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   if R_Wep == WEP_CATE_Bow then
      CommonNPC_ChangeWepR2(ai, goal)
   end
   local AppDist = LargeR_max
   local DashDist = LargeR_max + 5
   local Odds_Guard = 75
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

BanditC6803_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local AppDist = PushR_max
   local DashDist = PushR_max + 5
   local Odds_Guard = 75
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BanditC6803_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   if R_Wep == WEP_CATE_Bow then
      CommonNPC_ChangeWepR2(ai, goal)
   end
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 75
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BanditC6803_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   if R_Wep == WEP_CATE_Bow then
      CommonNPC_ChangeWepR2(ai, goal)
   end
   local AppDist = Rolling_Atk_max
   local DashDist = Rolling_Atk_max + 5
   local Odds_Guard = 75
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BanditC6803_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
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

BanditC6803_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BanditC6803_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local FirstAttID = NPC_ATK_NormalR
   local ComAttID = NPC_ATK_NormalR
   local ShootNum = ai:GetRandam_Int(1, 3)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, false, 4)
   if R_Wep ~= WEP_CATE_Bow then
      CommonNPC_ChangeWepR1(ai, goal)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Far, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BanditC6803_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR2(ai, goal)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BanditC6803_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, NormalR_max, TARGET_SELF, false, 4)
   goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BanditC6803_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   if fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Backstep_Atk_max, TARGET_SELF, false, -1)
   elseif fate <= 55 then
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

BanditC6803Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BanditC6803Battle_Terminate = function(ai, goal)
end

BanditC6803Battle_Interupt = function(ai, goal)
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
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local Suc_GuardDist = 3
      local Suc_GuardPer = 40
      if targetDist <= Suc_GuardDist and fate <= Suc_GuardPer then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   do
      if ai:IsInterupt(INTERUPT_Damaged) then
         local combRunDist = 3
         local combRunPer = 40
         if targetDist < combRunDist then
            if fate <= combRunPer then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               -- Tried to add an 'end' here but it's incorrect
               return true
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
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
            return false
end


