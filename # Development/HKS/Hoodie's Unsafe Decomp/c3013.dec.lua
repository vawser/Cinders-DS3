function ()
local TRUE = 1
local FALSE = 0
local g_FrameCount = 0
local g_DebugCounter = 0
TestPurchaise = nil
local IS_MOVE_BLEND = FALSE
function IncNum(num)
    local str = nil
    if num < 10 then
        str = "Debug0"
    else
        str = "Debug"
    end
    vector = hkbGetVariable(str .. num)
    vector[0] = vector[0] + 1
    vector[1] = g_FrameCount
    hkbSetVariable(str .. num, vector)
    
end

function DebugPrints(...)
    buff = {...}
    for , 1, #buff do
        hkbSetVariable("DebugFloat" .. f9759_local0, buff[f9759_local0])
    end
    
end

function DebugPrint(pos, val)
    local str = nil
    if pos < 10 then
        str = "Debug0"
    else
        str = "Debug"
    end
    vector = hkbGetVariable(str .. pos)
    vector[0] = val
    vector[1] = g_FrameCount
    hkbSetVariable(str .. pos, vector)
    
end

function DebugPrintNext(val)
     = g_DebugCounter + 1
    if g_DebugCounter > 9 then
         = 1
    end
    DebugPrint(g_DebugCounter, val)
    
end

function Idle_onUpdate()
    if hkbGetVariable("MoveSpeedLevel") <= 0 then
        return FALSE
    end
    if hkbGetVariable("MoveSpeedLevel") > 0.10000000149011612 then
        hkbFireEvent("W_Move")
    end
    return TRUE
    
end

function Initialize()
    
end

function Main()
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
