g_LogicTable = {}
g_GoalTable = {}
Logic = nil
Goal = nil
function RegisterTableLogic(arg0)
    REGISTER_LOGIC_FUNC(arg0, "TableLogic_" .. arg0, "TableLogic_" .. arg0 .. "_Interrupt")
    Logic = {}
    g_LogicTable[REG0_0] = Logic
    return 
end

function RegisterTableGoal(arg0, arg1)
    REGISTER_GOAL(arg0, arg1)
    Goal = {}
    g_GoalTable[REG0_0] = Goal
    return 
end

function SetupScriptLogicInfo(arg0, arg1)
    local local0 = g_LogicTable[arg0]
    if local0 ~= nil then
        local local1 = _CreateInterruptTypeInfoTable(local0)
        local0["InterruptInfoTable"] = local1
        arg1:SetTableLogic(local0["Update"] ~= nil, _IsInterruptFuncExist(local1, local0))
    else
        arg1:SetNormalLogic()
    end
    return 
end

function SetupScriptGoalInfo(arg0, arg1)
    local local0 = g_GoalTable[arg0]
    if local0 ~= nil then
        local local1 = _CreateInterruptTypeInfoTable(local0)
        local0["InterruptInfoTable"] = local1
        arg1:SetTableGoal(local0["Update"] ~= nil, local0["Terminate"] ~= nil, _IsInterruptFuncExist(local1, local0), local0["Initialize"] ~= nil)
    else
        arg1:SetNormalGoal()
    end
    return 
end

function ExecTableLogic(arg0, arg1)
    local local0 = g_LogicTable[arg1]
    if local0 ~= nil then
        local local1 = local0["Main"]
        if local1 ~= nil then
            local1(local0, arg0)
        end
    end
    return 
end

function UpdateTableLogic(arg0, arg1)
    local local0 = g_LogicTable[arg1]
    if local0 ~= nil then
        local local1 = local0["Update"]
        if local1 ~= nil then
            local1(local0, arg0)
        end
    end
    return 
end

function InitializeTableGoal(arg0, arg1, arg2)
    local local0 = false
    local local1 = g_GoalTable[arg2]
    if local1 ~= nil then
        local local2 = local1["Initialize"]
        if local2 ~= nil then
            local2(local1, arg0, arg1, arg0:GetChangeBattleStateCount())
            local0 = true
        end
    end
    return local0
end

function ActivateTableGoal(arg0, arg1, arg2)
    local local0 = false
    local local1 = g_GoalTable[arg2]
    if local1 ~= nil then
        local local2 = local1["Activate"]
        if local2 ~= nil then
            local0 = local2(local1, arg0, arg1)
        end
    end
    return local0
end

function UpdateTableGoal(arg0, arg1, arg2)
    local local0 = GOAL_RESULT_Continue
    local local1 = g_GoalTable[arg2]
    if local1 ~= nil then
        local local2 = local1["Update"]
        if local2 ~= nil then
            local0 = local2(local1, arg0, arg1)
        end
    end
    return local0
end

function TerminateTableGoal(arg0, arg1, arg2)
    local local0 = false
    local local1 = g_GoalTable[arg2]
    if local1 ~= nil then
        local local2 = local1["Terminate"]
        if local2 ~= nil then
            local0 = local2(local1, arg0, arg1)
        end
    end
    return local0
end

function InterruptTableLogic(arg0, arg1, arg2, arg3)
    local local0 = false
    local local1 = g_LogicTable[arg2]
    if local1 ~= nil then
        local0 = _InterruptTableGoal_TypeCall(arg0, arg1, local1, arg3)
    end
    return local0
end

function InterruptTableGoal(arg0, arg1, arg2, arg3)
    local local0 = false
    local local1 = g_GoalTable[arg2]
    if local1 ~= nil then
        local0 = _InterruptTableGoal_TypeCall(arg0, arg1, local1, arg3)
    end
    return local0
end

function InterruptTableGoal_Common(arg0, arg1, arg2)
    local local0 = false
    local local1 = g_GoalTable[arg2]
    if local1 ~= nil and local1["Interrupt"] ~= nil then
        if local1:Interrupt(arg0, arg1) then
            local0 = true
        end
        if arg1:IsInterruptSubGoalChanged() then
            local0 = true
        end
    end
    return local0
