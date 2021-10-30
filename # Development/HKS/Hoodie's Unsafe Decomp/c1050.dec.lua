function ()
local TRUE = 1
local FALSE = 0
local g_FrameCount = 0
local g_DebugCounter = 0
Wolf = nil
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
        hkbSetVariable("DebugFloat" .. f4438_local0, buff[f4438_local0])
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
    local f4441_local0 = {}
    SETFIELD_R1 2 0 0
    f4441_local0.Frame = frame
    return f4441_local0
    
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
    local f4442_local0 = {}
    SETFIELD_R1 0 0 -1
    f4442_local0.Events = {}
    f4442_local0.State = STATE_IDLE
    f4442_local0.OrderAttack = REG4294967288
    f4442_local0.OrderAttackCancel = REG4294967288
    f4442_local0.OrderAttackCombo = REG4294967288
    f4442_local0.OrderStep = REG4294967288
    f4442_local0.OrderStepCancel = REG4294967288
    f4442_local0.OrderCallEnemy = REG4294967288
    f4442_local0.DamageState = REG4294967288
    f4442_local0.DamageDirection = REG4294967288
    f4442_local0.DamageType = REG4294967288
    f4442_local0.IsThrowed = FALSE
    f4442_local0.IsFall = FALSE
    f4442_local0.IsAttack = FALSE
    f4442_local0.IsDamage = FALSE
    f4442_local0.ActionNumber = REG4294967295
    f4442_local0.MoveState = MOVE_STOP
    f4442_local0.StopCount = REG4294967295
    f4442_local0.IsFalling = FALSE
    f4442_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967267
    local f4442_local1 = setmetatable
    local f4442_local2 = f4442_local0
    local f4442_local3 = {}
    f4442_local3.__index = Enemy
    f4442_local1(f4442_local2, f4442_local3)
    return f4442_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f4443_local0 = self.Events
    local f4443_local1 = self.Count
    f4443_local0[f4443_local1] = Events.New(state, g_FrameCount)
    hkbFireEvent(state)
    return 
    
end

Enemy.ExecAttack = function (self, action_type)
    local f4444_local0 = self
    self.ExecEvent(f4444_local0, "W_Attack" .. action_type)
    return 
    
end

Enemy.ExecAIAction = function (self)
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type <= 0 then
        return FALSE
    end
    DebugPrintNext(action_type)
    if action_type >= 3000 and action_type < 6001 then
        self.ActionNumber = action_type
        local f4445_local0 = self
        self.ExecAttack(f4445_local0, action_type)
        return TRUE
    end
    if action_type >= 700 and action_type < 800 then
        local f4445_local0 = self
        local f4445_local1 = self.ExecEvent
        f4445_local1(f4445_local0, "W_Step")
        self.ActionNumber = action_type
        f4445_local0 = self
        f4445_local1 = self.ExecEvent
        f4445_local1(f4445_local0, "W_Step" .. action_type)
        f4445_local1 = TRUE
        return f4445_local1
    end
    if action_type == 604 then
        local f4445_local0 = self
        self.ExecEvent(f4445_local0, "W_TurnLeft180")
    end
    if action_type == 605 then
        local f4445_local0 = self
        self.ExecEvent(f4445_local0, "W_TurnRight180")
    end
    if action_type == 7300 then
        local f4445_local0 = self
        self.ExecEvent(f4445_local0, "W_Shout")
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
        local f4446_local0 = self
        self.ExecAttack(f4446_local0, action_type)
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
        local f4448_local0 = self
        self.ExecAttack(f4448_local0, action_type)
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
        local f4449_local0 = self
        local f4449_local1 = self.ExecEvent
        f4449_local1(f4449_local0, "W_Step")
        f4449_local0 = self
        f4449_local1 = self.ExecEvent
        f4449_local1(f4449_local0, "W_Step" .. action_type)
        f4449_local1 = TRUE
        return f4449_local1
    end
    return FALSE
    
end

