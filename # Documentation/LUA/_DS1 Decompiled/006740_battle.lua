REGISTER_GOAL(GOAL_Kiaran6740_Battle, "Kiaran6740Battle")
local NormalR_min = 0
local NormalR_max = 1.2
local LargeR_min = 0
local LargeR_max = 1.8
local NormalL_min = 0
local NormalL_max = 2
local LargeL_min = 0
local LargeL_max = 1.6
local PushR_min = 0
local PushR_max = 1
local Backstep_Atk_min = 0
local Backstep_Atk_max = 1.5
local Rolling_Atk_min = 3
local Rolling_Atk_max = 5
local UseItem_min = 3
local UseItem_max = 10
REGISTER_GOAL_NO_UPDATE(GOAL_Kiaran6740_Battle, 1)
OnIf_6740 = function(ai, goal, codeNo)
   if codeNo == 0 then
      Kiaran6740_ActAfter(ai, goal)
   end
end

Kiaran6740Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   CommonNPC_ChangeWepR2(ai, goal)
   CommonNPC_ChangeWepL2(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 8 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[2] = 10
         actPerArr[3] = 5
         actPerArr[8] = 0
         actPerArr[9] = 5
         actPerArr[10] = 10
         actPerArr[11] = 10
         actPerArr[13] = 10
         actPerArr[14] = 0
         actPerArr[15] = 0
         actPerArr[16] = 30
         actPerArr[17] = 0
         actPerArr[20] = 20
      else
         actPerArr[1] = 10
         actPerArr[2] = 10
         actPerArr[3] = 10
         actPerArr[4] = 0
         actPerArr[5] = 0
         actPerArr[6] = 30
         actPerArr[7] = 0
         actPerArr[8] = 0
         actPerArr[9] = 10
         actPerArr[10] = 10
         actPerArr[20] = 20
      end
   elseif targetDist >= 5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[2] = 5
         actPerArr[3] = 5
         actPerArr[8] = 0
         actPerArr[9] = 10
         actPerArr[10] = 10
         actPerArr[11] = 10
         actPerArr[13] = 5
         actPerArr[14] = 0
         actPerArr[15] = 0
         actPerArr[16] = 25
         actPerArr[17] = 0
         actPerArr[20] = 30
      else
         actPerArr[1] = 10
         actPerArr[2] = 10
         actPerArr[3] = 10
         actPerArr[4] = 0
         actPerArr[5] = 0
         actPerArr[6] = 20
         actPerArr[7] = 0
         actPerArr[8] = 0
         actPerArr[9] = 10
         actPerArr[10] = 10
         actPerArr[20] = 30
      end
   elseif targetDist >= 2.8 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[2] = 10
         actPerArr[3] = 10
         actPerArr[8] = 5
         actPerArr[9] = 0
         actPerArr[10] = 10
         actPerArr[11] = 10
         actPerArr[13] = 10
         actPerArr[14] = 0
         actPerArr[15] = 10
         actPerArr[16] = 10
         actPerArr[17] = 5
         actPerArr[20] = 20
      else
         actPerArr[1] = 10
         actPerArr[2] = 15
         actPerArr[3] = 10
         actPerArr[4] = 0
         actPerArr[5] = 10
         actPerArr[6] = 10
         actPerArr[7] = 5
         actPerArr[8] = 5
         actPerArr[9] = 5
         actPerArr[10] = 10
         actPerArr[11] = 5
         actPerArr[13] = 5
         actPerArr[20] = 10
      end
   elseif targetDist >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[2] = 10
         actPerArr[3] = 10
         actPerArr[8] = 5
         actPerArr[9] = 0
         actPerArr[10] = 5
         actPerArr[11] = 15
         actPerArr[13] = 15
         actPerArr[14] = 15
         actPerArr[15] = 5
         actPerArr[16] = 5
         actPerArr[17] = 10
         actPerArr[20] = 0
      else
         actPerArr[1] = 5
         actPerArr[2] = 15
         actPerArr[3] = 10
         actPerArr[4] = 10
         actPerArr[5] = 10
         actPerArr[6] = 10
         actPerArr[7] = 10
         actPerArr[8] = 10
         actPerArr[9] = 0
         actPerArr[10] = 10
         actPerArr[20] = 0
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[8] = 5
      actPerArr[9] = 0
      actPerArr[10] = 10
      actPerArr[11] = 10
      actPerArr[13] = 15
      actPerArr[14] = 15
      actPerArr[15] = 20
      actPerArr[16] = 0
      actPerArr[17] = 5
      actPerArr[20] = 0
   else
      actPerArr[1] = 10
      actPerArr[2] = 15
      actPerArr[3] = 15
      actPerArr[4] = 15
      actPerArr[5] = 10
      actPerArr[6] = 5
      actPerArr[7] = 10
      actPerArr[8] = 10
      actPerArr[9] = 0
      actPerArr[10] = 10
      actPerArr[20] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, Kiaran6740_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Kiaran6740_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Kiaran6740_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, Kiaran6740_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Kiaran6740_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Kiaran6740_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Kiaran6740_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Kiaran6740_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, Kiaran6740_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, Kiaran6740_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, Kiaran6740_Act11)
   actFuncArr[13] = REGIST_FUNC(ai, goal, Kiaran6740_Act13)
   actFuncArr[14] = REGIST_FUNC(ai, goal, Kiaran6740_Act14)
   actFuncArr[15] = REGIST_FUNC(ai, goal, Kiaran6740_Act15)
   actFuncArr[16] = REGIST_FUNC(ai, goal, Kiaran6740_Act16)
   actFuncArr[17] = REGIST_FUNC(ai, goal, Kiaran6740_Act17)
   actFuncArr[20] = REGIST_FUNC(ai, goal, Kiaran6740_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Kiaran6740_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Kiaran6740_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 2
   local AttDist = NormalR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate2 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.4, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 55 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NomalL, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalL, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local AppDist = NormalL_max
   local DashDist = NormalL_max + 2
   local AttDist = NormalL_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate2 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, AttDist, 1.5, 90)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_Parry, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local AppDist = LargeL_max
   local DashDist = LargeL_max + 2
   local AttDist = LargeL_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate2 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Parry, TARGET_ENE_0, AttDist, 1.5, 90)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Parry, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Parry, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_Parry, TARGET_ENE_0, AttDist, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local AppDist = PushR_max
   local DashDist = PushR_max + 2
   local AttDist = PushR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 65 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, AttDist, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 2
   local AttDist = NormalR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_Parry, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      if UseItem_min <= targetDist then
         if not ai:HasSpecialEffectId(TARGET_ENE_0, 3151) and ai:GetNumber(1) <= 99 then
            ai:ChangeEquipItem(1)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
            ai:SetNumber(0, ai:GetNumber(1) + 1)
         else
            if ai:GetNumber(0) <= 99 then
               ai:ChangeEquipItem(0)
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
               ai:SetNumber(0, ai:GetNumber(0) + 1)
            else
            end
         else
         end
      end
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local AppDist = Rolling_Atk_max
   local DashDist = Rolling_Atk_max + 2
   local AttDist = Rolling_Atk_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 35 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 65 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_Parry, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 2
   local AttDist = NormalR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate2 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_Parry, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      if ai:GetNumber(0) <= 99 and UseItem_min <= targetDist then
         ai:ChangeEquipItem(0)
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 90, 90)
         ai:SetNumber(0, ai:GetNumber(0) + 1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kiaran6740_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist >= 6 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(5, 6), TARGET_SELF, false, -1)
   elseif targetDist <= 4 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(5, 6), TARGET_ENE_0, true, -1)
   else
   end
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.5, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, -1)
      GetWellSpace_Odds = 0
      return GetWellSpace_Odds
