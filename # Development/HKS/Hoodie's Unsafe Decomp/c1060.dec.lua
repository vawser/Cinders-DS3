function ()
local TRUE = 1
local FALSE = 0
local g_FrameCount = 0
Slim = nil
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
        hkbSetVariable("DebugFloat" .. f2171_local0, buff[f2171_local0])
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
    local f2173_local0 = {}
    SETFIELD_R1 2 0 0
    f2173_local0.Frame = frame
    return f2173_local0
    
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
    local f2174_local0 = {}
    SETFIELD_R1 0 0 -1
    f2174_local0.Events = {}
    f2174_local0.State = STATE_IDLE
    f2174_local0.OrderAttack = REG4294967288
    f2174_local0.OrderAttackCancel = REG4294967288
    f2174_local0.OrderAttackCombo = REG4294967288
    f2174_local0.OrderStep = REG4294967288
    f2174_local0.OrderStepCancel = REG4294967288
    f2174_local0.OrderCallEnemy = REG4294967288
    f2174_local0.DamageState = REG4294967288
    f2174_local0.DamageDirection = REG4294967288
    f2174_local0.DamageType = REG4294967288
    f2174_local0.IsThrowed = FALSE
    f2174_local0.IsFall = FALSE
    f2174_local0.IsAttack = FALSE
    f2174_local0.ActionNumber = REG4294967295
    f2174_local0.MoveState = MOVE_STOP
    f2174_local0.StopCount = REG4294967295
    f2174_local0.IsFalling = FALSE
    f2174_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967268
    local f2174_local1 = setmetatable
    local f2174_local2 = f2174_local0
    local f2174_local3 = {}
    f2174_local3.__index = Enemy
    f2174_local1(f2174_local2, f2174_local3)
    return f2174_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f2175_local0 = self.Events
    local f2175_local1 = self.Count
    f2175_local0[f2175_local1] = Events.New(state, g_FrameCount)
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
        local f2176_local0 = self
        self.ExecEvent(f2176_local0, "W_Attack" .. action_type)
        self.ActionNumber = action_type
        return TRUE
    end
    if action_type >= 700 and action_type < 800 then
        local f2176_local0 = self
        self.ExecEvent(f2176_local0, "W_Step" .. action_type)
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
        local f2177_local0 = self
        self.ExecEvent(f2177_local0, "W_Attack" .. action_type)
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
        local f2178_local0 = self
        self.ExecEvent(f2178_local0, "W_Attack" .. action_type)
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
        local f2179_local0 = self
        self.ExecEvent(f2179_local0, "W_Step" .. action_type)
        return TRUE
    end
    return FALSE
    
end

Enemy.MoveStart = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        return FALSE
    end
    if speed > 0.5 then
        local f2180_local0 = self
        self.ExecEvent(f2180_local0, "W_Run")
        self.MoveState = MOVE_RUN
    elseif speed > 0.10000000149011612 then
        local angle = hkbGetVariable("MoveAngle")
        if angle >= -45 and angle < 45 then
            self.MoveState = MOVE_WALK_FRONT
            local f2180_local1 = self
            self.ExecEvent(f2180_local1, "W_WalkFront")
        elseif angle >= 45 and angle < 135 then
            self.MoveState = MOVE_WALK_RIGHT
            local f2180_local1 = self
            self.ExecEvent(f2180_local1, "W_WalkRight")
        elseif not (angle < 135 or angle > 180) or angle >= -180 and angle <= -135 then
            self.MoveState = MOVE_WALK_BACK
            local f2180_local1 = self
            self.ExecEvent(f2180_local1, "W_WalkBack")
        elseif angle >= -135 and angle < -45 then
            self.MoveState = MOVE_WALK_LEFT
            local f2180_local1 = self
            self.ExecEvent(f2180_local1, "W_WalkLeft")
        end
    end
    return TRUE
    
end

