function ()
local lastframecalled_guardcommonfunction = -1
local lastframecalled_movecommonfunction = -1
local lastframecalled_movestopcommonfunction = -1
local lastframecalled_idlecommonfunction = -1
function ResetRequest()
    act(9101)
    
end

function SetVariable(name, value)
    act(148, name, value)
    
end

function UpdateSpeed()
    if g_MoveSpeedLevelReal < g_MoveSpeedLevel then
        g_MoveSpeedLevelReal = g_MoveSpeedLevelReal + 0.10000000149011612
        if g_MoveSpeedLevelReal > g_MoveSpeedLevel then
            g_MoveSpeedLevelReal = g_MoveSpeedLevel
        end
        SetVariable("MoveSpeedLevelReal", g_MoveSpeedLevelReal)
        return 
    elseif g_MoveSpeedLevelReal > g_MoveSpeedLevel then
        g_MoveSpeedLevelReal = g_MoveSpeedLevelReal - 0.15000000596046448
        if g_MoveSpeedLevelReal < g_MoveSpeedLevel then
            g_MoveSpeedLevelReal = g_MoveSpeedLevel
        end
        SetVariable("MoveSpeedLevelReal", g_MoveSpeedLevelReal)
        return 
    end
    
end

function IsGuarding()
    if hkbGetVariable("GuardState") > 0 then
        return TRUE
    else
        return FALSE
    end
    
end

function IdleCommonFunction()
    if lastframecalled_idlecommonfunction == g_FrameCount then
        return 
    else
        local f7007_local0 = g_FrameCount
        SETUPVAL_R1 0 0 0
    end
    act(9100)
    SetVariable("LocomotionState", 0)
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE then
        SetVariable("GuardState", 1)
        hkbFireEvent("W_GuardStart")
        hkbFireEvent("W_GuardStart00")
        return 
    end
    if 0 < g_MoveSpeedLevel then
        hkbFireEvent("W_Move")
        hkbFireEvent("W_Move00")
        return 
    end
    
end

function MoveCommonFunction()
    if lastframecalled_movecommonfunction == g_FrameCount then
        return 
    else
        local f7008_local0 = g_FrameCount
        SETUPVAL_R1 0 0 0
    end
    act(9100)
    if IsGuarding(TRUE) == TRUE then
        GuardCommonFunction()
        return 
    end
    if g_MoveSpeedLevelReal > 1.25 then
        SetVariable("LocomotionState", 3)
    elseif g_MoveSpeedLevelReal > 0.30000001192092896 then
        SetVariable("LocomotionState", 2)
    else
        SetVariable("LocomotionState", 1)
    end
    if IsGuarding(TRUE) == TRUE then
        if g_MoveSpeedLevel <= 0 then
            if g_MoveSpeedLevelReal >= 1.25 then
                IncNum(1)
                hkbFireEvent("DashStop")
                return 
            elseif g_MoveSpeedLevelReal >= 0.30000001192092896 then
                hkbFireEvent("RunStop")
                return 
            else
                hkbFireEvent("WalkStop")
                return 
            end
        end
    else
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) then
            SetVariable("GuardState", 1)
            hkbFireEvent("W_GuardStart00")
            return 
        end
        if g_MoveSpeedLevel <= 0 then
            if g_MoveSpeedLevelReal >= 1.25 then
                hkbFireEvent("DashStop")
                hkbFireEvent("DashStop00")
                return 
            elseif g_MoveSpeedLevelReal >= 0.30000001192092896 then
                hkbFireEvent("RunStop")
                hkbFireEvent("RunStop00")
                return 
            else
                hkbFireEvent("WalkStop")
                hkbFireEvent("WalkStop00")
                return 
            end
        end
    end
    
end

function MoveStopCommonFunction()
    if lastframecalled_movestopcommonfunction == g_FrameCount then
        return 
    else
        local f7009_local0 = g_FrameCount
        SETUPVAL_R1 0 0 0
    end
    if IsGuarding(TRUE) == TRUE then
        GuardCommonFunction()
        return 
    end
    act(9100)
    SetVariable("LocomotionState", 0)
    if 0 < g_MoveSpeedLevel then
        hkbFireEvent("W_Move")
        hkbFireEvent("W_Move00")
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) then
        SetVariable("GuardState", 1)
        hkbFireEvent("W_GuardStart00")
        return 
    end
    
end

