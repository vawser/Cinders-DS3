function ()
TRUE = 1
FALSE = 0
MOVE_RIGHT = 0
MOVE_LEFT = 1
MOVE_NONE = 2
function Fire(event)
    hkbFireEvent(event)
    
end

function SetVariable(name, val)
    hkbSetVariable(name, val)
    
end

function GetVariable(name)
    return hkbGetVariable(name)
    
end

function ClearAttackVariable()
    SetVariable("Add_Attack01", 0)
    SetVariable("Add_Attack02", 0)
    SetVariable("Add_Attack03", 0)
    
end

function IsAttack()
    if GetVariable("Add_Attack01") > 0 then
        return TRUE
    end
    if GetVariable("Add_Attack02") > 0 then
        return TRUE
    end
    if GetVariable("Add_Attack03") > 0 then
        return TRUE
    end
    return FALSE
    
end

function ExecMoveStart(is_cancel)
    local speed_level = GetVariable("MoveSpeedLevel")
    if speed_level <= 0 then
        return FALSE
    end
    if is_cancel == TRUE and FALSE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        return FALSE
    end
    local turn_angle = GetVariable("TurnAngle")
    local abs_turn_angle = math.abs(turn_angle)
    if abs_turn_angle > 30 then
        abs_turn_angle = 30
    end
    SetVariable("BlendRatio", abs_turn_angle)
    if turn_angle < 0 then
        Fire("W_MoveLeftStart")
    else
        Fire("W_MoveRightStart")
    end
    return TRUE
    
end

function ExecMoveEnd(move_type)
    local speed_level = GetVariable("MoveSpeedLevel")
    if speed_level > 0 then
        return FALSE
    end
    if move_type == MOVE_LEFT then
        Fire("W_MoveLeftEnd")
    else
        Fire("W_MoveRightEnd")
    end
    return TRUE
    
end

function ExecAIAction()
    if IsAttack() == TRUE then
        return FALSE
    end
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type < 0 then
        return FALSE
    end
    SetVariable("Add_Attack01", 1)
    Fire("W_Attack" .. action_type .. "_Add")
    return TRUE
    
end

function ExecCombo(combo, next_attack)
    local sp_effect = 11200
    if combo == 2 then
        sp_effect = 11201
    end
    if env(ESD_ENV_DS3GetSpecialEffectID, sp_effect) == TRUE and GetVariable("Add_Attack0" .. combo + 1) <= 0 then
        SetVariable("Add_Attack0" .. combo + 1, 1)
        Fire("W_Attack" .. next_attack .. "_Add")
        return TRUE
    end
    return FALSE
    
end

function ExecOff()
    if env(ESD_ENV_IsAnimEnd, 1) == FALSE then
        return FALSE
    end
    Fire("W_TransOff")
    return TRUE
    
end

function IdleCommonFunction()
    if env(ESD_ENV_DS3CheckForEventAnimPlaybackRequest) == TRUE then
        return TRUE
    end
    if TRUE == ExecAIAction() then
        return TRUE
    end
    if TRUE == ExecMoveStart(FALSE) then
        return TRUE
    end
    
end

function TransCommonFunction()
    if env(ESD_ENV_DS3CheckForEventAnimPlaybackRequest) == TRUE then
        return TRUE
    end
    if ExecMoveStart(TRUE) == TRUE then
        return TRUE
    end
    
end

function MoveCommonFunction(move_type)
    if env(ESD_ENV_DS3CheckForEventAnimPlaybackRequest) == TRUE then
        return TRUE
    end
    if TRUE == ExecAIAction() then
        return TRUE
    end
    if ExecMoveEnd(move_type) == TRUE then
        return TRUE
    end
    
end

function MoveStartCommonFunction(move_type)
    if env(ESD_ENV_DS3CheckForEventAnimPlaybackRequest) == TRUE then
        return TRUE
    end
    if TRUE == ExecAIAction() then
        return TRUE
    end
    if env(ESD_ENV_IsAnimEnd, 1) == TRUE then
        if ExecMoveEnd(move_type) == TRUE then
            return TRUE
        end
        if move_type == MOVE_LEFT then
            Fire("W_MoveLeft")
        else
            Fire("W_MoveRight")
        end
        return TRUE
    end
    
end

function MoveEndCommonFunction(move_type)
    if env(ESD_ENV_DS3CheckForEventAnimPlaybackRequest) == TRUE then
        return TRUE
    end
    if TRUE == ExecAIAction() then
        return TRUE
    end
    if env(ESD_ENV_IsAnimEnd, 1) == TRUE then
        if ExecMoveStart(TRUE) == TRUE then
            return TRUE
        end
        Fire("W_IdleOn")
        return TRUE
    end
    
end

function IdleOn_onUpdate()
    if IdleCommonFunction() == TRUE then
        return 
    end
    
end

function TransOn_onUpdate()
    if TransCommonFunction() == TRUE then
        return 
    end
    
end

function TransOff_onUpdate()
    ClearAttackVariable()
    
end

function MoveRightStart_onUpdate()
    if MoveStartCommonFunction(MOVE_RIGHT) == TRUE then
        return 
    end
    
end

function MoveRightEnd_onUpdate()
    if MoveEndCommonFunction(MOVE_RIGHT) == TRUE then
        return 
    end
    
end

function MoveRight_onUpdate()
    if MoveCommonFunction(MOVE_RIGHT) == TRUE then
        return 
    end
    
end

function MoveLeft_onUpdate()
    if MoveCommonFunction(MOVE_LEFT) == TRUE then
        return 
    end
    
end

function MoveLeftStart_onUpdate()
    if MoveStartCommonFunction(MOVE_LEFT) == TRUE then
        return 
    end
    
end

function MoveLeftEnd_onUpdate()
    if MoveEndCommonFunction(MOVE_LEFT) == TRUE then
        return 
    end
    
end

function MoveLeftEndOff_onUpdate()
    ClearAttackVariable()
    if ExecOff() == TRUE then
        return 
    end
    
end

function MoveRightEndOff_onUpdate()
    ClearAttackVariable()
    if ExecOff() == TRUE then
        return 
    end
    
end

function Attack3001_Add_onUpdate()
    if ExecCombo(1, 3002) == TRUE then
        return 
    end
    
end

function Attack3004_Add_onUpdate()
    if ExecCombo(1, 3005) == TRUE then
        return 
    end
    
end

function Attack01_NoAdd_onUpdate()
    SetVariable("Add_Attack01", 0)
    
end

function Attack3002_Add_onUpdate()
    if ExecCombo(2, 3003) == TRUE then
        return 
    end
    
end

function Attack3005_Add_onUpdate()
    if ExecCombo(2, 3006) == TRUE then
        return 
    end
    
end

function Attack02_NoAdd_onUpdate()
    SetVariable("Add_Attack02", 0)
    
end

function Attack03_NoAdd_onUpdate()
    SetVariable("Add_Attack03", 0)
    
end

function Update()
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