Enemy.MoveUpdate = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        self.StopCount = Slim.StopCount + 1
        local f2181_local0 = self.StopCount
        if f2181_local0 > 0 then
            self.StopCount = REG4294967292
            local f2181_local1 = self
            self.ExecEvent(f2181_local1, "W_Idle")
            return 
        end
    else
        local angle = hkbGetVariable("MoveAngle")
        if angle >= -45 and angle < 45 then
            if self.MoveState ~= MOVE_RUN and speed > 0.5 then
                self.MoveState = MOVE_RUN
                local f2181_local2 = self
                self.ExecEvent(f2181_local2, "W_Run")
            elseif self.MoveState ~= MOVE_WALK_FRONT and speed > 0 and speed < 0.5 then
                self.MoveState = MOVE_WALK_FRONT
                local f2181_local2 = self
                self.ExecEvent(f2181_local2, "W_WalkFront")
            end
        elseif self.MoveState ~= MOVE_WALK_RIGHT and angle >= 45 and angle < 135 then
            self.MoveState = MOVE_WALK_RIGHT
            local f2181_local2 = self
            self.ExecEvent(f2181_local2, "W_WalkRight")
        elseif self.MoveState ~= MOVE_WALK_BACK and (not (angle < 135 or angle > 180) or angle >= -180 and angle <= -135) then
            self.MoveState = MOVE_WALK_BACK
            local f2181_local2 = self
            self.ExecEvent(f2181_local2, "W_WalkBack")
        elseif self.MoveState ~= MOVE_WALK_LEFT and angle >= -135 and angle < -45 then
            self.MoveState = MOVE_WALK_LEFT
            local f2181_local2 = self
            self.ExecEvent(f2181_local2, "W_WalkLeft")
        end
    end
    
end

Enemy.SetDeathParam = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    hkbSetVariable("DeathIdleState", state2)
    
end

Enemy.ExecDeathEvent = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    local f2183_local0 = hkbSetVariable
    f2183_local0("DeathIdleState", state2)
    local f2183_local1 = self
    f2183_local0 = self.ExecEvent
    f2183_local0(f2183_local1, "W_DeathStart")
    
end

Enemy.ExecDamageEvent = function (self, state1, state2)
    hkbSetVariable("DamageState", state1)
    local f2184_local0 = hkbSetVariable
    f2184_local0("DamageDirection", state2)
    local f2184_local1 = self
    f2184_local0 = self.ExecEvent
    f2184_local0(f2184_local1, "W_Damage")
    
end

Enemy.ExecDamge = function (self)
    local level = env(ESD_ENV_GetDamageLevel)
    local kind = env(ESD_ENV_GetReceivedDamageType)
    if kind == 9 or env(ESD_ENV_GetHP) <= 0 and (env(ESD_ENV_IsFlying) == TRUE or env(ESD_ENV_GetCommandIDFromEvent, 0) == 1200) then
        local f2185_local0 = self
        self.ExecDeathEvent(f2185_local0, 6, 1)
        return TRUE
    elseif kind == 2 or env(ESD_ENV_GetHP) <= 0 then
        local f2185_local1 = g_FrameCount % 2
        if f2185_local1 == 0 then
            local f2185_local0 = self
            self.ExecDeathEvent(f2185_local0, 0, 0)
            return TRUE
        else
            local f2185_local0 = self
            self.ExecDeathEvent(f2185_local0, 1, 0)
            return TRUE
        end
    elseif kind == 2 then
        local f2185_local1 = env(ESD_ENV_GetIsWeakPoint)
        if f2185_local1 == TRUE then
            local f2185_local0 = self
            self.ExecDeathEvent(f2185_local0, 5, 0)
            return TRUE
        elseif level == 4 or level == 7 or level == 9 or level == 10 or level == 11 then
            local f2185_local0 = self
            self.ExecDeathEvent(f2185_local0, 3, 0)
            return TRUE
        elseif level == 6 then
            local f2185_local0 = self
            self.ExecDeathEvent(f2185_local0, 4, 0)
            return TRUE
        end
    elseif level >= 1 then
        if env(ESD_ENV_GetReceivedDamageType) >= 1000 then
            local f2185_local1 = env(ESD_ENV_GetReceivedDamageType)
            if f2185_local1 <= 1010 then
                self.ActionNumber = REG4294967272
                local f2185_local0 = self
                self.ExecEvent(f2185_local0, "W_DamageGuardBound")
                return TRUE
            end
        end
        if env(ESD_ENV_GetGuardLevelAction) == 0 then
            if level == 8 then
                local f2185_local1 = g_FrameCount % 2
                if f2185_local1 == 0 then
                    local f2185_local0 = self
                    self.ExecDamageEvent(f2185_local0, 4, 0)
                else
                    local f2185_local0 = self
                    self.ExecDamageEvent(f2185_local0, 4, 1)
                end
            else
                local dir = env(ESD_ENV_GetReceivedDamageDirection)
                hkbSetVariable("DamageState", self.DamageState - 1)
                local f2185_local0 = hkbSetVariable
                f2185_local0("DamageDirection", dir)
                local f2185_local2 = self
                f2185_local0 = self.ExecEvent
                f2185_local0(f2185_local2, "W_Damage")
            end
            return TRUE
        end
    end
    return FALSE
    