end

function _IsInterruptFuncExist(arg0, arg1)
    local local0 = 1
    for local1 = INTERUPT_First - local0, INTERUPT_Last, local0 do
        local local2 = arg0[local1]
        if not local2["bEmpty"] then
            return true
        end
    end
    return false
end

function _InterruptTableGoal_TypeCall(arg0, arg1, arg2, arg3)
    local local0 = arg2["InterruptInfoTable"]
    local0 = local0[arg3]
    if local0.func(arg0, arg1, arg2) then
        return true
    else
        return false
    end
end

function _CreateInterruptTypeInfoTable(arg0)
    local local0 = {}
    local local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_FindEnemy"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_FindEnemy"] == nil
    local0[INTERUPT_FindEnemy] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_FindAttack"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_FindAttack"] == nil
    local0[INTERUPT_FindAttack] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_Damaged"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_Damaged"] == nil
    local0[INTERUPT_Damaged] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_Damaged_Stranger"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_Damaged_Stranger"] == nil
    local0[INTERUPT_Damaged_Stranger] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_FindMissile"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_FindMissile"] == nil
    local0[INTERUPT_FindMissile] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_SuccessGuard"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_SuccessGuard"] == nil
    local0[INTERUPT_SuccessGuard] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_MissSwing"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_MissSwing"] == nil
    local0[INTERUPT_MissSwing] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_GuardBegin"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_GuardBegin"] == nil
    local0[INTERUPT_GuardBegin] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_GuardFinish"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_GuardFinish"] == nil
    local0[INTERUPT_GuardFinish] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_GuardBreak"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_GuardBreak"] == nil
    local0[INTERUPT_GuardBreak] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_Shoot"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_Shoot"] == nil
    local0[INTERUPT_Shoot] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_ShootReady"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_ShootReady"] == nil
    local0[INTERUPT_ShootReady] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_UseItem"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_UseItem"] == nil
    local0[INTERUPT_UseItem] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_EnterBattleArea"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_EnterBattleArea"] == nil
    local0[INTERUPT_EnterBattleArea] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_LeaveBattleArea"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_LeaveBattleArea"] == nil
    local0[INTERUPT_LeaveBattleArea] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_CANNOT_MOVE"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_CANNOT_MOVE"] == nil
    local0[INTERUPT_CANNOT_MOVE] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_Inside_ObserveArea(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_Inside_ObserveArea"] == nil
    local0[INTERUPT_Inside_ObserveArea] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_ReboundByOpponentGuard"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_ReboundByOpponentGuard"] == nil
    local0[INTERUPT_ReboundByOpponentGuard] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_ForgetTarget"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_ForgetTarget"] == nil
    local0[INTERUPT_ForgetTarget] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_FriendRequestSupport"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_FriendRequestSupport"] == nil
    local0[INTERUPT_FriendRequestSupport] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_TargetIsGuard"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_TargetIsGuard"] == nil
    local0[INTERUPT_TargetIsGuard] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_HitEnemyWall"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_HitEnemyWall"] == nil
    local0[INTERUPT_HitEnemyWall] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_SuccessParry"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_SuccessParry"] == nil
    local0[INTERUPT_SuccessParry] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_CANNOT_MOVE_DisableInterupt"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_CANNOT_MOVE_DisableInterupt"] == nil
    local0[INTERUPT_CANNOT_MOVE_DisableInterupt] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_ParryTiming"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_ParryTiming"] == nil
    local0[INTERUPT_ParryTiming] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_RideNode_LadderBottom"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_RideNode_LadderBottom"] == nil
    local0[INTERUPT_RideNode_LadderBottom] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_FLAG_RideNode_Door"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_FLAG_RideNode_Door"] == nil
    local0[INTERUPT_FLAG_RideNode_Door] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_StraightByPath"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_StraightByPath"] == nil
    local0[INTERUPT_StraightByPath] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_ChangedAnimIdOffset"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_ChangedAnimIdOffset"] == nil
    local0[INTERUPT_ChangedAnimIdOffset] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_SuccessThrow"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_SuccessThrow"] == nil
    local0[INTERUPT_SuccessThrow] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_LookedTarget"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_LookedTarget"] == nil
    local0[INTERUPT_LookedTarget] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_LoseSightTarget"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_LoseSightTarget"] == nil
    local0[INTERUPT_LoseSightTarget] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_RideNode_InsideWall"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_RideNode_InsideWall"] == nil
    local0[INTERUPT_RideNode_InsideWall] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_MissSwingSelf"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_MissSwingSelf"] == nil
    local0[INTERUPT_MissSwingSelf] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_GuardBreakBlow"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_GuardBreakBlow"] == nil
    local0[INTERUPT_GuardBreakBlow] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_TargetOutOfRange(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_TargetOutOfRange"] == nil
    local0[INTERUPT_TargetOutOfRange] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_UnstableFloor"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_UnstableFloor"] == nil
    local0[INTERUPT_UnstableFloor] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_BreakFloor"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_BreakFloor"] == nil
    local0[INTERUPT_BreakFloor] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_BreakObserveObj"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_BreakObserveObj"] == nil
    local0[INTERUPT_BreakObserveObj] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_EventRequest"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_EventRequest"] == nil
    local0[INTERUPT_EventRequest] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_Outside_ObserveArea(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_Outside_ObserveArea"] == nil
    local0[INTERUPT_Outside_ObserveArea] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_TargetOutOfAngle(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_TargetOutOfAngle"] == nil
    local0[INTERUPT_TargetOutOfAngle] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_PlatoonAiOrder"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_PlatoonAiOrder"] == nil
    local0[INTERUPT_PlatoonAiOrder] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_ActivateSpecialEffect(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_ActivateSpecialEffect"] == nil
    local0[INTERUPT_ActivateSpecialEffect] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_InactivateSpecialEffect(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_InactivateSpecialEffect"] == nil
    local0[INTERUPT_InactivateSpecialEffect] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_MovedEnd_OnFailedPath"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_MovedEnd_OnFailedPath"] == nil
    local0[INTERUPT_MovedEnd_OnFailedPath] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_ChangeSoundTarget"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_ChangeSoundTarget"] == nil
    local0[INTERUPT_ChangeSoundTarget] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_OnCreateDamage"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_OnCreateDamage"] == nil
    local0[INTERUPT_OnCreateDamage] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_InvadeTriggerRegion(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_InvadeTriggerRegion"] == nil
    local0[INTERUPT_InvadeTriggerRegion] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_LeaveTriggerRegion(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_LeaveTriggerRegion"] == nil
    local0[INTERUPT_LeaveTriggerRegion] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_AIGuardBroken"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_AIGuardBroken"] == nil
    local0[INTERUPT_AIGuardBroken] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_AIReboundByOpponentGuard"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_AIReboundByOpponentGuard"] == nil
    local0[INTERUPT_AIReboundByOpponentGuard] = local1
    local1 = {}
    local1.func = function (arg0, arg1, arg2)
        local local0 = _GetInterruptFunc(arg2["Interrupt_BackstabRisk"])
        if local0(arg2, arg0, arg1) then
            return true
        elseif arg1:IsInterruptSubGoalChanged() then
            return true
        else
            return false
        end
    end

    local1["bEmpty"] = arg0["Interrupt_BackstabRisk"] == nil
    local0[INTERUPT_BackstabRisk] = local1
    return local0
