REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboFinal, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboFinal, 1, "çUåÇëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboFinal, 2, "ê¨å˜ãóó£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboFinal, 3, "è„çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboFinal, 4, "â∫çUåÇäpìx", 0)
ENABLE_COMBO_ATK_CANCEL(GOAL_COMMON_ComboFinal)
function ComboFinal_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_CommonAttack, arg1:GetLife(), arg1:GetParam(0), arg1:GetParam(1), arg1:GetParam(2), 180, 0, 90, false, true, false, false, arg1:GetParam(3), arg1:GetParam(4))
    return 
end

function ComboFinal_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function ComboFinal_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComboFinal, true)
function ComboFinal_Interupt(arg0, arg1)
    return false
end

return 