Enemy.MoveStart = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        return FALSE
    end
    if speed > 0.75 then
        local f4450_local0 = self
        self.ExecEvent(f4450_local0, "W_Run")
        self.MoveState = MOVE_RUN
    elseif speed > 0.10000000149011612 then
        local angle = hkbGetVariable("MoveAngle")
        if angle >= -45 and angle < 45 then
            self.MoveState = MOVE_WALK_FRONT
            local f4450_local1 = self
            self.ExecEvent(f4450_local1, "W_WalkFront")
        elseif angle >= 45 and angle < 135 then
            self.MoveState = MOVE_WALK_RIGHT
            local f4450_local1 = self
            self.ExecEvent(f4450_local1, "W_WalkRight")
        elseif not (angle < 135 or angle > 180) or angle >= -180 and angle <= -135 then
            self.MoveState = MOVE_WALK_BACK
            local f4450_local1 = self
            self.ExecEvent(f4450_local1, "W_WalkBack")
        elseif angle >= -135 and angle < -45 then
            self.MoveState = MOVE_WALK_LEFT
            local f4450_local1 = self
            self.ExecEvent(f4450_local1, "W_WalkLeft")
        end
    end
    return TRUE
    
end

Enemy.MoveUpdate = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    act(2001, 0.800000011920929)
    if speed <= 0 then
        self.StopCount = Wolf.StopCount + 1
        local f4451_local0 = self.StopCount
        if f4451_local0 > 0 then
            self.StopCount = REG4294967287
            local f4451_local1 = self
            self.ExecEvent(f4451_local1, "W_Idle")
            return 
        end
    else
        local angle = hkbGetVariable("MoveAngle")
        if angle >= -45 and angle < 45 then
            if self.MoveState ~= MOVE_RUN and speed > 0.75 then
                self.MoveState = MOVE_RUN
                local f4451_local2 = self
                self.ExecEvent(f4451_local2, "W_Run")
            elseif self.MoveState ~= MOVE_WALK_FRONT and speed > 0 and speed < 0.5 then
                self.MoveState = MOVE_WALK_FRONT
                local f4451_local2 = self
                self.ExecEvent(f4451_local2, "W_WalkFront")
            end
        elseif self.MoveState ~= MOVE_WALK_RIGHT and angle >= 45 and angle < 135 then
            self.MoveState = MOVE_WALK_RIGHT
            local f4451_local2 = self
            self.ExecEvent(f4451_local2, "W_WalkRight")
        elseif self.MoveState ~= MOVE_WALK_BACK and (not (angle < 135 or angle > 180) or angle >= -180 and angle <= -135) then
            self.MoveState = MOVE_WALK_BACK
            local f4451_local2 = self
            self.ExecEvent(f4451_local2, "W_WalkBack")
        elseif self.MoveState ~= MOVE_WALK_LEFT and angle >= -135 and angle < -45 then
            self.MoveState = MOVE_WALK_LEFT
            local f4451_local2 = self
            self.ExecEvent(f4451_local2, "W_WalkLeft")
        end
    end
    
end

Enemy.SetDeathParam = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    hkbSetVariable("DeathIdleState", state2)
    
end

Enemy.ExecDeathEvent = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    local f4453_local0 = hkbSetVariable
    f4453_local0("DeathIdleState", state2)
    local f4453_local1 = self
    f4453_local0 = self.ExecEvent
    f4453_local0(f4453_local1, "W_DeathStart")
    
end

Enemy.ExecDamageEvent = function (self, state1, state2)
    hkbSetVariable("DamageState", state1)
    local f4454_local0 = hkbSetVariable
    f4454_local0("DamageDirection", state2)
    local f4454_local1 = self
    f4454_local0 = self.ExecEvent
    f4454_local0(f4454_local1, "W_Damage")
    
end

