function ()
TRUE = 1
FALSE = 0
STATE_IDLE = 0
STATE_MOVE = 1
STATE_ATTACK = 2
STATE_DEFAULT = 0
STATE_GUARD = 1
MOVE_STOP = 0
MOVE_WALK_FRONT = 1
MOVE_WALK_LEFT = 2
MOVE_WALK_RIGH = 3
MOVE_WALK_BACK = 4
MOVE_RUN = 5
INVALID_DAMAGE = 99999
IS_BLEND_ATTACK = FALSE
DAMAGE_LEVEL_SMALL = 1
DAMAGE_LEVEL_MIDDLE = 2
DAMAGE_LEVEL_LARGE = 3
DAMAGE_LEVEL_EXLARGE = 4
DAMAGE_LEVEL_PUSHED = 5
DAMAGE_LEVEL_DUSTERED = 6
DAMAGE_LEVEL_BLAST = 7
DAMAGE_LEVEL_MINIMUM = 8
DAMAGE_LEVEL_GUARDSMALL = 11
DAMAGE_LEVEL_GUARDLARGE = 12
DAMAGE_LEVEL_GUARDEXLARGE = 13
DAMAGE_LEVEL_GUARDBREAK = 14
ATTRIB_FIRE = 2
ATTRIB_SHOCK = 6
DAMAGE_TYPE_DEATH = 2
DAMAGE_TYPE_PARRY = 5
DAMAGE_TYPE_SKYDEATH = 9
DAMAGE_TYPE_GUARD = 1000
DAMAGE_TYPE_GUARDBREAK = 1001
DAMAGE_TYPE_GUARDLEFT = 1003
DAMAGE_TYPE_GUARD_ENEMY1 = 1008
DAMAGE_TYPE_GUARD_ENEMY2 = 1009
DAMAGE_TYPE_GUARD_ENEMY3 = 1010
DEATH_INDEX_DEFAULT = 0
DEATH_INDEX_WEAK = 1
DEATH_INDEX_SKY = 2
DEATH_INDEX_BLAST = 3
DEATH_INDEX_DUSTER = 4
DEATH_INDEX_LAND = 5
DEATH_INDEX_LANDFRONT = 6
DEATH_INDEX_LANDBACK = 7
DEATH_INDEX_FIRE = 8
GUARD_LEVEL_NONE = 0
GUARD_LEVEL_SMALL = 1
GUARD_LEVEL_MIDDLE = 2
GUARD_LEVEL_LARGE = 3
GUARD_LEVEL_EXLARGE = 4
DAMAGE_DIRECTION_LEFT = 0
DAMAGE_DIRECTION_RIGHT = 1
DAMAGE_DIRECTION_FRONT = 2
DAMAGE_DIRECTION_BACK = 3
FALL_INDEX_DEFAULT = 0
FALL_INDEX_FRONT = 1
FALL_INDEX_BACK = 2
LAND_INDEX_DEFAULT = 0
LAND_INDEX_HEAVY = 1
LAND_INDEX_FRONT = 2
LAND_INDEX_BACK = 3
IS_THROW_INVALID = 255
IS_THROW_DEFAULT = 0
IS_THROW_IDLE = 1
g_DebugCounter = 0
g_FrameCount = 0
g_TurnAngle = 0
g_MoveSpeedLevel = 0
g_IsLockon = false
g_MoveAngle = 0
g_IsGuard = FALSE
g_ActionNumber = -1
g_MoveState = -1
blackDog = nil
Enemy = {}
Enemy.New = function ()
    local f2743_local0 = {}
    SETFIELD_R1 0 0 -1
    f2743_local0.OrderAttackCancel = REG4294967295
    f2743_local0.OrderAttackCombo = REG4294967295
    f2743_local0.OrderStep = REG4294967295
    f2743_local0.OrderStepCancel = REG4294967295
    f2743_local0.ActionNumber = REG4294967289
    f2743_local0.MoveState = REG4294967295
    f2743_local0.DamageState = REG4294967295
    f2743_local0.DamageDirection = REG4294967295
    f2743_local0.DamageType = REG4294967295
    f2743_local0.IsThrowed = FALSE
    f2743_local0.IsFall = FALSE
    f2743_local0.IsAttack = FALSE
    f2743_local0.IsDamage = FALSE
    f2743_local0.Debug = REG4294967276
    local f2743_local1 = setmetatable
    local f2743_local2 = f2743_local0
    local f2743_local3 = {}
    f2743_local3.__index = Enemy
    f2743_local1(f2743_local2, f2743_local3)
    return f2743_local0
    
