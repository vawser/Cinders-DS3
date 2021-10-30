function ()
local TRUE = 1
local FALSE = 0
local g_FrameCount = 0
local EnemyCommon = nil
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
        hkbSetVariable("DebugFloat" .. f4712_local0, buff[f4712_local0])
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
    local f4714_local0 = {}
    SETFIELD_R1 2 0 0
    f4714_local0.Frame = frame
    return f4714_local0
    
end

Enemy = {}
Enemy.New = function ()
    local f4715_local0 = {}
    SETFIELD_R1 0 0 -1
    f4715_local0.Events = {}
    f4715_local0.OrderAttack = REG4294967292
    f4715_local0.OrderAttackCancel = REG4294967292
    f4715_local0.OrderAttackCombo = REG4294967292
    f4715_local0.OrderStep = REG4294967292
    f4715_local0.OrderStepCancel = REG4294967292
    f4715_local0.OrderCallEnemy = REG4294967292
    f4715_local0.DamageState = REG4294967292
    f4715_local0.DamageDirection = REG4294967292
    f4715_local0.DamageType = REG4294967292
    f4715_local0.IsThrowed = FALSE
    f4715_local0.IsFall = FALSE
    f4715_local0.IsDeath = FALSE
    f4715_local0.IsFalling = FALSE
    f4715_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967278
    local f4715_local1 = setmetatable
    local f4715_local2 = f4715_local0
    local f4715_local3 = {}
    f4715_local3.__index = Enemy
    f4715_local1(f4715_local2, f4715_local3)
    return f4715_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f4716_local0 = self.Events
    local f4716_local1 = self.Count
    f4716_local0[f4716_local1] = Events.New(state, g_FrameCount)
    hkbFireEvent(state)
    return 
    
end

Enemy.CheckOrder = function (self)
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type >= 700 and action_type <= 723 then
        self.OrderAttack = REG4294967289
        self.OrderStep = action_type
        self.OrderCallEnemy = REG4294967289
    elseif action_type < 7000 then
        self.OrderAttack = action_type
        self.OrderStep = REG4294967289
        self.OrderCallEnemy = REG4294967289
    elseif action_type < 8000 then
        self.OrderAttack = REG4294967289
        self.OrderStep = REG4294967289
        self.OrderCallEnemy = action_type
    end
    self.OrderAttackCancel = env("通常キャンセル攻撃命令")
    self.OrderAttackCombo = env(ESD_ENV_GetAIChainActionType)
    self.OrderStepCancel = env(ESD_ENV_GetAIChainStepType)
    self.DamageState = env(ESD_ENV_GetDamageLevel)
    self.DamageType = env(ESD_ENV_GetReceivedDamageType)
    self.IsThrowed = env(ESD_ENV_IsBeingThrown)
    self.IsFall = env(ESD_ENV_IsFalling)
    return 
    
end

Enemy.Attack = function (self)
    if self.OrderAttack >= 3000 then
        local f4718_local0 = act
        f4718_local0(102, 0)
        local f4718_local1 = self
        f4718_local0 = self.ExecEvent
        f4718_local0(f4718_local1, "W_Attack" .. self.OrderAttack)
        self.OrderAttack = REG4294967287
        f4718_local0 = TRUE
        return f4718_local0
    end
    return FALSE
    
end

Enemy.AttackCancel = function (self)
    if self.OrderAttackCancel > 3000 then
        local f4719_local0 = act
        f4719_local0(102, 0)
        self.OrderAttackCancel = REG4294967289
        local f4719_local1 = self
        f4719_local0 = self.ExecEvent
        f4719_local0(f4719_local1, "W_Attack" .. self.OrderAttack)
        f4719_local0 = TRUE
        return f4719_local0
    end
    return FALSE
    
end

Enemy.AttackCombo = function (self)
    if self.OrderAttackCombo > 3000 then
        act(132)
        local f4720_local0 = act
        f4720_local0(102, 0)
        local f4720_local1 = self
        f4720_local0 = self.ExecEvent
        f4720_local0(f4720_local1, "W_Attack" .. self.OrderAttack)
        self.OrderAttackCombo = REG4294967285
        f4720_local0 = TRUE
        return f4720_local0
    end
    return FALSE
    