Enemy.ExecDamge = function (self)
    local level = env(ESD_ENV_GetDamageLevel)
    local kind = env(ESD_ENV_GetReceivedDamageType)
    if kind == 9 or env(ESD_ENV_GetHP) <= 0 and (env(ESD_ENV_IsFlying) == TRUE or env(ESD_ENV_GetCommandIDFromEvent, 0) == 1200) then
        local f4455_local0 = self
        self.ExecDeathEvent(f4455_local0, 6, 1)
        return TRUE
    elseif kind == 2 or env(ESD_ENV_GetHP) <= 0 then
        local f4455_local1 = g_FrameCount % 2
        if f4455_local1 == 0 then
            local f4455_local0 = self
            self.ExecDeathEvent(f4455_local0, 0, 0)
            return TRUE
        else
            local f4455_local0 = self
            self.ExecDeathEvent(f4455_local0, 1, 0)
            return TRUE
        end
    elseif kind == 2 then
        local f4455_local1 = env(ESD_ENV_GetIsWeakPoint)
        if f4455_local1 == TRUE then
            local f4455_local0 = self
            self.ExecDeathEvent(f4455_local0, 5, 0)
            return TRUE
        elseif level == 4 or level == 7 or level == 9 or level == 10 or level == 11 then
            local f4455_local0 = self
            self.ExecDeathEvent(f4455_local0, 3, 0)
            return TRUE
        elseif level == 6 then
            local f4455_local0 = self
            self.ExecDeathEvent(f4455_local0, 4, 0)
            return TRUE
        end
    elseif level >= 1 then
        if level == 99 then
            act(108, 9999)
            return TRUE
        end
        if env(ESD_ENV_GetReceivedDamageType) >= 1000 then
            local f4455_local1 = env(ESD_ENV_GetReceivedDamageType)
            if f4455_local1 <= 1010 then
                self.ActionNumber = REG4294967266
                local f4455_local0 = self
                self.ExecEvent(f4455_local0, "W_DamageGuardBound")
                return TRUE
            end
        end
        if env(ESD_ENV_GetGuardLevelAction) == 0 then
            if level == 8 then
                if g_FrameCount % 3 == 0 then
                    local f4455_local0 = self
                    self.ExecDamageEvent(f4455_local0, 4, 0)
                else
                    local f4455_local1 = g_FrameCount % 2
                    if f4455_local1 == 1 then
                        local f4455_local0 = self
                        self.ExecDamageEvent(f4455_local0, 4, 1)
                    else
                        local f4455_local0 = self
                        self.ExecDamageEvent(f4455_local0, 4, 2)
                    end
                end
            else
                local dir = env(ESD_ENV_GetReceivedDamageDirection)
                hkbSetVariable("DamageState", level - 1)
                hkbSetVariable("DamageDirection", dir)
                local f4455_local0 = self.IsDamage
                if f4455_local0 == TRUE then
                    local f4455_local2 = self
                    self.ExecEvent(f4455_local2, "S_Damage")
                else
                    local f4455_local2 = self
                    self.ExecEvent(f4455_local2, "W_Damage")
                end
            end
            return TRUE
        end
    end
    return FALSE
    
end

Enemy.ExecFalling = function (self)
    local height = env(ESD_ENV_GetFallHeight) / 100
    if self.IsFalling == TRUE and env(ESD_ENV_IsLanding) == TRUE then
        local f4456_local0 = FALSE
        self.IsFalling = f4456_local0
        if height > 20 then
            local f4456_local1 = self
            f4456_local0 = self.SetDeathParam
            f4456_local0(f4456_local1, 2, 0)
            f4456_local1 = self
            f4456_local0 = self.ExecEvent
            f4456_local0(f4456_local1, "W_DeathStart")
        elseif height > 5 then
            local f4456_local1 = self
            self.ExecEvent(f4456_local1, "W_FallHeavyLanding")
        elseif height > 2 then
            local f4456_local1 = self
            self.ExecEvent(f4456_local1, "W_FallLanding")
        else
            local f4456_local1 = self
            self.ExecEvent(f4456_local1, "W_Idle")
        end
        return 
    end
    
end

Enemy.ExecTurn = function (self)
    local angle = hkbGetVariable("TurnAngle")
    if angle >= -45 and angle < 45 then

    elseif angle >= 45 and angle < 135 then
        local f4457_local0 = self
        self.ExecEvent(f4457_local0, "W_TurnLeft90")
        return TRUE
    elseif angle >= 135 and angle <= 180 then
        local f4457_local0 = self
        self.ExecEvent(f4457_local0, "W_TurnLeft180")
        return TRUE
    elseif angle >= -180 and angle <= -135 then
        local f4457_local0 = self
        self.ExecEvent(f4457_local0, "W_TurnRight180")
        return TRUE
    elseif angle >= -135 and angle < -45 then
        local f4457_local0 = self
        self.ExecEvent(f4457_local0, "W_TurnRight90")
        return TRUE
    end
    return FALSE
    
end

Enemy.FallStart = function (self)
    if env(ESD_ENV_IsFalling) == TRUE then
        self.IsFalling = TRUE
        local f4458_local0 = self
        self.ExecEvent(f4458_local0, "W_FallBase")
        return TRUE
    end
    return FALSE
    
end

Enemy.CallHelp = function (self)
    if self.OrderCallEnemy > 0 then
        local f4459_local0 = self
        self.ExecEvent(f4459_local0, "W_CallHelp")
        return TRUE
    end
    return FALSE
    
end