end

function ExecEvent(state)
    act(9000, "イベント実行[" .. state .. "]")
    hkbFireEvent(state)
    return 
    
end

function CallActionState(action_type)
    act(9000, "AI攻撃ステート設定[" .. action_type .. "]")
    act(9103, action_type)
    
end

function AIAttack(action_number)
    g_ActionNumber = action_number
    CallActionState(0)
    if IS_BLEND_ATTACK == FALSE then
        ExecEvent("W_Attack" .. action_number)
    else
        hkbSetVariable("AttackNumber", action_number)
        ExecEvent("W_AttackBlend")
    end
    
end

function AIStep(action_number)
    g_ActionNumber = action_number
    CallActionState(0)
    hkbSetVariable("StepNumber", action_number)
    ExecEvent("W_Step")
    
end

function ExecAIAction()
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type ~= 9910 and g_IsGuard == TRUE then
        g_IsGuard = FALSE
        hkbSetVariable("IdleIndex", STATE_DEFAULT)
        hkbSetVariable("MoveIndex", STATE_DEFAULT)
        ExecEvent("W_GuardEnd")
        return TRUE
    end
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 700 and action_type < 800 then
        AIStep(action_type)
        return TRUE
    end
    if action_type >= 3000 and action_type < 4000 then
        AIAttack(action_type)
        return TRUE
    end
    if action_type == 9910 and g_IsGuard == FALSE then
        g_IsGuard = TRUE
        hkbSetVariable("IdleIndex", STATE_GUARD)
        hkbSetVariable("MoveIndex", STATE_GUARD)
        ExecEvent("W_GuardStart")
    end
    return FALSE
    
end

function ExecTurn()
    local turn_angle = hkbGetVariable("TurnAngle")
    if math.abs(turn_angle) < 45 then
        return FALSE
    end
    if turn_angle >= -135 and turn_angle < -45 then
        hkbSetVariable("TurnIndex", 0)
    elseif turn_angle >= 45 and turn_angle < 135 then
        hkbSetVariable("TurnIndex", 1)
    elseif turn_angle >= -180 and turn_angle < -135 then
        hkbSetVariable("TurnIndex", 2)
    elseif turn_angle >= 135 and turn_angle <= 180 then
        hkbSetVariable("TurnIndex", 3)
    end
    ExecEvent("W_Turn")
    return TRUE
    
end

function ExecAICancelAction()
    local action_type = env(ESD_ENV_GetAIAtkCancelType)
    if action_type > 0 and action_type ~= 9910 and g_IsGuard == TRUE then
        g_IsGuard = FALSE
        hkbSetVariable("IdleIndex", STATE_DEFAULT)
        hkbSetVariable("MoveIndex", STATE_DEFAULT)
        ExecEvent("W_GuardEnd")
        return TRUE
    end
    if action_type > 0 and action_type >= 3000 and action_type < 4000 then
        AIAttack(action_type)
        return TRUE
    end
    action_type = env(ESD_ENV_GetAIChainActionType)
    if action_type > 0 and action_type >= 3000 and action_type < 4000 then
        AIAttack(action_type)
        return TRUE
    end
    action_type = env(ESD_ENV_GetAIChainStepType)
    if action_type > 0 and action_type >= 700 and action_type < 800 then
        AIStep(action_type)
        return TRUE
    end
    if action_type == 9910 and g_IsGuard == FALSE then
        g_IsGuard = TRUE
        hkbSetVariable("IdleIndex", STATE_GUARD)
        hkbSetVariable("MoveIndex", STATE_GUARD)
        ExecEvent("W_GuardStart")
    end
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart() then
        return TRUE
    end
    return FALSE
    