end

function _GetInterruptFunc(arg0)
    if arg0 ~= nil then
        return arg0
    else
        return _InterruptTableGoal_TypeCall_Dummy
    end
end

function _InterruptTableGoal_TypeCall_Dummy()
    return false
end

function _InterruptTableGoal_TargetOutOfRange_Common(arg0, arg1, arg2, arg3, arg4)
    local local0 = false
    local local1 = 1
    for local2 = 0 - local1, 31, local1 do
        if arg3(local2) then
            local0 = true
            if arg4(arg0, arg1, arg2, local2) then
                return true
            end
        end
    end
    if bSlotEnable then
        return false
    else
        return arg4(arg0, arg1, arg2, -1)
    end
end

function _InterruptTableGoal_TargetOutOfRange(arg0, arg1, arg2)
    local local0 = arg0
    local local1 = arg1
    local local2 = arg2
    local local3 = function (arg0)
        local local0 = UPVAL0
        return local0:IsTargetOutOfRangeInterruptSlot(arg0)
    end

    local local4 = _GetInterruptFunc(arg1["Interrupt_TargetOutOfRange"])
    return _InterruptTableGoal_TargetOutOfRange_Common()
end

function _InterruptTableGoal_TargetOutOfAngle(arg0, arg1, arg2)
    local local0 = arg0
    local local1 = arg1
    local local2 = arg2
    local local3 = function (arg0)
        local local0 = UPVAL0
        return local0:IsTargetOutOfAngleInterruptSlot(arg0)
    end

    local local4 = _GetInterruptFunc(arg1["Interrupt_TargetOutOfAngle"])
    return _InterruptTableGoal_TargetOutOfRange_Common()
