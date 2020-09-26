REGISTER_GOAL(GOAL_Roaming_Chaos6170_Battle, "Roaming_Chaos6170Battle")
local PushR_min = 0
local PushR_max = 1
local NormalR2_min = 0
local NormalR2_max = 1
local LargeR2_min = 0
local LargeR2_max = 1.1
local Backstep_Atk2_min = 0
local Backstep_Atk2_max = 1
local Magic_min = 7
local Magic_max = 7
local Magic2_min = 4
local Magic2_max = 4
local Magic3_min = 1.5
local Magic3_max = 1.5
REGISTER_GOAL_NO_UPDATE(GOAL_Roaming_Chaos6170_Battle, 1)
Roaming_Chaos6170Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BothHandOff = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 4 then
      actPerArr[18] = 30
      actPerArr[19] = 50
      actPerArr[20] = 20
   elseif targetDist >= 1 then
      actPerArr[18] = 35
      actPerArr[19] = 30
      actPerArr[20] = 35
   else
      actPerArr[18] = 30
      actPerArr[19] = 30
      actPerArr[20] = 40
   end
   actFuncArr[18] = REGIST_FUNC(ai, goal, Roaming_Chaos6170_Act18)
   actFuncArr[19] = REGIST_FUNC(ai, goal, Roaming_Chaos6170_Act19)
   actFuncArr[20] = REGIST_FUNC(ai, goal, Roaming_Chaos6170_Act20)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Roaming_Chaos6170_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Roaming_Chaos6170_Act18 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(0)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic_max, TARGET_SELF, false, -1)
   elseif targetDist <= Magic_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic_min, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Roaming_Chaos6170_Act19 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(1)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic2_max, TARGET_SELF, false, -1)
   elseif targetDist <= Magic_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic2_min, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Roaming_Chaos6170_Act20 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Magic3_max, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Roaming_Chaos6170_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
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
   elseif fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif fate <= 50 then
      if fate2 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Roaming_Chaos6170Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Roaming_Chaos6170Battle_Terminate = function(ai, goal)
end

Roaming_Chaos6170Battle_Interupt = function(ai, goal)
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


