g_FormationTable = {}
Formation = nil
function RegisterFormation(arg0, arg1)
    Formation = {}
    g_FormationTable[REG0_0] = Formation
    return 
end

function TeamAiFormationExec(arg0, arg1, arg2, arg3)
    local local0 = g_FormationTable[arg0]
    if local0 ~= nil then
        local local1 = arg3:GetParamNum()
        if local1 == 0 then
            local0.Exec(arg1, arg2)
        elseif local1 == 1 then
            local0.Exec(arg1, arg2, arg3:GetParam(0))
        elseif local1 == 2 then
            local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1))
        elseif local1 == 3 then
            local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2))
        elseif local1 == 4 then
            local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3))
        elseif local1 == 5 then
            local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3), arg3:GetParam(4))
        elseif local1 == 6 then
            local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3), arg3:GetParam(4), arg3:GetParam(5))
        elseif local1 == 7 then
            local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3), arg3:GetParam(4), arg3:GetParam(5), arg3:GetParam(6))
        elseif local1 == 8 then
            local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3), arg3:GetParam(4), arg3:GetParam(5), arg3:GetParam(6), arg3:GetParam(7))
        end
        return true
    else
        return false
    end
end

RegisterFormation(FORMATION_TYPE__CIRCLE, "FORMATION_TYPE__CIRCLE")
Formation.Exec = function (arg0, arg1, arg2, arg3)
    local local0 = arg1:GetMemberNum()
    local local1 = 1
    for local2 = 0 - local1, local0 - 1, local1 do
        arg0:AddCirclePoint(arg1:GetMember(local2), arg2, 360 * local2 / local0, arg3, TEAM_FMT_BASE_DIR__TARGET_DIR)
    end
    return 
end

RegisterFormation(FORMATION_TYPE__PROCESSION, "FORMATION_TYPE__PROCESSION")
Formation.Exec = function (arg0, arg1, arg2, arg3)
    local local0 = 1
    for local1 = 0 - local0, arg1:GetMemberNum() - 1, local0 do
        arg0:AddProcessionPoint(arg1:GetMember(local1), arg2, math.mod(local1, arg3) * 4 - 4 * 2 * 0.5, math.floor(local1 / arg3) * 4 + 2, TEAM_FMT_BASE_DIR__TARGET_DIR)
    end
    return 
end

RegisterFormation(FORMATION_TYPE__TEST, "FORMATION_TYPE__TEST")
Formation.Exec = function (arg0, arg1, arg2, arg3)
    local local0 = 2
    for local1 = 0 - local0, arg1:GetMemberNum() - 1, local0 do
        arg0:AddProcessionPoint(arg1:GetMember(local1), arg2, 0.5, -1.5 - local1 * 1.5, TEAM_FMT_BASE_DIR__TARGET_DIR)
        arg0:AddProcessionPoint(arg1:GetMember(local1), arg2, -0.5, -1.5 - local1 * 1.5 - 0.5, TEAM_FMT_BASE_DIR__TARGET_DIR)
    end
    return 
end

return 
