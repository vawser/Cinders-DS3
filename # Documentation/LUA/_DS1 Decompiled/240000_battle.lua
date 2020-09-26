REGISTER_GOAL(GOAL_Assassin240000_Battle, "Assassin240000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1.7
local Att3002_Dist_min = 0
local Att3002_Dist_max = 2.5
local Att3004_Dist_min = 0
local Att3004_Dist_max = 0.8
local Att3005_Dist_min = 2
local Att3005_Dist_max = 4.1
local Att3006_Dist_min = 1
local Att3006_Dist_max = 2.1
local Att3007_Dist_min = 4
local Att3007_Dist_max = 5.1
local Att3008_Dist_min = 0
local Att3008_Dist_max = 1.7
local Att3011_Dist_min = 5
local Att3011_Dist_max = 15
REGISTER_GOAL_NO_UPDATE(GOAL_Assassin240000_Battle, 1)
OnIf_240000 = function(ai, goal, codeNo)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

Assassin240000Battle_Activate = function(ai, goal)
   local ObserveNo = 0
   local BackstabDist = 5
   local BackstabAng = 30
   ObserveAreaForBackstab(ai, goal, ObserveNo, BackstabDist, BackstabAng)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   if ai:IsLadderAct(TARGET_SELF) then
      actPerArr[15] = 100
   elseif hprate <= 0.4 and ai:IsFinishTimer(0) == true then
      if targetDist >= 4.5 then
         actPerArr[7] = 300
      elseif targetDist >= 3 then
         actPerArr[7] = 100
      else
         actPerArr[7] = 50
      end
   end
   if ai:IsLadderAct(TARGET_SELF) then
      actPerArr[15] = 100
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5401) and hprate <= 0.5 and ai:IsFinishTimer(1) == true then
      actPerArr[11] = 100
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) and hprate >= 0.5 and ai:IsFinishTimer(1) == true then
      actPerArr[12] = 100
   elseif targetDist >= 8 then
      actPerArr[1] = 10
      actPerArr[2] = 5
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 80
      actPerArr[6] = 0
      actPerArr[8] = 0
      actPerArr[9] = 0
      actPerArr[10] = 5
   elseif targetDist >= 5 then
      if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
         actPerArr[4] = 5
         -- Tried to add an 'end' here but it's incorrect
         actPerArr[1] = 40
         actPerArr[2] = 10
         actPerArr[3] = 0
         actPerArr[5] = 15
         actPerArr[6] = 0
         actPerArr[8] = 0
         actPerArr[9] = 10
         actPerArr[10] = 25
      elseif targetDist >= 3 then
         if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
            actPerArr[4] = 20
            -- Tried to add an 'end' here but it's incorrect
            actPerArr[1] = 25
            actPerArr[2] = 35
            actPerArr[3] = 0
            actPerArr[5] = 0
            actPerArr[6] = 10
            actPerArr[8] = 0
            actPerArr[9] = 30
            actPerArr[10] = 0
         elseif ai:HasSpecialEffectId(TARGET_SELF, 5401) then
            actPerArr[4] = 15
            actPerArr[1] = 0
            actPerArr[2] = 40
            actPerArr[3] = 20
            actPerArr[5] = 0
            actPerArr[6] = 20
            actPerArr[8] = 0
            actPerArr[9] = 20
            actPerArr[10] = 0
         end
         actFuncArr[1] = REGIST_FUNC(ai, goal, Assassin240000_Act01)
         actFuncArr[2] = REGIST_FUNC(ai, goal, Assassin240000_Act02)
         defFuncParamTbl[3] = {Att3004_Dist_max, 0, 3004, DIST_Middle}
         actFuncArr[4] = REGIST_FUNC(ai, goal, Assassin240000_Act04)
         actFuncArr[5] = REGIST_FUNC(ai, goal, Assassin240000_Act05)
         actFuncArr[6] = REGIST_FUNC(ai, goal, Assassin240000_Act06)
         actFuncArr[7] = REGIST_FUNC(ai, goal, Assassin240000_Act07)
         actFuncArr[9] = REGIST_FUNC(ai, goal, Assassin240000_Act09)
         actFuncArr[10] = REGIST_FUNC(ai, goal, Assassin240000_Act10)
         actFuncArr[11] = REGIST_FUNC(ai, goal, Assassin240000_Act11)
         actFuncArr[12] = REGIST_FUNC(ai, goal, Assassin240000_Act12)
         actFuncArr[15] = REGIST_FUNC(ai, goal, Assassin240000_Act15)
         local atkAfterFunc = REGIST_FUNC(ai, goal, Assassin240000_ActAfter_AdjustSpace, atkAfterOddsTbl)
         Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Assassin240000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 100
   local AttID = 3005
   local AttDist = DIST_Middle
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      Odds_Guard = 100
   else
      Odds_Guard = 0
   end
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Assassin240000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      Odds_Guard = 100
   else
      Odds_Guard = 0
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Assassin240000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 2
   local Odds_Guard = 0
   local AttID = 3008
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Assassin240000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local LeaveDist = Att3011_Dist_min
   local AppDist = Att3011_Dist_max
   local DashDist = Att3011_Dist_max + 2
   local Odds_Guard = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      Odds_Guard = 100
   else
      Odds_Guard = 0
   end
   Approach_or_Leave_Act(ai, goal, LeaveDist, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3011, TARGET_ENE_0, DIST_None)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      Odds_Guard = 100
   else
      Odds_Guard = 0
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act07 = function(ai, goal, paramTbl)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 40 then
      if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
      end
   elseif fate <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 2.5)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   end
   -- Tried to add an 'end' here but it's incorrect
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      Odds_Guard = 100
   else
      Odds_Guard = 0
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Assassin240000_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 2
   local Odds_Guard = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      Odds_Guard = 100
   else
      Odds_Guard = 0
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3007, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act11 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
   ai:SetTimer(1, 30)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act12 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_SELF, DIST_None)
   ai:SetTimer(1, 30)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act15 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      Odds_Guard = 100
   else
      Odds_Guard = 0
   end
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
end

