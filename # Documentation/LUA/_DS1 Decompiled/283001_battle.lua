REGISTER_GOAL(GOAL_HusiPhalanx283001_Battle, "HusiPhalanx283001Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.6
local Att3002_Dist_min = 0
local Att3002_Dist_max = 11
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.1
REGISTER_GOAL_NO_UPDATE(GOAL_HusiPhalanx283001_Battle, 1)
HusiPhalanx283001Battle_Activate = function(ai, goal)
   ai:AddObserveRegion(0, TARGET_SELF, 1102400)
   ai:AddObserveRegion(1, TARGET_SELF, 1102401)
   ai:AddObserveRegion(2, TARGET_SELF, 1102402)
   ai:AddObserveRegion(3, TARGET_SELF, 1102403)
   ai:AddObserveRegion(4, TARGET_SELF, 1102404)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local waitTime = ai:GetRandam_Float(0.5, 2)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 9999)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0, 1), TARGET_ENE_0, 0, 0, 0)
   end
   if role == ROLE_TYPE_Attack then
      if targetDist >= 6 then
         if fate <= 45 then
            local LeaveDist = Att3002_Dist_min
            local AppDist = Att3002_Dist_max
            local DashDist = -1
            local Odds_Guard = 0
            Approach_or_Leave_Act(ai, goal, LeaveDist, AppDist, DashDist, Odds_Guard)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_None, 0)
         elseif fate <= 55 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, -1)
            HusiPhalanx283001Battle_TukiCombo(ai, goal)
            goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
         elseif fate <= 65 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, true, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
         end
      elseif fate <= 35 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, -1)
         HusiPhalanx283001Battle_TukiCombo(ai, goal)
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      elseif fate <= 65 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      end
   elseif role == ROLE_TYPE_Torimaki then
      if fate <= 10 then
         local LeaveDist = 7
         local AppDist = 9
         local DashDist = -1
         local Odds_Guard = 0
         Approach_or_Leave_Act(ai, goal, LeaveDist, AppDist, DashDist, Odds_Guard)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      end
   elseif fate <= 5 then
      local LeaveDist = 9
      local AppDist = 11
      local DashDist = -1
      local Odds_Guard = 0
      Approach_or_Leave_Act(ai, goal, LeaveDist, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

HusiPhalanx283001Battle_TukiCombo = function(ai, goal)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 3, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 3, 1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

HusiPhalanx283001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiPhalanx283001Battle_Terminate = function(ai, goal)
end

HusiPhalanx283001Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and (ai:IsInsideObserve(0) or ai:IsInsideObserve(1) or ai:IsInsideObserve(2) or ai:IsInsideObserve(3) or ai:IsInsideObserve(4)) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 1, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
      return true
   end
   return false
end


