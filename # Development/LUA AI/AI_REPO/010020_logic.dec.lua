function common10020_Logic(arg0)
    if arg0:GetEventRequest() == 100 then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
    end
    arg0:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    return 
end

function common10020_Interupt(arg0, arg1)
    return 
end

return 
