function common10050_Logic(arg0)
    if arg0:GetEventRequest() == 100 then
        if 0.5 < arg0:GetDist(TARGET_EVENT) then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_EVENT, 0.3, TARGET_SELF, false, -1)
        else
            arg0:AddTopGoal(GOAL_COMMON_Wait, 0.4, TARGET_EVENT, 0, 0, 0)
        end
    else
        arg0:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    end
    return 
end

function common10050_Interupt(arg0, arg1)
    return 
end

return 
