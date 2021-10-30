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
        hkbSetVariable("DebugFloat" .. f6304_local0, buff[f6304_local0])
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
    local f6306_local0 = {}
    SETFIELD_R1 2 0 0
    f6306_local0.Frame = frame
    return f6306_local0
    
end

Enemy = {}
Enemy.New = function ()
    local f6307_local0 = {}
    SETFIELD_R1 0 0 -1
    f6307_local0.Events = {}
    f6307_local0.OrderAttack = REG4294967292
    f6307_local0.OrderAttackCancel = REG4294967292
    f6307_local0.OrderAttackCombo = REG4294967292
    f6307_local0.OrderStep = REG4294967292
    f6307_local0.OrderStepCancel = REG4294967292
    f6307_local0.OrderCallEnemy = REG4294967292
    f6307_local0.DamageState = REG4294967292
    f6307_local0.DamageDirection = REG4294967292
    f6307_local0.DamageType = REG4294967292
    f6307_local0.IsThrowed = FALSE
    f6307_local0.IsFall = FALSE
    f6307_local0.IsDeath = FALSE
    f6307_local0.IsFalling = FALSE
    f6307_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967278
    local f6307_local1 = setmetatable
    local f6307_local2 = f6307_local0
    local f6307_local3 = {}
    f6307_local3.__index = Enemy
    f6307_local1(f6307_local2, f6307_local3)
    return f6307_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f6308_local0 = self.Events
    local f6308_local1 = self.Count
    f6308_local0[f6308_local1] = Events.New(state, g_FrameCount)
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
        local f6310_local0 = act
        f6310_local0(102, 0)
        local f6310_local1 = self
        f6310_local0 = self.ExecEvent
        f6310_local0(f6310_local1, "W_Attack" .. self.OrderAttack)
        self.OrderAttack = REG4294967287
        f6310_local0 = TRUE
        return f6310_local0
    end
    return FALSE
    
end

Enemy.AttackCancel = function (self)
    if self.OrderAttackCancel > 3000 then
        local f6311_local0 = act
        f6311_local0(102, 0)
        self.OrderAttackCancel = REG4294967289
        local f6311_local1 = self
        f6311_local0 = self.ExecEvent
        f6311_local0(f6311_local1, "W_Attack" .. self.OrderAttack)
        f6311_local0 = TRUE
        return f6311_local0
    end
    return FALSE
    
end

Enemy.AttackCombo = function (self)
    if self.OrderAttackCombo > 3000 then
        act(132)
        local f6312_local0 = act
        f6312_local0(102, 0)
        local f6312_local1 = self
        f6312_local0 = self.ExecEvent
        f6312_local0(f6312_local1, "W_Attack" .. self.OrderAttack)
        self.OrderAttackCombo = REG4294967285
        f6312_local0 = TRUE
        return f6312_local0
    end
    return FALSE
    
end

Enemy.AttackStep = function (self)
    if 700 <= self.OrderStep and self.OrderStep <= 723 then
        act(132)
        act(102, 0)
        if self.OrderStep == 701 then
            local f6313_local0 = self
            self.ExecEvent(f6313_local0, "W_StepBack")
        else
            local f6313_local1 = self.OrderStep
            if f6313_local1 == 702 then
                local f6313_local0 = self
                self.ExecEvent(f6313_local0, "W_StepLeft")
            else
                f6313_local1 = self.OrderStep
                if f6313_local1 == 703 then
                    local f6313_local0 = self
                    self.ExecEvent(f6313_local0, "W_StepRight")
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
            local f6314_local0 = hkbSetVariable
            f6314_local0("MoveState", 1)
            local f6314_local1 = self
            f6314_local0 = self.ExecEvent
            f6314_local0(f6314_local1, "W_Run")
            f6314_local0 = TRUE
            return f6314_local0
        else
            local f6314_local0 = hkbGetVariable("MoveSpeedLevel")
            if f6314_local0 >= 0.10000000149011612 then
                f6314_local0 = hkbSetVariable
                f6314_local0("MoveState", 0)
                local f6314_local1 = self
                f6314_local0 = self.ExecEvent
                f6314_local0(f6314_local1, "W_Walk")
                f6314_local0 = TRUE
                return f6314_local0
            end
        end
    else
        local f6314_local0 = hkbGetVariable("MoveSpeedLevel")
        if f6314_local0 > 0.10000000149011612 then
            local f6314_local1 = self
            self.ExecEvent(f6314_local1, "W_SideWalk")
            return TRUE
        end
    end
    return FALSE
    
end

