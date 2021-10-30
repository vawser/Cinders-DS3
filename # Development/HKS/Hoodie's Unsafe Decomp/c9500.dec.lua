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
        hkbSetVariable("DebugFloat" .. f2059_local0, buff[f2059_local0])
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
    local f2061_local0 = {}
    SETFIELD_R1 2 0 0
    f2061_local0.Frame = frame
    return f2061_local0
    
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
    local f2062_local0 = {}
    SETFIELD_R1 0 0 -1
    f2062_local0.Events = {}
    f2062_local0.State = STATE_IDLE
    f2062_local0.OrderAttack = REG4294967288
    f2062_local0.OrderAttackCancel = REG4294967288
    f2062_local0.OrderAttackCombo = REG4294967288
    f2062_local0.OrderStep = REG4294967288
    f2062_local0.OrderStepCancel = REG4294967288
    f2062_local0.OrderCallEnemy = REG4294967288
    f2062_local0.DamageState = REG4294967288
    f2062_local0.DamageDirection = REG4294967288
    f2062_local0.DamageType = REG4294967288
    f2062_local0.IsThrowed = FALSE
    f2062_local0.IsFall = FALSE
    f2062_local0.IsAttack = FALSE
    f2062_local0.ActionNumber = REG4294967295
    f2062_local0.MoveState = MOVE_STOP
    f2062_local0.StopCount = REG4294967295
    f2062_local0.IsFalling = FALSE
    f2062_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967268
    local f2062_local1 = setmetatable
    local f2062_local2 = f2062_local0
    local f2062_local3 = {}
    f2062_local3.__index = Enemy
    f2062_local1(f2062_local2, f2062_local3)
    return f2062_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f2063_local0 = self.Events
    local f2063_local1 = self.Count
    f2063_local0[f2063_local1] = Events.New(state, g_FrameCount)
    hkbFireEvent(state)
    return 
    
end

Enemy.ExecAIAction = function (self)
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 3000 and action_type < 4000 then
        local f2064_local0 = hkbSetVariable
        f2064_local0("AttackState", action_type - 3000)
        local f2064_local1 = self
        f2064_local0 = self.ExecEvent
        f2064_local0(f2064_local1, "W_Attack")
        self.ActionNumber = action_type
        f2064_local0 = TRUE
        return f2064_local0
    end
    if action_type >= 700 and action_type < 800 then
        local f2064_local1 = self
        self.ExecEvent(f2064_local1, "W_Step" .. action_type)
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
        local f2065_local0 = hkbSetVariable
        f2065_local0("AttackState", action_type - 3000)
        local f2065_local1 = self
        f2065_local0 = self.ExecEvent
        f2065_local0(f2065_local1, "W_Attack")
        f2065_local0 = TRUE
        return f2065_local0
    end
    return FALSE
    
end

Enemy.ExecAttackCancel = function (self)
    local action_type = env(ESD_ENV_GetAIAtkCancelType)
    if action_type <= 0 then
        return FALSE
    end
    if action_type >= 3000 and action_type < 4000 then
        local f2066_local0 = hkbSetVariable
        f2066_local0("AttackState", action_type - 3000)
        local f2066_local1 = self
        f2066_local0 = self.ExecEvent
        f2066_local0(f2066_local1, "W_Attack")
        f2066_local0 = TRUE
        return f2066_local0
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
        local f2067_local0 = self
        self.ExecEvent(f2067_local0, "W_Step" .. action_type)
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
        local f2068_local0 = self
        self.ExecEvent(f2068_local0, "W_Run")
        self.MoveState = MOVE_RUN
    elseif speed > 0.10000000149011612 then
        local angle = hkbGetVariable("MoveAngle")
        if angle >= -45 and angle < 45 then
            self.MoveState = MOVE_WALK_FRONT
            local f2068_local1 = self
            self.ExecEvent(f2068_local1, "W_WalkFront")
        elseif angle >= 45 and angle < 135 then
            self.MoveState = MOVE_WALK_RIGHT
            local f2068_local1 = self
            self.ExecEvent(f2068_local1, "W_WalkRight")
        elseif not (angle < 135 or angle > 180) or angle >= -180 and angle <= -135 then
            self.MoveState = MOVE_WALK_BACK
            local f2068_local1 = self
            self.ExecEvent(f2068_local1, "W_WalkBack")
        elseif angle >= -135 and angle < -45 then
            self.MoveState = MOVE_WALK_LEFT
            local f2068_local1 = self
            self.ExecEvent(f2068_local1, "W_WalkLeft")
        end
    end
    return TRUE
    
