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
THROW_INVALID = 255
THROW_DEFAULT = 0
THROW_STATE_NONE = 0
DAMAGE_LEVEL_NONE = 0
DAMAGE_LEVEL_SMALL = 1
DAMAGE_LEVEL_MIDDLE = 2
DAMAGE_LEVEL_LARGE = 3
DAMAGE_LEVEL_LARGE_BLOW = 4
DAMAGE_LEVEL_PUSH = 5
DAMAGE_LEVEL_FLING = 6
DAMAGE_LEVEL_SMALL_BLOW = 7
DAMAGE_LEVEL_MINIMUM = 8
DAMAGE_LEVEL_UPPER = 9
DAMAGE_LEVEL_EX_BLAST = 10
DAMAGE_LEVEL_BREATH = 11
DAMAGE_FLAG_MINIMUM = 0
DAMAGE_FLAG_SMALL = 1
DAMAGE_FLAG_MEDIUM = 2
DAMAGE_FLAG_LARGE = 3
DAMAGE_FLAG_SMALL_BLOW = 4
DAMAGE_FLAG_LARGE_BLOW = 5
DAMAGE_FLAG_FLING = 6
DAMAGE_FLAG_BLAST = 7
DAMAGE_FLAG_PUSH = 8
DAMAGE_FLAG_BREATH = 9
DAMAGE_FLAG_WEAK = 10
DAMAGE_FLAG_GUARD_SMALL = 11
DAMAGE_FLAG_GUARD_LARGE = 12
DAMAGE_FLAG_GUARD_EXLARGE = 13
DAMAGE_FLAG_GUARD_BREAK = 14
DIRECTION_LEFT = 0
DIRECTION_RIGHT = 1
DIRECTION_FORWARD = 2
DIRECTION_BACK = 3
FRONT_ADD = 0
BACK_ADD = 1
LEFT_ADD = 2
RIGHT_ADD = 3
FRONTUP_ADD = 4
FRONTDOWN_ADD = 5
DAMAGE_TYPE_DEATH = 2
DAMAGE_TYPE_GUARD = 3
DAMAGE_TYPE_PARRY = 5
DAMAGE_TYPE_DEATHIDLE = 8
DAMAGE_TYPE_WEAK_FRAME = 10
DAMAGE_TYPE_GUARDED_BOUND_ENEMY1 = 1008
DAMAGE_TYPE_GUARDED_BOUND_ENEMY2 = 1009
DAMAGE_TYPE_GUARDED_BOUND_ENEMY3 = 1010
DAMAGE_TYPE_PARRY_ENEMY1 = 1011
DAMAGE_TYPE_PARRY_ENEMY2 = 1012
DAMAGE_TYPE_PARRY_ENEMY3 = 1013
DAMAGE_TYPE_WALL_ENEMY1 = 1014
DAMAGE_TYPE_WALL_ENEMY2 = 1015
DAMAGE_TYPE_WALL_ENEMY3 = 1016
DAMAGE_TYPE_NONE = 99999
DAMAGE_ELEMENT_FIRE = 2
HEIGHT_TRANS_TO_LAND = 2
HEIGHT_FORCE_DEATH = 60
ATTACK_DIR_FRONT = 0
ATTACK_DIR_UP = 1
ATTACK_DIR_DOWN = 2
ATTACK_DIR_LEFT = 3
ATTACK_DIR_RIGHT = 4
local f3353_local0 = {}
local f3353_local1 = "W_WalkFrontBattle"
local f3353_local2 = "W_WalkBackBattle"
local f3353_local3 = "W_WalkLeftBattle"
local f3353_local4 = "W_WalkRightBattle"
f3353_local0[1] = f3353_local1
f3353_local0[2] = f3353_local2
f3353_local0[3] = f3353_local3
f3353_local0[4] = f3353_local4
move_table_battle = f3353_local0
f3353_local0 = 0
g_FrameCount = f3353_local0
f3353_local0 = function (num)
    local str = nil
    if num < 10 then
        str = "Debug0"
    else
        str = "Debug"
    end
    local vec = GetVariable(str .. num)
    vec[0] = vec[0] + 1
    vec[1] = g_FrameCount
    SetVariable(str .. num, vec)
    
end

