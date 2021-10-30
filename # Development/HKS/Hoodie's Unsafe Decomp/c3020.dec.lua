function ()
function Event20000_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20001_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20002_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20003_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20004_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20005_onUpdate()
    if env(ESD_ENV_GetReceivedDamageType) == DAMAGE_TYPE_DEATH or env(ESD_ENV_GetHP) <= 0 then
        Fire("W_Event20008")
        return 
    end
    if env(ESD_ENV_IsAnimEnd, 1) == TRUE then
        Fire("W_Event30001")
        return 
    end
    
end

function Event20006_onUpdate()
    if env(ESD_ENV_GetReceivedDamageType) == DAMAGE_TYPE_DEATH or env(ESD_ENV_GetHP) <= 0 then
        Fire("W_Event20008")
        return 
    end
    if EventCommonFunction() == TRUE then
        return 
    end
    if env(ESD_ENV_IsAnimEnd, 1) == TRUE then
        Fire("W_Idle")
        return 
    end
    
end

function Event20007_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20008_onUpdate()
    if env(ESD_ENV_IsAnimEnd, 1) == TRUE then
        Fire("W_Event20009")
        return 
    end
    
end

function Event20009_onUpdate()
    if env(ESD_ENV_IsAnimEnd, 1) == TRUE then
        Fire("W_DeathIdleDefault")
        return 
    end
    
end

function Event20010_onUpdate()
    if env(ESD_ENV_GetReceivedDamageType) == DAMAGE_TYPE_DEATH or env(ESD_ENV_GetHP) <= 0 then
        Fire("W_Event20008")
        return 
    end
    if env(ESD_ENV_IsAnimEnd, 1) == TRUE then
        Fire("W_Event30001")
        return 
    end
    
end

function Event20011_onUpdate()
    if env(ESD_ENV_GetReceivedDamageType) == DAMAGE_TYPE_DEATH or env(ESD_ENV_GetHP) <= 0 then
        Fire("W_Event20008")
        return 
    end
    if env(ESD_ENV_IsAnimEnd, 1) == TRUE then
        Fire("W_Event30001")
        return 
    end
    
end

function Event20012_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20013_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20014_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20015_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20016_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20017_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20018_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20019_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event30000_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

function Event30001_onUpdate()
    if env(ESD_ENV_GetReceivedDamageType) == DAMAGE_TYPE_DEATH or env(ESD_ENV_GetHP) <= 0 then
        Fire("W_Event20008")
        return 
    end
    if env(ESD_ENV_DS3GetSpecialEffectID, 6050) == FALSE then
        Fire("W_Event20006")
        return 
    end
    
end

function Event30002_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

function Event30003_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3IsConversationEnd) then
        Fire("W_Event30002")
        return 
    end
    
end

function Event30005_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
