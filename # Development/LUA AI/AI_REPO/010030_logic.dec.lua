function common10030_Logic(arg0)
    if arg0:GetEventRequest() == 100 then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
    end
    COMMON_EasySetup3(arg0)
    return 
end

function common10030_Interupt(arg0, arg1)
    return 
end

return 
