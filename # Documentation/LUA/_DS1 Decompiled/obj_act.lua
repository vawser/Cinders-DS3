REGISTER_GOAL(GOAL_COMMON_ObjActTest, "ObjActTest")
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ObjActTest, 0.5, 0.6)
ObjActTest_Activate = function(ai, goal)
   local priority = goal:GetParam(0)
   local objActType = goal:GetParam(1)
   ai:KickEvent(0)
end

ObjActTest_Update = function(ai, goal)
   if ai:IsFinishObjAct() then
      return GOAL_RESULT_Success
   end
   if goal:GetLife() <= 0 then
      return GOAL_RESULT_Failed
   end
   if not ai:IsExistReqObjAct() then
      goal:SetNumber(0, 1)
      return GOAL_RESULT_Failed
   end
   return GOAL_RESULT_Continue
end

ObjActTest_Terminate = function(ai, goal)
   ai:ClearFinishObjAct()
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ObjActTest, true)
ObjActTest_Interupt = function(ai, goal)
   return false
end


