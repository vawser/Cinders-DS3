function Template_Activate(arg0, arg1)
    return 
end

function Template_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Template_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Template, true)
function Template_Interupt(arg0, arg1)
    return false
end

return 