end

function ExecGuardAction()
    local guard_level = env(ESD_ENV_GetGuardLevelAction)
    local stamina = env(ESD_ENV_GetStamina)
    if guard_level <= GUARD_LEVEL_NONE then
        return FALSE
    end
    if guard_level == GUARD_LEVEL_SMALL and stamina <= 50 then
        hkbSetVariable("GuardIndex", 0)
    elseif guard_level == GUARD_LEVEL_SMALL and stamina <= 100 then
        hkbSetVariable("GuardIndex", 0)
    elseif guard_level == GUARD_LEVEL_SMALL then
        hkbSetVariable("GuardIndex", 0)
    elseif guard_level == GUARD_LEVEL_MIDDLE and stamina <= 50 then
        hkbSetVariable("GuardIndex", 0)
    elseif guard_level == GUARD_LEVEL_MIDDLE and stamina <= 100 then
        hkbSetVariable("GuardIndex", 0)
    elseif guard_level == GUARD_LEVEL_MIDDLE then
        hkbSetVariable("GuardIndex", 0)
    elseif guard_level == GUARD_LEVEL_LARGE and stamina <= 50 then
        hkbSetVariable("GuardIndex", 1)
    elseif guard_level == GUARD_LEVEL_LARGE and stamina <= 100 then
        hkbSetVariable("GuardIndex", 1)
    elseif guard_level == GUARD_LEVEL_LARGE then
        hkbSetVariable("GuardIndex", 1)
    elseif guard_level == GUARD_LEVEL_EXLARGE and stamina <= 50 then
        hkbSetVariable("GuardIndex", 1)
    elseif guard_level == GUARD_LEVEL_EXLARGE and stamina <= 100 then
        hkbSetVariable("GuardIndex", 1)
    elseif guard_level == GUARD_LEVEL_EXLARGE then
        hkbSetVariable("GuardIndex", 1)
    end
    ExecEvent("W_Guard")
    return TRUE
    
end

function MoveStart()
    if g_MoveSpeedLevel <= 0 then
        return FALSE
    end
    if hkbGetVariable("IsMoveBlend") == true then
        ExecEvent("W_Move")
    elseif g_MoveSpeedLevel > 0.75 then
        g_MoveState = MOVE_RUN
        ExecEvent("W_Run")
    elseif -45 <= g_MoveAngle and g_MoveAngle < 45 then
        g_MoveState = MOVE_WALK_FRONT
        ExecEvent("W_WalkFront")
    elseif g_MoveAngle >= 45 and g_MoveAngle < 135 then
        g_MoveState = MOVE_WALK_RIGHT
        ExecEvent("W_WalkRight")
    elseif not (g_MoveAngle < 135 or g_MoveAngle > 180) or g_MoveAngle >= -180 and g_MoveAngle <= -135 then
        g_MoveState = MOVE_WALK_BACK
        ExecEvent("W_WalkBack")
    elseif g_MoveAngle >= -135 and -45 > g_MoveAngle then
        g_MoveState = MOVE_WALK_LEFT
        ExecEvent("W_WalkLeft")
    end
    return TRUE
    
end

function MoveUpdate()
    if g_MoveSpeedLevel <= 0 then
        ExecEvent("W_Idle")
        return TRUE
    else
        if hkbGetVariable("IsMoveBlend") == true then

        elseif -45 <= g_MoveAngle and g_MoveAngle < 45 then
            if g_MoveState ~= MOVE_RUN and g_MoveSpeedLevel > 0.75 then
                g_MoveState = MOVE_RUN
                ExecEvent("W_Run")
            elseif g_MoveState ~= MOVE_WALK_FRONT and g_MoveSpeedLevel > 0 and g_MoveSpeedLevel < 0.5 then
                g_MoveState = MOVE_WALK_FRONT
                ExecEvent("W_WalkFront")
            end
        elseif g_MoveAngle >= 45 and g_MoveAngle < 135 then
            g_MoveState = MOVE_WALK_RIGHT
            ExecEvent("W_WalkRight")
        elseif not (g_MoveAngle < 135 or g_MoveAngle > 180) or g_MoveAngle >= -180 and g_MoveAngle <= -135 then
            g_MoveState = MOVE_WALK_BACK
            ExecEvent("W_WalkBack")
        elseif g_MoveAngle >= -135 and -45 > g_MoveAngle then
            g_MoveState = MOVE_WALK_LEFT
            ExecEvent("W_WalkLeft")
        end
        return FALSE
    end
    