Enemy.WrapIdleCommon = function (self)
    local f4460_local0 = env(ESD_ENV_DS3HasThrowRequest)
    if f4460_local0 == TRUE then
        return 
    end
    local f4460_local1 = self
    f4460_local0 = self.ExecDamge(f4460_local1)
    if f4460_local0 == TRUE then
        return 
    end
    f4460_local1 = self
    f4460_local0 = self.FallStart(f4460_local1)
    if f4460_local0 == TRUE then
        return 
    end
    f4460_local1 = self
    f4460_local0 = self.ExecTurn(f4460_local1)
    if f4460_local0 == TRUE then
        return 
    end
    f4460_local1 = self
    f4460_local0 = self.ExecAIAction(f4460_local1)
    if f4460_local0 == TRUE then
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
    local f4461_local0 = self
    local f4461_local1 = self.FallStart(f4461_local0)
    if f4461_local1 == TRUE then
        return 
    end
    f4461_local0 = self
    f4461_local1 = self.ExecAIAction(f4461_local0)
    if f4461_local1 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

Enemy.WrapMoveCommon = function (self)
    local f4462_local0 = self
    local f4462_local1 = self.ExecDamge(f4462_local0)
    if f4462_local1 == TRUE then
        return 
    end
    f4462_local0 = self
    f4462_local1 = self.FallStart(f4462_local0)
    if f4462_local1 == TRUE then
        return 
    end
    f4462_local0 = self
    f4462_local1 = self.ExecTurn(f4462_local0)
    if f4462_local1 == TRUE then
        return 
    end
    f4462_local0 = self
    f4462_local1 = self.ExecAIAction(f4462_local0)
    if f4462_local1 == TRUE then
        return 
    end
    f4462_local0 = self
    self.MoveUpdate(f4462_local0)
    
end

Enemy.WrapStepCommon = function (self)
    local f4463_local0 = env(ESD_ENV_DS3HasThrowRequest)
    if f4463_local0 == TRUE then
        return 
    end
    local f4463_local1 = self
    f4463_local0 = self.CallActionState
    f4463_local0(f4463_local1, self.ActionNumber)
    f4463_local1 = self
    f4463_local0 = self.ExecDamge
    f4463_local0 = f4463_local0(f4463_local1)
    if f4463_local0 == TRUE then
        return 
    end
    f4463_local1 = self
    f4463_local0 = self.FallStart
    f4463_local0 = f4463_local0(f4463_local1)
    if f4463_local0 == TRUE then
        return 
    end
    f4463_local1 = self
    f4463_local0 = self.ExecAttackCombo
    f4463_local0 = f4463_local0(f4463_local1)
    if f4463_local0 == TRUE then
        return 
    end
    f4463_local1 = self
    f4463_local0 = self.ExecAttackCancel
    f4463_local0 = f4463_local0(f4463_local1)
    if f4463_local0 == TRUE then
        return 
    end
    
end

Enemy.WrapAttackCommon = function (self)
    local f4464_local0 = env(ESD_ENV_DS3HasThrowRequest)
    if f4464_local0 == TRUE then
        return 
    end
    local f4464_local1 = self
    f4464_local0 = self.CallActionState
    f4464_local0(f4464_local1, self.ActionNumber)
    f4464_local1 = self
    f4464_local0 = self.ExecDamge
    f4464_local0 = f4464_local0(f4464_local1)
    if f4464_local0 == TRUE then
        return 
    end
    f4464_local0 = env
    f4464_local0 = f4464_local0(2003, 0)
    if f4464_local0 == TRUE then

    else
        f4464_local1 = self
        f4464_local0 = self.FallStart
        f4464_local0 = f4464_local0(f4464_local1)
        if f4464_local0 == TRUE then
            return 
        end
    end
    f4464_local1 = self
    f4464_local0 = self.ExecAttackCombo
    f4464_local0 = f4464_local0(f4464_local1)
    if f4464_local0 == TRUE then
        return 
    end
    f4464_local1 = self
    f4464_local0 = self.ExecAttackCancel
    f4464_local0 = f4464_local0(f4464_local1)
    if f4464_local0 == TRUE then
        return 
    end
    f4464_local1 = self
    f4464_local0 = self.ExecStepCancel
    f4464_local0 = f4464_local0(f4464_local1)
    if f4464_local0 == TRUE then
        return 
    end
    
end

Enemy.WrapTurnCommon = function (self)
    local f4465_local0 = env(ESD_ENV_DS3HasThrowRequest)
    if f4465_local0 == TRUE then
        return 
    end
    local f4465_local1 = self
    f4465_local0 = self.ExecDamge(f4465_local1)
    if f4465_local0 == TRUE then
        return 
    end
    f4465_local1 = self
    f4465_local0 = self.FallStart(f4465_local1)
    if f4465_local0 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

