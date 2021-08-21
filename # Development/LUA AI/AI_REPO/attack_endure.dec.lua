REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_EndureAttack, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_EndureAttack, 1, "UŒ‚‘ÎÛ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_EndureAttack, 2, "¬Œ÷‹——£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_EndureAttack, 3, "UŒ‚‘Où‰ñŠÔ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_EndureAttack, 4, "³–Ê”»’èŠp“x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_EndureAttack, 5, "ãUŒ‚Šp“x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_EndureAttack, 6, "‰ºUŒ‚Šp“x", 0)
function EndureAttack_Activate(arg0, arg1)
    local local0 = arg1:GetParam(3)
    local local1 = arg1:GetParam(4)
    if local0 < 0 then
        local0 = 1.5
    end
    if local1 < 0 then
        local1 = 20
    end
    arg1:AddSubGoal(GOAL_COMMON_CommonAttack, arg1:GetLife(), arg1:GetParam(0), arg1:GetParam(1), arg1:GetParam(2), 180, local0, local1, false, true, false, false, arg1:GetParam(5), arg1:GetParam(6))
    arg0:SetEnableEndureCancel_forGoal()
    return 
end

function EndureAttack_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EndureAttack_Terminate(arg0, arg1)
    arg0:ClearEnableEndureCancel_forGoal()
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_EndureAttack, true)
function EndureAttack_Interupt(arg0, arg1)
    return false
end

return 