IncNum = f3353_local0
f3353_local0 = function (pos, val)
    local str = nil
    if pos < 10 then
        str = "Debug0"
    else
        str = "Debug"
    end
    vector = GetVariable(str .. pos)
    vector[0] = val
    vector[1] = g_FrameCount
    SetVariable(str .. pos, vector)
    
end

DebugPrint = f3353_local0
f3353_local0 = function (event)
    hkbFireEvent(event)
    
end

Fire = f3353_local0
f3353_local0 = function (id)
    return env(ESD_ENV_DS3DoesAnimExist, id)
    return 
    
end

IsExistAnime = f3353_local0
f3353_local0 = function ()
    act("キャンセルタイミングでAIへのリプランニング要求")
    
end

Replanning = f3353_local0
f3353_local0 = function (name, val)
    hkbSetVariable(name, val)
    
end

SetVariable = f3353_local0
f3353_local0 = function (name)
    return hkbGetVariable(name)
    
end

GetVariable = f3353_local0
f3353_local0 = function (action_type)
    act(9103, action_type)
    
end

CallActionState = f3353_local0
f3353_local0 = function (is_on_cancel)
    if is_on_cancel == TRUE and env(ESD_ENV_DS3IsMoveCancelPossible) == FALSE then
        return FALSE
    end
    local turn_angle = GetVariable("TurnAngle")
    if math.abs(turn_angle) <= 0 then
        return FALSE
    end
    if math.abs(turn_angle) < 45 and env(ESD_ENV_IsEmergencyQuickTurnActivated) == FALSE then
        return FALSE
    end
    local dir = INVALID
    local f3362_local0 = math.abs(turn_angle)
    if f3362_local0 < 135 then
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

ExecTurn = f3353_local0
f3353_local0 = function (is_on_cancel)
    local action_type = -1
    if is_on_cancel == TRUE then
        local action_type_combo = env(ESD_ENV_GetAIChainActionType)
        local action_type_cancel = env(ESD_ENV_GetAIAtkCancelType)
        if action_type_combo > 0 then
            action_type = action_type_combo
        elseif action_type_cancel > 0 then
            action_type = action_type_cancel
        end
    else
        action_type = env(ESD_ENV_GetAIActionType)
    end
    if action_type <= 0 then
        return FALSE
    end
    ExecAttack(action_type)
    return TRUE
    
end

ExecAIAction = f3353_local0
f3353_local0 = function (action_number)
    Fire("W_Attack" .. action_number)
    
end

ExecAttack = f3353_local0
f3353_local0 = function (action_number)
    Fire("W_GuardAttack" .. action_number)
    
end

ExecGuardAttack = f3353_local0
f3353_local0 = function (action_number)
    Fire("W_Step" .. action_number)
    
end

ExecStep = f3353_local0
f3353_local0 = function ()
    local height = env(ESD_ENV_GetFallHeight) / 100
    if height > HEIGHT_FORCE_DEATH then
        Fire("W_DeathStartDefault")
        return TRUE
    end
    if env(ESD_ENV_IsLanding) == FALSE then
        return FALSE
    end
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return TRUE
    end
    if TRUE == ExecDeath() then
        return TRUE
    end
    if env(ESD_ENV_DS3CheckForEventAnimPlaybackRequest) == TRUE then
        return TRUE
    end
    if height > HEIGHT_TRANS_TO_LAND then
        Replanning()
        Fire("W_LandDefault")
    else
        Fire("W_IdleBattle")
    end
    return TRUE
    
end

ExecLand = f3353_local0
f3353_local0 = function ()
    local damage_type = env(ESD_ENV_GetReceivedDamageType)
    local hp = env(ESD_ENV_GetHP)
    if damage_type ~= DAMAGE_TYPE_DEATH and hp > 0 then
        return FALSE
    end
    Fire("W_DeathStartDefault")
    return TRUE
    
end

ExecDeath = f3353_local0
f3353_local0 = function (death_type)
    if env(ESD_ENV_IsAnimEnd, 1) == FALSE then
        return FALSE
    end
    Fire("W_DeathIdleDefault")
    return TRUE
    
end