function Idle_onActivate()
    act(133, -1)
    act(111, FALSE)
    act(101, TRUE)
    act(102, 255)
    act(135)
    act(139)
    act(101, TRUE)
    act(102, 255)
    act(100, TRUE)
    local f4466_local0 = Wolf
    local f4466_local1 = f4466_local0
    f4466_local0 = f4466_local0.CallActionState
    f4466_local0(f4466_local1, 0)
    f4466_local0 = Wolf
    SETFIELD_R1 0 17 -16
    
end

function Idle_onUpdate()
    local f4467_local0 = Wolf
    local f4467_local1 = f4467_local0
    f4467_local0 = f4467_local0.WrapIdleCommon
    f4467_local0(f4467_local1)
    
end

function Idle_onDeactivate()
    act(102, 255)
    act(111, TRUE)
    act(101, FALSE)
    
end

function Move_onActivate()
    local f4469_local0 = Wolf
    local f4469_local1 = f4469_local0
    f4469_local0 = f4469_local0.CallActionState
    f4469_local0(f4469_local1, 0)
    
end

function Run_onUpdate()
    local f4470_local0 = Wolf
    local f4470_local1 = f4470_local0
    f4470_local0 = f4470_local0.WrapMoveCommon
    f4470_local0(f4470_local1)
    
end

function WalkFront_onUpdate()
    local f4471_local0 = Wolf
    local f4471_local1 = f4471_local0
    f4471_local0 = f4471_local0.WrapMoveCommon
    f4471_local0(f4471_local1)
    
end

function WalkRight_onUpdate()
    local f4472_local0 = Wolf
    local f4472_local1 = f4472_local0
    f4472_local0 = f4472_local0.WrapMoveCommon
    f4472_local0(f4472_local1)
    
end

function WalkLeft_onUpdate()
    local f4473_local0 = Wolf
    local f4473_local1 = f4473_local0
    f4473_local0 = f4473_local0.WrapMoveCommon
    f4473_local0(f4473_local1)
    
end

function WalkBack_onUpdate()
    local f4474_local0 = Wolf
    local f4474_local1 = f4474_local0
    f4474_local0 = f4474_local0.WrapMoveCommon
    f4474_local0(f4474_local1)
    
end

function Step_onActivate()
    local f4475_local0 = Wolf
    local f4475_local1 = f4475_local0
    f4475_local0 = f4475_local0.CallActionState
    f4475_local0(f4475_local1, Wolf.ActionNumber)
    
end

function Step700_onActivate()
    local f4476_local0 = Wolf
    local f4476_local1 = f4476_local0
    f4476_local0 = f4476_local0.CallActionState
    f4476_local0(f4476_local1, Wolf.ActionNumber)
    
end

function Step700_onUpdate()
    local f4477_local0 = Wolf
    local f4477_local1 = f4477_local0
    f4477_local0 = f4477_local0.WrapStepCommon
    f4477_local0(f4477_local1)
    
end

function Step701_onActivate()
    local f4478_local0 = Wolf
    local f4478_local1 = f4478_local0
    f4478_local0 = f4478_local0.CallActionState
    f4478_local0(f4478_local1, Wolf.ActionNumber)
    
end

function Step701_onUpdate()
    local f4479_local0 = Wolf
    local f4479_local1 = f4479_local0
    f4479_local0 = f4479_local0.WrapStepCommon
    f4479_local0(f4479_local1)
    
end

function Step701_onDeactivate()
    local f4480_local0 = Wolf
    local f4480_local1 = f4480_local0
    f4480_local0 = f4480_local0.CallActionState
    f4480_local0(f4480_local1, Wolf.ActionNumber)
    
end

function Step702_onActivate()
    local f4481_local0 = Wolf
    local f4481_local1 = f4481_local0
    f4481_local0 = f4481_local0.CallActionState
    f4481_local0(f4481_local1, Wolf.ActionNumber)
    
end

function Step702_onUpdate()
    local f4482_local0 = Wolf
    local f4482_local1 = f4482_local0
    f4482_local0 = f4482_local0.WrapStepCommon
    f4482_local0(f4482_local1)
    
end

function Step703_onActivate()
    local f4483_local0 = Wolf
    local f4483_local1 = f4483_local0
    f4483_local0 = f4483_local0.CallActionState
    f4483_local0(f4483_local1, Wolf.ActionNumber)
    
end

function Step703_onUpdate()
    local f4484_local0 = Wolf
    local f4484_local1 = f4484_local0
    f4484_local0 = f4484_local0.WrapStepCommon
    f4484_local0(f4484_local1)
    