end

Enemy.ExecFalling = function (self)
    local height = env(ESD_ENV_GetFallHeight) / 100
    if self.IsFalling == TRUE and env(ESD_ENV_IsLanding) == TRUE then
        local f2186_local0 = FALSE
        self.IsFalling = f2186_local0
        if height > 20 then
            local f2186_local1 = self
            f2186_local0 = self.SetDeathParam
            f2186_local0(f2186_local1, 2, 0)
            f2186_local1 = self
            f2186_local0 = self.ExecEvent
            f2186_local0(f2186_local1, "W_DeathStart")
        elseif height > 5 then
            local f2186_local1 = self
            self.ExecEvent(f2186_local1, "W_FallHeavyLanding")
        elseif height > 2 then
            local f2186_local1 = self
            self.ExecEvent(f2186_local1, "W_FallLanding")
        else
            local f2186_local1 = self
            self.ExecEvent(f2186_local1, "W_Idle")
        end
        return 
    end
    
end

Enemy.ExecThrowed = function (self)
    if env(ESD_ENV_IsBeingThrown) == TRUE then
        if env(ESD_ENV_GetHP) <= 0 then
            local f2187_local0 = self
            self.ExecEvent(f2187_local0, "W_ThrowDeath")
        else
            local f2187_local0 = self
            self.ExecEvent(f2187_local0, "W_ThrowDefault")
        end
        return TRUE
    end
    return FALSE
    
end

Enemy.ExecTurn = function (self)
    local angle = hkbGetVariable("TurnAngle")
    if angle >= -45 and angle < 45 then

    elseif angle >= 45 and angle < 135 then
        local f2188_local0 = self
        self.ExecEvent(f2188_local0, "W_TurnLeft90")
        return TRUE
    elseif angle >= 135 and angle <= 180 then
        local f2188_local0 = self
        self.ExecEvent(f2188_local0, "W_TurnLeft80")
        return TRUE
    elseif angle >= -180 and angle <= -135 then
        local f2188_local0 = self
        self.ExecEvent(f2188_local0, "W_TurnRight180")
        return TRUE
    elseif angle >= -135 and angle < -45 then
        local f2188_local0 = self
        self.ExecEvent(f2188_local0, "W_TurnRight90")
        return TRUE
    end
    return FALSE
    
end

Enemy.FallStart = function (self)
    if env(ESD_ENV_IsFalling) == TRUE then
        self.IsFalling = TRUE
        local f2189_local0 = self
        self.ExecEvent(f2189_local0, "W_FallBase")
        return TRUE
    end
    return FALSE
    
end

Enemy.CallHelp = function (self)
    if self.OrderCallEnemy > 0 then
        local f2190_local0 = self
        self.ExecEvent(f2190_local0, "W_CallHelp")
        return TRUE
    end
    return FALSE
    
end

Enemy.WrapIdleCommon = function (self)
    local f2191_local0 = self
    local f2191_local1 = self.ExecDamge(f2191_local0)
    if f2191_local1 == TRUE then
        return 
    end
    f2191_local0 = self
    f2191_local1 = self.ExecThrowed(f2191_local0)
    if f2191_local1 == TRUE then
        return 
    end
    f2191_local0 = self
    f2191_local1 = self.FallStart(f2191_local0)
    if f2191_local1 == TRUE then
        return 
    end
    f2191_local0 = self
    f2191_local1 = self.ExecTurn(f2191_local0)
    if f2191_local1 == TRUE then
        return 
    end
    f2191_local0 = self
    f2191_local1 = self.ExecAIAction(f2191_local0)
    if f2191_local1 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

Enemy.WrapDamageCommon = function (self)
    local f2192_local0 = self
    local f2192_local1 = self.ExecDamge(f2192_local0)
    if f2192_local1 == TRUE then
        return 
    end
    f2192_local0 = self
    f2192_local1 = self.ExecThrowed(f2192_local0)
    if f2192_local1 == TRUE then
        return 
    end
    f2192_local0 = self
    f2192_local1 = self.FallStart(f2192_local0)
    if f2192_local1 == TRUE then
        return 
    end
    f2192_local0 = self
    f2192_local1 = self.ExecAIAction(f2192_local0)
    if f2192_local1 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

