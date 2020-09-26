REGISTER_GOAL(GOAL_KinokoChild228000_Battle, "KinokoChild228000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 0.6
local Att3002_Dist_min = 0
local Att3002_Dist_max = 1.4
REGISTER_GOAL_NO_UPDATE(GOAL_KinokoChild228000_Battle, 1)
KinokoChild228000Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   if targetDist >= 8 then
      Act01Per = 10
      Act02Per = 10
      Act03Per = 80
      Act04Per = 0
   elseif targetDist >= 4 then
      Act01Per = 60
      Act02Per = 40
      Act03Per = 0
      Act04Per = 0
   elseif hprate >= 0.5 then
      Act01Per = 100
      Act02Per = 0
      Act03Per = 0
      Act04Per = 0
   else
      Act01Per = 0
      Act02Per = 0
      Act03Per = 0
      Act04Per = 100
   end
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Guard = 0
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
         elseif fate <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         elseif fate <= 85 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         end
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per then
         local AppDist = Att3002_Dist_max
         local DashDist = Att3002_Dist_max + 2
         local Odds_Guard = 0
         local AttID = 3002
         local AttDist = DIST_Middle
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         local AppDist = 6
         local DashDist = 8
         local Odds_Guard = 0
         local AttID = 3002
         local AttDist = DIST_None
         Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
         GetWellSpace_Odds = 0
      else
         local AppDist = Att3000_Dist_max
         local DashDist = Att3000_Dist_max + 2
         local Odds_Guard = 0
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
         if fate <= 60 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif fate <= 95 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         end
         if fate2 >= 60 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(5, 7), TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_SELF, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
         end
         GetWellSpace_Odds = 0
      end
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      local Odds_Guard = 0
      local Odds_NoAct = 70
      local Odds_BackAndSide = 0
      local Odds_Back = 10
      local Odds_BitWait = 20
      local Odds_Backstep = 0
      GetWellSpace_Act(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
   end
end

KinokoChild228000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

KinokoChild228000Battle_Terminate = function(ai, goal)
end

KinokoChild228000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local guardBreakConutDist = 2
   local guardBreakConutPer = 10
   if FindGuardBreak_Act(ai, goal, guardBreakConutDist, guardBreakConutPer) then
      local AppDist = Att3002_Dist_max
      local DashDist = Att3002_Dist_max + 2
      local Odds_Guard = 0
      local AttID = 3002
      local AttDist = DIST_Middle
      Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
      return true
   end
   return false
end


