function ()
local TRUE = 1
local FALSE = 0
local g_FrameCount = 0
local g_DebugCounter = 0
TestPurchaise = nil
local IS_MOVE_BLEND = FALSE
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

function DebugPrints(...)
    buff = {...}
    for , 1, #buff do
        hkbSetVariable("DebugFloat" .. f2342_local0, buff[f2342_local0])
    end
    
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
     = g_DebugCounter + 1
    if g_DebugCounter > 9 then
         = 1
    end
    DebugPrint(g_DebugCounter, val)
    
end

Events = {}
Events.New = function (state, frame)
    local f2345_local0 = {}
    SETFIELD_R1 2 0 0
    f2345_local0.Frame = frame
    return f2345_local0
    
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
    local f2346_local0 = {}
    SETFIELD_R1 0 0 -1
    f2346_local0.Events = {}
    f2346_local0.State = STATE_IDLE
    f2346_local0.OrderAttack = REG4294967288
    f2346_local0.OrderAttackCancel = REG4294967288
    f2346_local0.OrderAttackCombo = REG4294967288
    f2346_local0.OrderStep = REG4294967288
    f2346_local0.OrderStepCancel = REG4294967288
    f2346_local0.OrderCallEnemy = REG4294967288
    f2346_local0.DamageState = REG4294967288
    f2346_local0.DamageDirection = REG4294967288
    f2346_local0.DamageType = REG4294967288
    f2346_local0.IsThrowed = FALSE
    f2346_local0.IsFall = FALSE
    f2346_local0.IsAttack = FALSE
    f2346_local0.IsDamage = FALSE
    f2346_local0.ActionNumber = REG4294967295
    f2346_local0.MoveState = MOVE_STOP
    f2346_local0.StopCount = REG4294967295
    f2346_local0.IsFalling = FALSE
    f2346_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967267
    local f2346_local1 = setmetatable
    local f2346_local2 = f2346_local0
    local f2346_local3 = {}
    f2346_local3.__index = Enemy
    f2346_local1(f2346_local2, f2346_local3)
    return f2346_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f2347_local0 = self.Events
    local f2347_local1 = self.Count
    f2347_local0[f2347_local1] = Events.New(state, g_FrameCount)
    hkbFireEvent(state)
    return 
    
end

Enemy.ExecAttack = function (self, action_type)
    local f2348_local0 = self
    self.ExecEvent(f2348_local0, "W_Attack" .. action_type)
    return 
    
end

Enemy.ExecAIAction = function (self)
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type <= 0 then
        return FALSE
    end
    if action_type == 9999 then
        local f2349_local0 = self
        self.ExecEvent(f2349_local0, "W_Upper")
        return TRUE
    end
    if action_type == 50 then
        self.ActionNumber = action_type
        local f2349_local0 = self
        self.ExecEvent(f2349_local0, "W_Notice")
        return TRUE
    end
    if action_type == 102 then
        self.ActionNumber = action_type
        local f2349_local0 = self
        self.ExecEvent(f2349_local0, "W_ResponseFront")
        return TRUE
    elseif action_type == 103 then
        self.ActionNumber = action_type
        local f2349_local0 = self
        self.ExecEvent(f2349_local0, "W_ResponseBack")
        return TRUE
    end
    if action_type >= 3000 and action_type < 6001 then
        self.ActionNumber = action_type
        local f2349_local0 = self
        self.ExecAttack(f2349_local0, action_type)
        return TRUE
    end
    if action_type == 2014 then
        self.ActionNumber = action_type
        local f2349_local0 = self
        local f2349_local1 = self.ExecEvent
        f2349_local1(f2349_local0, "W_Other")
        f2349_local0 = self
        f2349_local1 = self.ExecEvent
        f2349_local1(f2349_local0, "W_Blust")
        f2349_local1 = TRUE
        return f2349_local1
    end
    if action_type >= 700 and action_type < 800 then
        local f2349_local0 = self
        local f2349_local1 = self.ExecEvent
        f2349_local1(f2349_local0, "W_Step")
        self.ActionNumber = action_type
        f2349_local0 = self
        f2349_local1 = self.ExecEvent
        f2349_local1(f2349_local0, "W_Step" .. action_type)
        f2349_local1 = TRUE
        return f2349_local1
    end
    if action_type >= 7000 and action_type < 7010 then
        local f2349_local0 = self
        self.ExecEvent(f2349_local0, "W_Common" .. action_type)
        return TRUE
    end
    if action_type == 7502 then
        local f2349_local0 = self
        self.ExecEvent(f2349_local0, "W_Tumble")
        return TRUE
    end
    return FALSE
    