Enemy.WrapMoveCommon = function (self)
    local f2193_local0 = self
    local f2193_local1 = self.ExecDamge(f2193_local0)
    if f2193_local1 == TRUE then
        return 
    end
    f2193_local0 = self
    f2193_local1 = self.ExecThrowed(f2193_local0)
    if f2193_local1 == TRUE then
        return 
    end
    f2193_local0 = self
    f2193_local1 = self.FallStart(f2193_local0)
    if f2193_local1 == TRUE then
        return 
    end
    f2193_local0 = self
    f2193_local1 = self.ExecTurn(f2193_local0)
    if f2193_local1 == TRUE then
        return 
    end
    f2193_local0 = self
    f2193_local1 = self.ExecAIAction(f2193_local0)
    if f2193_local1 == TRUE then
        return 
    end
    f2193_local0 = self
    self.MoveUpdate(f2193_local0)
    
end

Enemy.WrapStepCommon = function (self)
    local f2194_local0 = self
    self.WrapAttackCommon(f2194_local0)
    
end

Enemy.WrapAttackCommon = function (self)
    local f2195_local0 = act
    f2195_local0(9103, self.ActionNumber)
    local f2195_local1 = self
    f2195_local0 = self.ExecDamge
    f2195_local0 = f2195_local0(f2195_local1)
    if f2195_local0 == TRUE then
        return 
    end
    f2195_local1 = self
    f2195_local0 = self.FallStart
    f2195_local0 = f2195_local0(f2195_local1)
    if f2195_local0 == TRUE then
        return 
    end
    f2195_local1 = self
    f2195_local0 = self.ExecAttackCombo
    f2195_local0 = f2195_local0(f2195_local1)
    if f2195_local0 == TRUE then
        return 
    end
    f2195_local1 = self
    f2195_local0 = self.ExecAttackCancel
    f2195_local0 = f2195_local0(f2195_local1)
    if f2195_local0 == TRUE then
        return 
    end
    f2195_local1 = self
    f2195_local0 = self.ExecStepCancel
    f2195_local0 = f2195_local0(f2195_local1)
    if f2195_local0 == TRUE then
        return 
    end
    f2195_local1 = self
    f2195_local0 = self.MoveStart
    f2195_local0 = f2195_local0(f2195_local1)
    if f2195_local0 == TRUE then
        return 
    end
    
end

Enemy.WrapTurnCommon = function (self)
    local f2196_local0 = self
    local f2196_local1 = self.ExecDamge(f2196_local0)
    if f2196_local1 == TRUE then
        return 
    end
    f2196_local0 = self
    f2196_local1 = self.FallStart(f2196_local0)
    if f2196_local1 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

function Idle_onActivate()
    act(102, TRUE)
    local f2197_local0 = Slim
    SETFIELD_R1 0 7 -8
    
end

function IdleBase_onUpdate()
    local f2198_local0 = Slim
    local f2198_local1 = f2198_local0
    f2198_local0 = f2198_local0.WrapIdleCommon
    f2198_local0(f2198_local1)
    
end

function Run_onUpdate()
    local f2199_local0 = Slim
    local f2199_local1 = f2199_local0
    f2199_local0 = f2199_local0.WrapMoveCommon
    f2199_local0(f2199_local1)
    
end

function WalkFront_onUpdate()
    local f2200_local0 = Slim
    local f2200_local1 = f2200_local0
    f2200_local0 = f2200_local0.WrapMoveCommon
    f2200_local0(f2200_local1)
    
end

function WalkRight_onUpdate()
    local f2201_local0 = Slim
    local f2201_local1 = f2201_local0
    f2201_local0 = f2201_local0.WrapMoveCommon
    f2201_local0(f2201_local1)
    
end

function WalkLeft_onUpdate()
    local f2202_local0 = Slim
    local f2202_local1 = f2202_local0
    f2202_local0 = f2202_local0.WrapMoveCommon
    f2202_local0(f2202_local1)
    
end

function WalkBack_onUpdate()
    local f2203_local0 = Slim
    local f2203_local1 = f2203_local0
    f2203_local0 = f2203_local0.WrapMoveCommon
    f2203_local0(f2203_local1)
    
end

function Step700_onUpdate()
    local f2204_local0 = Slim
    local f2204_local1 = f2204_local0
    f2204_local0 = f2204_local0.WrapStepCommon
    f2204_local0(f2204_local1)
    
