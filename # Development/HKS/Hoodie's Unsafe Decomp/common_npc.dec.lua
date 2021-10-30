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
DAMAGE_LEVEL_UPPER = 9
DAMAGE_TYPE_DEATH = 2
DAMAGE_TYPE_PARRY = 5
DAMAGE_TYPE_SKYDEATH = 9
DAMAGE_TYPE_GUARDED_BOUND = 1000
DAMAGE_TYPE_GUARD_BREAK = 1001
DAMAGE_TYPE_GUARDED_BOUND_ENEMY1 = 1008
DAMAGE_TYPE_GUARDED_BOUND_ENEMY2 = 1009
DAMAGE_TYPE_GUARDED_BOUND_ENEMY3 = 1010
LADDER_HAND_RIGHT = 0
LADDER_HAND_LEFT = 1
LADDER_CONDITION_INVALID = -1
LADDER_CONDITION_START_BOTTOM = 0
LADDER_CONDITION_START_TOP = 1
LADDER_CONDITION_UP_RIGHT = 2
LADDER_CONDITION_UP_LEFT = 3
LADDER_CONDITION_DOWN_RIGHT = 4
LADDER_CONDITION_DOWN_LEFT = 5
LADDER_CONDITION_END_TOP = 6
LADDER_CONDITION_END_BOTTOM = 7
LADDER_CONDITION_IDLE_RIGHT = 8
LADDER_CONDITION_IDLE_LEFT = 9
LADDER_CONDITION_ATTACK_UP_RIGHT = 10
LADDER_CONDITION_ATTACK_UP_LEFT = 11
LADDER_CONDITION_ATTACK_DOWN_RIGHT = 12
LADDER_CONDITION_ATTACK_DOWN_LEFT = 13
LADDER_CONDITION_SLIDE_START_RIGHT = 14
LADDER_CONDITION_SLIDE_LOOP_RIGHT = 15
LADDER_CONDITION_SLIDE_STOP_RIGHT = 16
LADDER_CONDITION_SLIDE_START_LEFT = 17
LADDER_CONDITION_SLIDE_LOOP_LEFT = 18
LADDER_CONDITION_SLIDE_STOP_LEFT = 19
LADDER_CONDITION_SLIDE_LAND = 20
LADDER_CONDITION_DAMAGE = 21
LADDER_CONDITION_DAMAGE_LARGE = 22
LADDER_CONDITION_FALL_STAMINA = 23
LADDER_CONDITION_FALL_DEATH = 24
LADDER_REQUEST_START_BOTTOM = 7210
LADDER_REQUEST_START_TOP = 7220
LADDER_REQUEST_UP = 7210
LADDER_REQUEST_DOWN = 7220
LADDER_STATE_IDLE = 7240
LADDER_STATE_UP = 7210
LADDER_STATE_DOWN = 7220
LADDER_STATE_DEFAULT = 0
LADDER_COMMAND_UP = 0
LADDER_COMMAND_DOWN = 1
LADDER_COMMAND_INVALID = -1
LADDER_CONFLICT_CHECK_DIST_CHR = 0.4000000059604645
LADDER_CONFLICT_CHECK_DIST_ELSE = 1
DEATH_INDEX_DEFAULT = 0
DEATH_INDEX_WEAK = 1
DEATH_INDEX_SKY = 2
DEATH_INDEX_BLAST = 3
DEATH_INDEX_DUSTER = 4
DEATH_INDEX_LAND = 5
DEATH_INDEX_LANDFRONT = 6
DEATH_INDEX_LANDBACK = 7
DEATH_INDEX_FIRE_A = 8
DEATH_INDEX_FIRE_B = 9
DEATH_INDEX_UPPER = 10
DEATH_INDEX_LADDER = 11
GUARD_LEVEL_NONE = 0
GUARD_LEVEL_SMALL = 1
GUARD_LEVEL_MIDDLE = 2
GUARD_LEVEL_LARGE = 3
GUARD_LEVEL_EXLARGE = 4
DAMAGE_DIRECTION_LEFT = 0
DAMAGE_DIRECTION_RIGHT = 1
DAMAGE_DIRECTION_FRONT = 2
DAMAGE_DIRECTION_BACK = 3
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
AI_STATE_INVALID = -1
AI_STATE_NONE = 0
AI_STATE_CAUTION = 1
AI_STATE_FIND = 2
AI_STATE_BATTLE = 3
IDLE_TYPE_DEFAULT = 0
IDLE_TYPE_CAUTION = 1
IDLE_TYPE_BATTLE = 2
IDLE_TYPE_GUARD = 3
INDEX_TURN_DIRECTION_LEFT90 = 0
INDEX_TURN_DIRECTION_RIGHT90 = 1
INDEX_TURN_DIRECTION_LEFT180 = 2
INDEX_TURN_DIRECTION_RIGHT180 = 3
CULT_STATE_IDLE = 1
CULT_STATE_MOVE = 2
CULT_STATE_RELESE = 3
CULT_STATE_FORCE_RELEASE = 4
g_DebugCounter = 0
g_FrameCount = 0
g_TurnAngle = 0
g_MoveSpeedLevel = 0
g_IsLockon = false
g_MoveAngle = 0
g_IsGuard = FALSE
g_ActionNumber = -1
g_MoveState = -1
g_LadderFireCommand = LADDER_COMMAND_INVALID
g_AIState = 0
g_OldAIState = 0
g_IsAIStateChange = FALSE
g_IsChangeIdleMode = FALSE
g_UniqueIdleId = -1
function SetVariable(name, value)
    act(148, name, value)
    