Assassin240000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 40 then
   elseif fate <= 55 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
      return true
   elseif fate <= 85 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
      return true
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   else
   end
      return true
      return false
end

Assassin240000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Assassin240000Battle_Terminate = function(ai, goal)
end

Assassin240000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local superStepDist = 3
   local superStepPer = 25
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 35
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local guardBreakConutDist = 1.7
   local guardBreakConutPer = 25
   if FindGuardBreak_Act(ai, goal, guardBreakConutDist, guardBreakConutPer) then
      local AppDist = Att3002_Dist_max
      local DashDist = Att3002_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3002
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      return true
   end
   local distMissSwing_Int = 4.1
   local oddsMissSwing_Int = 50
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist >= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local ParryDist = 3
   local ParryAng = 60
   local ParryThrowDist = 4
   local ParryThrowAng = 60
   if Parry_Act(ai, goal, ParryDist, ParryAng, ParryThrowDist, ParryThrowAng) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   end
   local ObserveNo = 0
   local ApproachDist = 1
   local TimerIndex = 0
   local Time = 20
   if Backstab_Act(ai, goal, ObserveNo, ApproachDist, TimerIndex, Time) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   end
   local distResNear = 3
   local distResFar = 30
   local oddsResNear = 60
   local oddsResFar = 70
   do
      if ai:IsFinishTimer(1) then
         if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
            local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
            if ResBehavID == 1 then
               if fate <= 10 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               elseif fate <= 55 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               end
               return true
            elseif ResBehavID == 2 then
               if fate <= 10 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               elseif fate <= 55 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               end
               return true
            end
            return true
            -- Tried to add an 'end' here but it's incorrect
         end
         return true
         -- Tried to add an 'end' here but it's incorrect
         local oddsResponse = 35
         local bkStepPer = 40
         local leftStepPer = 30
         local rightStepPer = 30
         local safetyDist = 4
         if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
            return true
         end
         local distSuccessGuard_Act = 4.1
         local oddsSuccessGuard_Act = 60
         if SuccessGuard_Act(ai, goal, distSuccessGuard_Act, oddsSuccessGuard_Act) then
            if targetDist >= 2 then
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
            end
            return true
         end
         return false
end


