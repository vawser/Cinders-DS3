REGISTER_LOGIC_FUNC(LOGIC_ID_Common_DoObjAct10001, "common_DoObjAct10001_Logic", "common_DoObjAct10001_Interupt")
common_DoObjAct10001_Logic = function(ai)
   if ai:IsExistReqObjAct() then
      ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_NEAR_OBJ_ACT_POINT, 0.1, TARGET_SELF, false, -1)
      ai:AddTopGoal(GOAL_COMMON_ObjActTest, 5, OBJ_ACT_TYPE_LEVER)
   else
      COMMON_EasySetup3(ai)
   end
end

common_DoObjAct10001_Interupt = function(ai, goal)
end


