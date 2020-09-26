REGISTER_GOAL(GOAL_PondAunt6530_Battle, "PondAunt6530Battle")
local NormalR_min = 0
local NormalR_max = 1.6
local LargeR_min = 0
local LargeR_max = 3
local Whand_jyaku_min = 0
local Whand_jyaku_max = 1.6
local Whand_kyou_min = 0
local Whand_kyou_max = 1
local PushR_min = 0
local PushR_max = 1.1
local Magic_min = 5
local Magic_max = 10
local Backstep_Atk_min = 0
local Backstep_Atk_max = 1
local Rolling_Atk_min = 4
local Rolling_Atk_max = 5
REGISTER_GOAL_NO_UPDATE(GOAL_PondAunt6530_Battle, 1)
PondAunt6530Battle_Activate = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local playerDist = ai:GetDist(TARGET_LOCALPLAYER)
   local isFindTarget = ai:IsSearchTarget(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(0)
   local myThinkId = ai:GetNpcThinkParamID()
   local selfmp = ai:GetMp(TARGET_SELF)
   local PointFrontWall = 0
   if myThinkId == 6530 then
      PointFrontOfWall = 1402997
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
   elseif playerDist >= 20 or targetDist >= 10 or isFindTarget == false then
      local walk = true
      if playerDist >= 2.2 then
         walk = false
      end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, walk, -1)
   else
      PondAunt6530_Battle(ai, goal)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

PondAunt6530_Battle = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BothHandOff = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local MagicValue = 1
   local Magic1Limit = ai:GetNumber(0)
   if Magic1Limit >= 5 then
      MagicValue = 0
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == false and ai:IsBothHandMode(TARGET_SELF) and BothHandOff <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if targetDist >= 8 then
      actPerArr[1] = 10
      actPerArr[3] = 15
      actPerArr[7] = 20
      actPerArr[9] = 50
      actPerArr[10] = 5
   elseif targetDist >= 5 then
      actPerArr[1] = 15
      actPerArr[3] = 15
      actPerArr[7] = 15
      actPerArr[9] = 50
      actPerArr[10] = 5
   elseif targetDist >= 2.9 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 10
         actPerArr[3] = 25
         actPerArr[9] = 50
         actPerArr[4] = 15
      else
         actPerArr[1] = 10
         actPerArr[3] = 20
         actPerArr[4] = 15
         actPerArr[9] = 50
         actPerArr[10] = 5
      end
   elseif targetDist >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actPerArr[1] = 10
         actPerArr[3] = 20
         actPerArr[4] = 10
         actPerArr[6] = 10
         actPerArr[9] = 50
      else
         actPerArr[1] = 15
         actPerArr[3] = 20
         actPerArr[6] = 15
         actPerArr[9] = 50
         actPerArr[10] = 5
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      actPerArr[1] = 10
      actPerArr[3] = 20
      actPerArr[4] = 10
      actPerArr[6] = 10
      actPerArr[9] = 50
   else
      actPerArr[1] = 15
      actPerArr[3] = 20
      actPerArr[6] = 10
      actPerArr[9] = 50
      actPerArr[10] = 5
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, PondAunt6530_Act01)
   actFuncArr[3] = REGIST_FUNC(ai, goal, PondAunt6530_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, PondAunt6530_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, PondAunt6530_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, PondAunt6530_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, PondAunt6530_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, PondAunt6530_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, PondAunt6530_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, PondAunt6530_Act10)
   local atkAfterFunc = REGIST_FUNC(ai, goal, PondAunt6530_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

PondAunt6530_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local AppDist = NormalR_max
   local DashDist = NormalR_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt6530_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local AppDist = LargeR_max
   local DashDist = LargeR_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   return GetWellSpace_Odds
end

PondAunt6530_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = PushR_max
   local DashDist = PushR_max + 5
   local Odds_Guard = 100
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

PondAunt6530_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local R_Wep = ai:GetWepCateRight(TARGET_SELF)
   local Magic1Limit = ai:GetNumber(0)
   CommonNPC_ChangeWepR2(ai, goal)
   if Magic_max <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, Magic_max, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   elseif targetDist <= Magic_min then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, Magic_min, TARGET_ENE_0, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   ai:SetNumber(0, Magic1Limit + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt6530_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local AppDist = Backstep_Atk_max
   local DashDist = Backstep_Atk_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt6530_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local AppDist = Rolling_Atk_max
   local DashDist = Rolling_Atk_max + 5
   local Odds_Guard = 50
   NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt6530_Act08 = function(ai, goal, paramTbl)
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

PondAunt6530_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt6530_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt6530_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
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
   elseif fate <= 15 then
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

PondAunt6530Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

PondAunt6530Battle_Terminate = function(ai, goal)
end

PondAunt6530Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local myThinkId = ai:GetNpcThinkParamID()
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
      if myThinkId == 6530 then
         local combRunDist = 5
         local combRunPer = 80
         if targetDist < combRunDist and fate <= combRunPer then
            goal:ClearSubGoal()
            if fate <= 60 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
            end
         else
            local combRunDist = 3
            local combRunPer = 10
            if targetDist < combRunDist and fate <= combRunPer then
               goal:ClearSubGoal()
               if fate <= 60 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
               end
            end
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         if ai:IsInterupt(INTERUPT_GuardBreak) then
            local distGuardBreak_Act = 2
            local oddsGuardBreak_Act = 80
            if targetDist <= distGuardBreak_Act and fate <= oddsGuardBreak_Act then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
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
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
               else
                  local AppDist = LargeR_max
                  local DashDist = LargeR_max + 5
                  local Odds_Guard = 100
                  NPC_Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
                  goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
               end
               return true
            end
         end
         return false
end


