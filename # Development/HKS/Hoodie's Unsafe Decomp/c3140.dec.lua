function ()
function Event20000_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            local random = env(ESD_ENV_GetRandomInt, 1, 100)
            if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11010) then
                Fire("W_Event20009")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11011) then
                Fire("W_Event20008")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11006) then
                Fire("W_Event20015")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11003) then
                if random > 98 then
                    Fire("W_Event20004")
                    return 
                elseif random > 96 then
                    Fire("W_Event20005")
                    return 
                elseif random > 20 then
                    if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11000) then
                        Fire("W_Event30002")
                        return 
                    else
                        Fire("W_Event20001")
                        return 
                    end
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11005) then
                if random > 98 then
                    Fire("W_Event20004")
                    return 
                elseif random > 96 then
                    Fire("W_Event20005")
                    return 
                elseif random > 20 then
                    Fire("W_Event20002")
                    return 
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif random > 95 then
                Fire("W_Event20004")
                return 
            elseif random > 90 then
                Fire("W_Event20005")
                return 
            elseif random > 70 then
                Fire("W_Event20000")
                return 
            else
                Fire("W_Event30002")
                return 
            end
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20001_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            local random = env(ESD_ENV_GetRandomInt, 1, 100)
            if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11010) then
                Fire("W_Event20009")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11011) then
                Fire("W_Event20008")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11006) then
                Fire("W_Event20015")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11003) then
                if random > 65 then
                    Fire("W_Event20000")
                    return 
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11005) then
                if random > 65 then
                    Fire("W_Event20000")
                    return 
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif random > 60 then
                Fire("W_Event20000")
                return 
            elseif random > 55 then
                Fire("W_Event20004")
                return 
            elseif random > 50 then
                Fire("W_Event20005")
                return 
            else
                Fire("W_Event30002")
                return 
            end
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20002_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            local random = env(ESD_ENV_GetRandomInt, 1, 100)
            if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11010) then
                Fire("W_Event20009")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11011) then
                Fire("W_Event20008")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11006) then
                Fire("W_Event20015")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11003) then
                if random > 65 then
                    Fire("W_Event20000")
                    return 
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11005) then
                if random > 65 then
                    Fire("W_Event20000")
                    return 
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif random > 60 then
                Fire("W_Event20000")
                return 
            elseif random > 55 then
                Fire("W_Event20004")
                return 
            elseif random > 50 then
                Fire("W_Event20005")
                return 
            else
                Fire("W_Event30002")
                return 
            end
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20003_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            Fire("W_Event30002")
            return 
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20004_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Event30000")
        return 
    end
    
end

function Event20005_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            local random = env(ESD_ENV_GetRandomInt, 1, 100)
            if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11010) then
                Fire("W_Event20009")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11011) then
                Fire("W_Event20008")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11006) then
                Fire("W_Event20015")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11003) then
                if random > 95 then
                    Fire("W_Event20000")
                    return 
                elseif random > 94 then
                    Fire("W_Event20004")
                    return 
                elseif random > 15 then
                    if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11000) then
                        Fire("W_Event30002")
                        return 
                    else
                        Fire("W_Event20001")
                        return 
                    end
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11005) then
                if random > 95 then
                    Fire("W_Event20000")
                    return 
                elseif random > 94 then
                    Fire("W_Event20004")
                    return 
                elseif random > 15 then
                    Fire("W_Event20002")
                    return 
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif random > 65 then
                Fire("W_Event20000")
                return 
            elseif random > 60 then
                Fire("W_Event20004")
                return 
            else
                Fire("W_Event30002")
                return 
            end
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20006_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
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
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Event30002")
        return 
    end
    
end

function Event20009_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Event30002")
        return 
    end
    
end

function Event20010_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Idle")
        return 
    end
    
end

function Event20011_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Event30001")
        return 
    end
    
end

function Event20012_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            Fire("W_Event30002")
            return 
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20013_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            Fire("W_Event20014")
            return 
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20014_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            Fire("W_Event30002")
            return 
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20015_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) or TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            Fire("W_Event30002")
            return 
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event20016_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_IsAnimEnd, 1) then
        Fire("W_Event30000")
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
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

function Event30002_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11002) then
        if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 5404) then
            local random = env(ESD_ENV_GetRandomInt, 1, 100)
            if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11010) then
                Fire("W_Event20009")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11011) then
                Fire("W_Event20008")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11006) then
                Fire("W_Event20015")
                return 
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11003) then
                if random > 85 then
                    Fire("W_Event20000")
                    return 
                elseif random > 84 then
                    Fire("W_Event20004")
                    return 
                elseif random > 83 then
                    Fire("W_Event20005")
                    return 
                elseif random > 10 then
                    if TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11000) then
                        Fire("W_Event30002")
                        return 
                    else
                        Fire("W_Event20001")
                        return 
                    end
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif TRUE == env(ESD_ENV_DS3GetSpecialEffectID, 11005) then
                if random > 85 then
                    Fire("W_Event20000")
                    return 
                elseif random > 84 then
                    Fire("W_Event20004")
                    return 
                elseif random > 83 then
                    Fire("W_Event20005")
                    return 
                elseif random > 10 then
                    Fire("W_Event20002")
                    return 
                else
                    Fire("W_Event30002")
                    return 
                end
            elseif random > 70 then
                Fire("W_Event20000")
                return 
            elseif random > 65 then
                Fire("W_Event20004")
                return 
            elseif random > 60 then
                Fire("W_Event20005")
                return 
            else
                Fire("W_Event30002")
                return 
            end
        else
            Fire("W_Idle")
            return 
        end
    end
    
end

function Event30003_onUpdate()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

function Event30004_onUpdate()
    if EventCommonFunction() == TRUE then
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
