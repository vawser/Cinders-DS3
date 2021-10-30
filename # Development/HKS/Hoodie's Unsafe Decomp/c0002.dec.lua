function ()
GamepadY = 0
GamepadTrigger = 0
IsMoving = 0
IsMoveStop = 0
CannotMove = 0
IsMagicLower = 0
IsMagicUpper = 0
IsUpperHalfActive = 0
IsUpperFullActive = 0
IsLowerHalfActive = 0
function Master_onUpdate()
    Gamepad()
    hkbSetVariable("IsMoving", IsMoving)
    hkbSetVariable("MoveStop", IsMoveStop)
    hkbSetVariable("CannotMove", CannotMove)
    hkbSetVariable("IsMagicLower", IsMagicLower)
    hkbSetVariable("IsMagicUpper", IsMagicUpper)
    hkbSetVariable("UpperHalfActive", IsUpperHalfActive)
    hkbSetVariable("UpperFullActive", IsUpperFullActive)
    hkbSetVariable("LowerHalfActive", IsLowerHalfActive)
    
end

function Gamepad()
    GamepadY = hkbGetVariable("GamepadY")
    GamepadTrigger = hkbGetVariable("GamepadTrigger")
    
end

function MoveStart()
    if GamepadY < 0 and 0 == CannotMove then
        if IsMagicUpper == 1 then
            SwitchOnLowerHalf()
        end
        IsMoving = 1
        hkbFireEvent("W_MovementForwardLower")
        return 
    end
    
end

function MoveStop()
    if GamepadY == 0 and 0 == IsMoveStop then
        hkbFireEvent("W_MoveStopLower")
        return 
    elseif IsMoving == 1 and 1 == CannotMove then
        hkbFireEvent("W_MoveStopLower")
        return 
    end
    
end

function MagicStart()
    if GamepadTrigger ~= 0 and 0 == IsMagicUpper then
        if IsMoveStop == 1 then
            SwitchOnUpperHalf()
            hkbFireEvent("W_MagicStartUpper")
            return 
        elseif 1 == IsMoving then
            SwitchOnUpperHalf()
            hkbFireEvent("W_MagicStartUpper")
            return 
        elseif 0 == IsMoving then
            SwitchOnUpperFull()
            hkbFireEvent("W_MagicStartUpper")
            return 
        end
    end
    
end

function SwitchOnUpperHalf()
    hkbFireEvent("SwitchOnUpperHalf")
    IsUpperHalfActive = 1
    
end

function SwitchOffUpperHalf()
    hkbFireEvent("SwitchOffUpperHalf")
    IsUpperHalfActive = 0
    
end

function SwitchOnUpperFull()
    hkbFireEvent("SwitchOnUpperFull")
    IsUpperFullActive = 1
    
end

function SwitchOffUpperFull()
    hkbFireEvent("SwitchOffUpperFull")
    IsUpperFullActive = 0
    
end

function SwitchOnLowerHalf()
    hkbFireEvent("SwitchOnLowerHalf")
    IsLowerHalfActive = 1
    
end

function SwitchOffLowerHalf()
    hkbFireEvent("SwitchOffLowerHalf")
    IsLowerHalfActive = 0
    
end

function PreIdle_onUpdate()
    MoveStart()
    MagicStart()
    
end

function IdleLower_onActivate()
    SwitchOffLowerHalf()
    if IsMagicUpper == 1 then
        SwitchOnUpperFull()
    end
    
end

function IdleLower_onUpdate()
    MoveStart()
    MagicStart()
    
end

function IdleUpper_onActivate()
    SwitchOffUpperFull()
    SwitchOffUpperHalf()
    
end

function IdleUpper_onUpdate()
    MagicStart()
    
end

function MovementForwardLower_onUpdate()
    MagicStart()
    MoveStop()
    
end

function MoveStopLower_onActivate()
    IsMoving = 0
    IsMoveStop = 1
    
end

function MoveStopLower_onUpdate()
    MagicStart()
    MoveStart()
    
end

function MoveStopLower_onDeactivate()
    IsMoveStop = 0
    
end

function MovementForwardUpper_onActivate()
    IsMoving = 1
    
end

function MovementForwardUpper_onUpdate()
    MagicStart()
    MoveStop()
    
end

function MoveStopUpper_onActivate()
    IsMoveStop = 1
    IsMoving = 0
    
end

function MoveStopUpper_onUpdate()
    MagicStart()
    MoveStart()
    
end

function MoveStopUpper_onDeactivate()
    IsMoveStop = 0
    
end

function MagicStartLower_onActivate()
    IsMagicLower = 1
    CannotMove = 1
    
end

function MagicStartLower_onDeactivate()
    CannotMove = 0
    
end

function MagicEndLower_onDeactivate()
    IsMagicLower = 0
    
end

function MagicStartUpper_onActivate()
    IsMagicUpper = 1
    CannotMove = 1
    
end

function MagicStartUpper_onDeactivate()
    CannotMove = 0
    
end

function MagicEndUpper_onDeactivate()
    IsMagicUpper = 0
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