end

function ExecUniqueIdle()
    if g_IsChangeIdleMode == TRUE then
        if 0 < g_UniqueIdleId then
            if TRUE == env(ESD_ENV_DS3DoesAnimExist, g_UniqueIdleId) then
                SetVariable("ParamIdleUnique", g_UniqueIdleId)
                SetVariable("IdleUniqueStartTime", math.random() * 5)
                ExecEvent("W_IdleUnique")
                g_IsChangeIdleMode = FALSE
                return TRUE
            end
        elseif g_UniqueIdleId == -1 then
            g_IsChangeIdleMode = FALSE
            g_IsChangeIdleMode = FALSE
            ExecEvent("W_IdleBattle")
            return TRUE
        end
    end
    return FALSE
    
end

function ExecEvent(state)
    act(9000, "イベント実行[" .. state .. "]")
    hkbFireEvent(state)
    return 
    
end

function CallActionState(action_type)
    act(9103, action_type)
    
end

function ExecCommonAction(event_name, action_number)
    g_ActionNumber = action_number
    CallActionState(0)
    ExecEvent(event_name)
    
end

function Replanning()
    act(143)
    
end

function ExecAIStateChange()
    if g_IsAIStateChange == TRUE then
        g_IsAIStateChange = FALSE
        if FALSE == env(ESD_ENV_DS3DoesAnimExist, 1020) then
            if g_AIState == AI_STATE_NONE then
                SetVariable("IndexIdleType", IDLE_TYPE_DEFAULT)
                SetVariable("IndexTurnType", IDLE_TYPE_DEFAULT)
            elseif TRUE == g_IsGuard then
                SetVariable("IndexIdleType", IDLE_TYPE_GUARD)
                SetVariable("IndexTurnType", IDLE_TYPE_GUARD)
            else
                SetVariable("IndexIdleType", IDLE_TYPE_BATTLE)
                if TRUE == env(ESD_ENV_DS3DoesAnimExist, 5010) then
                    SetVariable("IndexTurnType", IDLE_TYPE_BATTLE)
                else
                    SetVariable("IndexTurnType", IDLE_TYPE_DEFAULT)
                end
            end
            return TRUE
        elseif g_AIState == AI_STATE_NONE then
            if TRUE == env(ESD_ENV_DS3DoesAnimExist, 1050) and (g_OldAIState == AI_STATE_CAUTION or g_OldAIState == AI_STATE_FIND) then
                ExecEvent("W_TransCautionToDefault")
            elseif TRUE == env(ESD_ENV_DS3DoesAnimExist, 1050) and (g_OldAIState == AI_STATE_BATTLE or g_OldAIState == AI_STATE_CAUTION or g_OldAIState == AI_STATE_FIND) then
                ExecEvent("W_TransBattleToDefault")
            else
                ExecEvent("W_IdleDefault")
            end
            SetVariable("IndexIdleType", IDLE_TYPE_DEFAULT)
            SetVariable("IndexTurnType", IDLE_TYPE_DEFAULT)
            return TRUE
        elseif TRUE == env(ESD_ENV_DS3DoesAnimExist, 10) and (g_AIState == AI_STATE_CAUTION or g_AIState == AI_STATE_FIND) then
            SetVariable("IndexIdleType", IDLE_TYPE_CAUTION)
            SetVariable("IndexTurnType", IDLE_TYPE_DEFAULT)
            if AI_STATE_NONE == g_OldAIState then
                local turn_angle = hkbGetVariable("TurnAngle")
                if math.abs(turn_angle) < 45 then
                    SetVariable("IndexDefaultToCaution", 0)
                    ExecEvent("W_TransDefaultToCaution")
                end
                if turn_angle >= -135 and turn_angle < -45 then
                    act(9105, 90)
                    SetVariable("IndexDefaultToCaution", 1)
                elseif turn_angle >= 45 and turn_angle < 135 then
                    act(9105, 90)
                    SetVariable("IndexDefaultToCaution", 3)
                elseif turn_angle >= -180 and turn_angle < -135 then
                    act(9105, 180)
                    SetVariable("IndexDefaultToCaution", 2)
                elseif turn_angle >= 135 and turn_angle <= 180 then
                    act(9105, 180)
                    SetVariable("IndexDefaultToCaution", 4)
                end
                if TRUE == env(ESD_ENV_DS3DoesAnimExist, 1000) then
                    act(9104)
                    ExecEvent("W_TransDefaultToCaution")
                    return TRUE
                end
            elseif g_OldAIState == AI_STATE_BATTLE then
                if TRUE == env(ESD_ENV_DS3DoesAnimExist, 1030) then
                    ExecEvent("W_TransBattleToCaution")
                    return TRUE
                end
            elseif TRUE == env(ESD_ENV_DS3DoesAnimExist, 10) then
                ExecEvent("W_IdleCaution")
            end
            return TRUE
        elseif g_AIState == AI_STATE_BATTLE or g_AIState == AI_STATE_CAUTION or g_AIState == AI_STATE_FIND then
            if TRUE == g_IsGuard then
                SetVariable("IndexIdleType", IDLE_TYPE_GUARD)
                SetVariable("IndexTurnType", IDLE_TYPE_GUARD)
                ExecEvent("W_IdleGuard")
            else
                if TRUE == env(ESD_ENV_DS3DoesAnimExist, 1010) and (g_OldAIState == AI_STATE_CAUTION or g_OldAIState == AI_STATE_FIND) then
                    ExecEvent("W_TransCautionToBattle")
                elseif TRUE == env(ESD_ENV_DS3DoesAnimExist, 1040) and AI_STATE_NONE == g_OldAIState then
                    ExecEvent("W_TransDefaultToBattle")
                else
                    ExecEvent("W_IdleBattle")
                end
                SetVariable("IndexIdleType", IDLE_TYPE_BATTLE)
                if TRUE == env(ESD_ENV_DS3DoesAnimExist, 5010) then
                    SetVariable("IndexTurnType", IDLE_TYPE_BATTLE)
                else
                    SetVariable("IndexTurnType", IDLE_TYPE_DEFAULT)
                end
            end
            return TRUE
        end
    end
    