ExecTransToDeathIdle = f3353_local0
f3353_local0 = function ()
    local damage_level = env(ESD_ENV_GetDamageLevel)
    local damage_type = env(ESD_ENV_GetReceivedDamageType)
    local is_damaged = env(ESD_ENV_HasReceivedAnyDamage)
    if damage_level <= DAMAGE_LEVEL_NONE and is_damaged == FALSE and (damage_type == DAMAGE_TYPE_NONE or damage_type == DAMAGE_TYPE_WEAK_FRAME) then
        return FALSE
    end
    if damage_level <= 0 and is_damaged == TRUE then
        local damage_direction = env(ESD_ENV_GetReceivedDamageDirection)
        if damage_direction == DIRECTION_FORWARD then
            Fire("W_SABlend_Add_Front")
        elseif damage_direction == DIRECTION_LEFT then
            Fire("W_SABlend_Add_Left")
        elseif damage_direction == DIRECTION_RIGHT then
            Fire("W_SABlend_Add_Right")
        elseif damage_direction == DIRECTION_BACK then
            Fire("W_SABlend_Add_Back")
        end
        SetVariable("BlendSA", 1)
        return FALSE
    end
    if damage_type ~= DAMAGE_TYPE_NONE then
        if damage_type == DAMAGE_TYPE_PARRY or damage_type >= DAMAGE_TYPE_PARRY_ENEMY1 and damage_type <= DAMAGE_TYPE_PARRY_ENEMY3 then
            if damage_type == DAMAGE_TYPE_PARRY_ENEMY2 then
                Fire("W_DamageParryEnemy2")
            else
                Fire("W_DamageParryEnemy1")
            end
            Replanning()
            return TRUE
        elseif damage_type >= DAMAGE_TYPE_WALL_ENEMY1 and damage_type <= DAMAGE_TYPE_WALL_ENEMY3 then
            if damage_type == DAMAGE_TYPE_WALL_ENEMY2 then
                Fire("W_AttackBoundEnemy2")
            else
                Fire("W_AttackBoundEnemy1")
            end
            Replanning()
            return TRUE
        elseif damage_type >= DAMAGE_TYPE_GUARDED_BOUND_ENEMY1 and damage_type <= DAMAGE_TYPE_GUARDED_BOUND_ENEMY3 then
            if damage_type == DAMAGE_TYPE_GUARDED_BOUND_ENEMY2 then
                Fire("W_AttackBoundEnemy2")
            else
                Fire("W_AttackBoundEnemy1")
            end
            Replanning()
            return TRUE
        end
    end
    if env(ESD_ENV_GetIsWeakPoint) == TRUE then
        SetVariable("IndexDamageDirection", env(ESD_ENV_GetReceivedDamageDirection))
        Replanning()
        act(141, DAMAGE_FLAG_WEAK)
        Fire("W_DamageWeak")
        return TRUE
    end
    if ExecDamageDefault(damage_level) == TRUE then
        return TRUE
    end
    return FALSE
    
end

ExecDamage = f3353_local0
f3353_local0 = function (damage_level)
    SetVariable("BlendDamageDir", 0)
    SetVariable("BlendDamageFire", 0)
    if damage_level == DAMAGE_LEVEL_SMALL then
        SetVariable("DamageDefaultState", 1)
        act(141, DAMAGE_FLAG_SMALL)
        ExecDamageAnimBlend(damage_level)
        Fire("W_DamageSmall")
    elseif damage_level == DAMAGE_LEVEL_LARGE then
        SetVariable("DamageDefaultState", 3)
        act(141, DAMAGE_FLAG_LARGE)
        ExecDamageAnimBlend(damage_level)
        Fire("W_DamageLarge")
    elseif damage_level == DAMAGE_LEVEL_FLING then
        act(141, DAMAGE_FLAG_FLING)
        Fire("W_DamageFling")
    elseif damage_level == DAMAGE_LEVEL_SMALL_BLOW then
        act(125)
        act(141, DAMAGE_FLAG_LARGE_BLOW)
        Fire("W_DamageSmallBlow")
    elseif damage_level == DAMAGE_LEVEL_UPPER then
        act(141, DAMAGE_FLAG_MINIMUM)
        Fire("W_DamageUpper")
    end
    Replanning()
    return TRUE
    
end

