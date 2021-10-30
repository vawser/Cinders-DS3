function ()
local TRUE = 1
local FALSE = 0
local g_FrameCount = 0
local Wolf = nil
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
        hkbSetVariable("DebugFloat" .. f1405_local0, buff[f1405_local0])
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
    local f1407_local0 = {}
    SETFIELD_R1 2 0 0
    f1407_local0.Frame = frame
    return f1407_local0
    
end

Enemy = {}
Enemy.New = function ()
    local f1408_local0 = {}
    SETFIELD_R1 0 0 -1
    f1408_local0.Events = {}
    f1408_local0.OrderAttack = REG4294967292
    f1408_local0.OrderAttackCancel = REG4294967292
    f1408_local0.OrderAttackCombo = REG4294967292
    f1408_local0.OrderStep = REG4294967292
    f1408_local0.OrderStepCancel = REG4294967292
    f1408_local0.OrderCallEnemy = REG4294967292
    f1408_local0.DamageState = REG4294967292
    f1408_local0.DamageDirection = REG4294967292
    f1408_local0.DamageType = REG4294967292
    f1408_local0.IsThrowed = FALSE
    f1408_local0.IsFall = FALSE
    f1408_local0.IsDeath = FALSE
    f1408_local0.IsFalling = FALSE
    f1408_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967278
    local f1408_local1 = setmetatable
    local f1408_local2 = f1408_local0
    local f1408_local3 = {}
    f1408_local3.__index = Enemy
    f1408_local1(f1408_local2, f1408_local3)
    return f1408_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f1409_local0 = self.Events
    local f1409_local1 = self.Count
    f1409_local0[f1409_local1] = Events.New(state, g_FrameCount)
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
        local f1411_local0 = act
        f1411_local0(102, 0)
        local f1411_local1 = self
        f1411_local0 = self.ExecEvent
        f1411_local0(f1411_local1, "W_Attack" .. self.OrderAttack)
        self.OrderAttack = REG4294967287
        f1411_local0 = TRUE
        return f1411_local0
    end
    return FALSE
    
end

Enemy.AttackCancel = function (self)
    if self.OrderAttackCancel > 3000 then
        local f1412_local0 = act
        f1412_local0(102, 0)
        self.OrderAttackCancel = REG4294967289
        local f1412_local1 = self
        f1412_local0 = self.ExecEvent
        f1412_local0(f1412_local1, "W_Attack" .. self.OrderAttack)
        f1412_local0 = TRUE
        return f1412_local0
    end
    return FALSE
    
end

Enemy.AttackCombo = function (self)
    if self.OrderAttackCombo > 3000 then
        act(132)
        local f1413_local0 = act
        f1413_local0(102, 0)
        local f1413_local1 = self
        f1413_local0 = self.ExecEvent
        f1413_local0(f1413_local1, "W_Attack" .. self.OrderAttack)
        self.OrderAttackCombo = REG4294967285
        f1413_local0 = TRUE
        return f1413_local0
    end
    return FALSE
    
end

Enemy.AttackStep = function (self)
    if 700 <= self.OrderStep and self.OrderStep <= 723 then
        act(132)
        act(102, 0)
        if self.OrderStep == 701 then
            local f1414_local0 = self
            self.ExecEvent(f1414_local0, "W_StepBack")
        else
            local f1414_local1 = self.OrderStep
            if f1414_local1 == 702 then
                local f1414_local0 = self
                self.ExecEvent(f1414_local0, "W_StepLeft")
            else
                f1414_local1 = self.OrderStep
                if f1414_local1 == 703 then
                    local f1414_local0 = self
                    self.ExecEvent(f1414_local0, "W_StepRight")
                end
            end
        end
        return TRUE
    end
    return FALSE
    
end

Enemy.MoveStart = function (self)
    if math.abs(hkbGetVariable("MoveAngle")) < 45 then
        if hkbGetVariable("MoveSpeedLevel") > 0.5 then
            local f1415_local0 = hkbSetVariable
            f1415_local0("MoveState", 1)
            local f1415_local1 = self
            f1415_local0 = self.ExecEvent
            f1415_local0(f1415_local1, "W_Run")
        else
            local f1415_local0 = hkbGetVariable("MoveSpeedLevel")
            if f1415_local0 >= 0.10000000149011612 then
                f1415_local0 = hkbSetVariable
                f1415_local0("MoveState", 0)
                local f1415_local1 = self
                f1415_local0 = self.ExecEvent
                f1415_local0(f1415_local1, "W_Walk")
            end
        end
    else
        local f1415_local1 = self
        self.ExecEvent(f1415_local1, "W_SideWalk")
    end
    
end