end

Enemy.MoveUpdate = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        self.StopCount = Dragon.StopCount + 1
        local f2069_local0 = self.StopCount
        if f2069_local0 > 0 then
            self.StopCount = REG4294967292
            local f2069_local1 = self
            self.ExecEvent(f2069_local1, "W_Idle")
            return 
        end
    else
        local angle = hkbGetVariable("MoveAngle")
        if angle >= -45 and angle < 45 then
            if self.MoveState ~= MOVE_RUN and speed > 0.5 then
                self.MoveState = MOVE_RUN
                local f2069_local2 = self
                self.ExecEvent(f2069_local2, "W_Run")
            elseif self.MoveState ~= MOVE_WALK_FRONT and speed > 0 and speed < 0.5 then
                self.MoveState = MOVE_WALK_FRONT
                local f2069_local2 = self
                self.ExecEvent(f2069_local2, "W_WalkFront")
            end
        elseif self.MoveState ~= MOVE_WALK_RIGHT and angle >= 45 and angle < 135 then
            self.MoveState = MOVE_WALK_RIGHT
            local f2069_local2 = self
            self.ExecEvent(f2069_local2, "W_WalkRight")
        elseif self.MoveState ~= MOVE_WALK_BACK and (not (angle < 135 or angle > 180) or angle >= -180 and angle <= -135) then
            self.MoveState = MOVE_WALK_BACK
            local f2069_local2 = self
            self.ExecEvent(f2069_local2, "W_WalkBack")
        elseif self.MoveState ~= MOVE_WALK_LEFT and angle >= -135 and angle < -45 then
            self.MoveState = MOVE_WALK_LEFT
            local f2069_local2 = self
            self.ExecEvent(f2069_local2, "W_WalkLeft")
        end
    end
    
end

Enemy.SetDeathParam = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    hkbSetVariable("DeathIdleState", state2)
    
end

Enemy.ExecDeathEvent = function (self, state1, state2)
    hkbSetVariable("DeathState", state1)
    local f2071_local0 = hkbSetVariable
    f2071_local0("DeathIdleState", state2)
    local f2071_local1 = self
    f2071_local0 = self.ExecEvent
    f2071_local0(f2071_local1, "W_DeathStart")
    
end

Enemy.ExecDamageEvent = function (self, state1, state2)
    hkbSetVariable("DamageState", state1)
    local f2072_local0 = hkbSetVariable
    f2072_local0("DamageDirection", state2)
    local f2072_local1 = self
    f2072_local0 = self.ExecEvent
    f2072_local0(f2072_local1, "W_Damage")
    
end

Enemy.ExecDamge = function (self)
    local level = env(ESD_ENV_GetDamageLevel)
    local kind = env(ESD_ENV_GetReceivedDamageType)
    if kind == 9 or env(ESD_ENV_GetHP) <= 0 and (env(ESD_ENV_IsFlying) == TRUE or env(ESD_ENV_GetCommandIDFromEvent, 0) == 1200) then
        local f2073_local0 = self
        self.ExecDeathEvent(f2073_local0, 6, 1)
        return TRUE
    elseif kind == 2 or env(ESD_ENV_GetHP) <= 0 then
        local f2073_local1 = g_FrameCount % 2
        if f2073_local1 == 0 then
            local f2073_local0 = self
            self.ExecDeathEvent(f2073_local0, 0, 0)
            return TRUE
        else
            local f2073_local0 = self
            self.ExecDeathEvent(f2073_local0, 1, 0)
            return TRUE
        end
    elseif kind == 2 then
        local f2073_local1 = env(ESD_ENV_GetIsWeakPoint)
        if f2073_local1 == TRUE then
            local f2073_local0 = self
            self.ExecDeathEvent(f2073_local0, 5, 0)
            return TRUE
        elseif level == 4 or level == 7 or level == 9 or level == 10 or level == 11 then
            local f2073_local0 = self
            self.ExecDeathEvent(f2073_local0, 3, 0)
            return TRUE
        elseif level == 6 then
            local f2073_local0 = self
            self.ExecDeathEvent(f2073_local0, 4, 0)
            return TRUE
        end
    elseif level >= 1 then
        if env(ESD_ENV_GetReceivedDamageType) >= 1000 then
            local f2073_local1 = env(ESD_ENV_GetReceivedDamageType)
            if f2073_local1 <= 1010 then
                self.ActionNumber = REG4294967272
                local f2073_local0 = self
                self.ExecEvent(f2073_local0, "W_DamageGuardBound")
                return TRUE
            end
        end
        if env(ESD_ENV_GetGuardLevelAction) == 0 then
            if level == 8 then
                local f2073_local1 = g_FrameCount % 2
                if f2073_local1 == 0 then
                    local f2073_local0 = self
                    self.ExecDamageEvent(f2073_local0, 4, 0)
                else
                    local f2073_local0 = self
                    self.ExecDamageEvent(f2073_local0, 4, 1)
                end
            else
                local dir = env(ESD_ENV_GetReceivedDamageDirection)
                hkbSetVariable("DamageState", self.DamageState - 1)
                local f2073_local0 = hkbSetVariable
                f2073_local0("DamageDirection", dir)
                local f2073_local2 = self
                f2073_local0 = self.ExecEvent
                f2073_local0(f2073_local2, "W_Damage")
            end
            return TRUE
        end
    end
    return FALSE
    