end

function ExecAttack(action_number)
    g_ActionNumber = action_number
    CallActionState(action_number)
    SetVariable("IndexIdleType", IDLE_TYPE_BATTLE)
    ExecEvent("W_Attack" .. action_number)
    
end

function ExecStep(action_number)
    g_ActionNumber = action_number
    CallActionState(action_number)
    SetVariable("IndexIdleType", IDLE_TYPE_BATTLE)
    SetVariable("StepNumber", action_number)
    ExecEvent("W_Step" .. g_ActionNumber)
    
end

function ExecAIGuard(action_type)
    if action_type <= 0 then
        return FALSE
    end
    if action_type ~= 9910 and g_IsGuard == TRUE and FALSE == env(ESD_ENV_DS3GetSpecialEffectID, 91) then
        g_IsGuard = FALSE
        SetVariable("IdleIndex", STATE_DEFAULT)
        SetVariable("MoveIndex", STATE_DEFAULT)
        SetVariable("IndexTurnType", IDLE_TYPE_DEFAULT)
        ExecEvent("W_GuardEnd")
        SetVariable("IndexIdleType", IDLE_TYPE_BATTLE)
        return TRUE
    end
    if action_type == 9910 and FALSE == g_IsGuard and FALSE == env(ESD_ENV_DS3GetSpecialEffectID, 91) then
        g_IsGuard = TRUE
        SetVariable("IdleIndex", STATE_GUARD)
        SetVariable("MoveIndex", STATE_GUARD)
        SetVariable("IndexTurnType", IDLE_TYPE_GUARD)
        ExecEvent("W_GuardStart")
        SetVariable("IndexIdleType", IDLE_TYPE_GUARD)
        return TRUE
    end
    return FALSE
    
end

function ExecAIStep(action_type)
    if not (700 > action_type or action_type >= 800) or action_type >= 6000 and action_type < 6110 then
        ExecStep(action_type)
        return TRUE
    end
    return FALSE
    
end

function ExecAIAttack(action_type)
    if 700 <= action_type and action_type <= 799 then
        SetVariable("ParamIdleUnique", action_type)
        return 
    end
    if action_type >= 1300 and action_type <= 1399 then
        SetVariable("IndexWeaponChange", (action_type - 1300) / 10)
        ExecCommonAction("W_WeaponChange", action_type)
        return TRUE
    end
    if action_type >= 1500 and action_type <= 1599 then
        ExecCommonAction("W_TransHeatup", action_type)
        return TRUE
    end
    if action_type >= 1400 and action_type <= 1499 then
        SetVariable("IndexWeaponChange", action_type - 1400)
        ExecCommonAction("W_WeaponChange", action_type)
        return TRUE
    end
    if action_type >= 3000 and action_type < 4500 then
        ExecAttack(action_type)
        return TRUE
    end
    if action_type == 4600 then
        ExecCommonAction("W_EstStart", 4600)
        return TRUE
    end
    return FALSE
    
end

function ExecAIEvent(action_type)
    if action_type == LADDER_REQUEST_START_BOTTOM then
        ExecEvent("W_LadderStartBottom")
        return TRUE
    elseif action_type == LADDER_REQUEST_START_TOP then
        ExecEvent("W_LadderStartTop")
        return TRUE
    end
    return FALSE
    
end

function ExecAIAction()
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type <= 0 then
        return FALSE
    end
    if ExecAIGuard(action_type) == TRUE then
        return TRUE
    end
    if ExecAIAttack(action_type) == TRUE then
        return TRUE
    end
    if ExecAIStep(action_type) == TRUE then
        return TRUE
    end
    if ExecAIEvent(action_type) == TRUE then
        return TRUE
    end
    return FALSE
    
end

function ExecAICancelAction()
    local action_type = env(ESD_ENV_GetAIAtkCancelType)
    if ExecAIGuard(action_type) == TRUE then
        return TRUE
    end
    if ExecAIAttack(action_type) == TRUE then
        CallActionState(0)
        return TRUE
    end
    if ExecAIEvent(action_type) == TRUE then
        return TRUE
    end
    action_type = env(ESD_ENV_GetAIChainActionType)
    if ExecAIGuard(action_type) == TRUE then
        return TRUE
    end
    if ExecAIAttack(action_type) == TRUE then
        CallActionState(0)
        return TRUE
    end
    action_type = env(ESD_ENV_GetAIChainStepType)
    if ExecAIStep(action_type) == TRUE then
        CallActionState(0)
        return TRUE
    end
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart() then
        return TRUE
    end
    return FALSE
    
