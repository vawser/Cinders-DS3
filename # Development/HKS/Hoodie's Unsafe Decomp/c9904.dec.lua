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

function ChangeLadderHand()
    SetVariable("IndexLadderHand", (hkbGetVariable("IndexLadderHand") + 1) % 2)
    
end

function SetLadderCondition(condition, flag)
    if flag == TRUE then
        condition = condition + hkbGetVariable("IndexLadderHand")
    end
    act(133, condition)
    
end

function SendLadderCommand()
    return 
    if g_LadderFireCommand ~= LADDER_COMMAND_INVALID then
        act(108, g_LadderFireCommand)
        if g_LadderFireCommand == LADDER_COMMAND_UP then

        else

        end
    end
    
end

function UpdateLadderState()
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == FALSE then
        local action_type = env(ESD_ENV_GetAIActionType)
        if action_type <= 0 then
            return FALSE
        end
        SendLadderCommand()
        if action_type == LADDER_REQUEST_UP then
            if env(ESD_ENV_IsReachTopOfLadder) == TRUE then
                ExecEvent("W_LadderEndTop")
                CallActionState(LADDER_STATE_DEFAULT)
                return TRUE
            else
                ChangeLadderHand()
                g_LadderFireCommand = LADDER_COMMAND_UP
                ExecEvent("W_LadderUp")
                CallActionState(LADDER_STATE_DEFAULT)
                return TRUE
            end
        elseif action_type == LADDER_REQUEST_DOWN then
            if env(ESD_ENV_IsReachBottomOfLadder) == TRUE then
                ExecEvent("W_LadderEndBottom")
                CallActionState(LADDER_STATE_DEFAULT)
                return TRUE
            else
                ChangeLadderHand()
                g_LadderFireCommand = LADDER_COMMAND_DOWN
                ExecEvent("W_LadderDown")
                CallActionState(LADDER_STATE_DEFAULT)
                return TRUE
            end
        end
    end
    return FALSE
    
end

function LadderIdle_onActivate()
    SendLadderCommand()
    g_LadderFireCommand = LADDER_COMMAND_INVALID
    SetLadderCondition(LADDER_CONDITION_IDLE_RIGHT, TRUE)
    
end

function LadderIdle_onUpdate()
    CallActionState(LADDER_STATE_IDLE)
    if UpdateLadderState() == TRUE then
        return 
    end
    
end

function LadderUp_onActivate()
    SetLadderCondition(LADDER_CONDITION_ATTACK_UP_RIGHT, TRUE)
    
end

function LadderUp_onUpdate()
    CallActionState(LADDER_STATE_UP)
    UpdateLadderState()
    
end

function LadderDown_onActivate()
    SetLadderCondition(LADDER_CONDITION_ATTACK_DOWN_RIGHT, TRUE)
    
end

function LadderDown_onUpdate()
    CallActionState(LADDER_STATE_DOWN)
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