end

Enemy.ExecFalling = function (self)
    local height = env(ESD_ENV_GetFallHeight) / 100
    if self.IsFalling == TRUE and env(ESD_ENV_IsLanding) == TRUE then
        local f2074_local0 = FALSE
        self.IsFalling = f2074_local0
        if height > 20 then
            local f2074_local1 = self
            f2074_local0 = self.SetDeathParam
            f2074_local0(f2074_local1, 2, 0)
            f2074_local1 = self
            f2074_local0 = self.ExecEvent
            f2074_local0(f2074_local1, "W_DeathStart")
        elseif height > 5 then
            local f2074_local1 = self
            self.ExecEvent(f2074_local1, "W_FallHeavyLanding")
        elseif height > 2 then
            local f2074_local1 = self
            self.ExecEvent(f2074_local1, "W_FallLanding")
        else
            local f2074_local1 = self
            self.ExecEvent(f2074_local1, "W_Idle")
        end
        return 
    end
    
end

Enemy.ExecThrowed = function (self)
    if env(ESD_ENV_IsBeingThrown) == TRUE then
        if env(ESD_ENV_GetHP) <= 0 then
            local f2075_local0 = self
            self.ExecEvent(f2075_local0, "W_ThrowDeath")
        else
            local f2075_local0 = self
            self.ExecEvent(f2075_local0, "W_ThrowDefault")
        end
        return TRUE
    end
    return FALSE
    
end

Enemy.FallStart = function (self)
    if env(ESD_ENV_IsFalling) == TRUE then
        self.IsFalling = TRUE
        local f2076_local0 = self
        self.ExecEvent(f2076_local0, "W_FallBase")
        return TRUE
    end
    return FALSE
    
end

Enemy.CallHelp = function (self)
    if self.OrderCallEnemy > 0 then
        local f2077_local0 = self
        self.ExecEvent(f2077_local0, "W_CallHelp")
        return TRUE
    end
    return FALSE
    
end

Enemy.WrapIdleCommon = function (self)
    local f2078_local0 = act
    f2078_local0(9100)
    local f2078_local1 = self
    f2078_local0 = self.ExecDamge
    f2078_local0 = f2078_local0(f2078_local1)
    if f2078_local0 == TRUE then
        return 
    end
    f2078_local1 = self
    f2078_local0 = self.ExecThrowed
    f2078_local0 = f2078_local0(f2078_local1)
    if f2078_local0 == TRUE then
        return 
    end
    f2078_local1 = self
    f2078_local0 = self.FallStart
    f2078_local0 = f2078_local0(f2078_local1)
    if f2078_local0 == TRUE then
        return 
    end
    f2078_local1 = self
    f2078_local0 = self.ExecAIAction
    f2078_local0 = f2078_local0(f2078_local1)
    if f2078_local0 == TRUE then
        return 
    end
    f2078_local1 = self
    f2078_local0 = self.MoveStart
    f2078_local0 = f2078_local0(f2078_local1)
    if f2078_local0 == TRUE then
        return 
    end
    
end

