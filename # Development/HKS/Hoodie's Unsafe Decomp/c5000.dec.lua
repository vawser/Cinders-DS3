function ()
local TRUE = 1
local FALSE = 0
local g_FrameCount = 0
Dragon = nil
function IncVal(val)
    hkbSetVariable(val, hkbGetVariable(val) + 1)
    
end

function IncNum(num)
    local str = nil
    if num < 10 then
        str = "DebugFloat" .. "0" .. num
    else
        str = "DebugFloat" .. num
    end
    hkbSetVariable(str, hkbGetVariable(str) + 1)
    
end

function DebugPrints(...)
    buff = {...}
    for , 1, #buff do
        hkbSetVariable("DebugFloat" .. f3162_local0, buff[f3162_local0])
    end
    
end

function DebugPrint(pos, val)
    if pos < 10 then
        hkbSetVariable("DebugFloat" .. "0" .. pos, val)
    else
        hkbSetVariable("DebugFloat" .. pos, val)
    end
    
end

Events = {}
Events.New = function (state, frame)
    local f3164_local0 = {}
    SETFIELD_R1 2 0 0
    f3164_local0.Frame = frame
    return f3164_local0
    
end

STATE_IDLE = 0
STATE_MOVE = 1
STATE_ATTACK = 2
MOVE_STOP = 0
MOVE_WALK_FRONT = 1
MOVE_WALK_LEFT = 2
MOVE_WALK_RIGH = 3
MOVE_WALK_BACK = 4
MOVE_RUN = 5
Enemy = {}
Enemy.New = function ()
    local f3165_local0 = {}
    SETFIELD_R1 0 0 -1
    f3165_local0.Events = {}
    f3165_local0.State = STATE_IDLE
    f3165_local0.OrderAttack = REG4294967288
    f3165_local0.OrderAttackCancel = REG4294967288
    f3165_local0.OrderAttackCombo = REG4294967288
    f3165_local0.OrderStep = REG4294967288
    f3165_local0.OrderStepCancel = REG4294967288
    f3165_local0.OrderCallEnemy = REG4294967288
    f3165_local0.DamageState = REG4294967288
    f3165_local0.DamageDirection = REG4294967288
    f3165_local0.DamageType = REG4294967288
    f3165_local0.IsThrowed = FALSE
    f3165_local0.IsFall = FALSE
    f3165_local0.IsAttack = FALSE
    f3165_local0.ActionNumber = REG4294967295
    f3165_local0.MoveState = MOVE_STOP
    f3165_local0.StopCount = REG4294967295
    f3165_local0.IsFalling = FALSE
    f3165_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967268
    local f3165_local1 = setmetatable
    local f3165_local2 = f3165_local0
    local f3165_local3 = {}
    f3165_local3.__index = Enemy
    f3165_local1(f3165_local2, f3165_local3)
    return f3165_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f3166_local0 = self.Events
    local f3166_local1 = self.Count
    f3166_local0[f3166_local1] = Events.New(state, g_FrameCount)
    hkbFireEvent(state)
    return 
    
end

Enemy.ExecAIAction = function (self)
    local action_type = env(ESD_ENV_GetAIActionType)
    DebugPrint(1, action_type)
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 3000 and action_type < 4000 then
        local f3167_local0 = self
        self.ExecEvent(f3167_local0, "W_Attack" .. action_type)
        self.ActionNumber = action_type
        return TRUE
    end
    if action_type >= 700 and action_type < 800 then
        local f3167_local0 = self
        self.ExecEvent(f3167_local0, "W_Step" .. action_type)
        self.ActionNumber = action_type
        return TRUE
    end
    return FALSE
    
end

Enemy.ExecAttackCombo = function (self)
    local action_type = env(ESD_ENV_GetAIChainActionType)
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 3000 and action_type < 4000 then
        local f3168_local0 = self
        self.ExecEvent(f3168_local0, "W_Attack" .. action_type)
        self.ActionNumber = action_type
        return TRUE
    end
    return FALSE
    
end