end

Enemy.ExecAttackCombo = function (self)
    local action_type = env(ESD_ENV_GetAIChainActionType)
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 3000 and action_type < 6001 then
        self.ActionNumber = action_type
        local f2350_local0 = self
        self.ExecAttack(f2350_local0, action_type)
        return TRUE
    end
    return FALSE
    
end

local g_num = 0
Enemy.CallActionState = function (self, action_type)
     = g_num + 1
    if g_num > 9 then
         = 1
    end
    act(9103, action_type)
    
end

Enemy.ExecAttackCancel = function (self)
    local action_type = env(ESD_ENV_GetAIAtkCancelType)
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 3000 and action_type < 6001 then
        self.ActionNumber = action_type
        local f2352_local0 = self
        self.ExecAttack(f2352_local0, action_type)
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
        local f2353_local0 = self
        local f2353_local1 = self.ExecEvent
        f2353_local1(f2353_local0, "W_Step")
        f2353_local0 = self
        f2353_local1 = self.ExecEvent
        f2353_local1(f2353_local0, "W_Step" .. action_type)
        f2353_local1 = TRUE
        return f2353_local1
    end
    return FALSE
    
end

Enemy.MoveStart = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        return FALSE
    end
    IncNum(1)
    if IS_MOVE_BLEND == TRUE then
        local f2354_local0 = self
        self.ExecEvent(f2354_local0, "W_MoveBlend")
    elseif speed > 0.75 then
        local f2354_local0 = self
        self.ExecEvent(f2354_local0, "W_Run")
        self.MoveState = MOVE_RUN
    elseif speed > 0.10000000149011612 then
        local angle = hkbGetVariable("MoveAngle")
        if angle >= -45 and angle < 45 then
            self.MoveState = MOVE_WALK_FRONT
            local f2354_local1 = self
            self.ExecEvent(f2354_local1, "W_WalkFront")
        elseif angle >= 45 and angle < 135 then
            self.MoveState = MOVE_WALK_RIGHT
            local f2354_local1 = self
            self.ExecEvent(f2354_local1, "W_WalkRight")
        elseif not (angle < 135 or angle > 180) or angle >= -180 and angle <= -135 then
            self.MoveState = MOVE_WALK_BACK
            local f2354_local1 = self
            self.ExecEvent(f2354_local1, "W_WalkBack")
        elseif angle >= -135 and angle < -45 then
            self.MoveState = MOVE_WALK_LEFT
            local f2354_local1 = self
            self.ExecEvent(f2354_local1, "W_WalkLeft")
        end
    end
    return TRUE
    
end

Enemy.MoveUpdate = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        local f2355_local0 = self
        self.ExecEvent(f2355_local0, "W_Idle")
    elseif IS_MOVE_BLEND == FALSE then
        local angle = hkbGetVariable("MoveAngle")
        if angle >= -45 and angle < 45 then
            if self.MoveState ~= MOVE_RUN and speed > 0.75 then
                self.MoveState = MOVE_RUN
                local f2355_local1 = self
                self.ExecEvent(f2355_local1, "W_Run")
            elseif self.MoveState ~= MOVE_WALK_FRONT and speed > 0 and speed < 0.75 then
                self.MoveState = MOVE_WALK_FRONT
                local f2355_local1 = self
                self.ExecEvent(f2355_local1, "W_WalkFront")
            end
        elseif self.MoveState ~= MOVE_WALK_RIGHT and angle >= 45 and angle < 135 then
            self.MoveState = MOVE_WALK_RIGHT
            local f2355_local1 = self
            self.ExecEvent(f2355_local1, "W_WalkRight")
        elseif self.MoveState ~= MOVE_WALK_BACK and (not (angle < 135 or angle > 180) or angle >= -180 and angle <= -135) then
            self.MoveState = MOVE_WALK_BACK
            local f2355_local1 = self
            self.ExecEvent(f2355_local1, "W_WalkBack")
        elseif self.MoveState ~= MOVE_WALK_LEFT and angle >= -135 and angle < -45 then
            self.MoveState = MOVE_WALK_LEFT
            local f2355_local1 = self
            self.ExecEvent(f2355_local1, "W_WalkLeft")
        end
    end
    
end

Enemy.GetThrowedDeathTiming = function (self)
    return env(ESD_ENV_DS3GetGeneralTAEFlag, 1)
    
end

