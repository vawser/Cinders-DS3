function Normal_Activate(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 0
    local local4 = 0
    local local5 = 3
    if local0 <= 6 then
        if local0 < 2 then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 3, TARGET_ENE_0, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
                if local2 <= 40 then
                    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 1.5, TARGET_ENE_0, true)
                end
            end
        elseif local0 < 4 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 1, TARGET_ENE_0, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
                if local2 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 3.5, TARGET_ENE_0, true)
                end
            end
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 3, TARGET_ENE_0, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
            if local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 5.5, TARGET_ENE_0, true)
            end
        end
    elseif local0 <= 9 then
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, local5, TARGET_ENE_0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 7, TARGET_ENE_0, false)
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, local5, TARGET_ENE_0, true)
    end
    return 
end

function Normal_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Normal_Terminate(arg0, arg1)
    return 
end

function Normal_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_FindAttack) and local0 <= 3 and local1 <= 50 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Guard, 5, 9910, TARGET_ENE_0, 0, 0)
        return true
    elseif arg0:IsInterupt(INTERUPT_MissSwing) and local0 < 3 and local1 <= 50 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 5, 3300, TARGET_ENE_0, DIST_Near, 0)
        return true
    elseif arg0:IsInterupt(INTERUPT_GuardBreak) and local0 < 3 and local1 <= 75 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 5, 3300, TARGET_ENE_0, DIST_Near, 0)
        return true
    elseif arg0:IsInterupt(INTERUPT_GuardFinish) and local0 < 3 and local1 <= 40 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Near, 0)
        return true
    else
        return false
    end
end

return 
