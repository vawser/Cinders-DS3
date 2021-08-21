REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 1, "çUåÇëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 2, "ê¨å˜ãóó£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 3, "è„çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 4, "â∫çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 5, "ê¨å˜äpìx", 0)
function ComboAttack_Activate(arg0, arg1)
    local local0 = arg1:GetParam(5)
    if local0 == nil then
        local0 = 90
    end
    arg1:AddSubGoal(GOAL_COMMON_CommonAttack, arg1:GetLife(), arg1:GetParam(0), arg1:GetParam(1), arg1:GetParam(2), local0, 1.5, 20, true, true, false, false, arg1:GetParam(3), arg1:GetParam(4))
    return 
end

function ComboAttack_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function ComboAttack_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComboAttack, true)
function ComboAttack_Interupt(arg0, arg1)
    return false
end

return 