ExecDamageDefault = f3353_local0
f3353_local0 = function (damage_level)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    local f3372_local0 = env(ESD_ENV_GetSpecialAttribute)
    if f3372_local0 == DAMAGE_ELEMENT_FIRE then
        local event = "W_FireMiddleDamageBlend_Add"
        if damage_level == DAMAGE_LEVEL_SMALL then
            event = "W_FireSmallDamageBlend_Add"
        end
        SetVariable("BlendDamageFire", 1)
        Fire(event)
        return 
    end
    local event = "W_DirDamageSmall"
    local f3372_local1 = DAMAGE_LEVEL_LARGE
    if damage_level == f3372_local1 then
        event = "W_DirDamageLarge"
    end
    f3372_local1 = {}
    local f3372_local2 = "Front_Add"
    local f3372_local3 = "Back_Add"
    local f3372_local4 = "Left_Add"
    local f3372_local5 = "Right_Add"
    local f3372_local6 = "FrontUp_Add"
    local f3372_local7 = "FrontDown_Add"
    f3372_local1[1] = f3372_local2
    f3372_local1[2] = f3372_local3
    f3372_local1[3] = f3372_local4
    f3372_local1[4] = f3372_local5
    f3372_local1[5] = f3372_local6
    f3372_local1[6] = f3372_local7
    SetVariable("BlendDamageDir", 1)
    Fire(event .. f3372_local1[GetRealDir() + 1])
    return 
    
end

ExecDamageAnimBlend = f3353_local0
f3353_local0 = function ()
    local pos_dir = env(ESD_ENV_GetReceivedDamageDirection)
    local atk_dir = env(ESD_ENV_DS3GetAtkDirection)
    SetVariable("IndexDamageDirection", pos_dir)
    local real_dir = FRONT_ADD
    if atk_dir == ATTACK_DIR_FRONT then
        if pos_dir == DIRECTION_FORWARD then
            real_dir = FRONT_ADD
        elseif pos_dir == DIRECTION_RIGHT then
            real_dir = RIGHT_ADD
        elseif pos_dir == DIRECTION_BACK then
            real_dir = BACK_ADD
        elseif pos_dir == DIRECTION_LEFT then
            real_dir = LEFT_ADD
        end
    elseif atk_dir == ATTACK_DIR_UP then
        if pos_dir == DIRECTION_FORWARD then
            real_dir = FRONTUP_ADD
        elseif pos_dir == DIRECTION_RIGHT then
            real_dir = RIGHT_ADD
        elseif pos_dir == DIRECTION_BACK then
            real_dir = BACK_ADD
        elseif pos_dir == DIRECTION_LEFT then
            real_dir = LEFT_ADD
        end
    elseif atk_dir == ATTACK_DIR_DOWN then
        if pos_dir == DIRECTION_FORWARD then
            real_dir = FRONTDOWN_ADD
        elseif pos_dir == DIRECTION_RIGHT then
            real_dir = RIGHT_ADD
        elseif pos_dir == DIRECTION_BACK then
            real_dir = BACK_ADD
        elseif pos_dir == DIRECTION_LEFT then
            real_dir = LEFT_ADD
        end
    elseif atk_dir == ATTACK_DIR_LEFT then
        if pos_dir == DIRECTION_FORWARD then
            real_dir = RIGHT_ADD
        elseif pos_dir == DIRECTION_RIGHT then
            real_dir = BACK_ADD
        elseif pos_dir == DIRECTION_BACK then
            real_dir = LEFT_ADD
        elseif pos_dir == DIRECTION_LEFT then
            real_dir = FRONT_ADD
        end
    elseif atk_dir == ATTACK_DIR_RIGHT then
        if pos_dir == DIRECTION_FORWARD then
            real_dir = LEFT_ADD
        elseif pos_dir == DIRECTION_LEFT then
            real_dir = BACK_ADD
        elseif pos_dir == DIRECTION_BACK then
            real_dir = RIGHT_ADD
        elseif pos_dir == DIRECTION_RIGHT then
            real_dir = FRONT_ADD
        end
    end
    return real_dir
    
end

GetRealDir = f3353_local0
f3353_local0 = function (move_speed_level)
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

GetMoveDir = f3353_local0
f3353_local0 = function (move_type, is_on_cancel)
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