end

function TurnRight90_onUpdate()
    local f4485_local0 = Wolf
    local f4485_local1 = f4485_local0
    f4485_local0 = f4485_local0.WrapTurnCommon
    f4485_local0(f4485_local1)
    
end

function TurnLeft90_onUpdate()
    local f4486_local0 = Wolf
    local f4486_local1 = f4486_local0
    f4486_local0 = f4486_local0.WrapTurnCommon
    f4486_local0(f4486_local1)
    
end

function TurnLeft180_onUpdate()
    local f4487_local0 = Wolf
    local f4487_local1 = f4487_local0
    f4487_local0 = f4487_local0.WrapTurnCommon
    f4487_local0(f4487_local1)
    
end

function TurnRight180_onUpdate()
    local f4488_local0 = Wolf
    local f4488_local1 = f4488_local0
    f4488_local0 = f4488_local0.WrapTurnCommon
    f4488_local0(f4488_local1)
    
end

function Attack3000_onActivate()
    local f4489_local0 = Wolf
    local f4489_local1 = f4489_local0
    f4489_local0 = f4489_local0.CallActionState
    f4489_local0(f4489_local1, Wolf.ActionNumber)
    
end

function Attack3000_onUpdate()
    local f4490_local0 = Wolf
    local f4490_local1 = f4490_local0
    f4490_local0 = f4490_local0.WrapAttackCommon
    f4490_local0(f4490_local1)
    
end

function Attack3001_onActivate()
    local f4491_local0 = Wolf
    local f4491_local1 = f4491_local0
    f4491_local0 = f4491_local0.CallActionState
    f4491_local0(f4491_local1, Wolf.ActionNumber)
    
end

function Attack3001_onUpdate()
    local f4492_local0 = Wolf
    local f4492_local1 = f4492_local0
    f4492_local0 = f4492_local0.WrapAttackCommon
    f4492_local0(f4492_local1)
    
end

function Attack3002_onActivate()
    local f4493_local0 = Wolf
    local f4493_local1 = f4493_local0
    f4493_local0 = f4493_local0.CallActionState
    f4493_local0(f4493_local1, Wolf.ActionNumber)
    
end

function Attack3002_onUpdate()
    local f4494_local0 = Wolf
    local f4494_local1 = f4494_local0
    f4494_local0 = f4494_local0.WrapAttackCommon
    f4494_local0(f4494_local1)
    
end

function Attack3003_onActivate()
    local f4495_local0 = Wolf
    local f4495_local1 = f4495_local0
    f4495_local0 = f4495_local0.CallActionState
    f4495_local0(f4495_local1, Wolf.ActionNumber)
    
end

function Attack3003_onUpdate()
    local f4496_local0 = Wolf
    local f4496_local1 = f4496_local0
    f4496_local0 = f4496_local0.WrapAttackCommon
    f4496_local0(f4496_local1)
    
end

function Attack3004_onActivate()
    local f4497_local0 = Wolf
    local f4497_local1 = f4497_local0
    f4497_local0 = f4497_local0.CallActionState
    f4497_local0(f4497_local1, Wolf.ActionNumber)
    
end

function Attack3004_onUpdate()
    local f4498_local0 = Wolf
    local f4498_local1 = f4498_local0
    f4498_local0 = f4498_local0.WrapAttackCommon
    f4498_local0(f4498_local1)
    
end

function Attack3005_onUpdate()
    local f4499_local0 = Wolf
    local f4499_local1 = f4499_local0
    f4499_local0 = f4499_local0.WrapAttackCommon
    f4499_local0(f4499_local1)
    
end

function Attack3006_onUpdate()
    local f4500_local0 = Wolf
    local f4500_local1 = f4500_local0
    f4500_local0 = f4500_local0.WrapAttackCommon
    f4500_local0(f4500_local1)
    
end

function Attack3007_onUpdate()
    local f4501_local0 = Wolf
    local f4501_local1 = f4501_local0
    f4501_local0 = f4501_local0.WrapAttackCommon
    f4501_local0(f4501_local1)
    
end

function Attack3008_onUpdate()
    local f4502_local0 = Wolf
    local f4502_local1 = f4502_local0
    f4502_local0 = f4502_local0.WrapAttackCommon
    f4502_local0(f4502_local1)
    
end

function Attack3009_onUpdate()
    local f4503_local0 = Wolf
    local f4503_local1 = f4503_local0
    f4503_local0 = f4503_local0.WrapAttackCommon
    f4503_local0(f4503_local1)
    
