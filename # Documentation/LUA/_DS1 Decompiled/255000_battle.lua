REGISTER_GOAL(GOAL_HusiHeavy_Spear255000_Battle, "HusiHeavy_Spear255000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.8
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2
local Att3005_Dist_min = 2.5
local Att3005_Dist_max = 4.4
local Att3007_Dist_min = 0
local Att3007_Dist_max = 3.15
local Att3008_Dist_min = 2.5
local Att3008_Dist_max = 4.5
local Att3009_Dist_min = 0
local Att3009_Dist_max = 1.8
REGISTER_GOAL_NO_UPDATE(GOAL_HusiHeavy_Spear255000_Battle, 1)
OnIf_255000 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if codeNo == 0 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         if fate <= 20 and targetDist <= 2.8 then
            local AppDist = Att3009_Dist_max
            local DashDist = Att3009_Dist_max + 2
            local Odds_Guard = 100
            Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
            goal:AddSubGoal(GOAL_COMMON_GuardBreakAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3007_Dist_max, TARGET_SELF, true, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         end
      elseif targetDist >= 4.4 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
      elseif targetDist >= 2.8 then
         if fate <= 30 then
            if fate2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         end
      elseif targetDist >= 1.5 then
         if fate <= 60 then
            if fate2 <= 30 then
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            elseif fate2 <= 70 then
               goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
               goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         end
      elseif fate <= 95 then
         if fate2 <= 20 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif fate2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
      end
   elseif codeNo == 1 then
      if targetDist >= 2.5 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif fate <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      elseif fate <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif codeNo == 2 then
      if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
         ai:SetTimer(1, 120)
      else
         ai:SetTimer(1, 30)
      end
   end
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

HusiHeavy_Spear255000Battle_Activate = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local Berserk = ai:GetTimer(0)
   local est = ai:GetTimer(1)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   if hprate <= 0.4 and ai:IsFinishTimer(1) == true then
      if targetDist >= 8 then
         Act06Per = 200
      elseif targetDist >= 2.5 then
         Act06Per = 100
      else
         Act06Per = 50
      end
   end
   if Berserk <= 0 then
      Act01Per = 100
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      if targetDist >= 8 then
         Act02Per = 30
         Act03Per = 30
         Act04Per = 40
         Act05Per = 0
      elseif targetDist >= 2.5 then
         Act02Per = 35
         Act03Per = 35
         Act04Per = 20
         Act05Per = 10
      else
         Act02Per = 40
         Act03Per = 40
         Act04Per = 0
         Act05Per = 20
      end
   elseif targetDist >= 8 then
      Act02Per = 25
      Act03Per = 15
      Act04Per = 60
      Act05Per = 0
   elseif targetDist >= 2.5 then
      Act02Per = 30
      Act03Per = 50
      Act04Per = 20
      Act05Per = 0
   else
      Act02Per = 40
      Act03Per = 60
      Act04Per = 0
      Act05Per = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 100
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per)
      if fateAct <= Act01Per then
         local fateLeave = ai:GetRandam_Int(1, 100)
         if targetDist >= 4.5 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(3, 4), TARGET_SELF, true, 9910)
         elseif targetDist <= 1.5 and fateLeave <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 9910)
         elseif targetDist <= 0.5 and fateLeave <= 90 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 9910)
         end
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
      elseif fateAct <= Act01Per + Act02Per then
         local AppDist = Att3003_Dist_max
         local DashDist = Att3003_Dist_max + 0
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate <= 25 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 60)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 60)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
         HusiHeavy_Spear255000_AfterAttackAct01(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         local AppDist = Att3007_Dist_max
         local DashDist = Att3007_Dist_max + 0
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 15)
         HusiHeavy_Spear255000_AfterAttackAct01(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
         local AppDist = Att3007_Dist_max
         local DashDist = Att3007_Dist_max + 0
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, -1, 30)
         HusiHeavy_Spear255000_AfterAttackAct01(ai, goal)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
         local AppDist = Att3009_Dist_max
         local DashDist = Att3009_Dist_max + 0
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_GuardBreakAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3007_Dist_max, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         HusiHeavy_Spear255000_AfterAttackAct01(ai, goal)
      elseif fate <= 40 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
      end
      goal:AddSubGoal(GOAL_COMMON_If, 15, 2)
   end
end

HusiHeavy_Spear255000_AfterAttackAct01 = function(ai, goal)
   local Odds_Guard = 0
   local Odds_NoAct = 85
   local Odds_BackAndSide = 0
   local Odds_Back = 0
   local Odds_BitWait = 0
   local Odds_Backstep = 5
   local Odds_Sidestep = 10
   GetWellSpace_Act_IncludeSidestep(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep, Odds_Sidestep)
end

HusiHeavy_Spear255000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiHeavy_Spear255000Battle_Terminate = function(ai, goal)
end

HusiHeavy_Spear255000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   if ai:IsInterupt(INTERUPT_Damaged) then
      local Berserk = ai:GetTimer(0)
      if hprate >= 0.15 and hprate <= 0.9 then
         goal:ClearSubGoal()
         ai:SetTimer(0, 11)
         goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF)
         return true
      elseif targetDist <= 3 and fate <= 40 then
         goal:ClearSubGoal()
         local Odds_Guard = 100
         local Odds_NoAct = 0
         local Odds_BackAndSide = 30
         local Odds_Back = 40
         local Odds_BitWait = 0
         local Odds_Backstep = 15
         local Odds_Sidestep = 15
         GetWellSpace_Act_IncludeSidestep(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep, Odds_Sidestep)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local Berserk = ai:GetTimer(0)
      if Berserk <= 0 and targetDist <= 4.4 and fate <= 50 then
         goal:ClearSubGoal()
         if targetDist >= 2.5 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         elseif fate <= 30 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif fate <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
   end
   local distResponse = 3
   local oddsResponse = 15
   local oddsStep = 30
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   local oddsLeaveAndSide = 50
   local timeSide = 3.5
   local distLeave = 2.5
   if FindAttack_Step_or_Guard(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave) then
      return true
   end
   local distMissSwing_Int = 4.4
   local oddsMissSwing_Int = 30
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 12
   local distResFar = 20
   local oddsResNear = 0
   local oddsResFar = 30
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif ResBehavID == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   end
   local oddsResponse = 20
   local bkStepPer = 40
   local leftStepPer = 30
   local rightStepPer = 30
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