ExecMove = f3353_local0
f3353_local0 = function ()
    local move_speed_level = GetVariable("MoveSpeedLevel")
    if move_speed_level > 0 then
        return FALSE
    end
    Fire("W_IdleBattle")
    return TRUE
    
end

ExecStop = f3353_local0
f3353_local0 = function (attack, defense)
    act(102, attack)
    act(103, defense)
    
end

SetThrowFlag = f3353_local0
f3353_local0 = function ()
    act(139)
    
end

SetIdleFlag = f3353_local0
f3353_local0 = function ()
    SetThrowFlag(THROW_INVALID, THROW_INVALID)
    
end

SetThrowInvalid = f3353_local0
f3353_local0 = function ()
    SetThrowFlag(THROW_DEFAULT, THROW_INVALID)
    
end

SetThrowDefInvalid = f3353_local0
f3353_local0 = function ()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return TRUE
    end
    if TRUE == ExecDeath() then
        return TRUE
    end
    if env(ESD_ENV_DS3CheckForEventAnimPlaybackRequest) == TRUE then
        return TRUE
    end
    if TRUE == ExecDamage() then
        return TRUE
    end
    return FALSE
    
end

ExecPassiveTransition = f3353_local0
f3353_local0 = function (is_on_cancel, move_type, enable_turn)
    if ExecAIAction(is_on_cancel) == TRUE then
        return TRUE
    end
    if enable_turn == TRUE and ExecTurn(is_on_cancel) == TRUE then
        return TRUE
    end
    if ExecMove(move_type, is_on_cancel) == TRUE then
        return TRUE
    end
    return FALSE
    
end

ExecActiveTransition = f3353_local0
f3353_local0 = function ()
    if ExecPassiveTransition() == TRUE then
        return TRUE
    end
    if ExecActiveTransition(FALSE, MOVE_TYPE_NONE, TRUE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

IdleCommonFunction = f3353_local0
f3353_local0 = function (move_type)
    if ExecPassiveTransition() == TRUE then
        return TRUE
    end
    if ExecActiveTransition(FALSE, move_type, FALSE) == TRUE then
        return TRUE
    end
    if TRUE == ExecStop() then
        return TRUE
    end
    return FALSE
    
end

MoveCommonFunction = f3353_local0
f3353_local0 = function ()
    act(9104)
    if ExecPassiveTransition() == TRUE then
        return TRUE
    end
    if ExecActiveTransition(TRUE, MOVE_TYPE_NONE, FALSE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

TurnCommonFunction = f3353_local0
f3353_local0 = function ()
    if ExecActiveTransition(TRUE, MOVE_TYPE_NONE, TRUE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

GenerateCommonFunction = f3353_local0
f3353_local0 = function (action_number)
    CallActionState(action_number)
    if ExecPassiveTransition() == TRUE then
        return TRUE
    end
    if ExecActiveTransition(TRUE, MOVE_TYPE_NONE, TRUE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

AttackCommonFunction = f3353_local0
f3353_local0 = function ()
    if ExecPassiveTransition() == TRUE then
        return TRUE
    end
    if ExecActiveTransition(TRUE, MOVE_TYPE_NONE, TRUE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

DamageCommonFunction = f3353_local0
f3353_local0 = function ()
    if ExecPassiveTransition() == TRUE then
        return TRUE
    end
    if ExecActiveTransition(TRUE, MOVE_TYPE_NONE, TRUE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

LandCommonFunction = f3353_local0
f3353_local0 = function ()
    if ExecLand() == TRUE then
        return TRUE
    end
    return FALSE
    
end

FallCommonFunction = f3353_local0
f3353_local0 = function ()
    act(9102)
    if ExecPassiveTransition() == TRUE then
        return TRUE
    end
    if ExecActiveTransition(TRUE, MOVE_TYPE_NONE, TRUE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

EventCommonFunction = f3353_local0
f3353_local0 = function ()
    if env(ESD_ENV_DS3HasThrowRequest) == FALSE then
        if ExecDeath() == TRUE then
            return TRUE
        end
        if env(ESD_ENV_DS3CheckForEventAnimPlaybackRequest) == TRUE then
            return TRUE
        end
        if TRUE == ExecDamage() then
            return TRUE
        end
    end
    if ExecActiveTransition(TRUE, MOVE_TYPE_NONE, TRUE) == TRUE then
        return TRUE
    end
    return FALSE
    
end

ThrowCommonFunction = f3353_local0
f3353_local0 = function ()
    if env(ESD_ENV_GetReceivedDamageType) == DAMAGE_TYPE_DEATHIDLE or env(ESD_ENV_GetHP) <= 0 then
        Fire("W_DeathIdleDefault")
        return 
    end
    if env(ESD_ENV_IsGenerateAction) == TRUE then
        Fire("W_Generate")
        return 
    end
    Fire("W_IdleBattle")
    return 
    
end

Init_onUpdate = f3353_local0
f3353_local0 = function ()
    SetIdleFlag()
    
end

IdleBattle_onActivate = f3353_local0
f3353_local0 = function ()
    if IdleCommonFunction() == TRUE then
        return 
    end
    
end

IdleBattle_onUpdate = f3353_local0
f3353_local0 = function ()
    if MoveCommonFunction(MOVE_TYPE_WALK_FRONT) == TRUE then
        return 
    end
    
end

WalkFrontBattle_onUpdate = f3353_local0
f3353_local0 = function ()
    if MoveCommonFunction(MOVE_TYPE_WALK_LEFT) == TRUE then
        return 
    end
    
end

WalkLeftBattle_onUpdate = f3353_local0
f3353_local0 = function ()
    if MoveCommonFunction(MOVE_TYPE_WALK_BACK) == TRUE then
        return 
    end
    
end

WalkBackBattle_onUpdate = f3353_local0
f3353_local0 = function ()
    if MoveCommonFunction(MOVE_TYPE_WALK_RIGHT) == TRUE then
        return 
    end
    
end

WalkRightBattle_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3000)
    
end

Attack3000_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3000) == TRUE then
        return 
    end
    
end

Attack3000_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3001)
    
end

Attack3001_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3001) == TRUE then
        return 
    end
    
end

Attack3001_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3002)
    
end

Attack3002_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3002) == TRUE then
        return 
    end
    
end

Attack3002_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3003)
    
