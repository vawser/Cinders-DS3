REGISTER_GOAL(GOAL_COMMON_ApproachSettingDirection, "ApproachSettingDirection")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 0, "移動対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 1, "到達判定距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 2, "旋回対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 3, "歩く?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 4, "ガードEzState番号", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 5, "移動方向", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 6, "指定方向への距離", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_ApproachSettingDirection, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachSettingDirection, true)
ApproachSettingDirection_Activate = function(ai, goal)
   local life_time = goal:GetLife()
   local targetType = goal:GetParam(0)
   local range = goal:GetParam(1)
   local turnTarget = goal:GetParam(2)
   local bWalk = goal:GetParam(3)
   local guardActionId = goal:GetParam(4)
   local moveTargetType = goal:GetParam(5)
   local distDir = goal:GetParam(6)
   goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life_time, targetType, moveTargetType, range, turnTarget, bWalk, moveTargetType, distDir)
   if guardActionId > 0 then
      local targetDist = ai:GetDist(targetType)
      if range < targetDist then
         ai:DoEzAction(life_time, guardActionId)
      end
   end
end

ApproachSettingDirection_Update = function(ai, goal, dT)
end

ApproachSettingDirection_Terminate = function(ai, goal)
end

ApproachSettingDirection_Interupt = function(ai, goal)
   return false
end


