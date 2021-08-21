function MoveToMovePointAir_Activate(arg0, arg1)
    local local0 = arg1:GetParam(1)
    local local1 = arg1:GetParam(3)
    local local2 = arg1:GetParam(4)
    arg0:SetAIFixedMoveTarget(arg1:GetParam(0), arg1:GetParam(2), 0)
    return 
end

function MoveToMovePointAir_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function MoveToMovePointAir_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_MoveToMovePointAir, true)
function MoveToMovePointAir_Interupt(arg0, arg1)
    return false
end

return 
