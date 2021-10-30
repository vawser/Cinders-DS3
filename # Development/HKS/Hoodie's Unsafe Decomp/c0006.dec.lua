function ()
TRUE = 1
FALSE = 0
INVALID = -1
STAMINA_MINIMUM = 10
STAMINA_REDUCE_ROLLING = -20
SPEED_ENABLE_JUMP = 1.100000023841858
ACTION_ARM_R1 = 0
ACTION_ARM_R2 = 1
ACTION_ARM_L1 = 2
ACTION_ARM_L2 = 3
ACTION_ARM_ACTION = 4
ACTION_ARM_SP_MOVE = 5
ACTION_ARM_CHANGE_STYLE = 6
ACTION_ARM_USE_ITEM = 7
ACTION_ARM_SWITCH_FORM = 8
ACTION_ARM_CHANGE_WEAPON_R = 9
ACTION_ARM_CHANGE_WEAPON_L = 10
ACTION_ARM_CHANGE_ITEM = 11
ACTION_ARM_BACKSTEP = 12
ACTION_ARM_ROLLING = 13
ACTION_ARM_GESTURE = 15
ATTACK_REQUEST_ROLLING = 11
ATTACK_REQUEST_BACKSTEP = 12
ATTACK_REQUEST_JUMP = 13
ATTACK_REQUEST_INVALID = -1
ATTACK_REQUEST_RIGHT_LIGHT = 0
ATTACK_REQUEST_RIGHT_HEAVY = 1
g_DebugCounter = 0
g_DebugCounterSub = 0
g_FrameCount = 0
g_MoveSpeedLevel = 0
g_MoveSpeedLevelReal = 0
g_IsLockon = false
g_MoveAngle = 0
g_RollingAngle = 0
g_IsActionRequest = FALSE
g_TimeCheckActionRequest = -1
g_FallStyle = FALL_DEFAULT
g_EventCommand = 0
g_TimeMoveUpdate = -1
g_IsDashPenalty = 0
g_DashPenaltyCount = 0
g_HP = -1
g_MaxStamina = 0
g_CurrentStamina = 0
MOVE_RATE_DEFAULT = 1.2000000476837158
MOVE_NONE = -1
MOVE_WALK = 0
MOVE_RUN = 1
MOVE_DASH = 2
function ExecEvent(state)
    hkbFireEvent(state)
    return 
    
end

function ExecEvents(...)
    local buff = {...}
    for , 1, #buff do
        ExecEvent(buff[f1800_local0])
    end
    
end

function SetVariable(name, value)
    act(148, name, value)
    
end

function ResetRequest()
    act(9101)
    
end

function SetIdleFlag()
    act(9100)
    
end

function CheckActionRequest()
    if g_TimeCheckActionRequest ~= g_FrameCount then
        g_IsActionRequest = env(ESD_ENV_DS3HasActionRequest)
        g_TimeCheckActionRequest = g_FrameCount
    end
    
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

function MoveStart()
    SetEnableMoveTAE(0)
    ExecEvent("W_Move")
    return TRUE
    
end

function MoveUpdate()
    SetEnableMoveTAE()
    if env(ESD_ENV_DS3ActionDuration, ACTION_ARM_SP_MOVE) > 100 then
        if g_IsLockon == false or g_IsLockon == true and math.abs(g_MoveAngle) < 25 then
            if g_MoveSpeedLevel > 0 then
                g_MoveSpeedLevel = 2
            end
        else
            g_MoveSpeedLevel = 1
        end
    end
    if g_IsLockon == true then
        if g_MoveSpeedLevel > 0 then
            SetVariable("MoveAngleReal", g_MoveAngle)
        end
    else
        SetVariable("MoveAngleReal", 0)
    end
    if g_MoveSpeedLevelReal > 1.5 then
        act(1001, -1)
    end
    if env(ESD_ENV_GetStamina) <= 0 and 1 < g_MoveSpeedLevelReal then
        g_MoveSpeedLevelReal = 1
    end
    if 0 == g_MoveSpeedLevelReal then
        ExecEvent("Idle_wild")
        return 
    end
    
end

function SetEnableMoveTAE(g_MoveSpeedLevelReal)
    if g_MoveSpeedLevelReal < 0.75 then
        if g_MoveCondition ~= MOVE_WALK then
            g_MoveCondition = MOVE_WALK
            SetVariable("IsEnableWalkTAE", true)
            SetVariable("IsEnableRunTAE", false)
            SetVariable("IsEnableDashTAE", false)
        end
    elseif g_MoveSpeedLevelReal < 1.5 then
        if g_MoveCondition ~= MOVE_RUN then
            g_MoveCondition = MOVE_RUN
            SetVariable("IsEnableWalkTAE", false)
            SetVariable("IsEnableRunTAE", true)
            SetVariable("IsEnableDashTAE", false)
        end
    elseif g_MoveCondition ~= MOVE_DASH then
        g_MoveCondition = MOVE_DASH
        SetVariable("IsEnableWalkTAE", false)
        SetVariable("IsEnableRunTAE", false)
        SetVariable("IsEnableDashTAE", true)
    end
    
end

