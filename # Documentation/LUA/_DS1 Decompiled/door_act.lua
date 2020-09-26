REGISTER_GOAL(GOAL_COMMON_DoorAct, "DoorAct")
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_DoorAct, 0.2, 0.3)
DoorAct_Activate = function(ai, goal)
   ai:PrintText("[DoorAct_Activate]Notice ObjAct")
   ai:SetAllowTriggerNearObjAct()
end

DoorAct_Update = function(ai, goal)
   local isExistReqObjAct = ai:IsExistReqObjAct()
   local hasObjActGoal = ai:HasGoal(GOAL_COMMON_ObjActTest)
   if isExistReqObjAct and hasObjActGoal == false then
      goal:AddSubGoal(GOAL_COMMON_ObjActTest, 10, OBJ_ACT_TYPE_DOOR)
   end
   goal:AddLifeParentSubGoal(0.3)
   return GOAL_RESULT_Continue
end

DoorAct_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_DoorAct, true)
DoorAct_Interupt = function(ai, goal)
   return false
end