end

Attack3003_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3003) == TRUE then
        return 
    end
    
end

Attack3003_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3004)
    
end

Attack3004_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3004) == TRUE then
        return 
    end
    
end

Attack3004_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3005)
    
end

Attack3005_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3005) == TRUE then
        return 
    end
    
end

Attack3005_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3006)
    
end

Attack3006_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3006) == TRUE then
        return 
    end
    
end

Attack3006_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3007)
    
end

Attack3007_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3007) == TRUE then
        return 
    end
    
end

Attack3007_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3008)
    
end

Attack3008_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3008) == TRUE then
        return 
    end
    
end

Attack3008_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(3009)
    
end

Attack3009_onActivate = f3353_local0
f3353_local0 = function ()
    if AttackCommonFunction(3009) == TRUE then
        return 
    end
    
end

Attack3009_onUpdate = f3353_local0
f3353_local0 = function ()
    if TurnCommonFunction() == TRUE then
        return 
    end
    
end

TurnBattle_Left90_onUpdate = f3353_local0
f3353_local0 = function ()
    if TurnCommonFunction() == TRUE then
        return 
    end
    
end

TurnBattle_Right90_onUpdate = f3353_local0
f3353_local0 = function ()
    if TurnCommonFunction() == TRUE then
        return 
    end
    
end

TurnBattle_Left180_onUpdate = f3353_local0
f3353_local0 = function ()
    if TurnCommonFunction() == TRUE then
        return 
    end
    
end

TurnBattle_Right180_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageSpecialDirection_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageSpecialDirection_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageSpecialRandom_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageSpecialRandom_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

SABreak_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

SABreak_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageSmall_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageSmall_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageMiddle_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageMiddle_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageLarge_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageLarge_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageMinimum_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageMinimum_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageLargeBlow_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageLargeBlow_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageSmallBlow_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageSmallBlow_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageFling_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageFling_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamagePush_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamagePush_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageUpper_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageUpper_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageWeak_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageWeak_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageSmallFire_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageSmallFire_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageLargeFire_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageLargeFire_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageParryEnemy1_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageParryEnemy1_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