Enemy.ExecAttackCancel = function (self)
    local action_type = env(ESD_ENV_GetAIAtkCancelType)
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 3000 and action_type < 4000 then
        local f3169_local0 = self
        self.ExecEvent(f3169_local0, "W_Attack" .. action_type)
        self.ActionNumber = action_type
        return TRUE
    end
    return FALSE
    
end

Enemy.ExecStepCancel = function (self)
    local action_type = env(ESD_ENV_GetAIChainStepType)
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 700 and action_type < 800 then
        self.ActionNumber = action_type
        local f3170_local0 = self
        self.ExecEvent(f3170_local0, "W_Step" .. action_type)
        return TRUE
    end
    return FALSE
    
end

function MoveStart()
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        return FALSE
    end
    hkbFireEvent("W_Move")
    return TRUE
    
end

function MoveUpdate()
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        local f3172_local0 = self
        local f3172_local1 = f3172_local0
        f3172_local0 = f3172_local0.ExecEvent
        f3172_local0(f3172_local1, "W_Idle")
    end
    
end

Enemy.SetDeathParam = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    hkbSetVariable("DeathIdleState", state2)
    
end

Enemy.ExecDeathEvent = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    local f3174_local0 = hkbSetVariable
    f3174_local0("DeathIdleState", state2)
    local f3174_local1 = self
    f3174_local0 = self.ExecEvent
    f3174_local0(f3174_local1, "W_DeathStart")
    
end

Enemy.ExecDamageEvent = function (self, state1, state2)
    hkbSetVariable("DamageState", state1)
    local f3175_local0 = hkbSetVariable
    f3175_local0("DamageDirection", state2)
    local f3175_local1 = self
    f3175_local0 = self.ExecEvent
    f3175_local0(f3175_local1, "W_Damage")
    
end

Enemy.ExecDamge = function (self)
    local level = env(ESD_ENV_GetDamageLevel)
    local kind = env(ESD_ENV_GetReceivedDamageType)
    if kind == 9 or env(ESD_ENV_GetHP) <= 0 and (env(ESD_ENV_IsFlying) == TRUE or env(ESD_ENV_GetCommandIDFromEvent, 0) == 1200) then
        local f3176_local0 = self
        self.ExecDeathEvent(f3176_local0, 6, 1)
        return TRUE
    elseif kind == 2 or env(ESD_ENV_GetHP) <= 0 then
        local f3176_local1 = g_FrameCount % 2
        if f3176_local1 == 0 then
            local f3176_local0 = self
            self.ExecDeathEvent(f3176_local0, 0, 0)
            return TRUE
        else
            local f3176_local0 = self
            self.ExecDeathEvent(f3176_local0, 1, 0)
            return TRUE
        end
    elseif kind == 2 then
        local f3176_local1 = env(ESD_ENV_GetIsWeakPoint)
        if f3176_local1 == TRUE then
            local f3176_local0 = self
            self.ExecDeathEvent(f3176_local0, 5, 0)
            return TRUE
        elseif level == 4 or level == 7 or level == 9 or level == 10 or level == 11 then
            local f3176_local0 = self
            self.ExecDeathEvent(f3176_local0, 3, 0)
            return TRUE
        elseif level == 6 then
            local f3176_local0 = self
            self.ExecDeathEvent(f3176_local0, 4, 0)
            return TRUE
        end
    elseif level >= 1 then
        if env(ESD_ENV_GetReceivedDamageType) >= 1000 then
            local f3176_local1 = env(ESD_ENV_GetReceivedDamageType)
            if f3176_local1 <= 1010 then
                self.ActionNumber = REG4294967272
                local f3176_local0 = self
                self.ExecEvent(f3176_local0, "W_DamageGuardBound")
                return TRUE
            end
        end
        if env(ESD_ENV_GetGuardLevelAction) == 0 then
            if level == 8 then
                local f3176_local1 = g_FrameCount % 2
                if f3176_local1 == 0 then
                    local f3176_local0 = self
                    self.ExecDamageEvent(f3176_local0, 4, 0)
                else
                    local f3176_local0 = self
                    self.ExecDamageEvent(f3176_local0, 4, 1)
                end
            else
                local dir = env(ESD_ENV_GetReceivedDamageDirection)
                hkbSetVariable("DamageState", self.DamageState - 1)
                local f3176_local0 = hkbSetVariable
                f3176_local0("DamageDirection", dir)
                local f3176_local2 = self
                f3176_local0 = self.ExecEvent
                f3176_local0(f3176_local2, "W_Damage")
            end
            return TRUE
        end
    end
    return FALSE
    
