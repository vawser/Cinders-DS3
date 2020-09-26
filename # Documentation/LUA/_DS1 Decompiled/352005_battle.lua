REGISTER_GOAL(GOAL_wyvern352005_Battle, "wyvern352005Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_wyvern352005_Battle, 1)
OnIf_352005 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if codeNo == 0 then
      local NearestPoint = Find_Nearest_Point(ai, goal)
      ai:SetEventMoveTarget(NearestPoint)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 5, TARGET_SELF, false, -1)
   end
end

wyvern352005Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 23, TARGET_SELF, false, 17)
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 180)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 180)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_None, 0, 180)
end

Find_Nearest_Point = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local idParam = ai:GetNpcThinkParamID()
   if idParam == 352005 then
      ai:SetEventMoveTarget(1602720)
      local A = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1602721)
      local B = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1602722)
      local C = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      local minDist = math.min(A, B, C)
      if minDist == A then
         NearPoint = 1602720
      elseif minDist == B then
         NearPoint = 1602721
      elseif minDist == C then
         NearPoint = 1602722
      else
         ai:SetEventMoveTarget(1602730)
         local A = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
         ai:SetEventMoveTarget(1602731)
         local B = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
         ai:SetEventMoveTarget(1602732)
         local C = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
         local minDist = math.min(A, B, C)
         if minDist == A then
            NearPoint = 1602730
         elseif minDist == B then
            NearPoint = 1602731
         elseif minDist == C then
            NearPoint = 1602732
         end
      end
      -- Tried to add an 'end' here but it's incorrect
      return NearPoint
end

wyvern352005Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

wyvern352005Battle_Terminate = function(ai, goal)
end

wyvern352005Battle_Interupt = function(ai, goal)
   return false
end