Enemy.SetDeathParam = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    hkbSetVariable("DeathIdleState", state2)
    
end

Enemy.ExecDeathEvent = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    local f2358_local0 = hkbSetVariable
    f2358_local0("DeathIdleState", state2)
    local f2358_local1 = self
    f2358_local0 = self.ExecEvent
    f2358_local0(f2358_local1, "W_DeathStart")
    
end

Enemy.ExecDamageEvent = function (self, state1, state2)
    hkbSetVariable("DamageState", state1)
    local f2359_local0 = hkbSetVariable
    f2359_local0("DamageDirection", state2)
    local f2359_local1 = self
    f2359_local0 = self.ExecEvent
    f2359_local0(f2359_local1, "W_Damage")
    
end

Enemy.ExecDamge = function (self)
    local level = env(ESD_ENV_GetDamageLevel)
    local kind = env(ESD_ENV_GetReceivedDamageType)
    if kind == 9 or env(ESD_ENV_GetHP) <= 0 and (env(ESD_ENV_IsFlying) == TRUE or env(ESD_ENV_GetCommandIDFromEvent, 0) == 1200) then
        local f2360_local0 = self
        self.ExecDeathEvent(f2360_local0, 6, 1)
        return TRUE
    elseif kind == 2 or env(ESD_ENV_GetHP) <= 0 then
        local f2360_local1 = g_FrameCount % 2
        if f2360_local1 == 0 then
            local f2360_local0 = self
            self.ExecDeathEvent(f2360_local0, 0, 0)
            return TRUE
        else
            local f2360_local0 = self
            self.ExecDeathEvent(f2360_local0, 1, 0)
            return TRUE
        end
    elseif kind == 2 then
        local f2360_local1 = env(ESD_ENV_GetIsWeakPoint)
        if f2360_local1 == TRUE then
            local f2360_local0 = self
            self.ExecDeathEvent(f2360_local0, 5, 0)
            return TRUE
        elseif level == 4 or level == 7 or level == 9 or level == 10 or level == 11 then
            local f2360_local0 = self
            self.ExecDeathEvent(f2360_local0, 3, 0)
            return TRUE
        elseif level == 6 then
            local f2360_local0 = self
            self.ExecDeathEvent(f2360_local0, 4, 0)
            return TRUE
        end
    elseif level >= 1 then
        if env(ESD_ENV_GetReceivedDamageType) >= 1000 then
            local f2360_local1 = env(ESD_ENV_GetReceivedDamageType)
            if f2360_local1 <= 1010 then
                self.ActionNumber = REG4294967272
                local f2360_local0 = self
                self.ExecEvent(f2360_local0, "W_DamageGuardBound")
                return TRUE
            end
        end
        if env(ESD_ENV_GetGuardLevelAction) == 0 then
            if level == 8 then
                if g_FrameCount % 3 == 0 then
                    local f2360_local0 = self
                    self.ExecDamageEvent(f2360_local0, 4, 0)
                else
                    local f2360_local1 = g_FrameCount % 2
                    if f2360_local1 == 1 then
                        local f2360_local0 = self
                        self.ExecDamageEvent(f2360_local0, 4, 1)
                    else
                        local f2360_local0 = self
                        self.ExecDamageEvent(f2360_local0, 4, 2)
                    end
                end
            else
                local dir = env(ESD_ENV_GetReceivedDamageDirection)
                hkbSetVariable("DamageState", level - 1)
                hkbSetVariable("DamageDirection", dir)
                local f2360_local0 = self.IsDamage
                if f2360_local0 == TRUE then
                    local f2360_local2 = self
                    self.ExecEvent(f2360_local2, "S_Damage")
                else
                    local f2360_local2 = self
                    self.ExecEvent(f2360_local2, "W_Damage")
                end
            end
            return TRUE
        end
    end
    return FALSE
    
end