end

Enemy.ExecFalling = function (self)
    local height = env(ESD_ENV_GetFallHeight) / 100
    if self.IsFalling == TRUE and env(ESD_ENV_IsLanding) == TRUE then
        local f3177_local0 = FALSE
        self.IsFalling = f3177_local0
        if height > 20 then
            local f3177_local1 = self
            f3177_local0 = self.SetDeathParam
            f3177_local0(f3177_local1, 2, 0)
            f3177_local1 = self
            f3177_local0 = self.ExecEvent
            f3177_local0(f3177_local1, "W_DeathStart")
        elseif height > 5 then
            local f3177_local1 = self
            self.ExecEvent(f3177_local1, "W_FallHeavyLanding")
        elseif height > 2 then
            local f3177_local1 = self
            self.ExecEvent(f3177_local1, "W_FallLanding")
        else
            local f3177_local1 = self
            self.ExecEvent(f3177_local1, "W_Idle")
        end
        return 
    end
    
end

Enemy.ExecTurn = function (self)
    local angle = hkbGetVariable("TurnAngle")
    if angle >= -45 and angle < 45 then

    elseif angle >= 45 and angle < 135 then
        local f3178_local0 = self
        self.ExecEvent(f3178_local0, "W_TurnLeft90")
        return TRUE
    elseif angle >= 135 and angle <= 180 then
        local f3178_local0 = self
        self.ExecEvent(f3178_local0, "W_TurnLeft80")
        return TRUE
    elseif angle >= -180 and angle <= -135 then
        local f3178_local0 = self
        self.ExecEvent(f3178_local0, "W_TurnRight180")
        return TRUE
    elseif angle >= -135 and angle < -45 then
        local f3178_local0 = self
        self.ExecEvent(f3178_local0, "W_TurnRight90")
        return TRUE
    end
    return FALSE
    
end

Enemy.FallStart = function (self)
    if env(ESD_ENV_IsFalling) == TRUE then
        self.IsFalling = TRUE
        local f3179_local0 = self
        self.ExecEvent(f3179_local0, "W_FallBase")
        return TRUE
    end
    return FALSE
    
end

Enemy.CallHelp = function (self)
    if self.OrderCallEnemy > 0 then
        local f3180_local0 = self
        self.ExecEvent(f3180_local0, "W_CallHelp")
        return TRUE
    end
    return FALSE
    
end

function WrapIdleCommon()
    if MoveStart() == TRUE then
        return 
    end
    
end

Enemy.WrapDamageCommon = function (self)
    local f3182_local0 = self
    local f3182_local1 = self.ExecDamge(f3182_local0)
    if f3182_local1 == TRUE then
        return 
    end
    f3182_local0 = self
    f3182_local1 = self.FallStart(f3182_local0)
    if f3182_local1 == TRUE then
        return 
    end
    f3182_local0 = self
    f3182_local1 = self.ExecAIAction(f3182_local0)
    if f3182_local1 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

function WrapMoveCommon()
    MoveUpdate()
    
end

Enemy.WrapStepCommon = function (self)
    local f3184_local0 = self
    self.WrapAttackCommon(f3184_local0)
    
end

