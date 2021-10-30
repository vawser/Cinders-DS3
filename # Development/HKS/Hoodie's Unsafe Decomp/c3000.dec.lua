function ()
local TRUE = 1
local FALSE = 0
local g_FrameCount = 0
BigSlim = nil
function IncVal(val)
    hkbSetVariable(val, hkbGetVariable(val) + 1)
    
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
    hkbSetVariable(str .. num, vector)
    
end

function DebugPrints(...)
    buff = {...}
    for , 1, #buff do
        hkbSetVariable("DebugFloat" .. f4216_local0, buff[f4216_local0])
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
    g_DebugCounter = g_DebugCounter + 1
    if g_DebugCounter > 10 then
        g_DebugCounter = 1
    end
    DebugPrint(g_DebugCounter, val)
    
end

Events = {}
Events.New = function (state, frame)
    local f4219_local0 = {}
    SETFIELD_R1 2 0 0
    f4219_local0.Frame = frame
    return f4219_local0
    
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
    local f4220_local0 = {}
    SETFIELD_R1 0 0 -1
    f4220_local0.Events = {}
    f4220_local0.State = STATE_IDLE
    f4220_local0.ActionNumber = REG4294967295
    f4220_local0.MAX_EVENTS_BUFFER_SIZE = REG4294967287
    local f4220_local1 = setmetatable
    local f4220_local2 = f4220_local0
    local f4220_local3 = {}
    f4220_local3.__index = Enemy
    f4220_local1(f4220_local2, f4220_local3)
    return f4220_local0
    
end

Enemy.ExecEvent = function (self, state)
    self.Count = self.Count + 1
    if self.MAX_EVENTS_BUFFER_SIZE < self.Count then
        self.Count = REG4294967295
    end
    local f4221_local0 = self.Events
    local f4221_local1 = self.Count
    f4221_local0[f4221_local1] = Events.New(state, g_FrameCount)
    hkbFireEvent(state)
    return 
    
end

Enemy.ExecAIAction = function (self)
    local action_type = env(ESD_ENV_GetAIActionType)
    if action_type <= 0 then
        return FALSE
    end
    return FALSE
    
end

Enemy.SetEventFlag = function (self)
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        act(9102)
        IncNum(1)
    else

    end
    
end

function Event7000_onUpdate()
    local f4224_local0 = BigSlim
    local f4224_local1 = f4224_local0
    f4224_local0 = f4224_local0.SetEventFlag
    f4224_local0(f4224_local1)
    
end

function Event200_onUpdate()
    local f4225_local0 = BigSlim
    local f4225_local1 = f4225_local0
    f4225_local0 = f4225_local0.SetEventFlag
    f4225_local0(f4225_local1)
    
end

function Event7000_onUpdate()
    local f4226_local0 = BigSlim
    local f4226_local1 = f4226_local0
    f4226_local0 = f4226_local0.SetEventFlag
    f4226_local0(f4226_local1)
    
end

function Event7001_onUpdate()
    local f4227_local0 = BigSlim
    local f4227_local1 = f4227_local0
    f4227_local0 = f4227_local0.SetEventFlag
    f4227_local0(f4227_local1)
    
end

function Event7002_onUpdate()
    local f4228_local0 = BigSlim
    local f4228_local1 = f4228_local0
    f4228_local0 = f4228_local0.SetEventFlag
    f4228_local0(f4228_local1)
    
end

function Event7003_onUpdate()
    local f4229_local0 = BigSlim
    local f4229_local1 = f4229_local0
    f4229_local0 = f4229_local0.SetEventFlag
    f4229_local0(f4229_local1)
    f4229_local0 = hkbSetVariable
    f4229_local0("FreezeRateReal", 1 - hkbGetVariable("FreezeRate"))
    
end

function Event7004_onUpdate()
    local f4230_local0 = BigSlim
    local f4230_local1 = f4230_local0
    f4230_local0 = f4230_local0.SetEventFlag
    f4230_local0(f4230_local1)
    
end

function Event7005_onUpdate()
    local f4231_local0 = BigSlim
    local f4231_local1 = f4231_local0
    f4231_local0 = f4231_local0.SetEventFlag
    f4231_local0(f4231_local1)
    
end

function Event7006_onUpdate()
    local f4232_local0 = BigSlim
    local f4232_local1 = f4232_local0
    f4232_local0 = f4232_local0.SetEventFlag
    f4232_local0(f4232_local1)
    
end

function Event7007_onUpdate()
    local f4233_local0 = BigSlim
    local f4233_local1 = f4233_local0
    f4233_local0 = f4233_local0.SetEventFlag
    f4233_local0(f4233_local1)
    
end

