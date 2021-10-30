function ()
TRUE = 1
FALSE = 0
INVALID = -1
MOVE_TYPE_NONE = 0
MOVE_TYPE_WALK_FRONT = 1
MOVE_TYPE_WALK_BACK = 2
MOVE_TYPE_WALK_LEFT = 3
MOVE_TYPE_WALK_RIGHT = 4
INDEX_TURN_DIRECTION_LEFT90 = 0
INDEX_TURN_DIRECTION_RIGHT90 = 1
INDEX_TURN_DIRECTION_LEFT180 = 2
INDEX_TURN_DIRECTION_RIGHT180 = 3
local f983_local0 = {}
local f983_local1 = "W_WalkFrontBattle"
local f983_local2 = "W_WalkBackBattle"
local f983_local3 = "W_WalkLeftBattle"
local f983_local4 = "W_WalkRightBattle"
f983_local0[1] = f983_local1
f983_local0[2] = f983_local2
f983_local0[3] = f983_local3
f983_local0[4] = f983_local4
move_table_battle = f983_local0
f983_local0 = 0
g_FrameCount = f983_local0
f983_local0 = -1
g_DebugCounter = f983_local0
f983_local0 = function (event)
    hkbFireEvent(event)
    
end

Fire = f983_local0
f983_local0 = function (id)
    return env(ESD_ENV_DS3DoesAnimExist, id)
    return 
    
end

IsExistAnime = f983_local0
f983_local0 = function (name, val)
    hkbSetVariable(name, val)
    
end

SetVariable = f983_local0
f983_local0 = function (name)
    return hkbGetVariable(name)
    
end

GetVariable = f983_local0
f983_local0 = function ()
    local turn_angle = GetVariable("TurnAngle")
    if math.abs(turn_angle) < 45 then
        return FALSE
    end
    local dir = INVALID
    local f988_local0 = math.abs(turn_angle)
    if f988_local0 < 135 then
        if turn_angle < 0 then
            dir = INDEX_TURN_DIRECTION_LEFT90
        else
            dir = INDEX_TURN_DIRECTION_RIGHT90
        end
        act(9105, 90)
    else
        if turn_angle < 0 then
            dir = INDEX_TURN_DIRECTION_LEFT180
        else
            dir = INDEX_TURN_DIRECTION_RIGHT180
        end
        act(9105, 180)
    end
    local event = "W_TurnBattle"
    if dir == INDEX_TURN_DIRECTION_LEFT90 then
        event = event .. "_Left90"
    elseif dir == INDEX_TURN_DIRECTION_RIGHT90 then
        event = event .. "_Right90"
    elseif dir == INDEX_TURN_DIRECTION_LEFT180 then
        event = event .. "_Left180"
    elseif dir == INDEX_TURN_DIRECTION_RIGHT180 then
        event = event .. "_Right180"
    end
    act(9104)
    Fire(event)
    return TRUE
    
end

ExecTurn = f983_local0
f983_local0 = function (move_speed_level)
    local move_angle = GetVariable("MoveAngle")
    if math.abs(move_angle) <= 45 then
        return MOVE_TYPE_WALK_FRONT
    elseif move_angle >= 45 and move_angle <= 135 then
        return MOVE_TYPE_WALK_RIGHT
    elseif move_angle >= -135 and move_angle <= -45 then
        return MOVE_TYPE_WALK_LEFT
    else
        return MOVE_TYPE_WALK_BACK
    end
    
end

GetMoveDir = f983_local0
f983_local0 = function (move_type, is_on_cancel)
    local move_speed_level = GetVariable("MoveSpeedLevel")
    if move_speed_level <= 0 then
        return FALSE
    end
    if is_on_cancel == TRUE and FALSE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        return FALSE
    end
    local move_dir = GetMoveDir(move_speed_level)
    if move_type == move_dir then
        return FALSE
    end
    Fire(move_table_battle[move_dir])
    return TRUE
    
end

ExecMove = f983_local0
f983_local0 = function ()
    if GetVariable("MoveSpeedLevel") > 0 then
        return FALSE
    end
    Fire("W_Idle")
    return TRUE
    
end

ExecStop = f983_local0
f983_local0 = function ()
    if ExecTurn() == TRUE then
        return TRUE
    end
    if TRUE == ExecMove(MOVE_TYPE_NONE, FALSE) then
        return TRUE
    end
    return FALSE
    
end

IdleCommonFunction = f983_local0
f983_local0 = function (move_type)
    if ExecMove(move_type, FALSE) == TRUE then
        return TRUE
    end
    if TRUE == ExecStop() then
        return TRUE
    end
    return FALSE
    
end

MoveCommonFunction = f983_local0
f983_local0 = function ()
    act(9104)
    if ExecMove(MOVE_TYPE_NONE, TRUE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

TurnCommonFunction = f983_local0
f983_local0 = function ()
    Fire("W_Idle")
    return 
    
end

Init_onUpdate = f983_local0
f983_local0 = function ()
    if IdleCommonFunction() == TRUE then
        return 
    end
    
end

Idle_onUpdate = f983_local0
f983_local0 = function ()
    if MoveCommonFunction(MOVE_TYPE_WALK_FRONT) == TRUE then
        return 
    end
    
end

WalkFrontBattle_onUpdate = f983_local0
f983_local0 = function ()
    if MoveCommonFunction(MOVE_TYPE_WALK_LEFT) == TRUE then
        return 
    end
    
end

WalkLeftBattle_onUpdate = f983_local0
f983_local0 = function ()
    if MoveCommonFunction(MOVE_TYPE_WALK_BACK) == TRUE then
        return 
    end
    
end

WalkBackBattle_onUpdate = f983_local0
f983_local0 = function ()
    if MoveCommonFunction(MOVE_TYPE_WALK_RIGHT) == TRUE then
        return 
    end
    
end

WalkRightBattle_onUpdate = f983_local0
f983_local0 = function ()
    if TurnCommonFunction() == TRUE then
        return 
    end
    
end

TurnBattle_Left90_onUpdate = f983_local0
f983_local0 = function ()
    if TurnCommonFunction() == TRUE then
        return 
    end
    
end

TurnBattle_Right90_onUpdate = f983_local0
f983_local0 = function ()
    if TurnCommonFunction() == TRUE then
        return 
    end
    
end

TurnBattle_Left180_onUpdate = f983_local0
f983_local0 = function ()
    if TurnCommonFunction() == TRUE then
        return 
    end
    
end

TurnBattle_Right180_onUpdate = f983_local0
f983_local0 = function ()
    g_FrameCount = g_FrameCount + 1
    
end

Update = f983_local0
f983_local0 = {}
global = f983_local0
f983_local0 = function ()
    
end

dummy = f983_local0
f983_local0 = global
f983_local0.__index = function (table, element)
    return dummy
    
end

f983_local0 = setmetatable
f983_local0(_G, global)

end