function GuardCommonFunction()
    if lastframecalled_guardcommonfunction == g_FrameCount then
        return 
    else
        local f7010_local0 = g_FrameCount
        SETUPVAL_R1 0 0 0
    end
    act(9100)
    if hkbGetVariable("LocomotionState") == 0 then
        if 0 < g_MoveSpeedLevelReal and 0 < g_MoveSpeedLevel then
            SetVariable("LocomotionState", 1)
            hkbFireEvent("W_Move")
            hkbFireEvent("W_Move00")
            return 
        end
        if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE then
            SetVariable("GuardState", 1)
            hkbFireEvent("W_GuardStart")
            hkbFireEvent("W_GuardStart00")
            return 
        end
        if env(ESD_ENV_DS3ActionCancelRequest, ACTION_ARM_L1) == TRUE or IsGuarding(TRUE) == TRUE and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) then
            hkbFireEvent("W_GuardEnd")
            hkbFireEvent("W_GuardEnd00")
            SetVariable("GuardState", 0)
            return 
        end
    elseif hkbGetVariable("LocomotionState") > 0 then
        if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE then
            SetVariable("GuardState", 1)
            hkbFireEvent("W_GuardStart00")
            return 
        end
        if env(ESD_ENV_DS3ActionCancelRequest, ACTION_ARM_L1) == TRUE or IsGuarding(TRUE) == TRUE and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) then
            hkbFireEvent("W_GuardEnd00")
            SetVariable("GuardState", 0)
            return 
        end
        if 0 >= g_MoveSpeedLevel then
            SetVariable("LocomotionState", 0)
            if g_MoveSpeedLevelReal >= 1.25 then
                hkbFireEvent("Locomotion00")
                hkbFireEvent("DashStop")
                return 
            elseif g_MoveSpeedLevelReal >= 0.30000001192092896 then
                hkbFireEvent("Locomotion00")
                hkbFireEvent("RunStop")
                return 
            else
                hkbFireEvent("Locomotion00")
                hkbFireEvent("WalkStop")
                return 
            end
        end
    end
    
end

function NoGuardIdle_onActivate()
    ResetRequest()
    
end

function NoGuardIdle_onUpdate()
    IdleCommonFunction()
    
end

function NoGuardIdle00_onActivate()
    ResetRequest()
    
end

function NoGuardIdle00_onUpdate()
    IdleCommonFunction()
    
end

function GuardIdle_onActivate()
    ResetRequest()
    
end

function oGuardIdle_onUpdate()
    GuardCommonFunction()
    
end

function GuardIdle00_onActivate()
    ResetRequest()
    
end

function GuardIdle00_onUpdate()
    GuardCommonFunction()
    
end

function Move_onActivate()
    ResetRequest()
    
end

function Move_onUpdate()
    MoveCommonFunction()
    
end

function Move00_onActivate()
    ResetRequest()
    
end

function Move00_onUpdate()
    MoveCommonFunction()
    
end

function WalkStop_onActivate()
    ResetRequest()
    
end

function WalkStop_onUpdate()
    MoveStopCommonFunction()
    
end

function WalkStop00_onActivate()
    ResetRequest()
    
end

function WalkStop00_onUpdate()
    MoveStopCommonFunction()
    
end

function RunStop_onActivate()
    ResetRequest()
    
end

function RunStop_onUpdate()
    MoveStopCommonFunction()
    
end

function RunStop00_onActivate()
    ResetRequest()
    
end

function RunStop00_onUpdate()
    MoveStopCommonFunction()
    
end

function DashStop_onActivate()
    ResetRequest()
    
end

function DashStop_onUpdate()
    MoveStopCommonFunction()
    
end

function DashStop00_onActivate()
    ResetRequest()
    
end

function DashStop00_onUpdate()
    MoveStopCommonFunction()
    
end

function GuardStart_onActivate()
    ResetRequest()
    
end

function GuardStart_onUpdate()
    GuardCommonFunction()
    
end

function GuardStart00_onActivate()
    ResetRequest()
    
end

function GuardStart00_onUpdate()
    GuardCommonFunction()
    
end

function Guarding_onActivate()
    ResetRequest()
    
end

function Guarding_onUpdate()
    GuardCommonFunction()
    
end

function Guarding00_onActivate()
    ResetRequest()
    
end

function Guarding00_onUpdate()
    GuardCommonFunction()
    
end

function GuardEnd_onActivate()
    ResetRequest()
    
end

function GuardEnd_onUpdate()
    GuardCommonFunction()
    
end

function GuardEnd00_onActivate()
    ResetRequest()
    
end

function GuardEnd00_onUpdate()
    GuardCommonFunction()
    
end

function Update()
    g_FrameCount = g_FrameCount + 1
    act(147)
    g_MoveSpeedLevel = hkbGetVariable("MoveSpeedLevel")
    UpdateSpeed()
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
