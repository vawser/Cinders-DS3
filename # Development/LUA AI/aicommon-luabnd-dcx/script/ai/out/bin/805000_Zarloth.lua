RegisterTableGoal(GOAL_Zarloth_805000_Battle, "GOAL_Zarloth_805000_Battle")
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
    
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    
    local curEnemyDist = arg1:GetDist(TARGET_ENE_0)
    
    if arg1:IsTargetGuard(TARGET_SELF) == true and arg1:GetRandam_Int(1, 100) <= 70 and InsideRange(arg1, arg2, 0, 90, -99 - arg1:GetMapHitRadius(TARGET_SELF), 2.3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        actChanceList[11] = 10
        actChanceList[3] = 10
    elseif 6 <= curEnemyDist then
        if InsideDir(arg1, arg2, 180, 330) then
            actChanceList[20] = 10
        else
            actChanceList[1] = 10
            actChanceList[3] = 10
            actChanceList[5] = 10
            actChanceList[6] = 20
            actChanceList[7] = 30
            actChanceList[8] = 10
        end
    elseif 4.5 <= curEnemyDist then
        if InsideDir(arg1, arg2, 180, 315) then
            actChanceList[20] = 10
        else
            actChanceList[1] = 20
            actChanceList[3] = 20
            actChanceList[5] = 20
            actChanceList[6] = 30
            actChanceList[8] = 10
            actChanceList[7] = 0
        end
    elseif 3.5 <= curEnemyDist then
        if InsideDir(arg1, arg2, 180, 315) then
            actChanceList[20] = 10
        else
            actChanceList[1] = 30
            actChanceList[3] = 30
            actChanceList[5] = 40
            actChanceList[8] = 20
            actChanceList[7] = 0
        end
    elseif 1.5 <= curEnemyDist then
        if InsideDir(arg1, arg2, 180, 315) then
            actChanceList[20] = 10
        else
            actChanceList[1] = 30
            actChanceList[2] = 30
            actChanceList[3] = 30
            actChanceList[8] = 10
            actChanceList[7] = 0
        end
    elseif InsideDir(arg1, arg2, 180, 180) then
        actChanceList[9] = 90
        actChanceList[20] = 10
    elseif InsideDir(arg1, arg2, 60, 60) then
        actChanceList[3] = 60
        actChanceList[8] = 20
        actChanceList[20] = 20
    elseif InsideDir(arg1, arg2, -60, 60) then
        actChanceList[1] = 60
        actChanceList[8] = 20
        actChanceList[20] = 20
    else
        actChanceList[1] = 25
        actChanceList[2] = 25
        actChanceList[3] = 25
        actChanceList[8] = 25
        actChanceList[10] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
        actChanceList[1] = 0
        actChanceList[3] = 0
        actChanceList[5] = 0
        actChanceList[8] = 0
        actChanceList[9] = 0
    end
    actChanceList[5] = SetCoolTime(arg1, arg2, 3008, 10, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(arg1, arg2, 3009, 10, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(arg1, arg2, 3010, 20, actChanceList[7], 1)
    actChanceList[8] = SetCoolTime(arg1, arg2, 3011, 20, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(arg1, arg2, 3012, 6, actChanceList[9], 1)
    actFuncList[1] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act01)
    actFuncList[2] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act02)
    actFuncList[3] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act03)
    actFuncList[4] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act04)
    actFuncList[5] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act05)
    actFuncList[6] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act06)
    actFuncList[7] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act07)
    actFuncList[8] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act08)
    actFuncList[9] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act09)
    actFuncList[10] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act10)
    actFuncList[11] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act11)
    actFuncList[20] = REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_Act20)
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, Zarloth_805000_Greataxe_ActAfter_AdjustSpace), actTblList)
    return 
end

function Zarloth_805000_Greataxe_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    local actChanceList = 3000
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local local4 = 3007
    local local5 = 3013
    local local6 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList2 = 0
    local actFuncList3 = 0
    local actFuncList4 = arg0:GetRandam_Int(1, 100)
    if actFuncList4 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    local actChanceList = 3005
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local local4 = 3007
    local local5 = 3013
    local local6 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList2 = 0
    local actFuncList3 = 0
    local actFuncList4 = arg0:GetRandam_Int(1, 100)
    if actFuncList4 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    local actChanceList = 3008
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3007
    local local4 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 1.5
    local local9 = 120
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 80, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 0, 5, 5)
    local actChanceList = 3011
    local actFuncList = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local actTblList = 0
    local curEnemyDist = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList, actTblList, curEnemyDist)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actChanceList, TARGET_ENE_0, 0, actTblList, curEnemyDist)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, actFuncList, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5, 0, 100, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_Act20(arg0, arg1, arg2)
    if arg0:IsTargetGuard(TARGET_SELF) == true then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 9910, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Zarloth_805000_Greataxe_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Zarloth_805000_AfterAttackAct, 3)
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
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local actChanceList = arg1:GetDist(TARGET_ENE_0)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and InsideRange(arg1, arg2, 0, 120, 5 - arg1:GetMapHitRadius(TARGET_SELF) - 2, 6.5 - arg1:GetMapHitRadius(TARGET_SELF) + 3) and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:IsTargetGuard(TARGET_SELF) == false and arg1:IsTargetGuard(TARGET_SELF) == false and arg1:GetRandam_Int(1, 100) <= 50 then
        if arg1:GetDist(TARGET_ENE_0) <= 2.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and arg1:GetDist(TARGET_ENE_0) <= 2 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
        return true
    elseif arg1:IsInterupt(INTERUPT_UseItem) and arg1:IsStartAttack() == false then
        if InsideRange(arg1, arg2, 0, 180, 3, 10) then
            if arg1:GetRandam_Int(1, 100) <= 15 and arg1:GetAttackPassedTime(3010) <= 8 then
                arg2:ClearSubGoal()
                Zarloth_805000_Greataxe_Act07(arg1, arg2, paramTbl)
                return true
            end
        elseif InsideRange(arg1, arg2, 0, 240, -99, 3) and arg1:GetRandam_Int(1, 100) <= 15 and arg1:GetAttackPassedTime(3010) <= 8 then
            arg2:ClearSubGoal()
            Zarloth_805000_Greataxe_Act08(arg1, arg2, paramTbl)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_Zarloth_805000_AfterAttackAct, "Zarloth_805000_Greataxe_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Zarloth_805000_AfterAttackAct, true)

Goal.Activate = function (arg0, arg1, arg2)
    local actChanceList = arg1:GetDist(TARGET_ENE_0)
    local actFuncList = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_AAA", 8)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 0.25)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 100)
    if 6 <= actChanceList then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
    elseif 4 <= actChanceList then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
    elseif 2 <= actChanceList then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
    else
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        if InsideRange(arg1, arg2, 0, 180, -99, 2) then
            if arg1:GetRandam_Int(1, 100) <= 50 then
                arg2:ClearSubGoal()
                if arg1:GetRandam_Int(1, 100) <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                elseif InsideDir(arg1, arg2, 90, 180) then
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
                else
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
                end
                return true
            end
        elseif InsideRange(arg1, arg2, 180, 180, 2, 3.5) and arg1:GetRandam_Int(1, 100) <= 30 then
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) <= 0 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif InsideDir(arg1, arg2, 90, 180) then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
            else
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
            end
            return true
        end
    end
    return false
end

return 