end

function SetTurnCondition(dir)
    local buff = {}
    if g_IsGuard == TRUE then
        buff[1] = 2
        buff[2] = 0
        buff[3] = 1
    elseif g_AIState == AI_STATE_BATTLE then
        buff[1] = 0
        buff[2] = 1
        buff[3] = 2
    else
        buff[1] = 1
        buff[2] = 0
        buff[3] = 2
    end
    for , 1, #buff do
        local anim = 5000 + buff[f6965_local0] * 10 + dir
        if env(ESD_ENV_DS3DoesAnimExist, anim) == TRUE then
            if buff[f6965_local0] == 0 then
                SetVariable("IndexTurnType", INDEX_TURN_DEFAULT)
                return TRUE
            elseif buff[f6965_local0] == 1 then
                SetVariable("IndexTurnType", INDEX_TURN_DEFAULT)
                return TRUE
            elseif buff[f6965_local0] == 2 then
                SetVariable("IndexTurnType", INDEX_TURN_GUARD)
                return TRUE
            end
        end
    end
    local f6965_local0 = FALSE
    return f6965_local0
    
end

function ExecTurn()
    local turn_angle = hkbGetVariable("TurnAngle")
    if math.abs(turn_angle) < 45 then
        return FALSE
    end
    if hkbGetVariable("IsQuickTurn") == FALSE then
        return FALSE
    end
    if env(ESD_ENV_DS3GetSpecialEffectID, 92) == TRUE then
        return FALSE
    end
    if TRUE == g_IsGuard then

    else

    end
    local dir = -1
    if turn_angle >= -135 and turn_angle < -45 then
        dir = INDEX_TURN_DIRECTION_LEFT90
        act(9105, 90)
    elseif turn_angle >= 45 and turn_angle < 135 then
        dir = INDEX_TURN_DIRECTION_RIGHT90
        act(9105, 90)
    elseif turn_angle >= -180 and turn_angle < -135 then
        dir = INDEX_TURN_DIRECTION_LEFT180
        act(9105, 180)
    elseif turn_angle >= 135 and turn_angle <= 180 then
        dir = INDEX_TURN_DIRECTION_RIGHT180
        act(9105, 180)
    else

    end
    if SetTurnCondition(dir) == FALSE then
        return FALSE
    else
        act(9104)
        SetVariable("IndexTurnDirection", dir)
        ExecEvent("W_Turn")
        return TRUE
    end
    
end

function ExecGuardAction()
    local guard_damage = env(ESD_ENV_GetGuardLevelAction)
    if guard_damage <= GUARD_LEVEL_NONE then
        return FALSE
    end
    if guard_damage == GUARD_LEVEL_SMALL then
        act(141, DAMAGE_FLAG_GUARD_SMALL)
        SetVariable("GuardIndex", 0)
    elseif guard_damage == GUARD_LEVEL_MIDDLE then
        act(141, DAMAGE_FLAG_GUARD_LARGE)
        SetVariable("GuardIndex", 0)
    elseif guard_damage == GUARD_LEVEL_LARGE then
        act(141, DAMAGE_FLAG_GUARD_LARGE)
        SetVariable("GuardIndex", 1)
    elseif guard_damage == GUARD_LEVEL_EXLARGE then
        act(141, DAMAGE_FLAG_GUARD_EXLARGE)
        SetVariable("GuardIndex", 1)
    end
    ExecEvent("W_Guard")
    return TRUE
    
end

function MoveStart()
    if g_MoveSpeedLevel <= 0 then
        return FALSE
    end
    local isStraight = FALSE
    if g_AIState == AI_STATE_NONE or g_AIState == AI_STATE_CAUTION or g_AIState == AI_STATE_FIND then
        isStraight = TRUE
    end
    if isStraight == TRUE or -45 <= g_MoveAngle and g_MoveAngle < 45 then
        if g_MoveSpeedLevel > 0.75 then
            g_MoveState = MOVE_RUN
            ExecEvent("W_Run")
            return TRUE
        else
            g_MoveState = MOVE_WALK_FRONT
            ExecEvent("W_WalkFront")
            return TRUE
        end
    elseif g_MoveAngle >= 45 and g_MoveAngle < 135 then
        g_MoveState = MOVE_WALK_RIGHT
        ExecEvent("W_WalkRight")
        return TRUE
    elseif not (g_MoveAngle < 135 or g_MoveAngle > 180) or g_MoveAngle >= -180 and g_MoveAngle <= -135 then
        g_MoveState = MOVE_WALK_BACK
        ExecEvent("W_WalkBack")
        return TRUE
    elseif g_MoveAngle >= -135 and -45 > g_MoveAngle then
        g_MoveState = MOVE_WALK_LEFT
        ExecEvent("W_WalkLeft")
        return TRUE
    end
    return FALSE
    
end