Enemy.WrapDamageCommon = function (self)
    local f2079_local0 = self
    local f2079_local1 = self.ExecDamge(f2079_local0)
    if f2079_local1 == TRUE then
        return 
    end
    f2079_local0 = self
    f2079_local1 = self.ExecThrowed(f2079_local0)
    if f2079_local1 == TRUE then
        return 
    end
    f2079_local0 = self
    f2079_local1 = self.FallStart(f2079_local0)
    if f2079_local1 == TRUE then
        return 
    end
    f2079_local0 = self
    f2079_local1 = self.ExecAIAction(f2079_local0)
    if f2079_local1 == TRUE then
        return 
    end
    if self:MoveStart() == TRUE then
        return 
    end
    
end

Enemy.WrapMoveCommon = function (self)
    local f2080_local0 = act
    f2080_local0(9100)
    local f2080_local1 = self
    f2080_local0 = self.ExecDamge
    f2080_local0 = f2080_local0(f2080_local1)
    if f2080_local0 == TRUE then
        return 
    end
    f2080_local1 = self
    f2080_local0 = self.ExecThrowed
    f2080_local0 = f2080_local0(f2080_local1)
    if f2080_local0 == TRUE then
        return 
    end
    f2080_local1 = self
    f2080_local0 = self.FallStart
    f2080_local0 = f2080_local0(f2080_local1)
    if f2080_local0 == TRUE then
        return 
    end
    f2080_local1 = self
    f2080_local0 = self.ExecAIAction
    f2080_local0 = f2080_local0(f2080_local1)
    if f2080_local0 == TRUE then
        return 
    end
    f2080_local1 = self
    f2080_local0 = self.MoveUpdate
    f2080_local0(f2080_local1)
    
end

Enemy.WrapStepCommon = function (self)
    local f2081_local0 = self
    self.WrapAttackCommon(f2081_local0)
    
end

Enemy.WrapAttackCommon = function (self)
    local f2082_local0 = act
    f2082_local0(9103, self.ActionNumber)
    local f2082_local1 = self
    f2082_local0 = self.ExecDamge
    f2082_local0 = f2082_local0(f2082_local1)
    if f2082_local0 == TRUE then
        return 
    end
    f2082_local1 = self
    f2082_local0 = self.FallStart
    f2082_local0 = f2082_local0(f2082_local1)
    if f2082_local0 == TRUE then
        return 
    end
    f2082_local1 = self
    f2082_local0 = self.ExecAttackCombo
    f2082_local0 = f2082_local0(f2082_local1)
    if f2082_local0 == TRUE then
        return 
    end
    f2082_local1 = self
    f2082_local0 = self.ExecAttackCancel
    f2082_local0 = f2082_local0(f2082_local1)
    if f2082_local0 == TRUE then
        return 
    end
    f2082_local1 = self
    f2082_local0 = self.ExecStepCancel
    f2082_local0 = f2082_local0(f2082_local1)
    if f2082_local0 == TRUE then
        return 
    end
    f2082_local1 = self
    f2082_local0 = self.MoveStart
    f2082_local0 = f2082_local0(f2082_local1)
    if f2082_local0 == TRUE then
        return 
    end
    
end

function Idle_onActivate()
    act(102, TRUE)
    local f2083_local0 = Dragon
    SETFIELD_R1 0 7 -8
    
end

function Idle_onUpdate()
    local f2084_local0 = Dragon
    local f2084_local1 = f2084_local0
    f2084_local0 = f2084_local0.WrapIdleCommon
    f2084_local0(f2084_local1)
    
end

function Move_onActivate()
    Dragon.State = STATE_MOVE
    
end

function Run_onUpdate()
    local f2086_local0 = Dragon
    local f2086_local1 = f2086_local0
    f2086_local0 = f2086_local0.WrapMoveCommon
    f2086_local0(f2086_local1)
    
end

function WalkFront_onUpdate()
    local f2087_local0 = Dragon
    local f2087_local1 = f2087_local0
    f2087_local0 = f2087_local0.WrapMoveCommon
    f2087_local0(f2087_local1)
    
end

function WalkRight_onUpdate()
    local f2088_local0 = Dragon
    local f2088_local1 = f2088_local0
    f2088_local0 = f2088_local0.WrapMoveCommon
    f2088_local0(f2088_local1)
    
end

function WalkLeft_onUpdate()
    local f2089_local0 = Dragon
    local f2089_local1 = f2089_local0
    f2089_local0 = f2089_local0.WrapMoveCommon
    f2089_local0(f2089_local1)
    