end

Enemy.AttackStep = function (self)
    if 700 <= self.OrderStep and self.OrderStep <= 723 then
        act(132)
        act(102, 0)
        if self.OrderStep == 701 then
            local f4721_local0 = self
            self.ExecEvent(f4721_local0, "W_StepBack")
        else
            local f4721_local1 = self.OrderStep
            if f4721_local1 == 702 then
                local f4721_local0 = self
                self.ExecEvent(f4721_local0, "W_StepLeft")
            else
                f4721_local1 = self.OrderStep
                if f4721_local1 == 703 then
                    local f4721_local0 = self
                    self.ExecEvent(f4721_local0, "W_StepRight")
                end
            end
        end
        return TRUE
    end
    return FALSE
    
end

Enemy.MoveStart = function (self)
    IncNum(1)
    if math.abs(hkbGetVariable("MoveAngle")) < 45 then
        if hkbGetVariable("MoveSpeedLevel") > 0.5 then
            local f4722_local0 = hkbSetVariable
            f4722_local0("MoveState", 1)
            local f4722_local1 = self
            f4722_local0 = self.ExecEvent
            f4722_local0(f4722_local1, "W_Run")
            f4722_local0 = TRUE
            return f4722_local0
        else
            local f4722_local0 = hkbGetVariable("MoveSpeedLevel")
            if f4722_local0 >= 0.10000000149011612 then
                f4722_local0 = hkbSetVariable
                f4722_local0("MoveState", 0)
                local f4722_local1 = self
                f4722_local0 = self.ExecEvent
                f4722_local0(f4722_local1, "W_Walk")
                f4722_local0 = TRUE
                return f4722_local0
            end
        end
    else
        local f4722_local0 = hkbGetVariable("MoveSpeedLevel")
        if f4722_local0 > 0.10000000149011612 then
            local f4722_local1 = self
            self.ExecEvent(f4722_local1, "W_SideWalk")
            return TRUE
        end
    end
    return FALSE
    
end

Enemy.MoveUpdate = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        local f4723_local0 = self
        self.ExecEvent(f4723_local0, "W_Idle")
    else
        local state = hkbGetVariable("MoveState")
        if state == 0 then
            if speed > 0.5 then
                local f4723_local0 = hkbSetVariable
                f4723_local0("MoveState", 1)
                local f4723_local1 = self
                f4723_local0 = self.ExecEvent
                f4723_local0(f4723_local1, "W_Run")
            end
        elseif state == 1 and speed <= 0.5 then
            local f4723_local0 = hkbSetVariable
            f4723_local0("MoveState", 0)
            local f4723_local1 = self
            f4723_local0 = self.ExecEvent
            f4723_local0(f4723_local1, "W_Walk")
        end
    end
    
end

Enemy.Damge = function (self)
    if not (self.IsDeath ~= FALSE or env(ESD_ENV_GetHP) > 0) or DamageType == 2 then
        self.IsDeath = TRUE
        local f4724_local0 = self
        self.ExecEvent(f4724_local0, "W_DeathDamage")
    elseif self.DamageState >= 1 then
        self.DamageDirection = env(ESD_ENV_GetReceivedDamageDirection)
        hkbSetVariable("DamageState", self.DamageState - 1)
        local f4724_local1 = hkbSetVariable
        f4724_local1("DamageDirection", self.DamageDirection)
        local f4724_local0 = self
        f4724_local1 = self.ExecEvent
        f4724_local1(f4724_local0, "W_Damage")
    end
    
end

Enemy.Throwed = function (self)
    if self.IsThrowed == TRUE then
        if env(ESD_ENV_GetHP) <= 0 then
            local f4725_local0 = self
            self.ExecEvent(f4725_local0, "W_ThrowDeath")
        else
            local f4725_local0 = self
            self.ExecEvent(f4725_local0, "W_ThrowDefault")
        end
        return TRUE
    end
    return FALSE
    
end

