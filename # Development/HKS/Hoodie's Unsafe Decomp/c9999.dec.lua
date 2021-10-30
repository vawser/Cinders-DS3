function ()
function Idle_onActivate()
    SetIdleFlag()
    env(133, -1)
    
end

function Idle_onUpdate()
    IdleCommonFunction()
    
end

function Idle_onDeactivate()
    act(102, 255)
    act(111, TRUE)
    act(101, FALSE)
    
end

function GuardStart_onUpdate()
    GuardCommonTransFunction()
    
end

function GuardEnd_onUpdate()
    GuardCommonTransFunction()
    
end

function Move_Activate()
    SetIdleFlag()
    
end

function WalkFront_onUpdate()
    MoveCommonFunction()
    
end

function WalkBack_onUpdate()
    MoveCommonFunction()
    
end

function WalkLeft_onUpdate()
    MoveCommonFunction()
    
end

function WalkRight_onUpdate()
    MoveCommonFunction()
    
end

function Run_onUpdate()
    MoveCommonFunction()
    
end

function GuardStart_onUpdate()
    GuardCommonTransFunction()
    
end

function GuardEnd_onUpdate()
    GuardCommonTransFunction()
    
end

function Step700_onUpdate()
    StepCommonFunction()
    
end

function Step701_onUpdate()
    StepCommonFunction()
    
end

function Step702_onUpdate()
    StepCommonFunction()
    
end

function Step703_onUpdate()
    StepCommonFunction()
    
end

function Step711_onUpdate()
    StepCommonFunction()
    
end

function Turn_onUpdate()
    act(9104)
    
end

function DamageSmall_onUpdate()
    DamageCommonFunction()
    
end

function DamageMiddle_onUpdate()
    DamageCommonFunction()
    
end

function DamageLarge_onUpdate()
    DamageCommonFunction()
    
end

function DamageExLarge_onUpdate()
    DamageCommonFunction()
    
end

function DamagePushed_onUpdate()
    DamageCommonFunction()
    
end

function DamageDuster_onUpdate()
    DamageCommonFunction()
    
end

function DamageBlast_onUpdate()
    DamageCommonFunction()
    
end

function DamageParry_onUpdate()
    DamageCommonFunction()
    
end

function Fall_onUpdate()
    FallCommonFunction()
    
end

function Land_onUpdate()
    LandCommonFunction()
    
end

function LadderIdleLeft_onActivate()
    SendLadderCommand()
    g_LadderFireCommand = LADDER_COMMAND_INVALID
    SetLadderCondition(LADDER_CONDITION_IDLE_RIGHT, TRUE)
    
end

function LadderIdleLeft_onUpdate()
    CallActionState(LADDER_STATE_IDLE)
    if UpdateLadderState() == TRUE then
        return 
    end
    
end

function LadderIdleRight_onActivate()
    SendLadderCommand()
    g_LadderFireCommand = LADDER_COMMAND_INVALID
    SetLadderCondition(LADDER_CONDITION_IDLE_RIGHT, TRUE)
    
end

function LadderIdleRight_onUpdate()
    CallActionState(LADDER_STATE_IDLE)
    if UpdateLadderState() == TRUE then
        return 
    end
    
end

function LadderUpRight_onActivate()
    SetLadderCondition(LADDER_CONDITION_ATTACK_UP_RIGHT, FALSE)
    SetVariable("IndexLadderHand", 0)
    
end

function LadderUpRight_onUpdate()
    return 
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        CallActionState(LADDER_STATE_UP)
    else
        CallActionState(0)
    end
    UpdateLadderState()
    
end

function LadderUpLeft_onActivate()
    SetLadderCondition(LADDER_CONDITION_ATTACK_UP_RIGHT, FALSE)
    SetVariable("IndexLadderHand", 1)
    
end

function LadderUpLeft_onUpdate()
    return 
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        CallActionState(LADDER_STATE_UP)
    else
        CallActionState(0)
    end
    UpdateLadderState()
    
end

