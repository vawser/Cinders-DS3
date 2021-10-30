function ()
function Modifiers_Script_onGenerate_test()
    if hkbGetVariable("EnableGrounding") then
        if env(ESD_ENV_DS3GetGeneralTAEFlag, 60) == 0 then
            local mat = hkbGetWorldFromModel() * hkbGetBoneModelSpace("R_Foot_Target")
            local f7272_local0 = mat
            local position = mat.getTranslation(f7272_local0)
            local f7272_local1 = mat
            local rotation = mat.getRotation(f7272_local1)
            hkbSetVariable("R_Foot_Position", position)
            hkbSetVariable("R_Foot_Rotation", rotation)
        end
        if env(ESD_ENV_DS3GetGeneralTAEFlag, 61) == 0 then
            local mat = hkbGetWorldFromModel() * hkbGetBoneModelSpace("L_Foot_Target")
            local f7272_local0 = mat
            local position = mat.getTranslation(f7272_local0)
            local f7272_local1 = mat
            local rotation = mat.getRotation(f7272_local1)
            hkbSetVariable("L_Foot_Position", position)
            hkbSetVariable("L_Foot_Rotation", rotation)
        end
        if env(ESD_ENV_DS3GetGeneralTAEFlag, 62) == 0 then
            local mat = hkbGetWorldFromModel() * hkbGetBoneModelSpace("R_Finger0")
            local f7272_local0 = mat
            local position = mat.getTranslation(f7272_local0)
            local f7272_local1 = mat
            local rotation = mat.getRotation(f7272_local1)
            hkbSetVariable("R_Hand_Position", position)
            hkbSetVariable("R_Hand_Rotation", rotation)
        end
        if env(ESD_ENV_DS3GetGeneralTAEFlag, 63) == 0 then
            local mat = hkbGetWorldFromModel() * hkbGetBoneModelSpace("L_Finger0")
            local f7272_local0 = mat
            local position = mat.getTranslation(f7272_local0)
            local f7272_local1 = mat
            local rotation = mat.getRotation(f7272_local1)
            hkbSetVariable("L_Hand_Position", position)
            hkbSetVariable("L_Hand_Rotation", rotation)
        end
    else
        local mat = hkbGetWorldFromModel() * hkbGetBoneModelSpace("R_Foot_Target")
        local f7272_local0 = mat
        local position = mat.getTranslation(f7272_local0)
        local f7272_local1 = mat
        local rotation = mat.getRotation(f7272_local1)
        hkbSetVariable("R_Foot_Position", position)
        hkbSetVariable("R_Foot_Rotation", rotation)
        local mat = hkbGetWorldFromModel() * hkbGetBoneModelSpace("L_Foot_Target")
        local f7272_local2 = mat
        local position = mat.getTranslation(f7272_local2)
        local f7272_local3 = mat
        local rotation = mat.getRotation(f7272_local3)
        hkbSetVariable("L_Foot_Position", position)
        hkbSetVariable("L_Foot_Rotation", rotation)
        local mat = hkbGetWorldFromModel() * hkbGetBoneModelSpace("R_Finger0")
        local f7272_local4 = mat
        local position = mat.getTranslation(f7272_local4)
        local f7272_local5 = mat
        local rotation = mat.getRotation(f7272_local5)
        hkbSetVariable("R_Hand_Position", position)
        hkbSetVariable("R_Hand_Rotation", rotation)
        local mat = hkbGetWorldFromModel() * hkbGetBoneModelSpace("L_Finger0")
        local f7272_local6 = mat
        local position = mat.getTranslation(f7272_local6)
        local f7272_local7 = mat
        local rotation = mat.getRotation(f7272_local7)
        hkbSetVariable("L_Hand_Position", position)
        hkbSetVariable("L_Hand_Rotation", rotation)
    end
    
end

