function Sniper123000_Logic(arg0)
    if arg0:IsSearchTarget(TARGET_ENE_0) == true then
        arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    else
        arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    return 
end

function Sniper123000_Interupt(arg0, arg1)
    return 
end

return 