Enemy.MoveUpdate = function (self)
    local speed = hkbGetVariable("MoveSpeedLevel")
    if speed <= 0 then
        local f1416_local0 = self
        self.ExecEvent(f1416_local0, "W_Idle")
    else
        local state = hkbGetVariable("MoveState")
        if state == 0 then
            if speed > 0.5 then
                local f1416_local0 = hkbSetVariable
                f1416_local0("MoveState", 1)
                local f1416_local1 = self
                f1416_local0 = self.ExecEvent
                f1416_local0(f1416_local1, "W_Run")
            end
        elseif state == 1 and speed <= 0.5 then
            local f1416_local0 = hkbSetVariable
            f1416_local0("MoveState", 0)
            local f1416_local1 = self
            f1416_local0 = self.ExecEvent
            f1416_local0(f1416_local1, "W_Walk")
        end
    end
    
end

Enemy.Damge = function (self)
    if not (self.IsDeath ~= FALSE or env(ESD_ENV_GetHP) > 0) or DamageType == 2 then
        self.IsDeath = TRUE
        local f1417_local0 = self
        self.ExecEvent(f1417_local0, "W_DeathDamage")
    elseif self.DamageState >= 1 then
        self.DamageDirection = env(ESD_ENV_GetReceivedDamageDirection)
        hkbSetVariable("DamageState", self.DamageState - 1)
        local f1417_local1 = hkbSetVariable
        f1417_local1("DamageDirection", self.DamageDirection)
        local f1417_local0 = self
        f1417_local1 = self.ExecEvent
        f1417_local1(f1417_local0, "W_Damage")
    end
    
end

Enemy.Throwed = function (self)
    if self.IsThrowed == TRUE then
        if env(ESD_ENV_GetHP) <= 0 then
            local f1418_local0 = self
            self.ExecEvent(f1418_local0, "W_ThrowDeath")
        else
            local f1418_local0 = self
            self.ExecEvent(f1418_local0, "W_ThrowDefault")
        end
        return TRUE
    end
    return FALSE
    
end

Enemy.Fall = function (self)
    if self.IsFall == TRUE then
        local f1419_local0 = self
        self.ExecEvent(f1419_local0, "W_FallBase")
        return TRUE
    end
    return FALSE
    
end

Enemy.CallHelp = function (self)
    if self.OrderCallEnemy > 0 then
        local f1420_local0 = self
        self.ExecEvent(f1420_local0, "W_CallHelp")
        return TRUE
    end
    return FALSE
    
end

function Idle_onActivate()
    act(102, TRUE)
    
end

function Idle_onUpdate()
    local f1422_local0 = Wolf
    local f1422_local1 = f1422_local0
    f1422_local0 = f1422_local0.Throwed
    f1422_local0 = f1422_local0(f1422_local1)
    if f1422_local0 == TRUE then
        return 
    end
    f1422_local0 = Wolf
    f1422_local1 = f1422_local0
    f1422_local0 = f1422_local0.Attack
    f1422_local0 = f1422_local0(f1422_local1)
    if f1422_local0 == TRUE then
        return 
    end
    f1422_local0 = Wolf
    f1422_local1 = f1422_local0
    f1422_local0 = f1422_local0.AttackStep
    f1422_local0 = f1422_local0(f1422_local1)
    if f1422_local0 == TRUE then
        return 
    end
    f1422_local0 = Wolf
    f1422_local1 = f1422_local0
    f1422_local0 = f1422_local0.Damge
    f1422_local0 = f1422_local0(f1422_local1)
    if f1422_local0 == TRUE then
        return 
    end
    f1422_local0 = Wolf
    f1422_local1 = f1422_local0
    f1422_local0 = f1422_local0.Fall
    f1422_local0 = f1422_local0(f1422_local1)
    if f1422_local0 == TRUE then
        return 
    end
    f1422_local0 = Wolf
    f1422_local1 = f1422_local0
    f1422_local0 = f1422_local0.CallHelp
    f1422_local0 = f1422_local0(f1422_local1)
    if f1422_local0 == TRUE then
        return 
    end
    f1422_local0 = Wolf
    f1422_local1 = f1422_local0
    f1422_local0 = f1422_local0.MoveStart
    f1422_local0(f1422_local1)
    
end

function Move_onUpdate()
    local f1423_local0 = Wolf
    local f1423_local1 = f1423_local0
    f1423_local0 = f1423_local0.Attack
    f1423_local0 = f1423_local0(f1423_local1)
    if f1423_local0 == TRUE then
        return 
    end
    f1423_local0 = Wolf
    f1423_local1 = f1423_local0
    f1423_local0 = f1423_local0.AttackStep
    f1423_local0 = f1423_local0(f1423_local1)
    if f1423_local0 == TRUE then
        return 
    end
    f1423_local0 = Wolf
    f1423_local1 = f1423_local0
    f1423_local0 = f1423_local0.Damge
    f1423_local0 = f1423_local0(f1423_local1)
    if f1423_local0 == TRUE then
        return 
    end
    f1423_local0 = Wolf
    f1423_local1 = f1423_local0
    f1423_local0 = f1423_local0.Fall
    f1423_local0 = f1423_local0(f1423_local1)
    if f1423_local0 == TRUE then
        return 
    end
    f1423_local0 = Wolf
    f1423_local1 = f1423_local0
    f1423_local0 = f1423_local0.MoveUpdate
    f1423_local0(f1423_local1)
    
