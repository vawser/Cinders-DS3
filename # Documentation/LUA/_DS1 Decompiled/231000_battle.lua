REGISTER_GOAL(GOAL_Kyochojin231000_Battle, "Kyochojin231000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.3
local Att3003_Dist_min = 5.4
local Att3003_Dist_max = 8
local Att3005_Dist_min = 0
local Att3005_Dist_max = 5.1
local Att3006_Dist_min = 0
local Att3006_Dist_max = 23
REGISTER_GOAL_NO_UPDATE(GOAL_Kyochojin231000_Battle, 1)
OnIf_231000 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest(0)
   if codeNo == 1 then
      ai:SetEventMoveTarget(1102714)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, POINT_EVENT, DIST_Middle, 0)
   elseif codeNo == 2 then
      ai:SetEventMoveTarget(1102715)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3015, POINT_EVENT, DIST_Middle, 0)
   elseif codeNo == 3 then
      ai:SetEventMoveTarget(1102711)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3016, POINT_EVENT, DIST_Middle, 0)
   elseif codeNo == 4 then
      ai:SetEventMoveTarget(1102710)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3017, POINT_EVENT, DIST_Middle, 0)
   elseif codeNo == 5 then
      ai:SetEventMoveTarget(1102713)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3018, POINT_EVENT, DIST_Middle, 0)
   elseif codeNo == 6 then
      ai:SetEventMoveTarget(1102712)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3019, POINT_EVENT, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Kyochojin231000Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest(0)
   local GetWellSpace_Odds = 0
   ai:AddObserveRegion(0, TARGET_SELF, 1102020)
   ai:AddObserveRegion(1, TARGET_SELF, 1102030)
   ai:AddObserveRegion(2, TARGET_SELF, 1102040)
   ai:AddObserveRegion(3, TARGET_SELF, 1102050)
   ai:AddObserveRegion(4, TARGET_ENE_0, 1102020)
   ai:AddObserveRegion(5, TARGET_ENE_0, 1102030)
   ai:AddObserveRegion(6, TARGET_ENE_0, 1102040)
   ai:AddObserveRegion(7, TARGET_ENE_0, 1102050)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   if eventNo == 1 then
      ai:SetEventMoveTarget(1102710)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 1)
   elseif eventNo == 2 then
      ai:SetEventMoveTarget(1102712)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 2)
   elseif eventNo == 3 then
      ai:SetEventMoveTarget(1102710)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 3)
   elseif eventNo == 4 then
      ai:SetEventMoveTarget(1102711)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 4)
   elseif eventNo == 5 then
      ai:SetEventMoveTarget(1102712)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 5)
   elseif eventNo == 6 then
      ai:SetEventMoveTarget(1102713)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 6)
   elseif targetDist >= 10 then
      Act01Per = 50
      Act02Per = 50
      Act03Per = 0
      Act04Per = 0
   elseif targetDist >= 5.4 then
      Act01Per = 20
      Act02Per = 40
      Act03Per = 40
      Act04Per = 0
   else
      Act01Per = 50
      Act02Per = 0
      Act03Per = 50
      Act04Per = 0
   end
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per)
      if fateAct <= Act01Per then
         local AppDist = Att3000_Dist_max
         local DashDist = Att3000_Dist_max + 2
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate <= 10 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif fate <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per then
         local AppDist = Att3003_Dist_max
         local DashDist = Att3003_Dist_max + 2
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate <= 25 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         local AppDist = Att3005_Dist_max
         local DashDist = Att3005_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3005
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
         local AppDist = Att3006_Dist_max
         local DashDist = Att3006_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3006
         local AttDist = DIST_None
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 0
      else
         ai:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
      end
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      local Odds_Guard = 0
      local Odds_NoAct = 40
      local Odds_BackAndSide = 10
      local Odds_Back = 10
      local Odds_BitWait = 0
      local Odds_Backstep = 40
      GetWellSpace_Act(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
   end
end

Kyochojin231000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kyochojin231000Battle_Terminate = function(ai, goal)
end

Kyochojin231000Battle_Interupt = function(ai, goal)
   local superStepDist = 4
   local superStepPer = 15
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local distDamagedStep = 4
   local oddsDamagedStep = 25
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 8
   local oddsGuardBreak_Act = 30
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if targetDist >= 5.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Int = 8
   local oddsMissSwing_Int = 40
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if targetDist <= 5.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 8
   local oddsUseItem_Act = 15
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 5.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distResNear = 8
   local distResFar = 20
   local oddsResNear = 0
   local oddsResFar = 40
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   elseif ResBehavID == 2 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local oddsResponse = 15
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


