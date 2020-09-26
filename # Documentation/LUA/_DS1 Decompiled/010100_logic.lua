REGISTER_LOGIC_FUNC(LOGIC_ID_Gitai10100, "Gitai10100_Logic", "Gitai10100_Interupt")
Gitai10100_Logic = function(ai)
   if ai:IsExistReqObjAct() then
      ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_NEAR_OBJ_ACT_POINT, 0.1, TARGET_SELF, false, -1)
      ai:AddTopGoal(GOAL_COMMON_ObjActTest, 5, OBJ_ACT_TYPE_LEVER)
   elseif ai:IsSearchTarget(TARGET_ENE_0) == true then
      ai:AddTopGoal(GOAL_DS2pot10100_Battle, -1, 0, 0, 0, 0)
   else
      ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, 0, 0, 0)
   end
end

Gitai10100_Interupt = function(ai, goal)
end