end

function Attack3010_onUpdate()
    local f4504_local0 = Wolf
    local f4504_local1 = f4504_local0
    f4504_local0 = f4504_local0.WrapAttackCommon
    f4504_local0(f4504_local1)
    
end

function Attack3011_onUpdate()
    local f4505_local0 = Wolf
    local f4505_local1 = f4505_local0
    f4505_local0 = f4505_local0.WrapAttackCommon
    f4505_local0(f4505_local1)
    
end

function Attack3012_onUpdate()
    local f4506_local0 = Wolf
    local f4506_local1 = f4506_local0
    f4506_local0 = f4506_local0.WrapAttackCommon
    f4506_local0(f4506_local1)
    
end

function Attack3013_onUpdate()
    local f4507_local0 = Wolf
    local f4507_local1 = f4507_local0
    f4507_local0 = f4507_local0.WrapAttackCommon
    f4507_local0(f4507_local1)
    
end

function Attack3014_onUpdate()
    local f4508_local0 = Wolf
    local f4508_local1 = f4508_local0
    f4508_local0 = f4508_local0.WrapAttackCommon
    f4508_local0(f4508_local1)
    
end

function Attack3015_onUpdate()
    local f4509_local0 = Wolf
    local f4509_local1 = f4509_local0
    f4509_local0 = f4509_local0.WrapAttackCommon
    f4509_local0(f4509_local1)
    
end

function Attack3016_onUpdate()
    local f4510_local0 = Wolf
    local f4510_local1 = f4510_local0
    f4510_local0 = f4510_local0.WrapAttackCommon
    f4510_local0(f4510_local1)
    
end

function Attack3017_onUpdate()
    local f4511_local0 = Wolf
    local f4511_local1 = f4511_local0
    f4511_local0 = f4511_local0.WrapAttackCommon
    f4511_local0(f4511_local1)
    
end

function Attack3018_onUpdate()
    local f4512_local0 = Wolf
    local f4512_local1 = f4512_local0
    f4512_local0 = f4512_local0.WrapAttackCommon
    f4512_local0(f4512_local1)
    
end

function Attack3020_onUpdate()
    local f4513_local0 = Wolf
    local f4513_local1 = f4513_local0
    f4513_local0 = f4513_local0.WrapAttackCommon
    f4513_local0(f4513_local1)
    
end

function Attack3021_onUpdate()
    local f4514_local0 = Wolf
    local f4514_local1 = f4514_local0
    f4514_local0 = f4514_local0.WrapAttackCommon
    f4514_local0(f4514_local1)
    
end

function Attack3022_onUpdate()
    local f4515_local0 = Wolf
    local f4515_local1 = f4515_local0
    f4515_local0 = f4515_local0.WrapAttackCommon
    f4515_local0(f4515_local1)
    
end

function Attack3023_onUpdate()
    local f4516_local0 = Wolf
    local f4516_local1 = f4516_local0
    f4516_local0 = f4516_local0.WrapAttackCommon
    f4516_local0(f4516_local1)
    
end

function Attack3024_onUpdate()
    local f4517_local0 = Wolf
    local f4517_local1 = f4517_local0
    f4517_local0 = f4517_local0.WrapAttackCommon
    f4517_local0(f4517_local1)
    
end

function Attack3300_onUpdate()
    local f4518_local0 = Wolf
    local f4518_local1 = f4518_local0
    f4518_local0 = f4518_local0.WrapAttackCommon
    f4518_local0(f4518_local1)
    
end

function Attack3301_onUpdate()
    local f4519_local0 = Wolf
    local f4519_local1 = f4519_local0
    f4519_local0 = f4519_local0.WrapAttackCommon
    f4519_local0(f4519_local1)
    
end

function Attack3302_onUpdate()
    local f4520_local0 = Wolf
    local f4520_local1 = f4520_local0
    f4520_local0 = f4520_local0.WrapAttackCommon
    f4520_local0(f4520_local1)
    
end

function DamageSmalLeft_onUpdate()
    local f4521_local0 = Wolf
    local f4521_local1 = f4521_local0
    f4521_local0 = f4521_local0.WrapDamageCommon
    f4521_local0(f4521_local1)
    
end

function DamageSmalRight_onUpdate()
    local f4522_local0 = Wolf
    local f4522_local1 = f4522_local0
    f4522_local0 = f4522_local0.WrapDamageCommon
    f4522_local0(f4522_local1)
    
end

