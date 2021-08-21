REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_DoorAct, 0.2, 0.3)
function DoorAct_Activate(arg0, arg1)
    arg0:PrintText("[DoorAct_Activate]Notice ObjAct")
    arg0:SetAllowTriggerNearObjAct()
    return 
end

function DoorAct_Update(arg0, arg1)
    if arg0:IsExistReqObjAct() and arg0:HasGoal(GOAL_COMMON_ObjActTest) == false then
        arg1:AddSubGoal(GOAL_COMMON_ObjActTest, 10, OBJ_ACT_TYPE_DOOR)
    end
    arg1:AddLifeParentSubGoal(0.3)
    return GOAL_RESULT_Continue
end

function DoorAct_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_DoorAct, true)
function DoorAct_Interupt(arg0, arg1)
    return false
end

return 
