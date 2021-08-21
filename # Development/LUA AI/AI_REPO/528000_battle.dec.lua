RegisterTableGoal(GOAL_LastBoss_Switch, "GOAL_LastBoss_Switch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_Switch, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5408) then
        arg2:AddSubGoal(GOAL_LastBoss_Gwyn_Battle, -1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5407) then
        arg2:AddSubGoal(GOAL_LastBoss_Magician_Battle, -1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        arg2:AddSubGoal(GOAL_LastBoss_CurvedBlade_Battle, -1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg2:AddSubGoal(GOAL_LastBoss_PiercingSword_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_LastBoss_LargeSword_Battle, -1)
    end
    return 
end

return 
