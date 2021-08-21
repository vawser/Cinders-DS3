REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_If, 0.5, 1)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_If, 1, "識別用コードNo", 0)
function If_Activate(arg0, arg1)
    function _loadstring(arg0)
        local local0, local1 = loadstring("return function (arg) " .. arg0 .. " end", arg0)
        if local0 then
            return local0()
        else
            return local0, local1
        end
    end

    local local0 = {}
    local0["ai"] = arg0
    local0["goal"] = arg1
    local0["codeNo"] = arg1:GetParam(0)
    class = local0
    local0 = _loadstring("OnIf_" .. arg1:GetBattleGoalId() .. "(arg.ai, arg.goal, arg.codeNo)")
    local0(class)
    return 
end

function If_Update(arg0, arg1)
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function If_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_If, true)
function If_Interupt(arg0, arg1)
    return false
end

return 
