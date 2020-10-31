RegisterTableGoal(GOAL_NPC_Farold, "GOAL_NPC_Farold")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Farold, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    if arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg2:AddSubGoal(GOAL_KingCastleKight_bow_Battle, -1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        arg2:AddSubGoal(GOAL_KingCastleKight_greatsword_Battle, -1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg2:AddSubGoal(GOAL_KingCastleKight_lance_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_KingCastleKight_sword_Battle, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
