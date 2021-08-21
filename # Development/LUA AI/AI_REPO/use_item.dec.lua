REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_UseItem, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_UseItem, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_UseItem, 0, "アイテムインデックス", 0)
function UseItem_Activate(arg0, arg1)
    arg0:ChangeEquipItem(arg1:GetParam(0))
    arg1:AddSubGoal(GOAL_COMMON_Attack, 5, NPC_ATK_Item, TARGET_NONE, DIST_None)
    return 
end

function UseItem_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function UseItem_Terminate(arg0, arg1)
    return 
end

function UseItem_Interupt(arg0, arg1)
    return false
end

return 