Enemy.MoveUpdate = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        local f6315_local0 = self
        self.ExecEvent(f6315_local0, "W_Idle")
    else
        local state = hkbGetVariable("MoveState")
        if state == 0 then
            if speed > 0.5 then
                local f6315_local0 = hkbSetVariable
                f6315_local0("MoveState", 1)
                local f6315_local1 = self
                f6315_local0 = self.ExecEvent
                f6315_local0(f6315_local1, "W_Run")
            end
        elseif state == 1 and speed <= 0.5 then
            local f6315_local0 = hkbSetVariable
            f6315_local0("MoveState", 0)
            local f6315_local1 = self
            f6315_local0 = self.ExecEvent
            f6315_local0(f6315_local1, "W_Walk")
        end
    end
    
end

Enemy.Damge = function (self)
    if not (self.IsDeath ~= FALSE or env(ESD_ENV_GetHP) > 0) or DamageType == 2 then
        self.IsDeath = TRUE
        local f6316_local0 = self
        self.ExecEvent(f6316_local0, "W_DeathDamage")
    elseif self.DamageState >= 1 then
        self.DamageDirection = env(ESD_ENV_GetReceivedDamageDirection)
        hkbSetVariable("DamageState", self.DamageState - 1)
        local f6316_local1 = hkbSetVariable
        f6316_local1("DamageDirection", self.DamageDirection)
        local f6316_local0 = self
        f6316_local1 = self.ExecEvent
        f6316_local1(f6316_local0, "W_Damage")
    end
    
end

Enemy.Throwed = function (self)
    if self.IsThrowed == TRUE then
        if env(ESD_ENV_GetHP) <= 0 then
            local f6317_local0 = self
            self.ExecEvent(f6317_local0, "W_ThrowDeath")
        else
            local f6317_local0 = self
            self.ExecEvent(f6317_local0, "W_ThrowDefault")
        end
        return TRUE
    end
    return FALSE
    
end

Enemy.Fall = function (self)
    if self.IsFall == TRUE then
        local f6318_local0 = self
        self.ExecEvent(f6318_local0, "W_FallBase")
        return TRUE
    end
    return FALSE
    
end

Enemy.CallHelp = function (self)
    if self.OrderCallEnemy > 0 then
        local f6319_local0 = self
        self.ExecEvent(f6319_local0, "W_CallHelp")
        return TRUE
    end
    return FALSE
    
end

function Idle_onActivate()
    act(102, TRUE)
    
end

function Idle_onUpdate()
    local f6321_local0 = EnemyCommon
    local f6321_local1 = f6321_local0
    f6321_local0 = f6321_local0.Throwed
    f6321_local0 = f6321_local0(f6321_local1)
    if f6321_local0 == TRUE then
        return 
    end
    f6321_local0 = EnemyCommon
    f6321_local1 = f6321_local0
    f6321_local0 = f6321_local0.Attack
    f6321_local0 = f6321_local0(f6321_local1)
    if f6321_local0 == TRUE then
        return 
    end
    f6321_local0 = EnemyCommon
    f6321_local1 = f6321_local0
    f6321_local0 = f6321_local0.AttackStep
    f6321_local0 = f6321_local0(f6321_local1)
    if f6321_local0 == TRUE then
        return 
    end
    f6321_local0 = EnemyCommon
    f6321_local1 = f6321_local0
    f6321_local0 = f6321_local0.Damge
    f6321_local0 = f6321_local0(f6321_local1)
    if f6321_local0 == TRUE then
        return 
    end
    f6321_local0 = EnemyCommon
    f6321_local1 = f6321_local0
    f6321_local0 = f6321_local0.Fall
    f6321_local0 = f6321_local0(f6321_local1)
    if f6321_local0 == TRUE then
        return 
    end
    f6321_local0 = IncNum
    f6321_local0(1)
    f6321_local0 = EnemyCommon
    f6321_local1 = f6321_local0
    f6321_local0 = f6321_local0.MoveStart
    f6321_local0 = f6321_local0(f6321_local1)
    if f6321_local0 == TRUE then
        return 
    end
    
end

function Move_onUpdate()
    local f6322_local0 = EnemyCommon
    local f6322_local1 = f6322_local0
    f6322_local0 = f6322_local0.Attack
    f6322_local0 = f6322_local0(f6322_local1)
    if f6322_local0 == TRUE then
        return 
    end
    f6322_local0 = EnemyCommon
    f6322_local1 = f6322_local0
    f6322_local0 = f6322_local0.AttackStep
    f6322_local0 = f6322_local0(f6322_local1)
    if f6322_local0 == TRUE then
        return 
    end
    f6322_local0 = EnemyCommon
    f6322_local1 = f6322_local0
    f6322_local0 = f6322_local0.Damge
    f6322_local0 = f6322_local0(f6322_local1)
    if f6322_local0 == TRUE then
        return 
    end
    f6322_local0 = EnemyCommon
    f6322_local1 = f6322_local0
    f6322_local0 = f6322_local0.Fall
    f6322_local0 = f6322_local0(f6322_local1)
    if f6322_local0 == TRUE then
        return 
    end
    f6322_local0 = EnemyCommon
    f6322_local1 = f6322_local0
    f6322_local0 = f6322_local0.MoveUpdate
    f6322_local0(f6322_local1)
    
