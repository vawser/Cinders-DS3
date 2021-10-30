function ()
function Modifier_onGenerate()
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 21) == 1 then
        hkbSetVariable("CultRagdollKeyframe", true)
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 22) == 1 then
        hkbSetVariable("CultRagdollKeyframe", false)
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 21) == 1 then
        hkbSetVariable("CultRagdollKeyframe", true)
    else
        hkbSetVariable("CultRagdollKeyframe", false)
    end
    
end

function Modifier_c3020_onGenerate()
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 30) == 1 then
        hkbSetVariable("PoweredRagdollEnabled", true)
    else
        hkbSetVariable("PoweredRagdollEnabled", false)
    end
    
end

function Modifier_c5110_onGenerate()
    local root = hkbGetBoneModelSpace("XX_Throw_Target")
    local f4345_local0 = root
    local position = root.getTranslation(f4345_local0)
    hkbSetVariable("TESTTEST", position[2])
    
end

function Modifier_c5270_onGenerate()
    local SoftSwordValue = 16
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 50) == 1 then
        hkbSetVariable("EnableSoftSwordLeft", true)
        local getRate = hkbGetVariable("SoftSwordRateLeft")
        if getRate < SoftSwordValue then
            hkbSetVariable("SoftSwordRateLeft", getRate + SoftSwordValue / 15)
        end
    else
        local getRate = hkbGetVariable("SoftSwordRateLeft")
        if getRate > 0 then
            hkbSetVariable("SoftSwordRateLeft", getRate - SoftSwordValue / 15)
        else
            hkbSetVariable("EnableSoftSwordLeft", false)
        end
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 51) == 1 then
        hkbSetVariable("EnableSoftSwordRight", true)
        local getRate = hkbGetVariable("SoftSwordRateRight")
        if getRate < SoftSwordValue then
            hkbSetVariable("SoftSwordRateRight", getRate + SoftSwordValue / 15)
        end
    else
        local getRate = hkbGetVariable("SoftSwordRateRight")
        if getRate > 0 then
            hkbSetVariable("SoftSwordRateRight", getRate - SoftSwordValue / 15)
        else
            hkbSetVariable("EnableSoftSwordRight", false)
        end
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