end

function WalkBack_onUpdate()
    local f2090_local0 = Dragon
    local f2090_local1 = f2090_local0
    f2090_local0 = f2090_local0.WrapMoveCommon
    f2090_local0(f2090_local1)
    
end

function Step700_onUpdate()
    local f2091_local0 = Dragon
    local f2091_local1 = f2091_local0
    f2091_local0 = f2091_local0.WrapStepCommon
    f2091_local0(f2091_local1)
    
end

function Step701_onUpdate()
    local f2092_local0 = Dragon
    local f2092_local1 = f2092_local0
    f2092_local0 = f2092_local0.WrapStepCommon
    f2092_local0(f2092_local1)
    
end

function Step702_onUpdate()
    local f2093_local0 = Dragon
    local f2093_local1 = f2093_local0
    f2093_local0 = f2093_local0.WrapStepCommon
    f2093_local0(f2093_local1)
    
end

function Step703_onUpdate()
    local f2094_local0 = Dragon
    local f2094_local1 = f2094_local0
    f2094_local0 = f2094_local0.WrapStepCommon
    f2094_local0(f2094_local1)
    
end

function Attack3000_onUpdate()
    local f2095_local0 = Dragon
    local f2095_local1 = f2095_local0
    f2095_local0 = f2095_local0.WrapAttackCommon
    f2095_local0(f2095_local1)
    
end

function Attack3001_onUpdate()
    local f2096_local0 = Dragon
    local f2096_local1 = f2096_local0
    f2096_local0 = f2096_local0.WrapAttackCommon
    f2096_local0(f2096_local1)
    
end

function Attack3002_onUpdate()
    local f2097_local0 = Dragon
    local f2097_local1 = f2097_local0
    f2097_local0 = f2097_local0.WrapAttackCommon
    f2097_local0(f2097_local1)
    
end

function Attack3003_onUpdate()
    local f2098_local0 = Dragon
    local f2098_local1 = f2098_local0
    f2098_local0 = f2098_local0.WrapAttackCommon
    f2098_local0(f2098_local1)
    
end

function Attack3004_onUpdate()
    local f2099_local0 = Dragon
    local f2099_local1 = f2099_local0
    f2099_local0 = f2099_local0.WrapAttackCommon
    f2099_local0(f2099_local1)
    
end

function Attack3005_onUpdate()
    local f2100_local0 = Dragon
    local f2100_local1 = f2100_local0
    f2100_local0 = f2100_local0.WrapAttackCommon
    f2100_local0(f2100_local1)
    
end

function Attack3006_onUpdate()
    local f2101_local0 = Dragon
    local f2101_local1 = f2101_local0
    f2101_local0 = f2101_local0.WrapAttackCommon
    f2101_local0(f2101_local1)
    
end

function Attack3007_onUpdate()
    local f2102_local0 = Dragon
    local f2102_local1 = f2102_local0
    f2102_local0 = f2102_local0.WrapAttackCommon
    f2102_local0(f2102_local1)
    
end

function Attack3008_onUpdate()
    local f2103_local0 = Dragon
    local f2103_local1 = f2103_local0
    f2103_local0 = f2103_local0.WrapAttackCommon
    f2103_local0(f2103_local1)
    
end

function Attack3009_onUpdate()
    local f2104_local0 = Dragon
    local f2104_local1 = f2104_local0
    f2104_local0 = f2104_local0.WrapAttackCommon
    f2104_local0(f2104_local1)
    
end

function Attack3010_onUpdate()
    local f2105_local0 = Dragon
    local f2105_local1 = f2105_local0
    f2105_local0 = f2105_local0.WrapAttackCommon
    f2105_local0(f2105_local1)
    
end

function Attack3011_onUpdate()
    local f2106_local0 = Dragon
    local f2106_local1 = f2106_local0
    f2106_local0 = f2106_local0.WrapAttackCommon
    f2106_local0(f2106_local1)
    
end

function Attack3012_onUpdate()
    local f2107_local0 = Dragon
    local f2107_local1 = f2107_local0
    f2107_local0 = f2107_local0.WrapAttackCommon
    f2107_local0(f2107_local1)
    
end

function Attack3013_onUpdate()
    local f2108_local0 = Dragon
    local f2108_local1 = f2108_local0
    f2108_local0 = f2108_local0.WrapAttackCommon
    f2108_local0(f2108_local1)
    
