function ()
function State00_onUpdate()
    local ang = env(ESD_ENV_DS3GetSafetyDirection, 10, 10)
    if ang < 9999 then
        act(2007, ang + 180)
        hkbFireEvent("State01")
    end
    
end

function State01_onUpdate()
    act(2008)
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
