REGISTER_GOAL(GOAL_COMMON_Normal, "Normal")
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_Normal, 1)
Normal_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local trigDistNear = 2
   local trigDistMid = 4
   local trigDistFar = 0
   local ezsNoNear = 3000
   local ezsNoMid = 3000
   local ezsNoFar = 3000
   local moveDistNear = 3
   local moveDistMid = 1
   local moveDistFar = 3
   local movePerNear = 20
   local movePerMid = 30
   local movePerFar = 40
   local maaiDistNear = 1.5
   local maaiDistMid = 3.5
   local maaiDistFar = 5.5
   local maaiPerNear = 40
   local maaiPerMid = 30
   local maaiPerFar = 20
   local attActDist = 6
   local trigDistDash = 0
   local trigDistWalk = 9
   local moveDistDash = 7
   local moveDistWalk = 3
   if targetDist <= attActDist then
      if targetDist < trigDistNear then
         if fate <= movePerNear then
            goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, moveDistNear, TARGET_ENE_0, true)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, ezsNoNear, TARGET_ENE_0, DIST_Near, 0)
            if fate2 <= maaiPerNear then
               goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, maaiDistNear, TARGET_ENE_0, true)
            elseif targetDist < trigDistMid then
               if fate <= movePerMid then
                  goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, moveDistMid, TARGET_ENE_0, true)
               else
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, ezsNoMid, TARGET_ENE_0, DIST_Near, 0)
                  if fate2 <= maaiPerMid then
                     goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, maaiDistMid, TARGET_ENE_0, true)
                  elseif fate <= movePerFar then
                     goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, moveDistFar, TARGET_ENE_0, true)
                  else
                     goal:AddSubGoal(GOAL_COMMON_Attack, 10, ezsNoFar, TARGET_ENE_0, DIST_Near, 0)
                     if fate2 <= maaiPerFar then
                        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, maaiDistFar, TARGET_ENE_0, true)
                     elseif targetDist <= trigDistWalk then
                        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, moveDistWalk, TARGET_ENE_0, true)
                     else
                        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, moveDistDash, TARGET_ENE_0, false)
                        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, moveDistWalk, TARGET_ENE_0, true)
                     end
                     -- Tried to add an 'end' here but it's incorrect
                  end
                  -- Tried to add an 'end' here but it's incorrect
               end
            end
         end
end

Normal_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Normal_Terminate = function(ai, goal)
end

Normal_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local guardDist = 3
   local guardPer = 50
   local ezsNoguard = 9910
   local missContDist = 3
   local missContPer = 50
   local ezsNoMissCont = 3300
   local guardBreakAttDist = 3
   local guardBreakAttPer = 75
   local ezsNoguardBreakAtt = 3300
   local guardDownAttDist = 3
   local guardDownAttPer = 40
   local ezsNoguardDownAtt = 3000
   if ai:IsInterupt(INTERUPT_FindAttack) and targetDist <= guardDist and fate <= guardPer then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Guard, 5, ezsNoguard, TARGET_ENE_0, 0, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_MissSwing) and targetDist < missContDist and fate <= missContPer then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, ezsNoMissCont, TARGET_ENE_0, DIST_Near, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_GuardBreak) and targetDist < guardBreakAttDist and fate <= guardBreakAttPer then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, ezsNoguardBreakAtt, TARGET_ENE_0, DIST_Near, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_GuardFinish) and targetDist < guardDownAttDist and fate <= guardDownAttPer then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, ezsNoguardDownAtt, TARGET_ENE_0, DIST_Near, 0)
      return true
   end
   return false
end


