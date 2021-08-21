RegisterTableGoal(GOAL_Gunda_511000_Switch, "GOAL_Gunda_511000_Switch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_Switch, true)
Goal.Initialize = function (arg0, arg1, arg2)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) and arg1:GetNpcThinkParamID() == 511100 == false then
        arg2:AddSubGoal(GOAL_Gunda_511000_HU_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_Gunda_511000_Battle, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