function Event9000_onUpdate()
    if env(ESD_ENV_GetDamageLevel) > 0 then
        local f4234_local0 = env(ESD_ENV_GetSpecialAttribute)
        if f4234_local0 == 2 then
            f4234_local0 = BigSlim
            local f4234_local1 = f4234_local0
            f4234_local0 = f4234_local0.ExecEvent
            f4234_local0(f4234_local1, "W_Event7006")
        end
    end
    local f4234_local0 = BigSlim
    local f4234_local1 = f4234_local0
    f4234_local0 = f4234_local0.SetEventFlag
    f4234_local0(f4234_local1)
    
end

function Event9001_onUpdate()
    if env(ESD_ENV_GetDamageLevel) > 0 then
        local f4235_local0 = env(ESD_ENV_GetSpecialAttribute)
        if f4235_local0 == 2 then
            f4235_local0 = BigSlim
            local f4235_local1 = f4235_local0
            f4235_local0 = f4235_local0.ExecEvent
            f4235_local0(f4235_local1, "W_Event7007")
        end
    end
    local f4235_local0 = BigSlim
    local f4235_local1 = f4235_local0
    f4235_local0 = f4235_local0.SetEventFlag
    f4235_local0(f4235_local1)
    
end

function Event9006_onUpdate()
    local f4236_local0 = BigSlim
    local f4236_local1 = f4236_local0
    f4236_local0 = f4236_local0.SetEventFlag
    f4236_local0(f4236_local1)
    
end

function Event7008_onUpdate()
    local f4237_local0 = BigSlim
    local f4237_local1 = f4237_local0
    f4237_local0 = f4237_local0.SetEventFlag
    f4237_local0(f4237_local1)
    
end

function Event7009_onUpdate()
    local f4238_local0 = BigSlim
    local f4238_local1 = f4238_local0
    f4238_local0 = f4238_local0.SetEventFlag
    f4238_local0(f4238_local1)
    
end

function Event7010_onUpdate()
    local f4239_local0 = BigSlim
    local f4239_local1 = f4239_local0
    f4239_local0 = f4239_local0.SetEventFlag
    f4239_local0(f4239_local1)
    f4239_local0 = hkbSetVariable
    f4239_local0("FreezeRateReal", 1 - hkbGetVariable("FreezeRate"))
    
end

function Event7011_onUpdate()
    local f4240_local0 = BigSlim
    local f4240_local1 = f4240_local0
    f4240_local0 = f4240_local0.SetEventFlag
    f4240_local0(f4240_local1)
    f4240_local0 = hkbSetVariable
    f4240_local0("FreezeRateReal", 1 - hkbGetVariable("FreezeRate"))
    
end

function Event7012_onUpdate()
    local f4241_local0 = BigSlim
    local f4241_local1 = f4241_local0
    f4241_local0 = f4241_local0.SetEventFlag
    f4241_local0(f4241_local1)
    
end

function Event7013_onUpdate()
    local f4242_local0 = BigSlim
    local f4242_local1 = f4242_local0
    f4242_local0 = f4242_local0.SetEventFlag
    f4242_local0(f4242_local1)
    
end

function Event7014_onUpdate()
    local f4243_local0 = BigSlim
    local f4243_local1 = f4243_local0
    f4243_local0 = f4243_local0.SetEventFlag
    f4243_local0(f4243_local1)
    
end

function Event7015_onUpdate()
    local f4244_local0 = BigSlim
    local f4244_local1 = f4244_local0
    f4244_local0 = f4244_local0.SetEventFlag
    f4244_local0(f4244_local1)
    
end

function Event7016_onUpdate()
    local f4245_local0 = BigSlim
    local f4245_local1 = f4245_local0
    f4245_local0 = f4245_local0.SetEventFlag
    f4245_local0(f4245_local1)
    
end

function Event7017_onUpdate()
    local f4246_local0 = BigSlim
    local f4246_local1 = f4246_local0
    f4246_local0 = f4246_local0.SetEventFlag
    f4246_local0(f4246_local1)
    
end

function Event7018_onUpdate()
    local f4247_local0 = BigSlim
    local f4247_local1 = f4247_local0
    f4247_local0 = f4247_local0.SetEventFlag
    f4247_local0(f4247_local1)
    
end

function Event7019_onUpdate()
    local f4248_local0 = BigSlim
    local f4248_local1 = f4248_local0
    f4248_local0 = f4248_local0.SetEventFlag
    f4248_local0(f4248_local1)
    
end

function Event7020_onUpdate()
    local f4249_local0 = BigSlim
    local f4249_local1 = f4249_local0
    f4249_local0 = f4249_local0.SetEventFlag
    f4249_local0(f4249_local1)
    
end

function Initialize()
    BigSlim = Enemy.New()
    
end

function Main()
     = g_FrameCount + 1
    if g_FrameCount > 999999 then
         = 0
    end
    local event_id = env(ESD_ENV_GetCommandIDFromEvent, 1)
    if event_id >= 1000 and event_id <= 1999 then
        hkbSetVariable("StartOffset", (event_id - 1000) / 30)
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