Enemy.Fall = function (self)
    if self.IsFall == TRUE then
        local f4726_local0 = self
        self.ExecEvent(f4726_local0, "W_FallBase")
        return TRUE
    end
    return FALSE
    
end

Enemy.CallHelp = function (self)
    if self.OrderCallEnemy > 0 then
        local f4727_local0 = self
        self.ExecEvent(f4727_local0, "W_CallHelp")
        return TRUE
    end
    return FALSE
    
end

function Idle_onActivate()
    act(102, TRUE)
    
end

function Idle_onUpdate()
    local f4729_local0 = EnemyCommon
    local f4729_local1 = f4729_local0
    f4729_local0 = f4729_local0.Throwed
    f4729_local0 = f4729_local0(f4729_local1)
    if f4729_local0 == TRUE then
        return 
    end
    f4729_local0 = EnemyCommon
    f4729_local1 = f4729_local0
    f4729_local0 = f4729_local0.Attack
    f4729_local0 = f4729_local0(f4729_local1)
    if f4729_local0 == TRUE then
        return 
    end
    f4729_local0 = EnemyCommon
    f4729_local1 = f4729_local0
    f4729_local0 = f4729_local0.AttackStep
    f4729_local0 = f4729_local0(f4729_local1)
    if f4729_local0 == TRUE then
        return 
    end
    f4729_local0 = EnemyCommon
    f4729_local1 = f4729_local0
    f4729_local0 = f4729_local0.Damge
    f4729_local0 = f4729_local0(f4729_local1)
    if f4729_local0 == TRUE then
        return 
    end
    f4729_local0 = EnemyCommon
    f4729_local1 = f4729_local0
    f4729_local0 = f4729_local0.Fall
    f4729_local0 = f4729_local0(f4729_local1)
    if f4729_local0 == TRUE then
        return 
    end
    f4729_local0 = IncNum
    f4729_local0(1)
    f4729_local0 = EnemyCommon
    f4729_local1 = f4729_local0
    f4729_local0 = f4729_local0.MoveStart
    f4729_local0 = f4729_local0(f4729_local1)
    if f4729_local0 == TRUE then
        return 
    end
    
end

function Move_onUpdate()
    local f4730_local0 = EnemyCommon
    local f4730_local1 = f4730_local0
    f4730_local0 = f4730_local0.Attack
    f4730_local0 = f4730_local0(f4730_local1)
    if f4730_local0 == TRUE then
        return 
    end
    f4730_local0 = EnemyCommon
    f4730_local1 = f4730_local0
    f4730_local0 = f4730_local0.AttackStep
    f4730_local0 = f4730_local0(f4730_local1)
    if f4730_local0 == TRUE then
        return 
    end
    f4730_local0 = EnemyCommon
    f4730_local1 = f4730_local0
    f4730_local0 = f4730_local0.Damge
    f4730_local0 = f4730_local0(f4730_local1)
    if f4730_local0 == TRUE then
        return 
    end
    f4730_local0 = EnemyCommon
    f4730_local1 = f4730_local0
    f4730_local0 = f4730_local0.Fall
    f4730_local0 = f4730_local0(f4730_local1)
    if f4730_local0 == TRUE then
        return 
    end
    f4730_local0 = EnemyCommon
    f4730_local1 = f4730_local0
    f4730_local0 = f4730_local0.MoveUpdate
    f4730_local0(f4730_local1)
    
end

function SideWalk_onUpdate()
    if hkbGetVariable("MoveSpeedLevel") <= 0 then
        local f4731_local0 = EnemyCommon
        local f4731_local1 = f4731_local0
        f4731_local0 = f4731_local0.ExecEvent
        f4731_local0(f4731_local1, "W_Idle")
    end
    if math.abs(hkbGetVariable("MoveAngle")) < 45 then
        if hkbGetVariable("MoveSpeedLevel") > 0.5 then
            hkbSetVariable("MoveState", 1)
            local f4731_local0 = self
            local f4731_local1 = f4731_local0
            f4731_local0 = f4731_local0.ExecEvent
            f4731_local0(f4731_local1, "W_Run")
        elseif hkbGetVariable("MoveSpeedLevel") >= 0.10000000149011612 then
            hkbSetVariable("MoveState", 0)
            local f4731_local0 = self
            local f4731_local1 = f4731_local0
            f4731_local0 = f4731_local0.ExecEvent
            f4731_local0(f4731_local1, "W_Walk")
        end
    end
    
