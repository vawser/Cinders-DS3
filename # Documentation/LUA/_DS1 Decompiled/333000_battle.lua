REGISTER_GOAL(GOAL_Pisaca333000_Battle, "Pisaca333000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 4
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4.5
local Att3003_Dist_min = 0
local Att3003_Dist_max = 5
local Att3004_Dist_min = 0
local Att3004_Dist_max = 7
local Att3005_Dist_min = 0
local Att3005_Dist_max = 10
REGISTER_GOAL_NO_UPDATE(GOAL_Pisaca333000_Battle, 1)
Pisaca333000Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest(0)
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   if eventNo == 1 then
      local ThinkID = ai:GetNpcThinkParamID()
      if ThinkID == 333000 or ThinkID == 333001 then
         if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
            Torimaki_Act(ai, goal, Odds_Guard)
         elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
            Kankyaku_Act(ai, goal, Odds_Guard)
         elseif targetDist >= 10 then
            Act01Per = 30
            Act02Per = 0
            Act03Per = 70
            Act04Per = 0
         elseif targetDist >= 6 then
            Act01Per = 20
            Act02Per = 20
            Act03Per = 60
            Act04Per = 0
         elseif targetDist >= 3 then
            Act01Per = 0
            Act02Per = 30
            Act03Per = 35
            Act04Per = 35
         else
            Act01Per = 0
            Act02Per = 10
            Act03Per = 35
            Act04Per = 55
         end
      elseif targetDist >= 10 then
         Act05Per = 100
      elseif doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
         Torimaki_Act(ai, goal, Odds_Guard)
      elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
         Kankyaku_Act(ai, goal, Odds_Guard)
      elseif targetDist >= 6 then
         Act01Per = 20
         Act02Per = 20
         Act03Per = 60
         Act04Per = 0
      elseif targetDist >= 3 then
         Act01Per = 0
         Act02Per = 30
         Act03Per = 35
         Act04Per = 35
      else
         Act01Per = 0
         Act02Per = 10
         Act03Per = 35
         Act04Per = 55
      end
   elseif eventNo == 2 then
      Act05Per = 100
   elseif eventNo == 3 then
      if targetDist <= 5 then
         Act01Per = 0
         Act02Per = 10
         Act03Per = 35
         Act04Per = 55
      else
         Act06Per = 100
      end
   else
      Act07Per = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per)
   if fateAct <= Act01Per then
      if Att3005_Dist_min <= targetDist and fate <= 40 then
         local AppDist = Att3005_Dist_max
         local DashDist = Att3005_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3005
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      else
         local AppDist = Att3004_Dist_max
         local DashDist = Att3004_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3004
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      end
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per then
      local AppDist = Att3002_Dist_max
      local DashDist = Att3002_Dist_max + 100
      local Odds_Guard = 0
      local AttID = 3002
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per then
      local AppDist = Att3003_Dist_max
      local DashDist = Att3003_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3003
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
      local AppDist = Att3000_Dist_max
      local DashDist = Att3000_Dist_max + 1
      local Odds_Guard = 0
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      end
      GetWellSpace_Odds = 100
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      local ThinkID = ai:GetNpcThinkParamID()
      if ThinkID == 333000 then
         if fate <= 33 then
            ai:SetEventMoveTarget(1702710)
         elseif fate <= 33 then
            ai:SetEventMoveTarget(1702711)
         else
            ai:SetEventMoveTarget(1702712)
         end
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 1, TARGET_SELF, true, -1)
      elseif ThinkID == 333001 then
         if fate <= 33 then
            ai:SetEventMoveTarget(1702720)
         elseif fate <= 33 then
            ai:SetEventMoveTarget(1702721)
         else
            ai:SetEventMoveTarget(1702722)
         end
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 1, TARGET_SELF, true, -1)
      elseif ThinkID == 333002 then
         if fate <= 14 then
            ai:SetEventMoveTarget(1702730)
         elseif fate <= 28 then
            ai:SetEventMoveTarget(1702731)
         elseif fate <= 42 then
            ai:SetEventMoveTarget(1702732)
         elseif fate <= 56 then
            ai:SetEventMoveTarget(1702733)
         elseif fate <= 70 then
            ai:SetEventMoveTarget(1702734)
         elseif fate <= 85 then
            ai:SetEventMoveTarget(1702735)
         else
            ai:SetEventMoveTarget(1702736)
         end
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 1, TARGET_SELF, true, -1)
      elseif ThinkID == 333003 then
         if fate <= 20 then
            ai:SetEventMoveTarget(1702740)
         elseif fate <= 40 then
            ai:SetEventMoveTarget(1702741)
         elseif fate <= 60 then
            ai:SetEventMoveTarget(1702742)
         elseif fate <= 80 then
            ai:SetEventMoveTarget(1702743)
         else
            ai:SetEventMoveTarget(1702744)
         end
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 1, TARGET_SELF, true, -1)
      elseif fate <= 50 then
         ai:SetEventMoveTarget(1702730)
      else
         ai:SetEventMoveTarget(1702731)
      end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 1, TARGET_SELF, true, -1)
      GetWellSpace_Odds = 0
   elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      if ai:IsInsideTargetRegion(TARGET_SELF, 1702760) then
         ai:SetEventMoveTarget(1702770)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 3, TARGET_SELF, false, -1)
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1702761) then
         ai:SetEventMoveTarget(1702771)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 3, TARGET_SELF, false, -1)
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1702762) then
         ai:SetEventMoveTarget(1702772)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 3, TARGET_SELF, false, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 3, TARGET_SELF, false, -1)
      end
      GetWellSpace_Odds = 0
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
      GetWellSpace_Odds = 0
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      local Odds_Guard = 0
      local Odds_NoAct = 30
      local Odds_BackAndSide = 0
      local Odds_Back = 20
      local Odds_BitWait = 50
      local Odds_Backstep = 0
      GetWellSpace_Act(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
   end
end

Pisaca333000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Pisaca333000Battle_Terminate = function(ai, goal)
end

Pisaca333000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(0)
   local oddsResponse = 30
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 3.5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   if eventNo == 3 and ai:IsInterupt(INTERUPT_Damaged) then
      if targetDist >= 10 then
         local AppDist = Att3004_Dist_max
         local DashDist = Att3004_Dist_max + 0
         local Odds_Guard = 0
         local AttID = 3004
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         return true
      elseif targetDist >= 5 then
         local AppDist = Att3002_Dist_max
         local DashDist = Att3002_Dist_max + 0
         local Odds_Guard = 0
         local AttID = 3002
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         return true
      end
   end
   return false
end