end

Kiaran6740_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local AppDist = LargeR_max
   local DashDist = LargeR_max + 2
   local AttDist = LargeR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate2 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kiaran6740_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 2
   local AttDist = NormalR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate2 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act13 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local AppDist = LargeL_max
   local DashDist = LargeL_max + 2
   local AttDist = LargeL_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate2 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act14 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local AppDist = PushR_max
   local DashDist = PushR_max + 2
   local AttDist = PushR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act15 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 2
   local AttDist = NormalR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      if UseItem_min <= targetDist then
         if not ai:HasSpecialEffectId(TARGET_ENE_0, 3151) and ai:GetNumber(1) <= 99 then
            ai:ChangeEquipItem(1)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
            ai:SetNumber(0, ai:GetNumber(1) + 1)
         else
            if ai:GetNumber(0) <= 99 then
               ai:ChangeEquipItem(0)
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
               ai:SetNumber(0, ai:GetNumber(0) + 1)
            else
            end
         else
         end
      end
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act16 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local AppDist = Rolling_Atk_max
   local DashDist = Rolling_Atk_max + 2
   local AttDist = Rolling_Atk_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act17 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 2
   local AttDist = NormalR_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate2 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, AttDist, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      if UseItem_min <= targetDist then
         if not ai:HasSpecialEffectId(TARGET_ENE_0, 3151) and ai:GetNumber(1) <= 99 then
            ai:ChangeEquipItem(1)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
            ai:SetNumber(0, ai:GetNumber(1) + 1)
         else
            if ai:GetNumber(0) <= 99 then
               ai:ChangeEquipItem(0)
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
               ai:SetNumber(0, ai:GetNumber(0) + 1)
            else
            end
         else
         end
      end
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act20 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local AppDist = UseItem_max
   local DashDist = UseItem_max + 2
   local AttDist = UseItem_max + 0.5
   local Odds_Guard = 0
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