end

function ExecDamage()
    local damage_level = env(ESD_ENV_GetDamageLevel)
    local damage_type = env(ESD_ENV_GetReceivedDamageType)
    local hp = env(ESD_ENV_GetHP)
    local is_weak = env(ESD_ENV_GetIsWeakPoint)
    local guard_level = env(ESD_ENV_GetGuardLevelAction)
    local fate = math.random(0, 2)
    if damage_type ~= INVALID_DAMAGE then
        if damage_type == DAMAGE_TYPE_GUARDBREAK then
            ExecEvent("W_DamageGuardBreak")
            return TRUE
        elseif damage_type == DAMAGE_TYPE_PARRY then
            ExecEvent("W_DamageParry")
            return TRUE
        elseif damage_type == DAMAGE_TYPE_GUARD then
            ExecEvent("W_DamageGuard")
            return TRUE
        elseif damage_type == DAMAGE_TYPE_GUARD_ENEMY1 then
            ExecEvent("W_DamageGuard")
            return TRUE
        elseif damage_type == DAMAGE_TYPE_GUARD_ENEMY2 then
            ExecEvent("W_DamageGuard")
            return TRUE
        elseif damage_type == DAMAGE_TYPE_GUARD_ENEMY3 then
            ExecEvent("W_DamageGuard")
            return TRUE
        end
    end
    if damage_level <= 0 then
        return FALSE
    end
    if is_weak == TRUE then
        if damage_type == DAMAGE_TYPE_DEATH then
            hkbSetVariable("DeathIndex", DEATH_INDEX_WEAK)
            ExecEvent("W_Death")
            return TRUE
        elseif guard_level == GUARD_LEVEL_NONE then
            ExecEvent("W_DamageWeak")
            return TRUE
        end
    end
    if damage_type == DAMAGE_TYPE_SKYDEATH or env(ESD_ENV_IsFlying) == TRUE and hp <= 0 then
        hkbSetVariable("DeathIndex", DEATH_INDEX_SKY)
        ExecEvent("W_Death")
        return TRUE
    end
    if damage_type == DAMAGE_TYPE_DEATH or hp <= 0 then
        if damage_level == 4 or damage_level == 7 or damage_level == 9 or damage_level == 10 or damage_level == 11 then
            hkbSetVariable("DeathIndex", DEATH_INDEX_BLAST)
            ExecEvent("W_Death")
            return TRUE
        elseif damage_level == 6 then
            hkbSetVariable("DeathIndex", DEATH_INDEX_DUSTER)
            ExecEvent("W_Death")
            return TRUE
        else
            hkbSetVariable("DeathIndex", DEATH_INDEX_DEFAULT)
            ExecEvent("W_Death")
            return TRUE
        end
    end
    act(143)
    local damage_direction = env(ESD_ENV_GetReceivedDamageDirection)
    hkbSetVariable("DamageDirection", damage_direction)
    if damage_level == DAMAGE_LEVEL_MINIMUM and guard_level == GUARD_LEVEL_NONE then
        hkbSetVariable("DamageIndex", fate)
        ExecEvent("W_DamageMinimum")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_SMALL and guard_level == GUARD_LEVEL_NONE then
        hkbSetVariable("DamageIndex", fate)
        ExecEvent("W_DamageSmall")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_MIDDLE and guard_level == GUARD_LEVEL_NONE then
        ExecEvent("W_DamageMiddle")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_LARGE and guard_level == GUARD_LEVEL_NONE then
        ExecEvent("W_DamageLarge")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_EXLARGE and guard_level == GUARD_LEVEL_NONE then
        act(125)
        ExecEvent("W_DamageLarge")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_PUSHED and guard_level == GUARD_LEVEL_NONE then
        ExecEvent("W_DamagePushed")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_DUSTERED and guard_level == GUARD_LEVEL_NONE then
        ExecEvent("W_DamageDuster")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_BLAST and guard_level == GUARD_LEVEL_NONE then
        act(125)
        ExecEvent("W_DamageBlast")
        return TRUE
    end
    local attrib = env(ESD_ENV_GetSpecialAttribute)
    if attrib == ATTRIB_FIRE or attrib == ATTRIB_SHOCK then
        if damage_type == DAMAGE_TYPE_DEATH then
            hkbSetVariable("DeathIndex", DEATH_INDEX_FIRE)
            ExecEvent("W_Death")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_MINIMUM and guard_level == GUARD_LEVEL_NONE then
            hkbSetVariable("DamageIndex", fate)
            ExecEvent("W_DamageMinimum")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_SMALL and guard_level == GUARD_LEVEL_NONE then
            ExecEvent("W_DamageFireSmall")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_MIDDLE and guard_level == GUARD_LEVEL_NONE then
            ExecEvent("W_DamageFireMiddle")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_LARGE and guard_level == GUARD_LEVEL_NONE then
            ExecEvent("W_DamageLarge")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_EXLARGE and guard_level == GUARD_LEVEL_NONE then
            act(125)
            ExecEvent("W_DamageLarge")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_PUSHED and guard_level == GUARD_LEVEL_NONE then
            ExecEvent("W_DamagePushed")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_DUSTERED and guard_level == GUARD_LEVEL_NONE then
            ExecEvent("W_DamageDuster")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_BLAST and guard_level == GUARD_LEVEL_NONE then
            act(125)
            ExecEvent("W_DamageBlast")
            return TRUE
        end
    end
    return FALSE
    