function GetAttackRequest()
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) == TRUE then

    else

    end
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) == TRUE then

    else

    end
    
end

function GetEvasionReqest()
    if env(ESD_ENV_GetStamina) >= STAMINA_MINIMUM then
        if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_SP_MOVE) == TRUE then
            local speed = g_MoveSpeedLevelReal
            if speed > SPEED_ENABLE_JUMP then
                return ATTACK_REQUEST_JUMP
            end
        end
        if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) == TRUE then
            return ATTACK_REQUEST_ROLLING
        elseif env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) == TRUE then
            return ATTACK_REQUEST_BACKSTEP
        end
    end
    return ATTACK_REQUEST_INVALID
    
end

function ExecAttack(r1, r2)
    if g_IsActionRequest == FALSE then
        return FALSE
    end
    if env(ESD_ENV_GetStamina) <= 0 then
        return FALSE
    end
    local request = GetAttackRequest()
    if request == ATTACK_REQUEST_RIGHT_LIGHT then
        ExecEvent(r1)
        return TRUE
    elseif request == ATTACK_REQUEST_RIGHT_HEAVY then
        ExecEvent(r2)
        return TRUE
    end
    return FALSE
    
end

function ExecEvasion()
    if g_IsActionRequest == FALSE then
        return FALSE
    end
    if request == ATTACK_REQUEST_INVALID then
        return FALSE
    end
    if request == ATTACK_REQUEST_ROLLING then
        act(1001, STAMINA_REDUCE_ROLLING)
        if g_MoveAngle >= 0 then
            SetVariable("RollingDirection", 1)
        else
            SetVariable("RollingDirection", 0)
        end
        if g_IsLockon == true then
            SetVariable("RollingAngle", g_MoveAngle)
        else
            SetVariable("RollingAngle", 0)
        end
        ExecEvents(TRANS_TO_ALL_BODY, "W_Rolling")
    elseif request == ATTACK_REQUEST_JUMP then
        act(1001, STAMINA_REDUCE_ROLLING)
        ExecEvents(TRANS_TO_ALL_BODY, "W_Jump")
    elseif request == ATTACK_REQUEST_BACKSTEP then
        act(1001, STAMINA_REDUCE_ROLLING)
        ExecEvents(TRANS_TO_ALL_BODY, "W_BackStep")
    end
    ResetRequest()
    return TRUE
    
end

function IdleCommonFunction()
    SetIdleFlag()
    CheckActionRequest()
    if ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1") == TRUE then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == MoveStart(nil) then
        return TRUE
    end
    
end

function MoveCommonFunction()
    SetIdleFlag()
    CheckActionRequest()
    if ExecEvasion(FALSE) == TRUE then
        return 
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1") then
        return 
    end
    MoveUpdate()
    
end

function AttackCommonFunction(r1, r2)
    CheckActionRequest()
    if ExecEvasion(FALSE) == TRUE then
        return 
    end
    if ExecAttack(r1, r2) == TRUE then
        return 
    end
    if TRUE == MoveStart(nil) then
        return TRUE
    end
    
end

function EvasionCommonFunction(r1, r2)
    CheckActionRequest()
    if ExecEvasion(TRUE) == TRUE then
        return 
    end
    if ExecAttack(r1, r2) == TRUE then
        return 
    end
    if TRUE == MoveStart(nil) then
        return TRUE
    end
    
end

function Idle_onActivate()
    ResetRequest()
    
end

function Idle_onUpdate()
    IdleCommonFunction()
    
end

function Move_onActivate()
    ResetRequest()
    
end

function Move_onUpdate()
    MoveCommonFunction()
    act(2001, endratio)
    
end

function AttackRightLight1_onActivate()
    ResetRequest()
    
end

function AttackRightLight1_onUpdate()
    AttackCommonFunction("W_AttackRightLight2", "W_AttackRightHeavy1")
    
end

function AttackRightLight2_onActivate()
    ResetRequest()
    
end

function AttackRightLight2_onUpdate()
    AttackCommonFunction("W_AttackRightLight3", "W_AttackRightHeavy1")
    
end

function AttackRightLight3_onActivate()
    ResetRequest()
    
end

function AttackRightLight3_onUpdate()
    AttackCommonFunction("W_AttackRightLight2", "W_AttackRightHeavy1")
    
end

function AttackRightHeavy1_onActivate()
    ResetRequest()
    
end

function AttackRightHeavy1_onUpdate()
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy2")
    
end

function AttackRightHeavy2_onActivate()
    ResetRequest()
    
end

function AttackRightHeavy2_onUpdate()
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1")
    
end

function Rolling_onActivate()
    ResetRequest()
    
end

function Rolling_onUpdate()
    EvasionCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1")
    
end

function BackStep_onActivate()
    ResetRequest()
    
end

function BackStep_onUpdate()
    EvasionCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1")
    
end

function Jump_onActivate()
    ResetRequest()
    
end

function Jump_onUpdate()
    EvasionCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1")
    
end

function Update()
    act(147)
    g_MoveSpeedLevel = hkbGetVariable("MoveSpeedLevel")
    g_IsLockon = hkbGetVariable("IsLockon")
    g_MoveAngle = hkbGetVariable("MoveAngle")
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