function LadderDownRight_onActivate()
    SetLadderCondition(LADDER_CONDITION_ATTACK_DOWN_RIGHT, FALSE)
    
end

function LadderDownRight_onUpdate()
    return 
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        CallActionState(LADDER_STATE_DOWN)
    else
        CallActionState(0)
    end
    UpdateLadderState()
    
end

function LadderDownLeft_onActivate()
    SetLadderCondition(LADDER_CONDITION_ATTACK_DOWN_RIGHT, FALSE)
    
end

function LadderDownLeft_onUpdate()
    return 
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        CallActionState(LADDER_STATE_DOWN)
    else
        CallActionState(0)
    end
    UpdateLadderState()
    
end

function LadderStartTop_onActivate()
    SetVariable("IndexLadderHand", LADDER_HAND_LEFT)
    SetLadderCondition(LADDER_CONDITION_START_TOP, FALSE)
    g_LadderFireCommand = LADDER_COMMAND_DOWN
    
end

function LadderStartBottom_onActivate()
    SetVariable("IndexLadderHand", LADDER_HAND_LEFT)
    SetLadderCondition(LADDER_CONDITION_START_BOTTOM, FALSE)
    g_LadderFireCommand = LADDER_COMMAND_UP
    
end

function LadderEndTop_onActivate()
    SetLadderCondition(LADDER_CONDITION_END_TOP, FALSE)
    
end

function LadderEndTop_onDeactivate()
    SetLadderCondition("LADDER_CONDITION_INVALID")
    
end

function LadderEndBottom_onActivate()
    SetLadderCondition(LADDER_CONDITION_END_BOTTOM, FALSE)
    
end

function AttackBlend_onUpdate()
    AttackCommonFunction()
    
end

function Attack3000_onUpdate()
    AttackCommonFunction()
    
end

function Attack3001_onUpdate()
    AttackCommonFunction()
    
end

function Attack3002_onUpdate()
    AttackCommonFunction()
    
end

function Attack3003_onUpdate()
    AttackCommonFunction()
    
end

function Attack3004_onUpdate()
    AttackCommonFunction()
    
end

function Attack3005_onUpdate()
    AttackCommonFunction()
    
end

function Attack3006_onUpdate()
    AttackCommonFunction()
    
end

function Attack3007_onUpdate()
    AttackCommonFunction()
    
end

function Attack3008_onUpdate()
    act(2001, hkbGetVariable("DistanceRate"))
    AttackCommonFunction()
    
end

function Attack3008_onDeactivate()
    SetVariable("DistanceRate", 1)
    
end

function Attack3009_onUpdate()
    AttackCommonFunction()
    
end

function Attack3010_onUpdate()
    AttackCommonFunction()
    
end

function Attack3011_onUpdate()
    AttackCommonFunction()
    
end

function Attack3020_onUpdate()
    AttackCommonFunction()
    
end

function Attack3021_onUpdate()
    AttackCommonFunction()
    
end

function EstStart_onUpdate()
    AttackCommonFunction()
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE and env(ESD_ENV_GetStateChangeType, 154) == TRUE then
        ExecEvent("W_EstFailure")
        return 
    end
    
end

function EstSuccess_onUpdate()
    AttackCommonFunction()
    
end

function EstFailure_onUpdate()
    AttackCommonFunction()
    
end

function Test_onUpdate()
    AttackCommonFunction()
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        hkbSetVariable("MotionSpeedRate", 0.009999999776482582)
    end
    
end

function ThrowAtk_onActivate()
    SetVariable("ThrowID", env(ESD_ENV_GetThrowAnimID))
    
end

function ThrowAtk_onDeactivate()
    act(135)
    act(139)
    
end

function ThrowDef_onActivate()
    SetVariable("ThrowID", env(ESD_ENV_GetThrowAnimID))
    
end

function ThrowDef_onUpdate()
    act(9102)
    CommonThrowDefFunction()
    
end

function ThrowDef_onDeactivate()
    act(135)
    act(139)
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