end

function ExecFall()
    if env(ESD_ENV_IsFalling) == FALSE then
        return FALSE
    end
    hkbSetVariable("FallIndex", FALL_INDEX_DEFAULT)
    ExecEvent("W_Fall")
    return TRUE
    
end

function ExecLand()
    local height = env(ESD_ENV_GetFallHeight) / 100
    if env(ESD_ENV_IsLanding) == FALSE then
        if height > 30 then
            hkbSetVariable("DeathIndex", DEATH_INDEX_SKY)
            ExecEvent("W_Death")
            return TRUE
        end
        return FALSE
    end
    local hp = env(ESD_ENV_GetHP)
    local fall_type = hkbGetVariable("FallIndex")
    if fall_type == FALL_INDEX_DEFAULT then
        if height > 20 then
            hkbSetVariable("DeathIndex", DEATH_INDEX_LAND)
            ExecEvent("W_Death")
            return TRUE
        elseif height > 5 then
            hkbSetVariable("LandIndex", LAND_INDEX_HEAVY)
            ExecEvent("W_Land")
            return TRUE
        elseif height > 2 then
            hkbSetVariable("LandIndex", LAND_INDEX_DEFAULT)
            ExecEvent("W_Land")
            return TRUE
        else
            ExecEvent("W_Idle")
            return TRUE
        end
    elseif fall_type == FALL_INDEX_FRONT then
        if height > 20 or hp <= 0 then
            hkbSetVariable("DeathIndex", DEATH_INDEX_LANDFRONT)
            ExecEvent("W_Death")
            return TRUE
        else
            hkbSetVariable("LandIndex", LAND_INDEX_FRONT)
            ExecEvent("W_Land")
            return TRUE
        end
    elseif fall_type == FALL_INDEX_BACK then
        if height > 20 or hp <= 0 then
            hkbSetVariable("DeathIndex", DEATH_INDEX_LANDBACK)
            ExecEvent("W_Death")
            return TRUE
        else
            hkbSetVariable("LandIndex", LAND_INDEX_BACK)
            ExecEvent("W_Land")
            return TRUE
        end
    end
    return FALSE
    
end