end

function SideWalk_onUpdate()
    if hkbGetVariable("MoveSpeedLevel") <= 0 then
        local f1424_local0 = Wolf
        local f1424_local1 = f1424_local0
        f1424_local0 = f1424_local0.ExecEvent
        f1424_local0(f1424_local1, "W_Idle")
    end
    IncNum(1)
    if math.abs(hkbGetVariable("MoveAngle")) < 45 then
        IncNum(2)
        if hkbGetVariable("MoveSpeedLevel") > 0.5 then
            IncNum(3)
            hkbSetVariable("MoveState", 1)
            local f1424_local0 = self
            local f1424_local1 = f1424_local0
            f1424_local0 = f1424_local0.ExecEvent
            f1424_local0(f1424_local1, "W_Run")
        elseif hkbGetVariable("MoveSpeedLevel") >= 0.10000000149011612 then
            IncNum(4)
            hkbSetVariable("MoveState", 0)
            local f1424_local0 = self
            local f1424_local1 = f1424_local0
            f1424_local0 = f1424_local0.ExecEvent
            f1424_local0(f1424_local1, "W_Walk")
        else
            IncNum(5)
        end
    else
        IncNum(6)
    end
    
end

function Attack_onUpdate()
    local f1425_local0 = Wolf
    local f1425_local1 = f1425_local0
    f1425_local0 = f1425_local0.AttackCancel
    f1425_local0(f1425_local1)
    f1425_local0 = Wolf
    f1425_local1 = f1425_local0
    f1425_local0 = f1425_local0.AttackCombo
    f1425_local0(f1425_local1)
    f1425_local0 = Wolf
    f1425_local1 = f1425_local0
    f1425_local0 = f1425_local0.Fall
    f1425_local0 = f1425_local0(f1425_local1)
    if f1425_local0 == TRUE then
        return 
    end
    f1425_local0 = Wolf
    f1425_local1 = f1425_local0
    f1425_local0 = f1425_local0.Damge
    f1425_local0 = f1425_local0(f1425_local1)
    if f1425_local0 == TRUE then
        return 
    end
    
end

function Step_onUpdate()
    local f1426_local0 = Wolf
    local f1426_local1 = f1426_local0
    f1426_local0 = f1426_local0.Damge
    f1426_local0 = f1426_local0(f1426_local1)
    if f1426_local0 == TRUE then
        return 
    end
    f1426_local0 = Wolf
    f1426_local1 = f1426_local0
    f1426_local0 = f1426_local0.Fall
    f1426_local0 = f1426_local0(f1426_local1)
    if f1426_local0 == TRUE then
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
        local f1431_local0 = Wolf
        local f1431_local1 = f1431_local0
        f1431_local0 = f1431_local0.ExecEvent
        f1431_local0(f1431_local1, "W_DeathIdle")
    end
    
end

function Fall_onActivate()
    Wolf.IsFalling = TRUE
    
end

function Fall_onUpdate()
    local height = env(ESD_ENV_GetFallHeight) / 100
    if Wolf.IsFalling == TRUE then
        local f1433_local0 = env(ESD_ENV_IsLanding)
        if f1433_local0 == TRUE then
            f1433_local0 = Wolf
            f1433_local0.IsFalling = FALSE
            if height > 20 then
                f1433_local0 = Wolf
                local f1433_local1 = f1433_local0
                f1433_local0 = f1433_local0.ExecEvent
                f1433_local0(f1433_local1, "W_FallDeath")
            elseif height > 5 then
                f1433_local0 = Wolf
                local f1433_local1 = f1433_local0
                f1433_local0 = f1433_local0.ExecEvent
                f1433_local0(f1433_local1, "W_FallHeavyLanding")
            elseif height > 2 then
                f1433_local0 = Wolf
                local f1433_local1 = f1433_local0
                f1433_local0 = f1433_local0.ExecEvent
                f1433_local0(f1433_local1, "W_FallLanding")
            else
                f1433_local0 = Wolf
                local f1433_local1 = f1433_local0
                f1433_local0 = f1433_local0.ExecEvent
                f1433_local0(f1433_local1, "W_Idle")
            end
            return 
        end
    end
    
end

function initialize()
    Wolf = Enemy.New()
    
end

function main()
    local f1435_local0 = Wolf
    local f1435_local1 = f1435_local0
    f1435_local0 = f1435_local0.CheckOrder
    f1435_local0(f1435_local1)
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