end

function Step701_onUpdate()
    local f2205_local0 = Slim
    local f2205_local1 = f2205_local0
    f2205_local0 = f2205_local0.WrapStepCommon
    f2205_local0(f2205_local1)
    
end

function Step702_onUpdate()
    local f2206_local0 = Slim
    local f2206_local1 = f2206_local0
    f2206_local0 = f2206_local0.WrapStepCommon
    f2206_local0(f2206_local1)
    
end

function Step703_onUpdate()
    local f2207_local0 = Slim
    local f2207_local1 = f2207_local0
    f2207_local0 = f2207_local0.WrapStepCommon
    f2207_local0(f2207_local1)
    
end

function TurnRight90_onUpdate()
    local f2208_local0 = Slim
    local f2208_local1 = f2208_local0
    f2208_local0 = f2208_local0.WrapTurnCommon
    f2208_local0(f2208_local1)
    
end

function TurnLeft90_onUpdate()
    local f2209_local0 = Slim
    local f2209_local1 = f2209_local0
    f2209_local0 = f2209_local0.WrapTurnCommon
    f2209_local0(f2209_local1)
    
end

function TurnLeft180_onUpdate()
    local f2210_local0 = Slim
    local f2210_local1 = f2210_local0
    f2210_local0 = f2210_local0.WrapTurnCommon
    f2210_local0(f2210_local1)
    
end

function TurnRight180_onUpdate()
    local f2211_local0 = Slim
    local f2211_local1 = f2211_local0
    f2211_local0 = f2211_local0.WrapTurnCommon
    f2211_local0(f2211_local1)
    
end

function Attack3000_onUpdate()
    local f2212_local0 = Slim
    local f2212_local1 = f2212_local0
    f2212_local0 = f2212_local0.WrapAttackCommon
    f2212_local0(f2212_local1)
    
end

function Attack3001_onUpdate()
    local f2213_local0 = Slim
    local f2213_local1 = f2213_local0
    f2213_local0 = f2213_local0.WrapAttackCommon
    f2213_local0(f2213_local1)
    
end

function Attack3002_onUpdate()
    local f2214_local0 = Slim
    local f2214_local1 = f2214_local0
    f2214_local0 = f2214_local0.WrapAttackCommon
    f2214_local0(f2214_local1)
    
end

function Attack3003_onUpdate()
    local f2215_local0 = Slim
    local f2215_local1 = f2215_local0
    f2215_local0 = f2215_local0.WrapAttackCommon
    f2215_local0(f2215_local1)
    
end

function Attack3004_onUpdate()
    local f2216_local0 = Slim
    local f2216_local1 = f2216_local0
    f2216_local0 = f2216_local0.WrapAttackCommon
    f2216_local0(f2216_local1)
    
end

function Attack3005_onUpdate()
    local f2217_local0 = Slim
    local f2217_local1 = f2217_local0
    f2217_local0 = f2217_local0.WrapAttackCommon
    f2217_local0(f2217_local1)
    
end

function Attack3006_onUpdate()
    local f2218_local0 = Slim
    local f2218_local1 = f2218_local0
    f2218_local0 = f2218_local0.WrapAttackCommon
    f2218_local0(f2218_local1)
    
end

function Attack3007_onUpdate()
    local f2219_local0 = Slim
    local f2219_local1 = f2219_local0
    f2219_local0 = f2219_local0.WrapAttackCommon
    f2219_local0(f2219_local1)
    
end

function Attack3008_onUpdate()
    local f2220_local0 = Slim
    local f2220_local1 = f2220_local0
    f2220_local0 = f2220_local0.WrapAttackCommon
    f2220_local0(f2220_local1)
    
end

function Attack3009_onUpdate()
    local f2221_local0 = Slim
    local f2221_local1 = f2221_local0
    f2221_local0 = f2221_local0.WrapAttackCommon
    f2221_local0(f2221_local1)
    
end

function Attack3010_onUpdate()
    local f2222_local0 = Slim
    local f2222_local1 = f2222_local0
    f2222_local0 = f2222_local0.WrapAttackCommon
    f2222_local0(f2222_local1)
    
end

function Attack3011_onUpdate()
    local f2223_local0 = Slim
    local f2223_local1 = f2223_local0
    f2223_local0 = f2223_local0.WrapAttackCommon
    f2223_local0(f2223_local1)
    
end

