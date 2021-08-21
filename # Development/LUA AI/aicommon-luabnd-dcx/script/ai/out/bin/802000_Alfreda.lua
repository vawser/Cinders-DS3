RegisterTableGoal(GOAL_Alfreda_802000_Battle, "GOAL_Alfreda_802000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Alfreda_802000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local curEnemyDist = arg1:GetDist(TARGET_ENE_0)
    local randomInteger = arg1:GetRandam_Int(1, 100)
    local isDoAdmirer = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local curEventRequest = arg1:GetEventRequest()
    
    if isDoAdmirer == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 24130) then
            actChanceList[8] = 30
        end
        actChanceList[10] = 60
        actChanceList[11] = 40
    elseif isDoAdmirer == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 24130) then
            actChanceList[8] = 30
        end
        actChanceList[9] = 5
        actChanceList[10] = 55
        actChanceList[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        actChanceList[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 24130) then
        if arg1:GetNumber(10) == 2 then
            actChanceList[8] = 100
        elseif 11 <= curEnemyDist then
            actChanceList[1] = 30
            actChanceList[2] = 30
            actChanceList[3] = 80
            actChanceList[5] = 0
            actChanceList[7] = 100
            actChanceList[9] = 120
        elseif 6 <= curEnemyDist then
            actChanceList[1] = 50
            actChanceList[2] = 40
            actChanceList[3] = 60
            actChanceList[5] = 0
            actChanceList[9] = 90
        elseif 2 <= curEnemyDist then
            actChanceList[1] = 100
            actChanceList[2] = 30
            actChanceList[3] = 0
            actChanceList[5] = 20
            actChanceList[9] = 0
        else
            actChanceList[1] = 70
            actChanceList[2] = 0
            actChanceList[3] = 0
            actChanceList[5] = 70
            actChanceList[9] = 0
        end
    elseif arg1:GetHpRate(TARGET_SELF) < 0.5 and 6 <= curEnemyDist then
        actChanceList[8] = 100
    elseif 11 <= curEnemyDist then
        actChanceList[1] = 30
        actChanceList[2] = 30
        actChanceList[3] = 80
        actChanceList[5] = 0
        actChanceList[8] = 80
        actChanceList[9] = 120
    elseif 6 <= curEnemyDist then
        actChanceList[1] = 30
        actChanceList[2] = 80
        actChanceList[3] = 0
        actChanceList[5] = 30
        actChanceList[8] = 50
        actChanceList[9] = 60
    elseif 2 <= curEnemyDist then
        actChanceList[1] = 100
        actChanceList[2] = 80
        actChanceList[3] = 0
        actChanceList[5] = 20
        actChanceList[8] = 0
        actChanceList[9] = 0
    else
        actChanceList[1] = 50
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[5] = 80
        actChanceList[8] = 0
        actChanceList[9] = 0
    end
    actFuncList[1] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act01)
    actFuncList[2] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act02)
    actFuncList[3] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act03)
    actFuncList[5] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act05)
    actFuncList[6] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act06)
    actFuncList[7] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act07)
    actFuncList[8] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act08)
    actFuncList[9] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act09)
    actFuncList[10] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act10)
    actFuncList[11] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act11)
    actFuncList[20] = REGIST_FUNC(arg1, arg2, Alfreda_802000_Act20)
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, Alfreda_802000_ActAfter_AdjustSpace), actTblList)
    return 
end

function Alfreda_802000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    local actChanceList = 3000
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local isDoAdmirer = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local curEventRequest = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = -1
    local local9 = 60
    local actFuncList0 = arg0:GetRandam_Int(1, 100)
    if actFuncList0 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, randomInteger, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, isDoAdmirer, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, curEventRequest, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, curEnemyDist, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local7, 45)
    elseif actFuncList0 <= 58 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, randomInteger, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, isDoAdmirer, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, curEventRequest, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local7, 45)
    elseif actFuncList0 <= 72 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, randomInteger, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, isDoAdmirer, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local7, 45)
    elseif actFuncList0 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, randomInteger, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local7, 45)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, local8, local9, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Alfreda_802000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    local actChanceList = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList = -1
    local actTblList = 60
    local curEnemyDist = 3005
    local randomInteger = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local isDoAdmirer = 0
    local curEventRequest = 0
    if arg0:GetRandam_Int(1, 100) <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, curEnemyDist, TARGET_ENE_0, randomInteger, isDoAdmirer, curEventRequest, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, curEnemyDist, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.8, isDoAdmirer, curEventRequest, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, randomInteger, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Alfreda_802000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.6 - arg0:GetMapHitRadius(TARGET_SELF), 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Alfreda_802000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Alfreda_802000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Alfreda_802000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.6 - arg0:GetMapHitRadius(TARGET_SELF), 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Alfreda_802000_Act08(arg0, arg1, arg2)
    local actChanceList = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, TARGET_ENE_0, SuccessDist, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Alfreda_802000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.6 - arg0:GetMapHitRadius(TARGET_SELF), 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Alfreda_802000_Act10(arg0, arg1, arg2)
    local actChanceList = 10
    if actChanceList <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, actChanceList, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, actChanceList, TARGET_ENE_0, true, -1)
    return 
end

function Alfreda_802000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Alfreda_802000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Alfreda_802000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DeathGodOfSullivan_scythe_203010_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_Alfreda_802000_AfterAttackAct, "GOAL_Alfreda_802000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Alfreda_802000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