function DamageSmalFront_onUpdate()
    local f4523_local0 = Wolf
    local f4523_local1 = f4523_local0
    f4523_local0 = f4523_local0.WrapDamageCommon
    f4523_local0(f4523_local1)
    
end

function DamageSmalBack_onUpdate()
    local f4524_local0 = Wolf
    local f4524_local1 = f4524_local0
    f4524_local0 = f4524_local0.WrapDamageCommon
    f4524_local0(f4524_local1)
    
end

function DamageMiddleLeft_onUpdate()
    local f4525_local0 = Wolf
    local f4525_local1 = f4525_local0
    f4525_local0 = f4525_local0.WrapDamageCommon
    f4525_local0(f4525_local1)
    
end

function DamageMiddleRight_onUpdate()
    local f4526_local0 = Wolf
    local f4526_local1 = f4526_local0
    f4526_local0 = f4526_local0.WrapDamageCommon
    f4526_local0(f4526_local1)
    
end

function DamageMiddleFront_onUpdate()
    local f4527_local0 = Wolf
    local f4527_local1 = f4527_local0
    f4527_local0 = f4527_local0.WrapDamageCommon
    f4527_local0(f4527_local1)
    
end

function DamageMiddleBack_onUpdate()
    local f4528_local0 = Wolf
    local f4528_local1 = f4528_local0
    f4528_local0 = f4528_local0.WrapDamageCommon
    f4528_local0(f4528_local1)
    
end

function DamageLargeLeft_onUpdate()
    local f4529_local0 = Wolf
    local f4529_local1 = f4529_local0
    f4529_local0 = f4529_local0.WrapDamageCommon
    f4529_local0(f4529_local1)
    
end

function DamageLargeRight_onUpdate()
    local f4530_local0 = Wolf
    local f4530_local1 = f4530_local0
    f4530_local0 = f4530_local0.WrapDamageCommon
    f4530_local0(f4530_local1)
    
end

function DamageLargeFront_onUpdate()
    local f4531_local0 = Wolf
    local f4531_local1 = f4531_local0
    f4531_local0 = f4531_local0.WrapDamageCommon
    f4531_local0(f4531_local1)
    
end

function DamageLargeBack_onUpdate()
    local f4532_local0 = Wolf
    local f4532_local1 = f4532_local0
    f4532_local0 = f4532_local0.WrapDamageCommon
    f4532_local0(f4532_local1)
    
end

function DamageMinimumA_onUpdate()
    local f4533_local0 = Wolf
    local f4533_local1 = f4533_local0
    f4533_local0 = f4533_local0.WrapDamageCommon
    f4533_local0(f4533_local1)
    
end

function DamageMinimumB_onUpdate()
    local f4534_local0 = Wolf
    local f4534_local1 = f4534_local0
    f4534_local0 = f4534_local0.WrapDamageCommon
    f4534_local0(f4534_local1)
    
end

function DamageMinimumC_onUpdate()
    local f4535_local0 = Wolf
    local f4535_local1 = f4535_local0
    f4535_local0 = f4535_local0.WrapDamageCommon
    f4535_local0(f4535_local1)
    
end

function DamageGuardBound_onUpdate()
    local f4536_local0 = Wolf
    local f4536_local1 = f4536_local0
    f4536_local0 = f4536_local0.WrapDamageCommon
    f4536_local0(f4536_local1)
    
end

function DeathStart_onActivate()
    act(9101)
    act(100, FALSE)
    
end

function DeathStart_onDeactivate()
    act(100, TRUE)
    
end

function DeathAirFalling_onUpdate()
    local f4539_local0 = env(ESD_ENV_IsLanding)
    if f4539_local0 == TRUE then
        f4539_local0 = Wolf
        local f4539_local1 = f4539_local0
        f4539_local0 = f4539_local0.ExecEvent
        f4539_local0(f4539_local1, "DeathAirLanding")
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

function ThrowAtk_onActivate()
    g_ThrowFlag = TRUE
    local ThrowId = env(ESD_ENV_GetThrowAnimID)
    DebugPrintNext(ThrowId)
    hkbSetVariable("ThrowID", ThrowId)
    
end

function ThrowAtk_onUpdate()
    act(9102)
    
end

function FallBase_onUpdate()
    local f4548_local0 = Wolf
    local f4548_local1 = f4548_local0
    f4548_local0 = f4548_local0.ExecFalling
    f4548_local0(f4548_local1)
    
end

function Event7000_onUpdate()
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        act(9102)
    else

    end
    
end

function Initialize()
    Wolf = Enemy.New()
    
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
