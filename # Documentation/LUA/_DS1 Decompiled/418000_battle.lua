REGISTER_GOAL(GOAL_Chainman418000_Battle, "Chainman418000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.5
local Att3002_Dist_min = 0
local Att3002_Dist_max = 3
local Att3004_Dist_min = 3
local Att3004_Dist_max = 5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 2.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 3
local Att3007_Dist_min = 0
local Att3007_Dist_max = 1.5
local Att3008_Dist_min = 0
local Att3008_Dist_max = 2.5
REGISTER_GOAL_NO_UPDATE(GOAL_Chainman418000_Battle, 1)
OnIf_418000 = function(ai, goal, codeNo)
   if codeNo == 0 then
      Chainman418000_ActAfter(ai, goal)
   end
end

Chainman418000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = 1
   ai:SetNumber(0, 0)
   if targetDist <= 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and fate <= 70 then
      actPerArr[4] = 100
   elseif targetDist >= 7 then
      actPerArr[1] = 15
      actPerArr[2] = 15
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 70
      actPerArr[6] = 0
      actPerArr[7] = 0
   elseif targetDist >= 4 then
      actPerArr[1] = 25
      actPerArr[2] = 30
      actPerArr[3] = 15
      actPerArr[4] = 10
      actPerArr[5] = 20
      actPerArr[6] = 0
      actPerArr[7] = 0
   elseif targetDist >= 2 then
      actPerArr[1] = 20
      actPerArr[2] = 20
      actPerArr[3] = 20
      actPerArr[4] = 15
      actPerArr[5] = 0
      actPerArr[6] = 10
      actPerArr[7] = 15
   else
      actPerArr[1] = 15
      actPerArr[2] = 10
      actPerArr[3] = 15
      actPerArr[4] = 15
      actPerArr[5] = 0
      actPerArr[6] = 30
      actPerArr[7] = 15
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Chainman418000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Chainman418000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Chainman418000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, Chainman418000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Chainman418000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Chainman418000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Chainman418000_Act07)
   actFuncArr[10] = REGIST_FUNC(ai, goal, Chainman418000_Act10)
   local atkAfterFunc = REGIST_FUNC(ai, goal, Chainman418000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Chainman418000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max + 0
   local DashDist = Att3000_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3000_Dist_max + 10
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local hprate = ai:GetHpRate(TARGET_ENE_0)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 70)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, AttDist, 0, 70)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist, 0)
   end
   if targetDist_F <= 15 and targetDist_F >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Chainman418000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max + 0
   local DashDist = Att3005_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3005_Dist_max + 10
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local hprate = ai:GetHpRate(TARGET_ENE_0)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, 70)
   elseif fate <= 45 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist, 0)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AttDist, 0)
   end
   if targetDist_F <= 15 and targetDist_F >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Chainman418000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max + 0
   local DashDist = Att3002_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3002_Dist_max + 10
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate2 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 70)
   elseif fate2 <= 60 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 70)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
      elseif fate <= 75 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 70)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 70)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist, 0)
      end
   elseif fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   if targetDist_F <= 15 and targetDist_F >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 50
   end
   return GetWellSpace_Odds
end

Chainman418000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max + 0
   local DashDist = Att3006_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3006_Dist_max + 10
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 0, 70)
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist, 0)
   end
   if targetDist_F <= 15 and targetDist_F >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

Chainman418000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max + 0
   local DashDist = Att3004_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3004_Dist_max + 10
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local hprate = ai:GetHpRate(TARGET_ENE_0)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 2, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 2, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0)
   end
   if targetDist_F <= 15 and targetDist_F >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Chainman418000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max + 0
   local DashDist = Att3007_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3007_Dist_max + 10
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 0 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3007, TARGET_ENE_0, AttDist, 0, 20)
   elseif fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3007, TARGET_ENE_0, AttDist, 0, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3007, TARGET_ENE_0, AttDist, 0, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3007, TARGET_ENE_0, AttDist, 0, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, AttDist, 0)
   end
   if targetDist_F <= 15 and targetDist_F >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 50
   end
   return GetWellSpace_Odds
end

Chainman418000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3008_Dist_max + 0
   local DashDist = Att3008_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3008_Dist_max + 10
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 70)
   elseif fate <= 35 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, AttDist, 0)
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist, 0)
   elseif fate <= 65 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0)
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, AttDist, 0)
   end
   if targetDist_F <= 15 and targetDist_F >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

Chainman418000_Act10 = function(ai, goal, paramTbl)
   ai:SetEventMoveTarget(1212651)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 1, TARGET_SELF, true, -1)
end

Chainman418000_ActAfter = function(ai, goal)
   local GW_fate = ai:GetRandam_Int(1, 100)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   local GW_time = ai:GetRandam_Int(4, 10)
   local GW_angle = ai:GetRandam_Int(60, 90)
   if targetDist_F <= 3 and targetDist_F >= 0 then
      if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 100) then
         if fate <= 80 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, GW_time, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
         elseif fate <= 90 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 1, GW_angle, true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 0, GW_angle, true, true, -1)
         end
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_B, 100) then
         if fate <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, GW_time, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
         elseif fate <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 1, GW_angle, true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 0, GW_angle, true, true, -1)
         end
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
         if fate <= 20 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, GW_time, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
         elseif fate <= 90 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 1, GW_angle, true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 0, GW_angle, true, true, -1)
         end
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
         if fate <= 20 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, GW_time, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
         elseif fate <= 30 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 1, GW_angle, true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 0, GW_angle, true, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, GW_time, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      end
   elseif targetDist <= 2 then
      if fate <= 0 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, GW_angle, true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
      end
   elseif targetDist <= 5 then
      if fate <= 30 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, GW_angle, true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      end
   elseif targetDist <= 10 then
      if fate <= 80 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, GW_angle, true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
      end
   elseif fate <= 100 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, GW_angle, true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
end

Chainman418000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

Chainman418000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Chainman418000Battle_Terminate = function(ai, goal)
end

Chainman418000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1212650) and ai:IsInterupt(INTERUPT_HitEnemyWall) then
      goal:ClearSubGoal()
      ai:SetEventMoveTarget(1212651)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 1, TARGET_ENE_0, true, -1)
      ai:SetNumber(0, 1)
      return true
   end
   if ai:IsInterupt(INTERUPT_Damaged) and ai:GetNumber(0) == 1 then
      goal:ClearSubGoal()
      ai:Replaning()
      return false
   elseif ai:IsInterupt(INTERUPT_Damaged) and fate <= 40 then
      goal:ClearSubGoal()
      ai:Replaning()
      return false
   end
   local distUseItem_Act = 10
   local oddsUseItem_Act = 10
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      goal:ClearSubGoal()
      if targetDist <= 3 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3005, TARGET_ENE_0, DIST_None, 0, 70)
      elseif targetDist <= 5 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, DIST_None, 0, 70)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
      end
      return true
   end
   local distResNear = 4
   local distResFar = 20
   local oddsResNear = 40
   local oddsResFar = 70
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3000, TARGET_ENE_0, DIST_None, 0, 70)
      return true
   elseif ResBehavID == 2 then
      if targetDist <= 5 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, DIST_None, 2, 20)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
      end
      return true
   end
   return false
end


