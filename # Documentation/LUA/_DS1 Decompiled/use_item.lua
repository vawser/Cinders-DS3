REGISTER_GOAL(GOAL_COMMON_UseItem, "UseItem")
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_UseItem, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_UseItem, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_UseItem, 0, "アイテムインデックス", 0)
UseItem_Activate = function(ai, goal)
   local item_index = goal:GetParam(0)
   ai:ChangeEquipItem(item_index)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, NPC_ATK_Item, TARGET_NONE, DIST_None)
end

UseItem_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

UseItem_Terminate = function(ai, goal)
end

UseItem_Interupt = function(ai, goal)
   return false
end