end

function _InterruptTableGoal_Inside_ObserveArea(arg0, arg1, arg2)
    local local0 = 1
    for local1 = 0 - local0, arg1:GetAreaObserveSlotNum(AI_AREAOBSERVE_INTERRUPT__INSIDE) - 1, local0 do
        local local2 = _GetInterruptFunc(arg0["Interrupt_Inside_ObserveArea"])
        if local2(arg0, arg1, arg2, arg1:GetAreaObserveSlot(AI_AREAOBSERVE_INTERRUPT__INSIDE, local1)) then
            return true
        end
    end
    return 
end

function _InterruptTableGoal_Outside_ObserveArea(arg0, arg1, arg2)
    local local0 = 1
    for local1 = 0 - local0, arg1:GetAreaObserveSlotNum(AI_AREAOBSERVE_INTERRUPT__OUTSIDE) - 1, local0 do
        local local2 = _GetInterruptFunc(arg0["Interrupt_Outside_ObserveArea"])
        if local2(arg0, arg1, arg2, arg1:GetAreaObserveSlot(AI_AREAOBSERVE_INTERRUPT__OUTSIDE, local1)) then
            return true
        end
    end
    return 
end

function _InterruptTableGoal_ActivateSpecialEffect(arg0, arg1, arg2)
    local local0 = 1
    for local1 = 0 - local0, arg1:GetSpecialEffectActivateInterruptNum() - 1, local0 do
        local local2 = _GetInterruptFunc(arg0["Interrupt_ActivateSpecialEffect"])
        if local2(arg0, arg1, arg2, arg1:GetSpecialEffectActivateInterruptType(local1)) then
            return true
        end
    end
    return 
end

function _InterruptTableGoal_InactivateSpecialEffect(arg0, arg1, arg2)
    local local0 = 1
    for local1 = 0 - local0, arg1:GetSpecialEffectInactivateInterruptNum() - 1, local0 do
        local local2 = _GetInterruptFunc(arg0["Interrupt_InactivateSpecialEffect"])
        if local2(arg0, arg1, arg2, arg1:GetSpecialEffectInactivateInterruptType(local1)) then
            return true
        end
    end
    return 
end

function _InterruptTableGoal_InvadeTriggerRegion(arg0, arg1, arg2)
    local local0 = 1
    for local1 = 0 - local0, arg1:GetInvadeTriggerRegionCategoryNum() - 1, local0 do
        local local2 = _GetInterruptFunc(arg0["Interrupt_InvadeTriggerRegion"])
        if local2(arg0, arg1, arg2, arg1:GetInvadeTriggerRegionCategory(local1)) then
            return true
        end
    end
    return 
end

function _InterruptTableGoal_LeaveTriggerRegion(arg0, arg1, arg2)
    local local0 = 1
    for local1 = 0 - local0, arg1:GetLeaveTriggerRegionCategoryNum() - 1, local0 do
        local local2 = _GetInterruptFunc(arg0["Interrupt_InvadeTriggerRegion"])
        if local2(arg0, arg1, arg2, arg1:GetLeaveTriggerRegionCategory(local1)) then
            return true
        end
    end
    return 
end

return 