function ExecFallDamage()
    if env(ESD_ENV_IsFalling) == FALSE then
        return FALSE
    end
    local damage_direction = env(ESD_ENV_GetReceivedDamageDirection)
    if damage_direction >= DAMAGE_DIRECTION_LEFT and damage_direction <= DAMAGE_DIRECTION_FRONT then
        hkbSetVariable("FallIndex", FALL_INDEX_FRONT)
    elseif damage_direction == DAMAGE_DIRECTION_BACK then
        hkbSetVariable("FallIndex", FALL_INDEX_BACK)
    else
        hkbSetVariable("FallIndex", FALL_INDEX_DEFAULT)
    end
    ExecEvent("W_Fall")
    return TRUE
    
end

function SetIdleFlag()
    act(133, -1)
    act(135)
    act(139)
    act(102, 255)
    act(103, 0)
    act(102, 1)
    CallActionState(0)
    
end

function CommonIdleFunction()
    act(101, TRUE)
    act(103, 0)
    act(102, 1)
    if TRUE == env(ESD_ENV_DS3HasThrowRequest) then
        return 
    end
    if TRUE == ExecGuardAction() then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecTurn() then
        return 
    end
    if TRUE == ExecAIAction() then
        return 
    end
    if TRUE == MoveStart() then
        return 
    end
    
end

function CommonGuardTransFunction()
    act(103, 0)
    act(102, 1)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    local action_type = env(ESD_ENV_GetAIActionType)
    if TRUE == ExecGuardAction() then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAICancelAction() then
        return 
    end
    
end

function CommonMoveFunction()
    act(101, TRUE)
    act(103, 0)
    act(102, 1)
    if TRUE == env(ESD_ENV_DS3HasThrowRequest) then
        return 
    end
    if TRUE == ExecGuardAction() then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAIAction() then
        return 
    end
    if TRUE == MoveUpdate() then
        return 
    end
    
end

function CommonAttackFunction()
    CallActionState(g_ActionNumber)
    DebugPrint(1, g_ActionNumber)
    act(103, 0)
    act(102, 1)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAICancelAction() then
        return 
    end
    
end

function CommonStepFunction()
    CallActionState(g_ActionNumber)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAICancelAction() then
        return 
    end
    
end

function CommonDamageFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    if TRUE == ExecFallDamage() then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAICancelAction() then
        return 
    end
    
end

function CommonFallFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    if TRUE == ExecLand() then
        return 
    end
    
end

function CommonLandFunction()
    CallActionState(g_ActionNumber)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAICancelAction() then
        return 
    end
    
end

function IncNum(num)
    local str = nil
    if num < 10 then
        str = "Debug0"
    else
        str = "Debug"
    end
    vector = hkbGetVariable(str .. num)
    vector[0] = vector[0] + 1
    vector[1] = g_FrameCount
    hkbSetVariable(str .. num, vector)
    
end

function DebugPrint(pos, val)
    local str = nil
    if pos < 10 then
        str = "Debug0"
    else
        str = "Debug"
    end
    vector = hkbGetVariable(str .. pos)
    vector[0] = val
    vector[1] = g_FrameCount
    hkbSetVariable(str .. pos, vector)
    
end

function DebugPrintNext(val)
    g_DebugCounter = g_DebugCounter + 1
    if g_DebugCounter > 10 then
        g_DebugCounter = 1
    end
    DebugPrint(g_DebugCounter, val)
    
end

function PrintString(str)
    act(9000, str)
    
end

function Update()
    g_FrameCount = g_FrameCount + 1
    g_MoveSpeedLevel = hkbGetVariable("MoveSpeedLevel")
    g_MoveAngle = hkbGetVariable("MoveAngle")
    act(101, FALSE)
    
end

function Initialize()
    
end

function Idle_onActivate()
    SetIdleFlag()
    
end

function Idle_onUpdate()
    CommonIdleFunction()
    
end

function Idle_onDeactivate()
    act(102, 255)
    act(111, TRUE)
    act(101, FALSE)
    
end

function Move_onActivate()
    SetIdleFlag()
    
end

function Move_onUpdate()
    CommonMoveFunction()
    
end

function WalkFront_onActivate()
    SetIdleFlag()
    
