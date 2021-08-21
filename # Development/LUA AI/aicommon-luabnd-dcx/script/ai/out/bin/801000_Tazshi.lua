RegisterTableGoal(GOAL_Tazshi_801000_Battle, "Tazshi_801000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Tazshi_801000_Battle, true)

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
    local isDoAdmirer = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local curEventRequest = arg1:GetEventRequest()
    local local7 = 0
    local local8 = 0
    
    if InsideDir(arg1, arg2, 40, 120) then
        local7 = 1
    end
    if InsideDir(arg1, arg2, -40, 120) then
        local8 = 1
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        actChanceList[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and curEnemyDist <= 4 then
        actChanceList[3] = 40
        actChanceList[9] = 10
        actChanceList[12] = 5
        actChanceList[14] = 15
        actChanceList[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and curEnemyDist <= 4 then
        actChanceList[3] = 40
        actChanceList[8] = 10
        actChanceList[11] = 5
        actChanceList[13] = 15
        actChanceList[20] = 30
    elseif 18 <= curEnemyDist then
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 10
        actChanceList[5] = 0
        actChanceList[10] = 0
        actChanceList[15] = 90
    elseif 12 <= curEnemyDist then
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 60
        actChanceList[5] = 0
        actChanceList[10] = 0
        actChanceList[15] = 40
    elseif 7 <= curEnemyDist then
        actChanceList[1] = 10
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 20
        actChanceList[5] = 20
        actChanceList[10] = 0
        actChanceList[15] = 40
    elseif 5 <= curEnemyDist then
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 15
        actChanceList[4] = 0
        actChanceList[5] = 40
        actChanceList[8] = 5 * local7
        actChanceList[9] = 5 * local8
        actChanceList[10] = 15
        actChanceList[15] = 20
    elseif 3 <= curEnemyDist then
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 40
        actChanceList[5] = 20
        actChanceList[8] = 5 * local7
        actChanceList[9] = 5 * local8
        actChanceList[10] = 10
        actChanceList[15] = 20
    else
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 50
        actChanceList[4] = 0
        actChanceList[5] = 0
        actChanceList[8] = 15 * local7
        actChanceList[9] = 15 * local8
        actChanceList[10] = 0
        actChanceList[15] = 20
    end
    actChanceList[1] = SetCoolTime(arg1, arg2, 3000, 25, actChanceList[3], 1)
    actChanceList[2] = SetCoolTime(arg1, arg2, 3001, 25, actChanceList[4], 1)
    actChanceList[3] = SetCoolTime(arg1, arg2, 3004, 10, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(arg1, arg2, 3005, 10, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(arg1, arg2, 3006, 25, actChanceList[5], 1)
    actChanceList[8] = SetCoolTime(arg1, arg2, 3013, 25, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(arg1, arg2, 3013, 25, actChanceList[9], 1)
    actChanceList[10] = SetCoolTime(arg1, arg2, 3016, 30, actChanceList[10], 1)
    actChanceList[11] = SetCoolTime(arg1, arg2, 3007, 25, actChanceList[11], 1)
    actChanceList[12] = SetCoolTime(arg1, arg2, 3008, 25, actChanceList[12], 1)
    actChanceList[13] = SetCoolTime(arg1, arg2, 3002, 25, actChanceList[13], 1)
    actChanceList[14] = SetCoolTime(arg1, arg2, 3003, 25, actChanceList[14], 1)
    actChanceList[15] = SetCoolTime(arg1, arg2, 3009, 15, actChanceList[15], 1)
    actFuncList[1] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act01)
    actFuncList[2] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act02)
    actFuncList[3] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act03)
    actFuncList[4] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act04)
    actFuncList[5] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act05)
    actFuncList[8] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act08)
    actFuncList[9] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act09)
    actFuncList[10] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act10)
    actFuncList[11] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act11)
    actFuncList[12] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act12)
    actFuncList[13] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act13)
    actFuncList[14] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act14)
    actFuncList[15] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act15)
    actFuncList[20] = REGIST_FUNC(arg1, arg2, Tazshi_801000_Act20)
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, Tazshi_801000_ActAfter_AdjustSpace), actTblList)
    return 
end

function Tazshi_801000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 1, 3, 100, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3000, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 1, 3, 100, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3001, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.5, 1, 3, 100, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15, 1, 3, 100, 0, 0.5, 0.5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10, 1, 3, 100, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3006, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20, 1, 3, 100, 0, 0.5, 0.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0, 1, 3, 100, 0, 0.5, 0.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.7 - arg0:GetMapHitRadius(TARGET_SELF), 1, 3, 100, 0, 1, 1)
    local actChanceList = 3013
    local actFuncList = 999
    local actTblList = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local curEnemyDist = 1.5
    local randomInteger = 40
    if 20 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, 999, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, 999, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.7 - arg0:GetMapHitRadius(TARGET_SELF), 1, 3, 100, 0, 1, 1)
    local actChanceList = 3013
    local actFuncList = 999
    local actTblList = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local curEnemyDist = 1.5
    local randomInteger = 40
    if 20 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, 999, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, 999, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 0.5, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3016, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3008, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3002, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act15(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 35 - arg0:GetMapHitRadius(TARGET_SELF), 35 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 35 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 1.5, 3)
    local actChanceList = 3009
    local actFuncList = 3010
    local actTblList = 3011
    local curEnemyDist = 3012
    local randomInteger = 999
    local isDoAdmirer = 999
    local curEventRequest = 999
    local local7 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg0:GetDist(TARGET_ENE_0)
    if 27.5 <= local9 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, randomInteger, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, isDoAdmirer, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local7, 0)
    elseif 20 <= local9 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, randomInteger, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, isDoAdmirer, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local7, 0)
    elseif 12.5 <= local9 then
        if 50 <= local8 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, randomInteger, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, isDoAdmirer, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local7, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, randomInteger, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, curEventRequest, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local7, 0)
        end
    elseif 5 <= local9 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, randomInteger, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, curEventRequest, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local7, 0)
    elseif 50 <= local8 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, randomInteger, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, curEventRequest, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local7, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actChanceList, TARGET_ENE_0, randomInteger, 1, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, curEventRequest, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local7, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Tazshi_801000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrystalLizardKing_310000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupu = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and arg1:GetDist(TARGET_ENE_0) <= 4.7 and arg1:GetRandam_Int(1, 100) <= 65 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 9999 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Tazshi_801000_AfterAttackAct, "GOAL_Tazshi_801000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Tazshi_801000_AfterAttackAct, true)

Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
