function GiantGolem_302100_Logic(arg0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg0:AddTopGoal(GOAL_GiantGolem_Cathedral_Battle, -1)
    else
        arg0:AddTopGoal(GOAL_GiantGolem_Default_Battle, -1)
    end
    return 
end

function GiantGolem_302100_Interupt(arg0, arg1)
    return 
end

return 