Enemy.WrapAttackCommon = function (self)
    local f3185_local0 = act
    f3185_local0(9103, self.ActionNumber)
    local f3185_local1 = self
    f3185_local0 = self.ExecDamge
    f3185_local0 = f3185_local0(f3185_local1)
    if f3185_local0 == TRUE then
        return 
    end
    f3185_local1 = self
    f3185_local0 = self.FallStart
    f3185_local0 = f3185_local0(f3185_local1)
    if f3185_local0 == TRUE then
        return 
    end
    f3185_local1 = self
    f3185_local0 = self.ExecAttackCombo
    f3185_local0 = f3185_local0(f3185_local1)
    if f3185_local0 == TRUE then
        return 
    end
    f3185_local1 = self
    f3185_local0 = self.ExecAttackCancel
    f3185_local0 = f3185_local0(f3185_local1)
    if f3185_local0 == TRUE then
        return 
    end
    f3185_local1 = self
    f3185_local0 = self.ExecStepCancel
    f3185_local0 = f3185_local0(f3185_local1)
    if f3185_local0 == TRUE then
        return 
    end
    f3185_local1 = self
    f3185_local0 = self.MoveStart
    f3185_local0 = f3185_local0(f3185_local1)
    if f3185_local0 == TRUE then
        return 
    end
    
end

Enemy.WrapTurnCommon = function (self)
    local f3186_local0 = self
    local f3186_local1 = self.ExecDamge(f3186_local0)
    if f3186_local1 == TRUE then
        return 
    end
    f3186_local0 = self
    f3186_local1 = self.FallStart(f3186_local0)
    if f3186_local1 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

function Event7014_onUpdate()
    act(9102)
    
end

function Event7015_onUpdate()
    act(9102)
    
end

function Event7016_onUpdate()
    act(9102)
    
end

function Event7017_onUpdate()
    act(9102)
    
end

function Event7018_onUpdate()
    act(9102)
    
end

function Event7019_onUpdate()
    act(9102)
    
end

function Event7020_onUpdate()
    act(9102)
    
end

function Event7021_onUpdate()
    act(9102)
    
end

function Event7022_onUpdate()
    act(9102)
    
end

function Event7023_onUpdate()
    act(9102)
    
end

function Event7024_onUpdate()
    act(9102)
    
end

function Event7025_onUpdate()
    act(9102)
    
end

function Event7026_onUpdate()
    act(9102)
    
end

function Event7027_onUpdate()
    act(9102)
    
end

function Event7028_onUpdate()
    act(9102)
    
end

function Event7029_onUpdate()
    act(9102)
    
end

function Event7030_onUpdate()
    act(9102)
    
end

function Attack3008_onUpdate()
    local f3204_local0 = Dragon
    local f3204_local1 = f3204_local0
    f3204_local0 = f3204_local0.WrapAttackCommon
    f3204_local0(f3204_local1)
    
end

function Attack3010_onUpdate()
    local f3205_local0 = Dragon
    local f3205_local1 = f3205_local0
    f3205_local0 = f3205_local0.WrapAttackCommon
    f3205_local0(f3205_local1)
    
end

function Attack3011_onUpdate()
    local f3206_local0 = Dragon
    local f3206_local1 = f3206_local0
    f3206_local0 = f3206_local0.WrapAttackCommon
    f3206_local0(f3206_local1)
    
end

function Attack3012_onUpdate()
    local f3207_local0 = Dragon
    local f3207_local1 = f3207_local0
    f3207_local0 = f3207_local0.WrapAttackCommon
    f3207_local0(f3207_local1)
    
end

function Attack3013_onUpdate()
    local f3208_local0 = Dragon
    local f3208_local1 = f3208_local0
    f3208_local0 = f3208_local0.WrapAttackCommon
    f3208_local0(f3208_local1)
    
end

function Attack3014_onUpdate()
    local f3209_local0 = Dragon
    local f3209_local1 = f3209_local0
    f3209_local0 = f3209_local0.WrapAttackCommon
    f3209_local0(f3209_local1)
    
end

function Attack3015_onUpdate()
    local f3210_local0 = Dragon
    local f3210_local1 = f3210_local0
    f3210_local0 = f3210_local0.WrapAttackCommon
    f3210_local0(f3210_local1)
    
end

function Attack3016_onUpdate()
    local f3211_local0 = Dragon
    local f3211_local1 = f3211_local0
    f3211_local0 = f3211_local0.WrapAttackCommon
    f3211_local0(f3211_local1)
    