Kiaran6740_ActAfter = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if targetDist <= 1.5 then
      if fate <= 65 then
         if fate2 <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
         elseif fate2 <= 85 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
            if fate3 <= 30 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
               if fate3 <= 30 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
               elseif fate <= 100 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                  do break end
               elseif targetDist <= 2.5 then
                  if fate <= 70 then
                     if fate2 <= 20 then
                        goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                     elseif fate2 <= 60 then
                        goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
                        if fate3 <= 30 then
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                        else
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
                           if fate3 <= 30 then
                              goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                           elseif fate <= 100 then
                              goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                              do break end
                           elseif targetDist <= 4 then
                              if fate <= 40 then
                                 goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                              elseif fate <= 70 then
                                 goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
                              elseif fate <= 90 then
                                 goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                                 do break end
                              elseif fate <= 40 then
                                 goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(1, 2), TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
                              elseif fate <= 80 then
                                 goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                              -- Tried to add an 'end' here but it's incorrect
                           end
                           -- Tried to add an 'end' here but it's incorrect
                        end
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
end

Kiaran6740_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

Kiaran6740Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kiaran6740Battle_Terminate = function(ai, goal)
end

Kiaran6740Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local FindATKDist = 3
      local FindATKPer = 65
      if targetDist <= FindATKDist and fate <= FindATKPer then
         goal:ClearSubGoal()
         if fate2 <= 15 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   do
      if ai:IsInterupt(INTERUPT_Damaged) then
         local combRunDist = 3
         local combRunPer = 65
         if targetDist < combRunDist then
            if fate <= combRunPer then
               goal:ClearSubGoal()
               if fate2 <= 40 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
               end
               -- Tried to add an 'end' here but it's incorrect
               return true
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
            end
            local distUseItem_Act = 10
            local oddsUseItem_Act = 100
            if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
               local AppDist = UseItem_max
               local DashDist = UseItem_max + 2
               local AttDist = UseItem_max + 0.5
               local Odds_Guard = 0
               goal:ClearSubGoal()
               if targetDist <= 4.5 then
                  CommonNPC_SwitchBothHandMode(ai, goal)
                  goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1.5, TARGET_SELF, false, -1)
                  goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, AttDist, 1.5, 90)
               --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end