Enemy.ExecFalling = function (self)
    local height = env(ESD_ENV_GetFallHeight) / 100
    if env(ESD_ENV_GetAIActionType) == 2014 then
        local f2361_local0 = self
        local f2361_local1 = self.ExecEvent
        f2361_local1(f2361_local0, "W_Other")
        f2361_local0 = self
        f2361_local1 = self.ExecEvent
        f2361_local1(f2361_local0, "W_Blust")
        f2361_local1 = TRUE
        return f2361_local1
    end
    if self.IsFalling == TRUE then
        if env(ESD_ENV_IsLanding) == TRUE then
            self.IsFalling = FALSE
            if hkbGetVariable("IsBridge") > 0 and height > 2.5 then
                local f2361_local0 = self
                local f2361_local1 = self.SetDeathParam
                f2361_local1(f2361_local0, 2, 0)
                f2361_local0 = self
                f2361_local1 = self.ExecEvent
                f2361_local1(f2361_local0, "W_DeathStart")
            elseif height > 8.5 then
                local f2361_local0 = self
                local f2361_local1 = self.SetDeathParam
                f2361_local1(f2361_local0, 2, 0)
                f2361_local0 = self
                f2361_local1 = self.ExecEvent
                f2361_local1(f2361_local0, "W_DeathStart")
            elseif height > 5 then
                local f2361_local0 = self
                local f2361_local1 = self.ExecEvent
                f2361_local1(f2361_local0, "W_Fall")
                f2361_local0 = self
                f2361_local1 = self.ExecEvent
                f2361_local1(f2361_local0, "W_FallHeavyLanding")
            elseif height > 2 then
                local f2361_local0 = self
                local f2361_local1 = self.ExecEvent
                f2361_local1(f2361_local0, "W_Fall")
                f2361_local0 = self
                f2361_local1 = self.ExecEvent
                f2361_local1(f2361_local0, "W_FallLanding")
            else
                local f2361_local0 = self
                self.ExecEvent(f2361_local0, "W_Idle")
            end
            self.IsFalling = FALSE
            return 
        elseif hkbGetVariable("IsBridge") > 0 and height > 4.5 then
            local f2361_local0 = self
            local f2361_local1 = self.SetDeathParam
            f2361_local1(f2361_local0, 2, 0)
            f2361_local0 = self
            f2361_local1 = self.ExecEvent
            f2361_local1(f2361_local0, "W_DeathStart")
        end
    end
    
end

Enemy.ExecTurn = function (self)
    local angle = hkbGetVariable("TurnAngle")
    if math.abs(angle) > 75 then
        local f2362_local0 = self
        self.ExecEvent(f2362_local0, "W_QuickTurn")
        return TRUE
    end
    return FALSE
    
end

Enemy.FallStart = function (self)
    if env(ESD_ENV_IsFalling) == TRUE then
        self.IsFalling = TRUE
        if hkbGetVariable("FallStyle") == 0 then
            local f2363_local0 = self
            self.ExecEvent(f2363_local0, "W_FallBase")
        else
            local f2363_local0 = self
            self.ExecEvent(f2363_local0, "W_FallStart")
        end
        return TRUE
    end
    return FALSE
    
end

Enemy.CallHelp = function (self)
    if self.OrderCallEnemy > 0 then
        local f2364_local0 = self
        self.ExecEvent(f2364_local0, "W_CallHelp")
        return TRUE
    end
    return FALSE
    
end

Enemy.WrapIdleCommon = function (self)
    local f2365_local0 = env(ESD_ENV_DS3HasThrowRequest)
    if f2365_local0 == TRUE then
        return 
    end
    local f2365_local1 = self
    f2365_local0 = self.ExecAIAction(f2365_local1)
    if f2365_local0 == TRUE then
        return 
    end
    f2365_local1 = self
    f2365_local0 = self.ExecDamge(f2365_local1)
    if f2365_local0 == TRUE then
        return 
    end
    f2365_local1 = self
    f2365_local0 = self.FallStart(f2365_local1)
    if f2365_local0 == TRUE then
        return 
    end
    f2365_local1 = self
    f2365_local0 = self.ExecTurn(f2365_local1)
    if f2365_local0 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

Enemy.WrapDamageCommon = function (self)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    self.IsDamage = TRUE
    if self:ExecDamge() == TRUE then
        return 
    end
    self.IsDamage = FALSE
    local f2366_local0 = self
    local f2366_local1 = self.FallStart(f2366_local0)
    if f2366_local1 == TRUE then
        return 
    end
    f2366_local0 = self
    f2366_local1 = self.ExecAIAction(f2366_local0)
    if f2366_local1 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

Enemy.WrapMoveCommon = function (self)
    local f2367_local0 = env(ESD_ENV_DS3HasThrowRequest)
    if f2367_local0 == TRUE then
        return 
    end
    local f2367_local1 = self
    f2367_local0 = self.MoveUpdate
    f2367_local0(f2367_local1)
    f2367_local1 = self
    f2367_local0 = self.ExecDamge
    f2367_local0 = f2367_local0(f2367_local1)
    if f2367_local0 == TRUE then
        return 
    end
    f2367_local1 = self
    f2367_local0 = self.FallStart
    f2367_local0 = f2367_local0(f2367_local1)
    if f2367_local0 == TRUE then
        return 
    end
    f2367_local1 = self
    f2367_local0 = self.ExecAIAction
    f2367_local0 = f2367_local0(f2367_local1)
    if f2367_local0 == TRUE then
        return 
    end
    