function MoveUpdate()
    if g_MoveSpeedLevel <= 0 then
        ExecEvent("W_Idle")
        g_MoveState = MOVE_STOP
        return TRUE
    else
        local isStraight = FALSE
        if g_AIState == AI_STATE_NONE or g_AIState == AI_STATE_CAUTION or g_AIState == AI_STATE_FIND then
            isStraight = TRUE
        end
        if isStraight == TRUE or -45 <= g_MoveAngle and g_MoveAngle < 45 then
            if g_MoveSpeedLevel > 0.75 and g_MoveState ~= MOVE_RUN then
                g_MoveState = MOVE_RUN
                ExecEvent("W_Run")
                return TRUE
            elseif g_MoveState ~= MOVE_WALK_FRONT and g_MoveSpeedLevel < 0.75 then
                g_MoveState = MOVE_WALK_FRONT
                ExecEvent("W_WalkFront")
                return TRUE
            end
        elseif g_MoveState ~= MOVE_WALK_RIGHT and g_MoveAngle >= 45 and g_MoveAngle < 135 then
            g_MoveState = MOVE_WALK_RIGHT
            ExecEvent("W_WalkRight")
            return TRUE
        elseif g_MoveState ~= MOVE_WALK_BACK and (not (g_MoveAngle < 135 or g_MoveAngle > 180) or g_MoveAngle >= -180 and g_MoveAngle <= -135) then
            g_MoveState = MOVE_WALK_BACK
            ExecEvent("W_WalkBack")
            return TRUE
        elseif g_MoveState ~= MOVE_WALK_LEFT and g_MoveAngle >= -135 and -45 > g_MoveAngle then
            g_MoveState = MOVE_WALK_LEFT
            ExecEvent("W_WalkLeft")
            return TRUE
        end
        return FALSE
    end
    
end