end

function SideWalk_onUpdate()
    if hkbGetVariable("MoveSpeedLevel") <= 0 then
        local f6323_local0 = EnemyCommon
        local f6323_local1 = f6323_local0
        f6323_local0 = f6323_local0.ExecEvent
        f6323_local0(f6323_local1, "W_Idle")
    end
    if math.abs(hkbGetVariable("MoveAngle")) < 45 then
        if hkbGetVariable("MoveSpeedLevel") > 0.5 then
            hkbSetVariable("MoveState", 1)
            local f6323_local0 = self
            local f6323_local1 = f6323_local0
            f6323_local0 = f6323_local0.ExecEvent
            f6323_local0(f6323_local1, "W_Run")
        elseif hkbGetVariable("MoveSpeedLevel") >= 0.10000000149011612 then
            hkbSetVariable("MoveState", 0)
            local f6323_local0 = self
            local f6323_local1 = f6323_local0
            f6323_local0 = f6323_local0.ExecEvent
            f6323_local0(f6323_local1, "W_Walk")
        end
    end
    
end

function Attack_onUpdate()
    local f6324_local0 = EnemyCommon
    local f6324_local1 = f6324_local0
    f6324_local0 = f6324_local0.AttackCancel
    f6324_local0(f6324_local1)
    f6324_local0 = EnemyCommon
    f6324_local1 = f6324_local0
    f6324_local0 = f6324_local0.AttackCombo
    f6324_local0(f6324_local1)
    f6324_local0 = EnemyCommon
    f6324_local1 = f6324_local0
    f6324_local0 = f6324_local0.Fall
    f6324_local0 = f6324_local0(f6324_local1)
    if f6324_local0 == TRUE then
        return 
    end
    f6324_local0 = EnemyCommon
    f6324_local1 = f6324_local0
    f6324_local0 = f6324_local0.Damge
    f6324_local0 = f6324_local0(f6324_local1)
    if f6324_local0 == TRUE then
        return 
    end
    
end

function Step_onUpdate()
    local f6325_local0 = EnemyCommon
    local f6325_local1 = f6325_local0
    f6325_local0 = f6325_local0.Damge
    f6325_local0 = f6325_local0(f6325_local1)
    if f6325_local0 == TRUE then
        return 
    end
    f6325_local0 = EnemyCommon
    f6325_local1 = f6325_local0
    f6325_local0 = f6325_local0.Fall
    f6325_local0 = f6325_local0(f6325_local1)
    if f6325_local0 == TRUE then
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
        local f6330_local0 = EnemyCommon
        local f6330_local1 = f6330_local0
        f6330_local0 = f6330_local0.ExecEvent
        f6330_local0(f6330_local1, "W_DeathIdle")
    end
    
end

function Fall_onActivate()
    EnemyCommon.IsFalling = TRUE
    
end

function Fall_onUpdate()
    local height = env(ESD_ENV_GetFallHeight) / 100
    if EnemyCommon.IsFalling == TRUE then
        local f6332_local0 = env(ESD_ENV_IsLanding)
        if f6332_local0 == TRUE then
            f6332_local0 = EnemyCommon
            f6332_local0.IsFalling = FALSE
            if height > 20 then
                f6332_local0 = EnemyCommon
                local f6332_local1 = f6332_local0
                f6332_local0 = f6332_local0.ExecEvent
                f6332_local0(f6332_local1, "W_FallDeath")
            elseif height > 5 then
                f6332_local0 = EnemyCommon
                local f6332_local1 = f6332_local0
                f6332_local0 = f6332_local0.ExecEvent
                f6332_local0(f6332_local1, "W_FallHeavyLanding")
            elseif height > 2 then
                f6332_local0 = EnemyCommon
                local f6332_local1 = f6332_local0
                f6332_local0 = f6332_local0.ExecEvent
                f6332_local0(f6332_local1, "W_FallLanding")
            else
                f6332_local0 = EnemyCommon
                local f6332_local1 = f6332_local0
                f6332_local0 = f6332_local0.ExecEvent
                f6332_local0(f6332_local1, "W_Idle")
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
    local f6334_local0 = EnemyCommon
    local f6334_local1 = f6334_local0
    f6334_local0 = f6334_local0.CheckOrder
    f6334_local0(f6334_local1)
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