end

Enemy.WrapStepCommon = function (self)
    local f2368_local0 = env(ESD_ENV_DS3HasThrowRequest)
    if f2368_local0 == TRUE then
        return 
    end
    local f2368_local1 = self
    f2368_local0 = self.CallActionState
    f2368_local0(f2368_local1, self.ActionNumber)
    f2368_local1 = self
    f2368_local0 = self.ExecDamge
    f2368_local0 = f2368_local0(f2368_local1)
    if f2368_local0 == TRUE then
        return 
    end
    f2368_local1 = self
    f2368_local0 = self.FallStart
    f2368_local0 = f2368_local0(f2368_local1)
    if f2368_local0 == TRUE then
        return 
    end
    f2368_local1 = self
    f2368_local0 = self.ExecAttackCombo
    f2368_local0 = f2368_local0(f2368_local1)
    if f2368_local0 == TRUE then
        return 
    end
    f2368_local1 = self
    f2368_local0 = self.ExecAttackCancel
    f2368_local0 = f2368_local0(f2368_local1)
    if f2368_local0 == TRUE then
        return 
    end
    f2368_local1 = self
    f2368_local0 = self.ExecTurn
    f2368_local0 = f2368_local0(f2368_local1)
    if f2368_local0 == TREU then
        return 
    end
    
end

Enemy.WrapAttackCommon = function (self)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return 
    end
    local f2369_local0 = env(ESD_ENV_GetAIActionType)
    if f2369_local0 == 9999 then
        f2369_local0 = Zombie
        local f2369_local1 = f2369_local0
        f2369_local0 = f2369_local0.ExecEvent
        f2369_local0(f2369_local1, "W_Upper")
        return 
    end
    local f2369_local1 = self
    f2369_local0 = self.CallActionState
    f2369_local0(f2369_local1, self.ActionNumber)
    f2369_local1 = self
    f2369_local0 = self.ExecDamge
    f2369_local0 = f2369_local0(f2369_local1)
    if f2369_local0 == TRUE then
        return 
    end
    f2369_local0 = env
    f2369_local0 = f2369_local0(2003, 0)
    if f2369_local0 == TRUE then

    else
        f2369_local1 = self
        f2369_local0 = self.FallStart
        f2369_local0 = f2369_local0(f2369_local1)
        if f2369_local0 == TRUE then
            return 
        end
    end
    f2369_local1 = self
    f2369_local0 = self.ExecAttackCombo
    f2369_local0 = f2369_local0(f2369_local1)
    if f2369_local0 == TRUE then
        return 
    end
    f2369_local1 = self
    f2369_local0 = self.ExecAttackCancel
    f2369_local0 = f2369_local0(f2369_local1)
    if f2369_local0 == TRUE then
        return 
    end
    f2369_local1 = self
    f2369_local0 = self.ExecStepCancel
    f2369_local0 = f2369_local0(f2369_local1)
    if f2369_local0 == TRUE then
        return 
    end
    
end

Enemy.WrapTurnCommon = function (self)
    local f2370_local0 = env(ESD_ENV_DS3HasThrowRequest)
    if f2370_local0 == TRUE then
        return 
    end
    local f2370_local1 = self
    f2370_local0 = self.ExecDamge(f2370_local1)
    if f2370_local0 == TRUE then
        return 
    end
    if self:FallStart() == TRUE then
        return 
    end
    local angle = hkbGetVariable("TurnAngle")
    f2370_local1 = math.abs(angle)
    if f2370_local1 < 30 and self:MoveStart() == TRUE then
        return 
    end
    
end

function Idle_onActivate()
    IncNum(1)
    act(133, -1)
    act(111, FALSE)
    act(101, TRUE)
    act(109, -1)
    act(102, 1)
    act(135)
    act(139)
    local f2371_local0 = Zombie
    local f2371_local1 = f2371_local0
    f2371_local0 = f2371_local0.CallActionState
    f2371_local0(f2371_local1, 0)
    f2371_local0 = Zombie
    SETFIELD_R1 0 20 -19
    f2371_local0 = hkbSetVariable
    f2371_local0("RunIndex", env(ESD_ENV_GetSpecialStayAnimID))
    