function Attack3012_onUpdate()
    local f2224_local0 = Slim
    local f2224_local1 = f2224_local0
    f2224_local0 = f2224_local0.WrapAttackCommon
    f2224_local0(f2224_local1)
    
end

function Attack3013_onUpdate()
    local f2225_local0 = Slim
    local f2225_local1 = f2225_local0
    f2225_local0 = f2225_local0.WrapAttackCommon
    f2225_local0(f2225_local1)
    
end

function Attack3014_onUpdate()
    local f2226_local0 = Slim
    local f2226_local1 = f2226_local0
    f2226_local0 = f2226_local0.WrapAttackCommon
    f2226_local0(f2226_local1)
    
end

function Attack3015_onUpdate()
    local f2227_local0 = Slim
    local f2227_local1 = f2227_local0
    f2227_local0 = f2227_local0.WrapAttackCommon
    f2227_local0(f2227_local1)
    
end

function Attack3016_onUpdate()
    local f2228_local0 = Slim
    local f2228_local1 = f2228_local0
    f2228_local0 = f2228_local0.WrapAttackCommon
    f2228_local0(f2228_local1)
    
end

function Attack3017_onUpdate()
    local f2229_local0 = Slim
    local f2229_local1 = f2229_local0
    f2229_local0 = f2229_local0.WrapAttackCommon
    f2229_local0(f2229_local1)
    
end

function Attack3018_onUpdate()
    local f2230_local0 = Slim
    local f2230_local1 = f2230_local0
    f2230_local0 = f2230_local0.WrapAttackCommon
    f2230_local0(f2230_local1)
    
end

function Attack3020_onUpdate()
    local f2231_local0 = Slim
    local f2231_local1 = f2231_local0
    f2231_local0 = f2231_local0.WrapAttackCommon
    f2231_local0(f2231_local1)
    
end

function Attack3021_onUpdate()
    local f2232_local0 = Slim
    local f2232_local1 = f2232_local0
    f2232_local0 = f2232_local0.WrapAttackCommon
    f2232_local0(f2232_local1)
    
end

function Attack3022_onUpdate()
    local f2233_local0 = Slim
    local f2233_local1 = f2233_local0
    f2233_local0 = f2233_local0.WrapAttackCommon
    f2233_local0(f2233_local1)
    
end

function Attack3023_onUpdate()
    local f2234_local0 = Slim
    local f2234_local1 = f2234_local0
    f2234_local0 = f2234_local0.WrapAttackCommon
    f2234_local0(f2234_local1)
    
end

function Attack3024_onUpdate()
    local f2235_local0 = Slim
    local f2235_local1 = f2235_local0
    f2235_local0 = f2235_local0.WrapAttackCommon
    f2235_local0(f2235_local1)
    
end

function Attack3300_onUpdate()
    local f2236_local0 = Slim
    local f2236_local1 = f2236_local0
    f2236_local0 = f2236_local0.WrapAttackCommon
    f2236_local0(f2236_local1)
    
end

function Attack3301_onUpdate()
    local f2237_local0 = Slim
    local f2237_local1 = f2237_local0
    f2237_local0 = f2237_local0.WrapAttackCommon
    f2237_local0(f2237_local1)
    
end

function Attack3302_onUpdate()
    local f2238_local0 = Slim
    local f2238_local1 = f2238_local0
    f2238_local0 = f2238_local0.WrapAttackCommon
    f2238_local0(f2238_local1)
    
end

function DeathStart_onActivate()
    act(9101)
    act(100, FALSE)
    
end

function DeathStart_onDeactivate()
    act(100, TRUE)
    
end

function DeathAirFalling_onUpdate()
    local f2241_local0 = env(ESD_ENV_IsLanding)
    if f2241_local0 == TRUE then
        f2241_local0 = Slim
        local f2241_local1 = f2241_local0
        f2241_local0 = f2241_local0.ExecEvent
        f2241_local0(f2241_local1, "DeathAirLanding")
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
    local f2248_local0 = Slim
    local f2248_local1 = f2248_local0
    f2248_local0 = f2248_local0.ExecFalling
    f2248_local0(f2248_local1)
    
end

function Initialize()
    Slim = Enemy.New()
    
end

function Main()
     = g_FrameCount + 1
    if g_FrameCount > 999999 then
         = 0
    end
    local tmp = env(ESD_ENV_GetSpecialStayAnimID)
    if tmp > 0 then
        DebugPrint(1, tmp)
    end
    act("投げ要求を設定")
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