end

function WalkFront_onUpdate()
    CommonMoveFunction()
    
end

function WalkBack_onActivate()
    SetIdleFlag()
    
end

function WalkBack_onUpdate()
    CommonMoveFunction()
    
end

function WalkLeft_onActivate()
    SetIdleFlag()
    
end

function WalkLeft_onUpdate()
    CommonMoveFunction()
    
end

function WalkRight_onActivate()
    SetIdleFlag()
    
end

function WalkRight_onUpdate()
    CommonMoveFunction()
    
end

function Run_onActivate()
    SetIdleFlag()
    
end

function Run_onUpdate()
    CommonMoveFunction()
    
end

function GuardStart_onUpdate()
    CommonGuardTransFunction()
    
end

function GuardEnd_onUpdate()
    CommonGuardTransFunction()
    
end

function Step_onUpdate()
    CommonStepFunction()
    
end

function DamageSmall_onUpdate()
    CommonDamageFunction()
    
end

function DamageMiddle_onUpdate()
    CommonDamageFunction()
    
end

function DamageLarge_onUpdate()
    CommonDamageFunction()
    
end

function DamageExLarge_onUpdate()
    CommonDamageFunction()
    
end

function DamageBlast_onUpdate()
    CommonDamageFunction()
    
end

function DamageMinimum_onUpdate()
    CommonDamageFunction()
    
end

function DamageDuster_onUpdate()
    CommonDamageFunction()
    
end

function DamagePushed_onUpdate()
    CommonDamageFunction()
    
end

function DamageWeak_onUpdate()
    CommonDamageFunction()
    
end

function DamageParry_onUpdate()
    CommonDamageFunction()
    
end

function DamageFireSmall_onUpdate()
    CommonDamageFunction()
    
end

function DamageFireMiddle_onUpdate()
    CommonDamageFunction()
    
end

function DamageGuard_onUpdate()
    CommonDamageFunction()
    
end

function DamageGuardBreak_onUpdate()
    CommonDamageFunction()
    
end

function Fall_onUpdate()
    CommonFallFunction()
    
end

function Land_onUpdate()
    CommonLandFunction()
    
end

function AttackBlend_onUpdate()
    CommonAttackFunction()
    
end

function Attack3000_onUpdate()
    CommonAttackFunction()
    
end

function Attack3001_onUpdate()
    CommonAttackFunction()
    
end

function Attack3002_onUpdate()
    CommonAttackFunction()
    
end

function Attack3003_onUpdate()
    CommonAttackFunction()
    
end

function Attack3004_onUpdate()
    CommonAttackFunction()
    
end

function Attack3005_onUpdate()
    CommonAttackFunction()
    
end

function Attack3006_onUpdate()
    CommonAttackFunction()
    
end

function Attack3007_onUpdate()
    CommonAttackFunction()
    
end

function Attack3008_onUpdate()
    CommonAttackFunction()
    
end

function Attack3009_onUpdate()
    CommonAttackFunction()
    
end

function Attack3010_onUpdate()
    CommonAttackFunction()
    
end

function Attack3011_onUpdate()
    CommonAttackFunction()
    
end

function Attack3012_onUpdate()
    CommonAttackFunction()
    
end

function Attack3013_onUpdate()
    CommonAttackFunction()
    
end

function Attack3014_onUpdate()
    CommonAttackFunction()
    
end

function Throw_onDeactivate()
    act(139)
    hkbSetVariable("ThrowAtkID", 0)
    hkbSetVariable("ThrowDefID", 0)
    
end

function ThrowDef_onActivate()
    local ThrowId = env(ESD_ENV_GetThrowAnimID)
    hkbSetVariable("ThrowDefID", ThrowId)
    
end

function ThrowDef_onUpdate()
    act(103, 255)
    act(102, 255)
    act(9102)
    local hp = env(ESD_ENV_GetHP)
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 1) == TRUE and hp <= 0 then
        ExecEvent("W_ThrowDie")
        act(135)
        act(139)
    end
    
end

function ThrowDie_onActivate()
    act(136, 6)
    act(9101)
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