function ExecDamage()
    local damage_level = env(ESD_ENV_GetDamageLevel)
    local damage_type = env(ESD_ENV_GetReceivedDamageType)
    if damage_type == 5 then
        Replanning()
        ExecEvent("W_DamageParry")
        return TRUE
    end
    local hp = env(ESD_ENV_GetHP)
    if hp <= 0 and env(ESD_ENV_DS3GetSpecialEffectID, 99500) == TRUE then
        act(2002, 99501)
    end
    local damage_direction = env(ESD_ENV_GetReceivedDamageDirection)
    SetVariable("DamageDirection", damage_direction)
    if damage_level <= 0 and env(ESD_ENV_HasReceivedAnyDamage) == FALSE and hp > 0 then
        return FALSE
    end
    local is_weak = env(ESD_ENV_GetIsWeakPoint)
    if env(ESD_ENV_IsOnLadder) == TRUE and hp <= 0 then

    else

    end
    if is_weak == TRUE then
        if damage_type == DAMAGE_TYPE_DEATH then
            SetVariable("DeathIndex", DEATH_INDEX_WEAK)
            ExecEvent("W_Death")
            return TRUE
        else
            Replanning()
            act(141, DAMAGE_FLAG_WEAK)
            ExecEvent("W_DamageWeak")
            return TRUE
        end
    end
    if damage_type == DAMAGE_TYPE_SKYDEATH or env(ESD_ENV_IsFlying) == TRUE and hp <= 0 then
        SetVariable("DeathIndex", DEATH_INDEX_SKY)
        ExecEvent("W_Death")
        return TRUE
    end
    if damage_type == DAMAGE_TYPE_DEATH or hp <= 0 then
        SetVariable("DeathIndex", DEATH_INDEX_DEFAULT)
        SetVariable("IndexDeathIdleVariation", 0)
        if damage_level == 4 or damage_level == 7 or damage_level == 10 or damage_level == 11 then
            SetVariable("DeathIndex", DEATH_INDEX_BLAST)
            if env(ESD_ENV_DS3DoesAnimExist, 10040) == TRUE then
                SetVariable("DeathIndex", DEATH_INDEX_BLAST)
            end
            ExecEvent("W_Death")
            return TRUE
        elseif damage_level == 6 then
            SetVariable("DeathIndex", DEATH_INDEX_DUSTER)
            if env(ESD_ENV_DS3DoesAnimExist, 10050) == TRUE then
                SetVariable("DeathIndex", DEATH_INDEX_DUSTER)
            end
            ExecEvent("W_Death")
            return TRUE
        elseif damage_level == 6 then
            SetVariable("DeathIndex", DEATH_INDEX_DUSTER)
            if env(ESD_ENV_DS3DoesAnimExist, 10050) == TRUE then
                SetVariable("DeathIndex", DEATH_INDEX_DUSTER)
            end
            ExecEvent("W_Death")
            return TRUE
        elseif damage_level == 9 then
            SetVariable("DeathIndex", DEATH_INDEX_UPPER)
            if env(ESD_ENV_DS3DoesAnimExist, 10060) == TRUE then
                SetVariable("DeathIndex", DEATH_INDEX_UPPER)
            end
            ExecEvent("W_Death")
            return TRUE
        else
            local num = 0
            for , 0, 4 do
                if env(ESD_ENV_DS3DoesAnimExist, 10100 + num * 10) == FALSE then
                    break
                end
                num = f6970_local0
            end
            local index = 0
            if num > 0 then
                local f6970_local1 = env
                f6970_local2 = 1003
                f6970_local1 = f6970_local1(f6970_local2, 0, num)
                index = f6970_local1
            end
            f6970_local1 = SetVariable
            f6970_local2 = "DeathIndex"
            f6970_local1(f6970_local2, DEATH_INDEX_DEFAULT)
            f6970_local1 = SetVariable
            f6970_local2 = "IndexDeathVariation"
            f6970_local1(f6970_local2, index)
            if index > 0 then
                f6970_local1 = env
                f6970_local2 = 1114
                f6970_local1 = f6970_local1(f6970_local2, 10100 + (index - 1) * 10 + 1)
                f6970_local2 = TRUE
                if f6970_local1 == f6970_local2 then
                    f6970_local1 = SetVariable
                    f6970_local2 = "IndexDeathIdleVariation"
                    f6970_local1(f6970_local2, index)
                end
            else
                f6970_local1 = SetVariable
                f6970_local2 = "IndexDeathIdleVariation"
                f6970_local1(f6970_local2, 0)
            end
            f6970_local1 = ExecEvent
            f6970_local2 = "W_Death"
            f6970_local1(f6970_local2)
            f6970_local1 = TRUE
            return f6970_local1
        end
    end
    if damage_level > 0 then
        Replanning()
    end
    if damage_type == DAMAGE_TYPE_GUARDED_BOUND or damage_type >= DAMAGE_TYPE_GUARDED_BOUND_ENEMY1 and damage_type <= DAMAGE_TYPE_GUARDED_BOUND_ENEMY3 then
        act(141, DAMAGE_FLAG_GUARD_BREAK)
        ExecEvent("W_DamageAttackBound")
        return TRUE
    end
    if damage_type == DAMAGE_TYPE_GUARD_BREAK then
        act(141, DAMAGE_FLAG_GUARD_BREAK)
        ExecEvent("W_DamageGuardBreak")
        return TRUE
    end
    local guard_damage = env(ESD_ENV_GetGuardLevelAction)
    if guard_damage > GUARD_LEVEL_NONE then
        if guard_damage == GUARD_LEVEL_SMALL then
            act(141, DAMAGE_FLAG_GUARD_SMALL)
            SetVariable("GuardIndex", 0)
        elseif guard_damage == GUARD_LEVEL_MIDDLE then
            act(141, DAMAGE_FLAG_GUARD_LARGE)
            SetVariable("GuardIndex", 0)
        elseif guard_damage == GUARD_LEVEL_LARGE then
            act(141, DAMAGE_FLAG_GUARD_LARGE)
            SetVariable("GuardIndex", 1)
        elseif guard_damage == GUARD_LEVEL_EXLARGE then
            act(141, DAMAGE_FLAG_GUARD_EXLARGE)
            SetVariable("GuardIndex", 1)
        end
        ExecEvent("W_Guard")
        return TRUE
    end
    local damage_part = env(ESD_ENV_DS3GetPartGroup)
    if damage_part > 0 and env(ESD_ENV_DS3DoesAnimExist, 9100 + damage_part * 10) == TRUE then
        SetVariable("BlendPart" .. damage_part, 1)
        ExecEvent("PartDamageAdd" .. damage_part)
    end
    if env(ESD_ENV_DS3DoesAnimExist, 8040) == TRUE and env(ESD_ENV_DS3GetSpecialEffectID, 97) == TRUE then
        if damage_level == DAMAGE_LEVEL_SMALL then
            act(141, DAMAGE_FLAG_MEDIUM)
            ExecEvent("W_DamageAfterPushed")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_MIDDLE then
            act(141, DAMAGE_FLAG_MEDIUM)
            ExecEvent("W_DamageAfterPushed")
            return TRUE
        elseif damage_level == DAMAGE_LEVEL_LARGE then
            act(141, DAMAGE_FLAG_LARGE)
            ExecEvent("W_DamageBlast")
            return TRUE
        end
    end
    if damage_level == DAMAGE_LEVEL_SMALL then
        act(141, DAMAGE_FLAG_SMALL)
        ExecEvent("W_DamageSmall")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_MIDDLE then
        act(141, DAMAGE_FLAG_MEDIUM)
        ExecEvent("W_DamageMiddle")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_LARGE then
        act(141, DAMAGE_FLAG_LARGE)
        ExecEvent("W_DamageLarge")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_EXLARGE then
        act(125)
        act(141, DAMAGE_FLAG_LARGE_BLOW)
        ExecEvent("W_DamageLarge")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_PUSHED then
        act(141, DAMAGE_FLAG_PUSH)
        ExecEvent("W_DamagePushed")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_DUSTERED then
        act(141, DAMAGE_FLAG_FLING)
        ExecEvent("W_DamageDuster")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_BLAST then
        act(125)
        act(141, DAMAGE_FLAG_LARGE_BLOW)
        ExecEvent("W_DamageBlast")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_MINIMUM then
        act(141, DAMAGE_FLAG_MINIMUM)
        ExecEvent("W_DamageMinimum")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_UPPER then
        if env(ESD_ENV_DS3DoesAnimExist, 8130) == TRUE then
            act(141, DAMAGE_FLAG_MINIMUM)
            ExecEvent("W_DamageUpper")
        else
            act(141, DAMAGE_FLAG_LARGE)
            ExecEvent("W_DamageLarge")
        end
        return TRUE
    end
    return FALSE
    
end

function ExecFall()
    if env(ESD_ENV_IsFalling) == FALSE then
        return FALSE
    end
    SetVariable("FallIndex", FALL_INDEX_DEFAULT)
    ExecEvent("W_Fall")
    return TRUE
    