end

function Idle_onUpdate()
    IncNum(1)
    local f2372_local0 = TestPurchaise
    local f2372_local1 = f2372_local0
    f2372_local0 = f2372_local0.WrapIdleCommon
    f2372_local0(f2372_local1)
    
end

function Idle_onDeactivate()
    act(111, TRUE)
    act(101, FALSE)
    
end

function Move_onActivate()
    local f2374_local0 = TestPurchaise
    local f2374_local1 = f2374_local0
    f2374_local0 = f2374_local0.CallActionState
    f2374_local0(f2374_local1, 0)
    
end

function Run_onUpdate()
    local f2375_local0 = TestPurchaise
    local f2375_local1 = f2375_local0
    f2375_local0 = f2375_local0.WrapMoveCommon
    f2375_local0(f2375_local1)
    
end

function WalkFront_onUpdate()
    local f2376_local0 = TestPurchaise
    local f2376_local1 = f2376_local0
    f2376_local0 = f2376_local0.WrapMoveCommon
    f2376_local0(f2376_local1)
    
end

function WalkRight_onUpdate()
    local f2377_local0 = TestPurchaise
    local f2377_local1 = f2377_local0
    f2377_local0 = f2377_local0.WrapMoveCommon
    f2377_local0(f2377_local1)
    
end

function WalkLeft_onUpdate()
    local f2378_local0 = TestPurchaise
    local f2378_local1 = f2378_local0
    f2378_local0 = f2378_local0.WrapMoveCommon
    f2378_local0(f2378_local1)
    
end

function WalkBack_onUpdate()
    local f2379_local0 = TestPurchaise
    local f2379_local1 = f2379_local0
    f2379_local0 = f2379_local0.WrapMoveCommon
    f2379_local0(f2379_local1)
    
end

function Attack3000_onActivate()
    local f2380_local0 = TestPurchaise
    local f2380_local1 = f2380_local0
    f2380_local0 = f2380_local0.CallActionState
    f2380_local0(f2380_local1, TestPurchaise.ActionNumber)
    
end

function Attack3000_onUpdate()
    local f2381_local0 = TestPurchaise
    local f2381_local1 = f2381_local0
    f2381_local0 = f2381_local0.WrapAttackCommon
    f2381_local0(f2381_local1)
    
end

function Attack3001_onActivate()
    local f2382_local0 = TestPurchaise
    local f2382_local1 = f2382_local0
    f2382_local0 = f2382_local0.CallActionState
    f2382_local0(f2382_local1, TestPurchaise.ActionNumber)
    
end

function Attack3001_onUpdate()
    local f2383_local0 = TestPurchaise
    local f2383_local1 = f2383_local0
    f2383_local0 = f2383_local0.WrapAttackCommon
    f2383_local0(f2383_local1)
    
end

function Attack3002_onActivate()
    local f2384_local0 = TestPurchaise
    local f2384_local1 = f2384_local0
    f2384_local0 = f2384_local0.CallActionState
    f2384_local0(f2384_local1, TestPurchaise.ActionNumber)
    
end

function Attack3002_onUpdate()
    local f2385_local0 = TestPurchaise
    local f2385_local1 = f2385_local0
    f2385_local0 = f2385_local0.WrapAttackCommon
    f2385_local0(f2385_local1)
    
end

function Attack3003_onActivate()
    local f2386_local0 = TestPurchaise
    local f2386_local1 = f2386_local0
    f2386_local0 = f2386_local0.CallActionState
    f2386_local0(f2386_local1, TestPurchaise.ActionNumber)
    
end

function Attack3003_onUpdate()
    local f2387_local0 = TestPurchaise
    local f2387_local1 = f2387_local0
    f2387_local0 = f2387_local0.WrapAttackCommon
    f2387_local0(f2387_local1)
    
end

function Attack3004_onActivate()
    local f2388_local0 = TestPurchaise
    local f2388_local1 = f2388_local0
    f2388_local0 = f2388_local0.CallActionState
    f2388_local0(f2388_local1, TestPurchaise.ActionNumber)
    
end

function Attack3004_onUpdate()
    local f2389_local0 = TestPurchaise
    local f2389_local1 = f2389_local0
    f2389_local0 = f2389_local0.WrapAttackCommon
    f2389_local0(f2389_local1)
    
end

function Initialize()
    TestPurchaise = Enemy.New()
    
end

function Main()
     = g_FrameCount + 1
    if g_FrameCount > 999999 then
         = 0
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
