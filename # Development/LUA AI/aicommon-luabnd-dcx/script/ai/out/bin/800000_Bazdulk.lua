RegisterTableGoal(GOAL_Bazdulk_800000_Battle, "Bazdulk_800000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bazdulk_800000_Battle, true)

Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local curEnemyDist = arg1:GetDist(TARGET_ENE_0)
    
    if arg1:GetHpRate(TARGET_SELF) <= 0.65 and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        actChanceList[15] = 100
    elseif SpaceCheck(arg1, arg2, 0, 4) == false and 4 < curEnemyDist then
        actChanceList[24] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 3 <= curEnemyDist then
            actChanceList[20] = 100
        else
            actChanceList[9] = 60
            actChanceList[10] = 20
            actChanceList[20] = 20
        end
    elseif 16 <= curEnemyDist then
        actChanceList[1] = 10
        actChanceList[2] = 40
        actChanceList[3] = 30
        actChanceList[5] = 10
        actChanceList[6] = 10
        actChanceList[21] = 1
    elseif 10 <= curEnemyDist then
        actChanceList[1] = 20
        actChanceList[2] = 20
        actChanceList[3] = 20
        actChanceList[5] = 20
        actChanceList[6] = 20
        actChanceList[21] = 1
    elseif 3.2 <= curEnemyDist then
        actChanceList[2] = 20
        actChanceList[6] = 30
        actChanceList[7] = 30
        actChanceList[8] = 20
        actChanceList[21] = 1
    elseif 1.5 <= curEnemyDist then
        actChanceList[4] = 30
        actChanceList[8] = 20
        actChanceList[11] = 20
        actChanceList[12] = 30
        actChanceList[21] = 1
    else
        actChanceList[4] = 20
        actChanceList[9] = 20
        actChanceList[10] = 20
        actChanceList[11] = 20
        actChanceList[12] = 20
        actChanceList[21] = 1
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        actChanceList[7] = 0
        actChanceList[12] = 0
    end
    
    actChanceList[1] = SetCoolTime(arg1, arg2, 3000, 16, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(arg1, arg2, 3002, 16, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(arg1, arg2, 3003, 60, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(arg1, arg2, 3004, 16, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(arg1, arg2, 3005, 16, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(arg1, arg2, 3006, 16, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(arg1, arg2, 3007, 30, actChanceList[7], 1)
    actChanceList[8] = SetCoolTime(arg1, arg2, 3008, 16, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(arg1, arg2, 3009, 16, actChanceList[9], 1)
    actChanceList[10] = SetCoolTime(arg1, arg2, 3010, 30, actChanceList[10], 1)
    actChanceList[11] = SetCoolTime(arg1, arg2, 3011, 16, actChanceList[11], 1)
    actChanceList[12] = SetCoolTime(arg1, arg2, 3012, 30, actChanceList[12], 1)
    actFuncList[1] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act01)
    actFuncList[2] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act02)
    actFuncList[3] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act03)
    actFuncList[4] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act04)
    actFuncList[5] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act05)
    actFuncList[6] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act06)
    actFuncList[7] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act07)
    actFuncList[8] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act08)
    actFuncList[9] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act09)
    actFuncList[10] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act10)
    actFuncList[11] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act11)
    actFuncList[12] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act12)
    actFuncList[13] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act13)
    actFuncList[15] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act15)
    actFuncList[20] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act20)
    actFuncList[21] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act21)
    actFuncList[22] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act22)
    actFuncList[23] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act23)
    actFuncList[24] = REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_Act24)
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, Bazdulk_800000_Battle_ActAfter_AdjustSpace), actTblList)
    return 
end

function Bazdulk_800000_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.46, 9.46, 9.46 + 2, 100, 0, 3, 5)
    local actChanceList = 999
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 19.43, 19.43, 19.43 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.05, 12.05, 12.05 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 17.45, 17.45, 17.45 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 19.85, 19.85, 19.85 + 2, 100, 0, 3, 5)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 24.29, 24.29, 24.29 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.6, 4.6, 4.6 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act11(arg0, arg1, arg2)
    local actChanceList = 999
    local actFuncList = 0
    local actTblList = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act13(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3802350)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0, TARGET_ENE_0, true, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 2, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.8, TARGET_ENE_0, 5.5, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bazdulk_800000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local actChanceList = arg1:GetDist(TARGET_ENE_0)
    local actFuncList = arg1:GetRandam_Int(1, 100)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and 5 <= actChanceList and actChanceList <= 11.2 and actFuncList <= 80 then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and actChanceList <= 3 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and 5 <= actChanceList and actFuncList <= 80 then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        return true
    else
        return false
    end
end

return 
