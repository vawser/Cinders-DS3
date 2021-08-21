RegisterTableGoal(GOAL_Woof_803000_Battle, "GOAL_Woof_803000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Woof_803000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12012)

    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local curEnemyDist = arg1:GetDist(TARGET_ENE_0)
    local randomInteger = arg1:GetRandam_Int(1, 100)
    local isDoAdmirer = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local curEventRequest = arg1:GetEventRequest()
    
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 6 <= curEnemyDist then
            actChanceList[11] = 0
            actChanceList[20] = 100
        elseif 2 <= curEnemyDist then
            actChanceList[11] = 30
            actChanceList[20] = 70
        else
            actChanceList[11] = 50
            actChanceList[20] = 50
        end
    elseif 7 <= curEnemyDist then
        actChanceList[1] = 0
        actChanceList[2] = 5
        actChanceList[3] = 40
        actChanceList[4] = 5
        actChanceList[5] = 20
        actChanceList[6] = 20
        actChanceList[7] = 0
        actChanceList[10] = 10
        actChanceList[11] = 0
    elseif 4 <= curEnemyDist then
        actChanceList[1] = 10
        actChanceList[2] = 20
        actChanceList[3] = 30
        actChanceList[4] = 30
        actChanceList[5] = 0
        actChanceList[6] = 0
        actChanceList[7] = 0
        actChanceList[10] = 10
        actChanceList[11] = 0
    elseif 2 <= curEnemyDist then
        actChanceList[1] = 20
        actChanceList[2] = 40
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 0
        actChanceList[6] = 0
        actChanceList[7] = 20
        actChanceList[10] = 10
        actChanceList[11] = 10
    else
        actChanceList[1] = 30
        actChanceList[2] = 20
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 0
        actChanceList[6] = 0
        actChanceList[7] = 20
        actChanceList[10] = 0
        actChanceList[11] = 30
    end
    actChanceList[3] = SetCoolTime(arg1, arg2, 3005, 10, actChanceList[3], 0)
    actChanceList[7] = SetCoolTime(arg1, arg2, 3010, 10, actChanceList[7], 0)
    actChanceList[7] = SetCoolTime(arg1, arg2, 3011, 10, actChanceList[7], 0)
    actChanceList[11] = SetCoolTime(arg1, arg2, 6002, 5, actChanceList[11], 0)
    actChanceList[11] = SetCoolTime(arg1, arg2, 6003, 5, actChanceList[11], 0)
    actFuncList[1] = REGIST_FUNC(arg1, arg2, Woof_803000_Act01)
    actFuncList[2] = REGIST_FUNC(arg1, arg2, Woof_803000_Act02)
    actFuncList[3] = REGIST_FUNC(arg1, arg2, Woof_803000_Act03)
    actFuncList[4] = REGIST_FUNC(arg1, arg2, Woof_803000_Act04)
    actFuncList[5] = REGIST_FUNC(arg1, arg2, Woof_803000_Act05)
    actFuncList[6] = REGIST_FUNC(arg1, arg2, Woof_803000_Act06)
    actFuncList[7] = REGIST_FUNC(arg1, arg2, Woof_803000_Act07)
    actFuncList[10] = REGIST_FUNC(arg1, arg2, Woof_803000_Act10)
    actFuncList[11] = REGIST_FUNC(arg1, arg2, Woof_803000_Act11)
    actFuncList[20] = REGIST_FUNC(arg1, arg2, Woof_803000_Act20)
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, Woof_803000_ActAfter_AdjustSpace), actTblList)
    return 
end

function Woof_803000_Act01(arg0, arg1, arg2)
    local actChanceList = 2.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList = 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actTblList = 3000
    if actFuncList < arg0:GetDist(TARGET_ENE_0) then
        actChanceList = actChanceList + 1
        actTblList = 3007
    end
    Approach_Act_Flex(arg0, arg1, actChanceList, 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0, actFuncList, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actTblList, TARGET_ENE_0, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    if arg0:GetRandam_Int(1, 100) < 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Woof_803000_Act02(arg0, arg1, arg2)
    local actChanceList = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actTblList = 3002
    if actFuncList < arg0:GetDist(TARGET_ENE_0) then
        actChanceList = actChanceList + 1
        actTblList = 3003
    end
    Approach_Act_Flex(arg0, arg1, actChanceList, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0, actFuncList, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actTblList, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Woof_803000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Woof_803000_Act04(arg0, arg1, arg2)
    local actChanceList = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actTblList = 3008
    if actFuncList <= arg0:GetDist(TARGET_ENE_0) then
        actChanceList = actChanceList + 1
        actTblList = 3009
    end
    Approach_Act_Flex(arg0, arg1, actChanceList, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, actFuncList, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actTblList, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Woof_803000_Act05(arg0, arg1, arg2)
    local actChanceList = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    if actFuncList < arg0:GetDist(TARGET_ENE_0) then
        actChanceList = actChanceList + 1
    end
    Approach_Act_Flex(arg0, arg1, actChanceList, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, actFuncList, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Woof_803000_Act06(arg0, arg1, arg2)
    local actChanceList = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList = 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    if actFuncList < arg0:GetDist(TARGET_ENE_0) then
        actChanceList = actChanceList + 1
    end
    Approach_Act_Flex(arg0, arg1, actChanceList, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0, actFuncList, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Woof_803000_Act07(arg0, arg1, arg2)
    local actChanceList = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList = 0
    local actTblList = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, actChanceList, actFuncList, actTblList, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, actChanceList, actFuncList, actTblList, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Woof_803000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), 6, TARGET_SELF, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Woof_803000_Act11(arg0, arg1, arg2)
    if InsideRange(arg0, arg1, 90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    elseif InsideRange(arg0, arg1, -90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Woof_803000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Woof_803000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Woof_803000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 12012 then
        arg2:ClearSubGoal()
        Woof_803000_Act03(arg1, arg2, paramTbl)
        return true
    else
        return 
    end
end

RegisterTableGoal(GOAL_Woof_803000_AfterAttackAct, "GOAL_Woof_803000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Woof_803000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local actChanceList = arg1:GetDist(TARGET_ENE_0)
    local actFuncList = arg1:GetRandam_Int(1, 100)
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if actChanceList <= 1.5 then
            if actFuncList <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif actFuncList <= 55 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            end
        elseif actChanceList <= 3 and actFuncList <= 25 then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if actChanceList <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(1, 1.5), TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if actChanceList <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(1, 1.5), TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        end
    else
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 999, TARGET_SELF, false, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
