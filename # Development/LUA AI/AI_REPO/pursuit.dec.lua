REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Pursuit, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Pursuit, 1, "çUåÇëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Pursuit, 2, "ê¨å˜ãóó£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Pursuit, 3, "è„çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Pursuit, 4, "â∫çUåÇäpìx", 0)
function Pursuit_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_CommonAttack, arg1:GetLife(), arg1:GetParam(0), arg1:GetParam(1), arg1:GetParam(2), 180, 0, 90, false, true, false, false, arg1:GetParam(3), arg1:GetParam(4))
    return 
end

function Pursuit_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Pursuit_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Pursuit, true)
function Pursuit_Interupt(arg0, arg1)
    return false
end

return 