end

function Attack_onUpdate()
    local f4732_local0 = EnemyCommon
    local f4732_local1 = f4732_local0
    f4732_local0 = f4732_local0.AttackCancel
    f4732_local0(f4732_local1)
    f4732_local0 = EnemyCommon
    f4732_local1 = f4732_local0
    f4732_local0 = f4732_local0.AttackCombo
    f4732_local0(f4732_local1)
    f4732_local0 = EnemyCommon
    f4732_local1 = f4732_local0
    f4732_local0 = f4732_local0.Fall
    f4732_local0 = f4732_local0(f4732_local1)
    if f4732_local0 == TRUE then
        return 
    end
    f4732_local0 = EnemyCommon
    f4732_local1 = f4732_local0
    f4732_local0 = f4732_local0.Damge
    f4732_local0 = f4732_local0(f4732_local1)
    if f4732_local0 == TRUE then
        return 
    end
    
end

function Step_onUpdate()
    local f4733_local0 = EnemyCommon
    local f4733_local1 = f4733_local0
    f4733_local0 = f4733_local0.Damge
    f4733_local0 = f4733_local0(f4733_local1)
    if f4733_local0 == TRUE then
        return 
    end
    f4733_local0 = EnemyCommon
    f4733_local1 = f4733_local0
    f4733_local0 = f4733_local0.Fall
    f4733_local0 = f4733_local0(f4733_local1)
    if f4733_local0 == TRUE then
        return 
    end
    
end

function DeathDamage_onActivate()
    act(100, 0)
    
end

function DeathDamage_onDeactivate()
    act(100, 1)
    
end

function DeathIdle_onActivate()
    act(126, TRUE)
    
end

function DeathIdle_onDeactivate()
    act(126, FALSE)
    
end

function Throw_onUpdate()
    if env(ESD_ENV_GetEventEzStateFlag, 0) == TRUE and env(ESD_ENV_GetHP) <= 0 then
        act(102, FALSE)
        local f4738_local0 = EnemyCommon
        local f4738_local1 = f4738_local0
        f4738_local0 = f4738_local0.ExecEvent
        f4738_local0(f4738_local1, "W_DeathIdle")
    end
    
end

function Fall_onActivate()
    EnemyCommon.IsFalling = TRUE
    
end

function Fall_onUpdate()
    local height = env(ESD_ENV_GetFallHeight) / 100
    if EnemyCommon.IsFalling == TRUE then
        local f4740_local0 = env(ESD_ENV_IsLanding)
        if f4740_local0 == TRUE then
            f4740_local0 = EnemyCommon
            f4740_local0.IsFalling = FALSE
            if height > 20 then
                f4740_local0 = EnemyCommon
                local f4740_local1 = f4740_local0
                f4740_local0 = f4740_local0.ExecEvent
                f4740_local0(f4740_local1, "W_FallDeath")
            elseif height > 5 then
                f4740_local0 = EnemyCommon
                local f4740_local1 = f4740_local0
                f4740_local0 = f4740_local0.ExecEvent
                f4740_local0(f4740_local1, "W_FallHeavyLanding")
            elseif height > 2 then
                f4740_local0 = EnemyCommon
                local f4740_local1 = f4740_local0
                f4740_local0 = f4740_local0.ExecEvent
                f4740_local0(f4740_local1, "W_FallLanding")
            else
                f4740_local0 = EnemyCommon
                local f4740_local1 = f4740_local0
                f4740_local0 = f4740_local0.ExecEvent
                f4740_local0(f4740_local1, "W_Idle")
            end
            return 
        end
    end
    
end

function initialize()
    EnemyCommon = Enemy.New()
    
end

function main()
     = g_FrameCount + 1
    local f4742_local0 = EnemyCommon
    local f4742_local1 = f4742_local0
    f4742_local0 = f4742_local0.CheckOrder
    f4742_local0(f4742_local1)
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