end

function ExecLand()
    if env(ESD_ENV_IsLanding) == FALSE then
        return FALSE
    end
    local height = env(ESD_ENV_GetFallHeight) / 100
    local hp = env(ESD_ENV_GetHP)
    local fall_type = hkbGetVariable("FallIndex")
    if fall_type == FALL_INDEX_DEFAULT then
        if height > 20 then
            SetVariable("DeathIndex", DEATH_INDEX_LAND)
            ExecEvent("W_Death")
            return TRUE
        elseif height > 5 then
            SetVariable("LandIndex", LAND_INDEX_HEAVY)
            ExecEvent("W_Land")
            return TRUE
        elseif height > 2 then
            SetVariable("LandIndex", LAND_INDEX_DEFAULT)
            ExecEvent("W_Land")
            return TRUE
        else
            ExecEvent("W_Idle")
            return TRUE
        end
    elseif fall_type == FALL_INDEX_FRONT then
        if height > 20 or hp <= 0 then
            SetVariable("DeathIndex", DEATH_INDEX_LANDFRONT)
            ExecEvent("W_Death")
            return TRUE
        else
            SetVariable("LandIndex", LAND_INDEX_FRONT)
            ExecEvent("W_Land")
            return TRUE
        end
    elseif fall_type == FALL_INDEX_BACK then
        if height > 20 or hp <= 0 then
            SetVariable("DeathIndex", DEATH_INDEX_LANDBACK)
            ExecEvent("W_Death")
            return TRUE
        else
            SetVariable("LandIndex", LAND_INDEX_BACK)
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
        SetVariable("FallIndex", FALL_INDEX_FRONT)
    elseif damage_direction == DAMAGE_DIRECTION_BACK then
        SetVariable("FallIndex", FALL_INDEX_BACK)
    else
        SetVariable("FallIndex", FALL_INDEX_DEFAULT)
    end
    ExecEvent("W_Fall")
    return TRUE
    
end

function ChangeLadderHand()
    SetVariable("IndexLadderHand", (hkbGetVariable("IndexLadderHand") + 1) % 2)
    
end

function SetLadderCondition(condition, flag)
    if flag == TRUE then
        condition = condition + hkbGetVariable("IndexLadderHand")
    end
    act(133, condition)
    
end

function SendLadderCommand()
    if g_LadderFireCommand ~= LADDER_COMMAND_INVALID then
        act(108, g_LadderFireCommand)
        if g_LadderFireCommand == LADDER_COMMAND_UP then

        else

        end
    end
    
end

function LadderCommonFunction()
    local hp = env(ESD_ENV_GetHP)
    if hp <= 0 then
        ExecEvent("W_LadderFallStart")
    end
    
end

function UpdateLadderState()
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type <= 0 then
        action_type = env(ESD_ENV_GetAIChainActionType)
        if 0 >= actin_type then
            return FALSE
        end
    end
    if action_type == LADDER_REQUEST_UP then
        if env(ESD_ENV_DoesLadderHaveCharacters, LADDER_CONFLICT_CHECK_DIST_CHR, 1, 1) == FALSE then
            if env(ESD_ENV_DoesLadderHaveCharacters, LADDER_CONFLICT_CHECK_DIST_ELSE, 1, 0) == FALSE then
                SendLadderCommand()
                if env(ESD_ENV_IsReachTopOfLadder) == TRUE then
                    ExecEvent("W_LadderEndTop")
                    CallActionState(LADDER_STATE_DEFAULT)
                    return TRUE
                else
                    g_LadderFireCommand = LADDER_COMMAND_UP
                    if 1 == hkbGetVariable("IndexLadderHand") then
                        ExecEvent("W_LadderUpRight")
                    else
                        ExecEvent("W_LadderUpLeft")
                    end
                    return TRUE
                end
            end
        else
            if 0 == hkbGetVariable("IndexLadderHand") then
                ExecEvent("W_LadderAttackUpRight")
            else
                ExecEvent("W_LadderAttackUpLeft")
            end
            return TRUE
        end
    elseif action_type == LADDER_REQUEST_DOWN then
        if env(ESD_ENV_DoesLadderHaveCharacters, LADDER_CONFLICT_CHECK_DIST_CHR, 0, 1) == FALSE then
            if env(ESD_ENV_DoesLadderHaveCharacters, LADDER_CONFLICT_CHECK_DIST_ELSE, 0, 0) == FALSE then
                if env(ESD_ENV_IsReachBottomOfLadder) == TRUE then
                    ExecEvent("W_LadderEndBottom")
                    CallActionState(LADDER_STATE_DEFAULT)
                    return TRUE
                else
                    ChangeLadderHand()
                    g_LadderFireCommand = LADDER_COMMAND_DOWN
                    if 1 == hkbGetVariable("IndexLadderHand") then
                        ExecEvent("W_LadderDownRight")
                    else
                        ExecEvent("W_LadderDownLeft")
                    end
                    return TRUE
                end
            end
        elseif 0 == hkbGetVariable("IndexLadderHand") then
            ExecEvent("W_LadderAttackDownRight")
        else
            ExecEvent("W_LadderAttackDownLeft")
        end
    end
    return FALSE
    
end

