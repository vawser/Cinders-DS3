RegisterTableGoal(GOAL_RingedKnight_813000_Battle, "GOAL_RingedKnight_813000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RingedKnight_813000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        arg2:AddSubGoal(GOAL_626000_CapitalKnight_DualUltraGreatsword_Battle, -1)
    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 16500) or not not arg1:HasSpecialEffectId(TARGET_SELF, 16501) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5404) or arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg2:AddSubGoal(GOAL_626000_CapitalKnight_Spear_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_626000_CapitalKnight_StraightSword_Battle, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