end

function Attack3014_onUpdate()
    local f2109_local0 = Dragon
    local f2109_local1 = f2109_local0
    f2109_local0 = f2109_local0.WrapAttackCommon
    f2109_local0(f2109_local1)
    
end

function Attack3015_onUpdate()
    local f2110_local0 = Dragon
    local f2110_local1 = f2110_local0
    f2110_local0 = f2110_local0.WrapAttackCommon
    f2110_local0(f2110_local1)
    
end

function Attack3016_onUpdate()
    local f2111_local0 = Dragon
    local f2111_local1 = f2111_local0
    f2111_local0 = f2111_local0.WrapAttackCommon
    f2111_local0(f2111_local1)
    
end

function Attack3017_onUpdate()
    local f2112_local0 = Dragon
    local f2112_local1 = f2112_local0
    f2112_local0 = f2112_local0.WrapAttackCommon
    f2112_local0(f2112_local1)
    
end

function Attack3018_onUpdate()
    local f2113_local0 = Dragon
    local f2113_local1 = f2113_local0
    f2113_local0 = f2113_local0.WrapAttackCommon
    f2113_local0(f2113_local1)
    
end

function Attack3020_onUpdate()
    local f2114_local0 = Dragon
    local f2114_local1 = f2114_local0
    f2114_local0 = f2114_local0.WrapAttackCommon
    f2114_local0(f2114_local1)
    
end

function Attack3021_onUpdate()
    local f2115_local0 = Dragon
    local f2115_local1 = f2115_local0
    f2115_local0 = f2115_local0.WrapAttackCommon
    f2115_local0(f2115_local1)
    
end

function Attack3022_onUpdate()
    local f2116_local0 = Dragon
    local f2116_local1 = f2116_local0
    f2116_local0 = f2116_local0.WrapAttackCommon
    f2116_local0(f2116_local1)
    
end

function Attack3023_onUpdate()
    local f2117_local0 = Dragon
    local f2117_local1 = f2117_local0
    f2117_local0 = f2117_local0.WrapAttackCommon
    f2117_local0(f2117_local1)
    
end

function Attack3024_onUpdate()
    local f2118_local0 = Dragon
    local f2118_local1 = f2118_local0
    f2118_local0 = f2118_local0.WrapAttackCommon
    f2118_local0(f2118_local1)
    
end

function Attack3300_onUpdate()
    local f2119_local0 = Dragon
    local f2119_local1 = f2119_local0
    f2119_local0 = f2119_local0.WrapAttackCommon
    f2119_local0(f2119_local1)
    
end

function Attack3301_onUpdate()
    local f2120_local0 = Dragon
    local f2120_local1 = f2120_local0
    f2120_local0 = f2120_local0.WrapAttackCommon
    f2120_local0(f2120_local1)
    
end

function Attack3302_onUpdate()
    local f2121_local0 = Dragon
    local f2121_local1 = f2121_local0
    f2121_local0 = f2121_local0.WrapAttackCommon
    f2121_local0(f2121_local1)
    
end

function DamageGuardBound_onUpdate()
    act(9103, self.ActionNumber)
    
end

function DeathStart_onActivate()
    act(9101)
    act(100, FALSE)
    
end

function DeathStart_onDeactivate()
    act(100, TRUE)
    
end

function DeathAirFalling_onUpdate()
    local f2125_local0 = env(ESD_ENV_IsLanding)
    if f2125_local0 == TRUE then
        f2125_local0 = Dragon
        local f2125_local1 = f2125_local0
        f2125_local0 = f2125_local0.ExecEvent
        f2125_local0(f2125_local1, "DeathAirLanding")
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

function Throw_onActivate()
    act(9101)
    
end

function Throw_onUpdate()
    if env(ESD_ENV_GetEventEzStateFlag, 0) == TRUE and env(ESD_ENV_GetHP) <= 0 then
        act(102, FALSE)
        local f2133_local0 = Dragon
        local f2133_local1 = f2133_local0
        f2133_local0 = f2133_local0.ExecEvent
        f2133_local0(f2133_local1, "W_DeathIdle")
    end
    
end

function Fall_onUpdate()
    local f2134_local0 = Dragon
    local f2134_local1 = f2134_local0
    f2134_local0 = f2134_local0.ExecFalling
    f2134_local0(f2134_local1)
    
end

function Initialize()
    Dragon = Enemy.New()
    
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
