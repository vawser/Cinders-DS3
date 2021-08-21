function Default_Logic(arg0)
    if arg0:IsSearchTarget(TARGET_ENE_0) == true then
        arg0:AddTopGoal(GOAL_COMMON_Normal, -1, 0, 0, 0, 0)
        return 
    else
        arg0:AddTopGoal(GOAL_COMMON_WalkAround, -1, arg0:GetDistParam(DIST_Far), 0, 0, 0)
        return 
    end
end

function Default_Interupt(arg0, arg1)
    return 
end

return 