function SetIdleFlag()
    act(133, -1)
    act(135)
    act(139)
    act(111, FALSE)
    act(101, TRUE)
    act(109, -1)
    act(102, 1)
    act(103, 0)
    CallActionState(0)
    
end

function IdleCommonFunction()
    act(101, TRUE)
    if TRUE == env(ESD_ENV_DS3HasThrowRequest) then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecGuardAction() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAIAction() then
        return 
    end
    if TRUE == MoveStart() then
        return 
    end
    if TRUE == ExecAIStateChange() then
        return 
    end
    if TRUE == ExecTurn() then
        return 
    end
    if TRUE == ExecUniqueIdle() then
        return 
    end
    
end

function TransCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecGuardAction() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAIStateChange() then
        return 
    end
    
end

function TurnCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    act(9104)
    if TRUE == ExecAIAction() then
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecGuardAction() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart() then
        CallActionState(0)
        return TRUE
    end
    if TRUE == ExecAIStateChange() then
        return 
    end
    
end

function GuardCommonTransFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    local action_type = env(ESD_ENV_GetAIActionType)
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecGuardAction() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        ExecEvent("Idle_wild")
        return 
    end
    
end

function MoveCommonFunction()
    act(101, TRUE)
    act(2001, hkbGetVariable("MoveSpeedRate"))
    if TRUE == env(ESD_ENV_DS3HasThrowRequest) then
        return 
    end
    if hkbGetVariable("IndexIdleType") == IDLE_TYPE_GUARD then
        g_IsGuard = TRUE
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecGuardAction() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAIAction() then
        return 
    end
    if TRUE == ExecAIStateChange() then
        return 
    end
    if TRUE == ExecTurn() then
        return 
    end
    if TRUE == MoveUpdate() then
        return 
    end
    
end

function AttackCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    act(2001, hkbGetVariable("AttackMoveRate"))
    CallActionState(g_ActionNumber)
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAICancelAction() then
        CallActionState(0)
        return 
    end
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart() then
        CallActionState(0)
        return TRUE
    end
    
end

function StepCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    CallActionState(g_ActionNumber)
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAICancelAction() then
        CallActionState(0)
        return 
    end
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart() then
        return TRUE
    end
    
end

function DamageCommonFunction()
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
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart() then
        return TRUE
    end
    
end

function FallCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    if TRUE == ExecLand() then
        return 
    end
    
end

function LandCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    CallActionState(g_ActionNumber)
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFall() then
        return 
    end
    if TRUE == ExecAICancelAction() then
        return 
    end
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart() then
        return TRUE
    end
    
end

function CommonThrowDefFunction()
    act(103, IS_THROW_INVALID)
    act(102, IS_THROW_INVALID)
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 1) == TRUE then
        act(135)
        act(139)
        local hp = env(ESD_ENV_GetHP)
        if hp <= 0 then
            if env(ESD_ENV_DS3GetSpecialEffectID, 99500) == TRUE then
                act(2002, 99501)
            end
            ExecEvent("W_ThrowDeath")
            return TRUE
        end
    end
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart() then
        return TRUE
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
    SetVariable(str .. num, vector)
    
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
    SetVariable(str .. pos, vector)
    
end

function DebugPrintNext(val)
    g_DebugCounter = g_DebugCounter + 1
    if g_DebugCounter > 10 then
        g_DebugCounter = 1
    end
    DebugPrint(g_DebugCounter, val)
    
end

local g_DebugCounterSub = 0
function DebugPrints(val)
     = g_DebugCounterSub + 1
    if g_DebugCounterSub > 4 then
         = 1
        g_DebugCounter = g_DebugCounter + 1
        if g_DebugCounter > 10 then
            g_DebugCounter = 1
        end
    end
    local str = nil
    if g_DebugCounter < 10 then
        str = "Debug0"
    else
        str = "Debug"
    end
    vector = hkbGetVariable(str .. g_DebugCounter)
    vector[g_DebugCounterSub - 1] = val
    SetVariable(str .. g_DebugCounter, vector)
    
end

function PrintArray(val, num, index)
    local str = nil
    if num < 10 then
        str = "Debug0"
    else
        str = "Debug"
    end
    vector = hkbGetVariable(str .. num)
    vector[index] = val
    SetVariable(str .. num, vector)
    
end

function PrintString(str)
    act(9000, str)
    
end

function SetDefaultFlag()
    act(103, IS_THROW_INVALID)
    act(102, IS_THROW_INVALID)
    act(111, TRUE)
    act(122, FALSE)
    act(101, TRUE)
    act(110, FALSE)
    
end

g_OldAnimeOffset = 0
function Update()
    g_FrameCount = g_FrameCount + 1
    g_MoveSpeedLevel = hkbGetVariable("MoveSpeedLevel")
    g_MoveAngle = hkbGetVariable("MoveAngle")
    act(101, FALSE)
    g_OldAIState = g_AIState
    g_AIState = env(ESD_ENV_GetAITargetAwareState)
    if g_OldAIState ~= g_AIState then
        g_IsAIStateChange = TRUE
    end
    g_IsGuard = FALSE
    local old_unique_id = g_UniqueIdleId
    g_UniqueIdleId = env(ESD_ENV_GetSpecialStayAnimID)
    if old_unique_id ~= g_UniqueIdleId then
        g_IsChangeIdleMode = TRUE
    else

    end
    
end

function Initialize()
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
