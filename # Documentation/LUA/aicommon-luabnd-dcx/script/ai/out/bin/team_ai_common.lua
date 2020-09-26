g_TeamAiTable = {}
TeamAi = nil
State = nil
function RegisterTeamAi(arg0, arg1)
    TeamAi = {}
    g_TeamAiTable[REG0_0] = TeamAi
    return 
end

function RegisterTeamState(arg0, arg1)
    State = {}
    TeamAi[REG0_0] = State
    return 
end

function CheckTeamAiExist(arg0)
    return g_TeamAiTable[arg0] ~= nil
end

function ActivateTeamAi(arg0, arg1)
    local local0 = _GetTeamAiExecState(arg0, arg1)
    if local0 ~= nil then
        local local1 = local0["Activate"]
        if local1 ~= nil then
            local1(local0, arg0)
        end
    end
    return 
end

function UpdateTeamAi(arg0, arg1)
    local local0 = _GetTeamAiExecState(arg0, arg1)
    if local0 ~= nil then
        local local1 = local0["Update"]
        if local1 ~= nil then
            local1(local0, arg0)
        end
    end
    return 
end

function TerminateTeamAi(arg0, arg1)
    local local0 = _GetTeamAiExecState(arg0, arg1)
    if local0 ~= nil then
        local local1 = local0["Terminate"]
        if local1 ~= nil then
            local1(local0, arg0)
        end
    end
    return 
end

function _GetTeamAiExecState(arg0, arg1)
    local local0 = g_TeamAiTable[arg0:GetTeamAiId()]
    if local0 ~= nil then
        return local0[arg1]
    else
        return nil
    end
end

return 
