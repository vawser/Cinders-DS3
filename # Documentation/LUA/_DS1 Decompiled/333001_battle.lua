REGISTER_GOAL(GOAL_Pisaca_Sisters333001_Battle, "Pisaca_Sisters333001Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Pisaca_Sisters333001_Battle, 1)
Pisaca_Sisters333001Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   if targetDist >= 5 then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 100
   elseif targetDist >= 1.5 then
      Act01Per = 85
      Act02Per = 15
      Act03Per = 0
   else
      Act01Per = 15
      Act02Per = 85
      Act03Per = 0
   end
   local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per)
   if fateAct <= Act01Per then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2), TARGET_NONE, 0, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 5), TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   elseif fateAct <= Act01Per + Act02Per then
      local farPoint = Find_far_Point(ai, goal)
      ai:SetEventMoveTarget(farPoint)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 1, POINT_EVENT, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 3), TARGET_NONE, 0, 0, 0)
   end
end

Find_far_Point = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   ai:SetEventMoveTarget(1702745)
   local A = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1702746)
   local B = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1702747)
   local C = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1702748)
   local D = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   local maxDist = math.max(A, B, C, D)
   if minDist == A then
      FarPoint = 1702745
   elseif minDist == B then
      FarPoint = 1702746
   elseif minDist == C then
      FarPoint = 1702747
   else
      FarPoint = 1702748
   end
   return FarPoint
end

Pisaca_Sisters333001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Pisaca_Sisters333001Battle_Terminate = function(ai, goal)
end

Pisaca_Sisters333001Battle_Interupt = function(ai, goal)
   return false
end