end

function Attack3017_onUpdate()
    local f3212_local0 = Dragon
    local f3212_local1 = f3212_local0
    f3212_local0 = f3212_local0.WrapAttackCommon
    f3212_local0(f3212_local1)
    
end

function Attack3018_onUpdate()
    local f3213_local0 = Dragon
    local f3213_local1 = f3213_local0
    f3213_local0 = f3213_local0.WrapAttackCommon
    f3213_local0(f3213_local1)
    
end

function Attack3020_onUpdate()
    local f3214_local0 = Dragon
    local f3214_local1 = f3214_local0
    f3214_local0 = f3214_local0.WrapAttackCommon
    f3214_local0(f3214_local1)
    
end

function Attack3021_onUpdate()
    local f3215_local0 = Dragon
    local f3215_local1 = f3215_local0
    f3215_local0 = f3215_local0.WrapAttackCommon
    f3215_local0(f3215_local1)
    
end

function Attack3022_onUpdate()
    local f3216_local0 = Dragon
    local f3216_local1 = f3216_local0
    f3216_local0 = f3216_local0.WrapAttackCommon
    f3216_local0(f3216_local1)
    
end

function Attack3023_onUpdate()
    local f3217_local0 = Dragon
    local f3217_local1 = f3217_local0
    f3217_local0 = f3217_local0.WrapAttackCommon
    f3217_local0(f3217_local1)
    
end

function Attack3024_onUpdate()
    local f3218_local0 = Dragon
    local f3218_local1 = f3218_local0
    f3218_local0 = f3218_local0.WrapAttackCommon
    f3218_local0(f3218_local1)
    
end

function Attack3300_onUpdate()
    local f3219_local0 = Dragon
    local f3219_local1 = f3219_local0
    f3219_local0 = f3219_local0.WrapAttackCommon
    f3219_local0(f3219_local1)
    
end

function Attack3301_onUpdate()
    local f3220_local0 = Dragon
    local f3220_local1 = f3220_local0
    f3220_local0 = f3220_local0.WrapAttackCommon
    f3220_local0(f3220_local1)
    
end

function Attack3302_onUpdate()
    local f3221_local0 = Dragon
    local f3221_local1 = f3221_local0
    f3221_local0 = f3221_local0.WrapAttackCommon
    f3221_local0(f3221_local1)
    
end

function DeathStart_onActivate()
    act(9101)
    act(100, FALSE)
    
end

function DeathStart_onDeactivate()
    act(100, TRUE)
    
end

function DeathAirFalling_onUpdate()
    local f3224_local0 = env(ESD_ENV_IsLanding)
    if f3224_local0 == TRUE then
        f3224_local0 = Dragon
        local f3224_local1 = f3224_local0
        f3224_local0 = f3224_local0.ExecEvent
        f3224_local0(f3224_local1, "DeathAirLanding")
    end
    
end

function DeathStart_onActivate()
    act(100, FALSE)
    act(1101, TRUE)
    act(126, TRUE)
    
end

function DeathStart_onDeactivate()
    act(100, TRUE)
    act(1101, FALSE)
    act(126, FALSE)
    
end

function DeathIdle_onActivate()
    act(9101)
    act(126, TRUE)
    
end

function DeathIdle_onDeactivate()
    act(126, FALSE)
    
end

function Damage_onActivate()
    act(9101)
    act(143)
    
end

function Damage_onDeactivate()
    act(100, TRUE)
    
end

function FallBase_onUpdate()
    local f3231_local0 = Dragon
    local f3231_local1 = f3231_local0
    f3231_local0 = f3231_local0.ExecFalling
    f3231_local0(f3231_local1)
    
end

function Initialize()
    Dragon = Enemy.New()
    
end

function Main()
     = g_FrameCount + 1
    if g_FrameCount > 999999 then
         = 0
    end
    act("投げ要求を設定")
    
end

function HandleEvent()
    if hkbGetHandleEventName() == "" then

    else

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
