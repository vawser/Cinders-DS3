RegisterTableGoal(GOAL_Praxos_Archer_Battle, "GOAL_Praxos_Archer_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Praxos_Archer_Battle, true)

Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    if InsideDir(arg1, arg2, 180, 270) then
        actChanceList[20] = 100
    elseif 10 <= arg1:GetDist(TARGET_ENE_0) then
        actChanceList[1] = 80
    else
        actChanceList[1] = 80
    end
    actFuncList[1] = REGIST_FUNC(arg1, arg2, Praxos_Archer_Act01)
    actFuncList[2] = REGIST_FUNC(arg1, arg2, Praxos_Archer_Act02)
    actFuncList[20] = REGIST_FUNC(arg1, arg2, Praxos_Archer_Act20)
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, Praxos_Archer_ActAfter_AdjustSpace), actTblList)
    return 
end

function Praxos_Archer_Act01(arg0, arg1, arg2)
    local actChanceList = 3000
    local actFuncList = 3001
    local actTblList = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 1.5
    local local4 = 60
    
    if arg0:GetRandam_Int(1, 100) <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actTblList, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, 50 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, Attack3, TARGET_ENE_0, actTblList, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Archer_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Archer_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Praxos_Archer_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Praxos_Archer_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

RegisterTableGoal(GOAL_Praxos_Archer_AfterAttackAct, "GOAL_Praxos_Archer_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Praxos_Archer_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local actChanceList = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 999)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 10 <= arg1:GetDist(TARGET_ENE_0) then
        arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(1, 2))
    else
        arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(0, 1))
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