DamageParryEnemy2_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

DamageParryEnemy2_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

AttackBoundEnemy1_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

AttackBoundEnemy1_onUpdate = f3353_local0
f3353_local0 = function ()
    CallActionState(0)
    
end

AttackBoundEnemy2_onActivate = f3353_local0
f3353_local0 = function ()
    if DamageCommonFunction() == TRUE then
        return 
    end
    
end

AttackBoundEnemy2_onUpdate = f3353_local0
f3353_local0 = function ()
    act("イベントアニメ再生要求拒否")
    
end

DeathStart_Activate = f3353_local0
f3353_local0 = function ()
    act("イベントアニメ再生要求拒否")
    
end

DeathStart_Update = f3353_local0
f3353_local0 = function ()
    if ExecTransToDeathIdle() == TRUE then
        return 
    end
    
end

DeathStartDefault_onUpdate = f3353_local0
f3353_local0 = function ()
    if FallCommonFunction() == TRUE then
        return 
    end
    
end

FallStartDefault_onUpdate = f3353_local0
f3353_local0 = function ()
    if FallCommonFunction() == TRUE then
        return 
    end
    
end

FallingDefault_onUpdate = f3353_local0
f3353_local0 = function ()
    if LandCommonFunction() == TRUE then
        return 
    end
    
end

LandDefault_onUpdate = f3353_local0
f3353_local0 = function ()
    SetVariable("ThrowID", env(ESD_ENV_GetThrowAnimID))
    
end

Throw_Activate = f3353_local0
f3353_local0 = function ()
    if ThrowCommonFunction() == TRUE then
        act(139)
        return 
    end
    
end

ThrowAtk_onUpdate = f3353_local0
f3353_local0 = function ()
    Replanning()
    
end

ThrowDef_onActivate = f3353_local0
f3353_local0 = function ()
    if env(ESD_ENV_IsThrowSelfDeath) == TRUE then
        act(139)
        Fire("W_ThrowDefDeath")
        return 
    end
    if TRUE == ThrowCommonFunction() then
        act(139)
        return 
    end
    
end

ThrowDef_onUpdate = f3353_local0
f3353_local0 = function ()
    if ExecTransToDeathIdle() == TRUE then
        return 
    end
    
end

ThrowDefDeath_onUpdate = f3353_local0
f3353_local0 = function ()
    act(136, THROW_STATE_NONE)
    
end

ThrowDefDeathIdle_onActivate = f3353_local0
f3353_local0 = function ()
    if GenerateCommonFunction() == TRUE then
        return 
    end
    
end

Generate_onUpdate = f3353_local0
f3353_local0 = function ()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

Event14000_onUpdate = f3353_local0
f3353_local0 = function ()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

Event14001_onUpdate = f3353_local0
f3353_local0 = function ()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

Event14010_onUpdate = f3353_local0
f3353_local0 = function ()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

Event14011_onUpdate = f3353_local0
f3353_local0 = function ()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

Event14020_onUpdate = f3353_local0
f3353_local0 = function ()
    if EventCommonFunction() == TRUE then
        return 
    end
    
end

Event14021_onUpdate = f3353_local0
f3353_local0 = function ()
    SetVariable("BlendSA", 0)
    
end

SABlend_NoAdd_onUpdate = f3353_local0
f3353_local0 = function ()
    SetVariable("BlendDamageDir", 0)
    
end

DamageBlend_NoAdd_onUpdate = f3353_local0
f3353_local0 = function ()
    SetVariable("BlendDamageFire", 0)
    
end

FireDamageBlend_NoAdd_onUpdate = f3353_local0
f3353_local0 = function ()
    g_FrameCount = g_FrameCount + 1
    
end

Update = f3353_local0
f3353_local0 = function ()
    
end

Modifier_onGenerate = f3353_local0
f3353_local0 = {}
global = f3353_local0
f3353_local0 = function ()
    
end

dummy = f3353_local0
f3353_local0 = global
f3353_local0.__index = function (table, element)
    return dummy
    
end

f3353_local0 = setmetatable
f3353_local0(_G, global)

end
