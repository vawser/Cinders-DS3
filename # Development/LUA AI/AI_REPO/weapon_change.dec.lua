RegisterTableGoal(GOAL_COMMON_WeaponChange, "WeaponChange")
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(0)
    local local1 = nil
    if local0 == 0 then
        local1 = 1300
    elseif local0 == 1 then
        local1 = 1310
    elseif local0 == 2 then
        local1 = 1320
    elseif local0 == 3 then
        local1 = 1330
    else
        local1 = 1300
    end
    arg2:AddSubGoal(GOAL_COMMON_NonspinningAttack, arg2:GetLife(), local1, TARGET_ENE_0, DIST_None)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

return 
