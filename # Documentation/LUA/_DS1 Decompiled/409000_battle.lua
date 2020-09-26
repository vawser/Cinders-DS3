REGISTER_GOAL(GOAL_SniperA409000_Battle, "SniperA409000Battle")
local Att3006_Dist_min = 0
local Att3006_Dist_max = 2
REGISTER_GOAL_NO_UPDATE(GOAL_SniperA409000_Battle, 1)
OnIf_409000 = function(ai, goal, codeNo)
   if codeNo == 0 then
      SniperA409000_ActAfter(ai, goal)
   end
   if codeNo == 1 then
      SniperA409000_KickAfter(ai, goal)
   end
end

SniperA409000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 6, 6)
   ai:SetNumber(0, 0)
   if ai:IsFinishTimer(0) == true then
      ai:SetNumber(1, 0)
   end
   if targetDist >= 20 then
      actPerArr[1] = 60
      actPerArr[2] = 40
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 0
   elseif targetDist >= 12 then
      actPerArr[1] = 50
      actPerArr[2] = 30
      actPerArr[3] = 0
      actPerArr[4] = 20
      actPerArr[5] = 0
   elseif targetDist >= 7 then
      actPerArr[1] = 30
      actPerArr[2] = 30
      actPerArr[3] = 10
      actPerArr[4] = 30
      actPerArr[5] = 0
   elseif targetDist >= 2.5 then
      actPerArr[1] = 15
      actPerArr[2] = 30
      actPerArr[3] = 15
      actPerArr[4] = 20
      actPerArr[5] = 20
   else
      actPerArr[1] = 0
      actPerArr[2] = 30
      actPerArr[3] = 30
      actPerArr[4] = 0
      actPerArr[5] = 40
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, SniperA409000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, SniperA409000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, SniperA409000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, SniperA409000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, SniperA409000_Act05)
   local atkAfterFunc = REGIST_FUNC(ai, goal, SniperA409000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

SniperA409000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local FirstAttID = 3000
   local ComAttID = 3001
   local ShootNum = ai:GetRandam_Int(1, 1)
   local AppDist = 45
   local DashDist = 45
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 5)
   end
   if targetDist >= 15 then
      ShootNum = ai:GetRandam_Int(1, 5)
   elseif targetDist >= 10 then
      ShootNum = ai:GetRandam_Int(1, 4)
   elseif targetDist >= 7 then
      ShootNum = ai:GetRandam_Int(1, 3)
   elseif targetDist >= 4 then
      ShootNum = ai:GetRandam_Int(1, 2)
   else
      ShootNum = ai:GetRandam_Int(1, 1)
   end
   ai:SetNumber(0, 1)
   Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local FirstAttID = 3002
   local ComAttID = 3003
   local ShootNum = ai:GetRandam_Int(1, 1)
   local AppDist = 45
   local DashDist = 45
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 5)
   end
   if targetDist >= 15 then
      ShootNum = ai:GetRandam_Int(3, 5)
   elseif targetDist >= 10 then
      ShootNum = ai:GetRandam_Int(2, 4)
   elseif targetDist >= 7 then
      ShootNum = ai:GetRandam_Int(2, 3)
   elseif targetDist >= 4 then
      ShootNum = ai:GetRandam_Int(1, 2)
   else
      ShootNum = ai:GetRandam_Int(1, 1)
   end
   ai:SetNumber(0, 1)
   Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_Act03 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 8 then
      if fate <= 30 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif fate <= 65 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
   elseif targetDist >= 4 then
      if fate <= 40 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif fate <= 70 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = 8
   local DashDist = 10
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_NONE, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_NONE, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_NONE, 0)
   end
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = 2.5
   local DashDist = 2
   local Odds_Guard = 0
   local AttDist = Att3006_Dist_max
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, AttDist, 0, 50)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_KickAfter = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 2 then
      if fate <= 20 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_None, 0)
      elseif fate <= 40 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif fate <= 70 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
      end
   elseif targetDist <= 5 then
      if fate <= 20 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_None, 0)
      elseif fate <= 40 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif fate <= 60 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
      end
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

SniperA409000_ActAfter = function(ai, goal)
   local GW_fate = ai:GetRandam_Int(1, 100)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist <= 3 then
      if GW_fate <= 80 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif GW_fate <= 100 then
         if fate <= 0 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif targetDist <= 7 then
      if GW_fate <= 65 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif GW_fate <= 90 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif targetDist <= 10 then
      if GW_fate <= 25 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif GW_fate <= 80 then
         if fate <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif GW_fate <= 0 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
   elseif GW_fate <= 75 then
      if fate <= 100 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 60), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, -1, 50)
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
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

SniperA409000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

SniperA409000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

SniperA409000Battle_Terminate = function(ai, goal)
end

SniperA409000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_Damaged) and fate <= 100 and targetDist <= 5 then
      goal:ClearSubGoal()
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 5.5) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 5) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 5) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 2, 3006, TARGET_ENE_0, DIST_None, 0)
      end
      return false
   end
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:GetNumber(0) == 1 then
      ai:SetNumber(0, 0)
      if fate <= 30 and targetDist > 3 then
         goal:ClearSubGoal()
         if fate2 <= 60 then
            if fate3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
            elseif fate3 <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         elseif fate3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         elseif fate3 <= 75 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
      elseif fate <= 40 and targetDist <= 3 then
         goal:ClearSubGoal()
         if fate2 <= 50 then
            if fate3 <= 60 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
            elseif fate3 <= 80 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         elseif fate3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 2, 3006, TARGET_ENE_0, DIST_None, 0)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
   end
   local distUseItem_Act = 20
   local oddsUseItem_Act = 30
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      local AtkDist1 = Att3006_Dist_max
      goal:ClearSubGoal()
      if targetDist <= 2 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3006, TARGET_ENE_0, AtkDist1, -1, 50)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3002, TARGET_ENE_0, DIST_NONE, -1, 50)
      end
      return true
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      ai:SetNumber(1, 1)
      ai:SetTimer(0, 3)
   end
   if ai:GetNumber(1) == 1 and ai:IsInterupt(INTERUPT_Damaged) and targetDist >= 10 then
      goal:ClearSubGoal()
      ai:SetNumber(1, 0)
      Approach_Act(ai, goal, targetDist - 5, 0, 0, 4)
      return true
   elseif ai:GetNumber(1) == 1 and ai:IsInterupt(INTERUPT_Damaged) and targetDistY <= -0.5 then
      goal:ClearSubGoal()
      ai:SetNumber(1, 0)
      Approach_Act(ai, goal, targetDist - 4, 0, 0, 3)
      return true
   end
   local distResNear = 10
   local distResFar = 50
   local oddsResNear = 50
   local oddsResFar = 70
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:ClearSubGoal()
      if fate <= 70 then
         if fate2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   elseif ResBehavID == 2 then
      goal:ClearSubGoal()
      if fate <= 30 then
         if fate2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   return false
end


