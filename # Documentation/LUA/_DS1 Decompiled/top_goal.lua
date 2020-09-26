REGISTER_GOAL(GOAL_COMMON_TopGoal, "TopGoal")
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_TopGoal, 1)
TopGoal_Activate = function(ai, goal)
end

TopGoal_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

TopGoal_Terminate = function(ai, goal)
end

TopGoal_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_CANNOT_MOVE) then
      local idAction = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
      if ai:IsTouchBreakableObject() and idAction >= 0 and ai:IsLookToTarget(POINT_CurrRequestPosition, 90) then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, -1, idAction, TARGET_NONE, DIST_None)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_CANNOT_MOVE_DisableInterupt) then
      local idAction = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
      if ai:IsTouchBreakableObject() and idAction >= 0 and ai:IsLookToTarget(POINT_CurrRequestPosition, 90) then
         goal:AddSubGoal_Front(GOAL_COMMON_NonspinningAttack, -1, idAction, TARGET_NONE, DIST_None)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_HitEnemyWall) then
      local backhome_life = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__BackHomeLife_OnHitEnemyWall)
      if backhome_life > 0 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_BackToHome, backhome_life, 0)
         return true
      end
   end
   return false
end


