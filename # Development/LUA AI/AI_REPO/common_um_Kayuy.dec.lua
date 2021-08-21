function KAY_ApproachAct_Default(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    if arg4 == -1 or arg4 == nil then
        arg4 = TARGET_ENE_0
    end
    if arg5 == -1 or arg5 == nil then
        arg5 = 0
    end
    if arg6 == -1 or arg6 == nil then
        arg6 = 1.8
    end
    if arg7 == -1 or arg7 == nil then
        arg7 = 5
    end
    if arg8 == -1 or arg8 == nil then
        arg8 = 50
    end
    if arg9 == -1 or arg9 == nil then
        arg9 = 0
    end
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = false
    if local0 < warkDist then
        local1 = true
    elseif local0 < runDist and arg1:GetRandam_Int(1, 100) <= rateRunFar then
        local1 = true
    end
    local local2 = -1
    if local1 == true and arg1:GetRandam_Int(1, 100) <= rateGuard then
        local2 = 9910
    end
    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, arg4, arg5, TARGET_ENE_0, local1, local2)
    return 
end

function KAY_ApproachAct_Threshold(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    if arg4 == -1 or arg4 == nil then
        arg4 = TARGET_ENE_0
    end
    if arg5 == -1 or arg5 == nil then
        arg5 = 0
    end
    if arg6 == -1 or arg6 == nil then
        arg6 = 3
    end
    if arg7 == -1 or arg7 == nil then
        arg7 = 50
    end
    if arg8 == -1 or arg8 == nil then
        arg8 = 100
    end
    if arg9 == -1 or arg9 == nil then
        arg9 = 50
    end
    local local0 = true
    if arg5 + arg6 < arg1:GetDist(TARGET_ENE_0) then
        if arg1:GetRandam_Int(1, 100) <= arg8 then
            local0 = false
        end
    elseif arg1:GetRandam_Int(1, 100) <= arg7 then
        local0 = false
    end
    local local1 = -1
    if local0 == true and arg1:GetRandam_Int(1, 100) <= arg9 then
        local1 = 9910
    end
    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, arg4, arg5, TARGET_ENE_0, local0, local1)
    return 
end

function KAY_Select_ListIndex(arg0, arg1, arg2, arg3)
    local local0 = 0
    local local1 = 1
    for local2 = 1 - local1, table.getn(arg3), local1 do
        local0 = local0 + arg3[local2]
    end
    local local3 = 0
    local local4 = 1
    for local1 = 1 - local4, table.getn(arg3), local4 do
        local3 = arg3[local1] + local3
        if arg1:GetRandam_Int(0, local0) < local3 and 0 < arg3[local1] then
            return local1
        end
    end
    return 
end

function KAY_Dumy(arg0, arg1, arg2)
    return 
end

return 
