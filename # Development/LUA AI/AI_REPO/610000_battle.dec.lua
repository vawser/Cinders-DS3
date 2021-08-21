RegisterTableGoal(GOAL_PowerKnight610000_Battle, "GOAL_PowerKnight610000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PowerKnight610000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg2:AddSubGoal(GOAL_610000_PowerKnight_BigBow_Battle, -1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        arg2:AddSubGoal(GOAL_610000_PowerKnight_ShieldAxe_Battle, -1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg2:AddSubGoal(GOAL_610000_PowerKnight_BigHammer_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_610000_PowerKnight_MagicAxe_Battle, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