function Modifiers_Script_onGenerate()
    if hkbGetVariable("EnableGrounding") then
        TransitionCount = 30
        Count = hkbGetVariable("R_Foot_Count")
        if env(ESD_ENV_DS3GetGeneralTAEFlag, 60) == TRUE then
            hkbSetVariable("R_Foot_Count", 0)
        elseif TransitionCount > Count then
            hkbSetVariable("R_Foot_Position_Now", hkbGetVariable("R_Foot_Position_Now") + (hkbGetVariable("R_Foot_Position") - hkbGetVariable("R_Foot_Position_Now")) / TransitionCount * Count)
            hkbSetVariable("R_Foot_Count", Count + 1)
        else
            hkbSetVariable("R_Foot_Position_Now", hkbGetVariable("R_Foot_Position"))
        end
        Count = hkbGetVariable("L_Foot_Count")
        if env(ESD_ENV_DS3GetGeneralTAEFlag, 61) == TRUE then
            hkbSetVariable("L_Foot_Count", 0)
        elseif TransitionCount > Count then
            hkbSetVariable("L_Foot_Position_Now", hkbGetVariable("L_Foot_Position_Now") + (hkbGetVariable("L_Foot_Position") - hkbGetVariable("L_Foot_Position_Now")) / TransitionCount * Count)
            hkbSetVariable("L_Foot_Count", Count + 1)
        else
            hkbSetVariable("L_Foot_Position_Now", hkbGetVariable("L_Foot_Position"))
        end
        if env(ESD_ENV_DS3GetGeneralTAEFlag, 62) == TRUE then
            hkbSetVariable("EnableLegJggler", true)
        else
            hkbSetVariable("EnableLegJggler", false)
        end
    else
        hkbSetVariable("R_Foot_Position_Now", hkbGetVariable("R_Foot_Position"))
        hkbSetVariable("L_Foot_Position_Now", hkbGetVariable("L_Foot_Position"))
        hkbSetVariable("EnableLegJggler", false)
    end
    
end

function Attack7012_Script_onGenerate()
    local targetDistance = hkbGetVariable("TargetDistance")
    local weaponDistance = hkbGetVariable("WeaponDistance")
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 11) == 1 then
        weaponDistance = targetDistance
    elseif weaponDistance > 0 then
        weaponDistance = weaponDistance - 0.4000000059604645
        if weaponDistance < 0 then
            weaponDistance = 0
        end
    end
    hkbSetVariable("WeaponDistance", weaponDistance)
    local root = hkbGetBoneLocalSpace("L Weapon09")
    local f7274_local0 = root
    local position = root.getTranslation(f7274_local0)
    local targetDistance = hkbGetVariable("WeaponDistance")
    position[0] = position[0] + targetDistance
    if targetDistance > 6 then
        local setDistance = (targetDistance - 6) * 0.10000000149011612
        root = hkbGetBoneLocalSpace("L Weapon01")
        local f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon01", root)
        root = hkbGetBoneLocalSpace("L Weapon02")
        f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon02", root)
        root = hkbGetBoneLocalSpace("L Weapon03")
        f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon03", root)
        root = hkbGetBoneLocalSpace("L Weapon04")
        f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon04", root)
        root = hkbGetBoneLocalSpace("L Weapon05")
        f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon05", root)
        root = hkbGetBoneLocalSpace("L Weapon06")
        f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon06", root)
        root = hkbGetBoneLocalSpace("L Weapon07")
        f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon07", root)
        root = hkbGetBoneLocalSpace("L Weapon08")
        f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon08", root)
        root = hkbGetBoneLocalSpace("L Weapon09")
        f7274_local1 = root
        position = root.getTranslation(f7274_local1)
        position[0] = position[0] + setDistance
        f7274_local1 = root
        root.setTranslation(f7274_local1, position)
        hkbSetBoneLocalSpace("L Weapon09", root)
    end
    
end

function ModifiersLayer_onGenerate()
    local root = hkbGetBoneModelSpace("RootPos")
    local f7275_local0 = root
    local position = root.getTranslation(f7275_local0)
    local offsetX = hkbGetVariable("OffsetSide") * 0.10000000149011612
    if offsetX > 0.699999988079071 then
        offsetX = 0.699999988079071
    end
    if offsetX < -0.699999988079071 then
        offsetX = -0.699999988079071
    end
    position[0] = position[0] + offsetX
    local f7275_local1 = root
    root.setTranslation(f7275_local1, position)
    hkbSetBoneModelSpace("RootPos", root)
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
