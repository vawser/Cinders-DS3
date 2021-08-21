RegisterTableGoal(GOAL_Praxos_Sword_Battle, "GOAL_Praxos_Sword_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Praxos_Sword_Battle, true)

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
    
    local curEnemyDist = arg1:GetDist(TARGET_ENE_0)
    local randomInteger = arg1:GetRandam_Int(1, 100)
    
    if arg1:GetNumber(0) == 0 and arg1:GetRandam_Int(1, 100) <= 80 and InsideRange(arg1, arg2, 0, 180, 4, 999) then
        actChanceList[10] = 80
    elseif InsideRange(arg1, arg2, 180, 180, -99, 2.5) then
        actChanceList[20] = 20
        actChanceList[11] = 80
    elseif InsideDir(arg1, arg2, 180, 180) then
        actChanceList[20] = 100
    elseif arg1:IsTargetGuard(TARGET_ENE_0) then
        if 12 <= curEnemyDist then
            actChanceList[1] = 5
            actChanceList[3] = 5
            actChanceList[5] = 5
            actChanceList[7] = 5
            actChanceList[10] = 80
        elseif 8 <= curEnemyDist then
            actChanceList[1] = 10
            actChanceList[3] = 15
            actChanceList[5] = 5
            actChanceList[7] = 10
            actChanceList[10] = 60
        elseif 4 <= curEnemyDist then
            actChanceList[1] = 15
            actChanceList[3] = 20
            actChanceList[5] = 10
            actChanceList[7] = 15
            actChanceList[10] = 40
        elseif 2.5 <= curEnemyDist then
            actChanceList[1] = 30
            actChanceList[5] = 30
            actChanceList[7] = 30
            actChanceList[13] = 10
        elseif InsideDir(arg1, arg2, 90, 90) then
            actChanceList[1] = 20
            actChanceList[5] = 20
            actChanceList[12] = 40
            actChanceList[13] = 20
        elseif InsideDir(arg1, arg2, -90, 90) then
            actChanceList[1] = 20
            actChanceList[5] = 20
            actChanceList[12] = 40
            actChanceList[13] = 20
        elseif InsideDir(arg1, arg2, 0, 90) then
            actChanceList[1] = 10
            actChanceList[5] = 10
            actChanceList[7] = 10
            actChanceList[9] = 60
            actChanceList[12] = 10
        else
            actChanceList[11] = 75
            actChanceList[20] = 25
        end
    elseif 12 <= curEnemyDist then
        actChanceList[1] = 5
        actChanceList[3] = 5
        actChanceList[5] = 5
        actChanceList[7] = 5
        actChanceList[10] = 80
    elseif 8 <= curEnemyDist then
        actChanceList[1] = 10
        actChanceList[3] = 15
        actChanceList[5] = 5
        actChanceList[7] = 10
        actChanceList[10] = 60
    elseif 4 <= curEnemyDist then
        actChanceList[1] = 15
        actChanceList[3] = 20
        actChanceList[5] = 10
        actChanceList[7] = 15
        actChanceList[10] = 40
    elseif 2.5 <= curEnemyDist then
        actChanceList[1] = 30
        actChanceList[5] = 30
        actChanceList[7] = 30
        actChanceList[13] = 10
    elseif InsideDir(arg1, arg2, 90, 90) then
        actChanceList[1] = 20
        actChanceList[5] = 20
        actChanceList[12] = 40
        actChanceList[13] = 20
    elseif InsideDir(arg1, arg2, -90, 90) then
        actChanceList[1] = 20
        actChanceList[5] = 20
        actChanceList[12] = 40
        actChanceList[13] = 20
    elseif InsideDir(arg1, arg2, 0, 90) then
        actChanceList[1] = 15
        actChanceList[5] = 15
        actChanceList[7] = 30
        actChanceList[12] = 30
        actChanceList[13] = 10
    else
        actChanceList[11] = 75
        actChanceList[20] = 25
    end
    if arg1:GetNumber(0) == 0 then
        arg1:SetNumber(0, 1)
    end
    actChanceList[10] = SetCoolTime(arg1, arg2, 3015, 10, actChanceList[10], 1)
    actChanceList[10] = SetCoolTime(arg1, arg2, 3016, 10, actChanceList[10], 1)
    if arg1:IsFinishTimer(0) == false then
        actChanceList[13] = 0
    end
    actChanceList[13] = SetCoolTime(arg1, arg2, 6002, 3, actChanceList[13], 0)
    actChanceList[13] = SetCoolTime(arg1, arg2, 6003, 3, actChanceList[13], 0)
    actChanceList[11] = SpaceCheckBeforeAct(arg1, arg2, 0, 5, actChanceList[11])
    actChanceList[11] = SpaceCheckBeforeAct(arg1, arg2, 30, 5, actChanceList[11])
    actChanceList[11] = SpaceCheckBeforeAct(arg1, arg2, -30, 5, actChanceList[11])
    actChanceList[12] = SpaceCheckBeforeAct(arg1, arg2, 180, 5, actChanceList[12])
    actChanceList[12] = SpaceCheckBeforeAct(arg1, arg2, 165, 5, actChanceList[12])
    actChanceList[12] = SpaceCheckBeforeAct(arg1, arg2, 195, 5, actChanceList[12])
    actFuncList[1] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act01)
    actFuncList[2] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act02)
    actFuncList[3] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act03)
    actFuncList[4] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act04)
    actFuncList[5] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act05)
    actFuncList[6] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act06)
    actFuncList[7] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act07)
    actFuncList[8] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act08)
    actFuncList[9] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act09)
    actFuncList[10] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act10)
    actFuncList[11] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act11)
    actFuncList[12] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act12)
    actFuncList[13] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act13)
    actFuncList[20] = REGIST_FUNC(arg1, arg2, Praxos_Sword_Act20)
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, Praxos_Sword_ActAfter_AdjustSpace), actTblList)
    return 
end

function Praxos_Sword_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local actChanceList = 3000
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 3010
    local local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local7 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList0 = 0
    local actFuncList1 = 0
    local actFuncList2 = arg0:GetRandam_Int(1, 100)
    if actFuncList2 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local5, actFuncList0, actFuncList1)
    elseif actFuncList2 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 80, 5, 5)
    local actChanceList = 3000
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 3007
    local local5 = 3010
    local local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList2 = 0
    local actFuncList3 = 0
    local actFuncList4 = arg0:GetRandam_Int(1, 100)
    if actFuncList4 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 80, 5, 5)
    local actChanceList = 3004
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 3010
    local local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local7 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList0 = 0
    local actFuncList1 = 0
    local actFuncList2 = arg0:GetRandam_Int(1, 100)
    if actFuncList2 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local5, actFuncList0, actFuncList1)
    elseif actFuncList2 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local actChanceList = 3004
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 3007
    local local5 = 3010
    local local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList2 = 0
    local actFuncList3 = 0
    local actFuncList4 = arg0:GetRandam_Int(1, 100)
    if actFuncList4 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local actChanceList = 3005
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 3010
    local local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local7 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local9 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local actFuncList0 = 0
    local actFuncList1 = 0
    local actFuncList2 = arg0:GetRandam_Int(1, 100)
    if actFuncList2 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local5, actFuncList0, actFuncList1)
    elseif actFuncList2 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local8, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local9, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local5)
    elseif actFuncList2 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local9, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local9, actFuncList0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local actChanceList = 3005
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 3007
    local local5 = 3010
    local local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList2 = 0
    local actFuncList3 = 0
    local actFuncList4 = arg0:GetRandam_Int(1, 100)
    if actFuncList4 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList1, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList1, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList1, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList1, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local actChanceList = 3006
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 0
    local local9 = 0
    local actFuncList0 = arg0:GetRandam_Int(1, 100)
    if actFuncList0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actChanceList, TARGET_ENE_0, randomInteger, local8, local9)
    elseif actFuncList0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, randomInteger)
    elseif actFuncList0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, randomInteger)
    elseif actFuncList0 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, randomInteger)
    elseif actFuncList0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, randomInteger)
    elseif actFuncList0 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local6, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, randomInteger)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local7, local8, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, randomInteger)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 80, 5, 5)
    local actChanceList = 3006
    local actFuncList = 3001
    local actTblList = 3002
    local curEnemyDist = 3003
    local randomInteger = 3007
    local local5 = 3010
    local local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local actFuncList2 = 0
    local actFuncList3 = 0
    local actFuncList4 = arg0:GetRandam_Int(1, 100)
    if actFuncList4 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actFuncList, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, curEnemyDist, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, actFuncList0, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, randomInteger, TARGET_ENE_0, actFuncList1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    elseif actFuncList4 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local8, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, actChanceList, TARGET_ENE_0, local9, actFuncList2, actFuncList3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, curEnemyDist, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actFuncList, TARGET_ENE_0, actFuncList0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, randomInteger, TARGET_ENE_0, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 100, 5, 5)
    local actChanceList = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakCombo, 10, 3007, 3003, TARGET_ENE_0, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act10(arg0, arg1, arg2)
    local actChanceList = 4
    Approach_Act_Flex(arg0, arg1, actChanceList, actChanceList, actChanceList, 0, 0, 5, 5)
    local actFuncList = 3015
    local actTblList = 3016
    local curEnemyDist = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local randomInteger = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if local7 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, actFuncList, TARGET_ENE_0, curEnemyDist, local5, local6)
    elseif local7 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, curEnemyDist)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, actFuncList, TARGET_ENE_0, randomInteger, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, actTblList, TARGET_ENE_0, randomInteger)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, actTblList, TARGET_ENE_0, curEnemyDist)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act11(arg0, arg1, arg2)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act12(arg0, arg1, arg2)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act13(arg0, arg1, arg2)
    arg0:SetTimer(0, 3)
    local actChanceList = 0
    local actFuncList = arg0:GetStringIndexedNumber("Dist_SideStep")
    local actTblList = 0
    if arg0:GetRandam_Int(0, 1) == 0 then
        actChanceList = -90
        actFuncList = arg0:GetStringIndexedNumber("Dist_SideStep")
        actTblList = 90
    else
        actChanceList = 90
        actFuncList = arg0:GetStringIndexedNumber("Dist_SideStep")
        actTblList = -90
    end
    if SpaceCheck(arg0, arg1, actChanceList, actFuncList) then
        if actChanceList == -90 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif SpaceCheck(arg0, arg1, actTblList, actFuncList) then
        if actTblList == -90 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    else
        arg1:ClearSubGoal()
        return 
    end
    arg1:AddSubGoal(GOAL_Praxos_Sword_SwordStepAttack, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Praxos_Sword_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Praxos_Sword_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Praxos_Sword_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if InsideRange(arg1, arg2, 0, 180, -99, 3.5) and Counter_Act(arg1, arg2, arg1:GetRandam_Int(10, 20), 3013) then
        if arg1:GetRandam_Int(1, 100) <= 75 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        if InsideRange(arg1, arg2, 0, 180, -99, 2) then
            if arg1:GetRandam_Int(1, 100) <= 80 then
                arg2:ClearSubGoal()
                if arg1:GetRandam_Int(1, 100) <= 50 then
                    local actChanceList = arg1:GetRandam_Int(1, 100)
                    if actChanceList <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, 7, TARGET_ENE_0, true, 9910)
                    elseif actChanceList <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, 0, arg1:GetRandam_Float(15, 30), true, true, 9910)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, 1, arg1:GetRandam_Float(15, 30), true, true, 9910)
                    end
                else
                    local actChanceList = arg1:GetRandam_Int(1, 100)
                    if actChanceList <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                    elseif actChanceList <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
                    else
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
                    end
                end
                return true
            end
        elseif InsideRange(arg1, arg2, 180, 180, -99, 3.5) and fate <= 80 then
            arg2:ClearSubGoal()
            local actFuncList = arg1:GetRandam_Int(1, 100)
            if actFuncList <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif actFuncList <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
            else
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        if InsideRange(arg1, arg2, 0, 180, -99, 1) then
            if arg1:GetRandam_Int(1, 100) <= 80 then
                arg2:ClearSubGoal()
                local actTblList = arg1:GetRandam_Int(1, 100)
                if actTblList <= 25 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3002, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
                elseif actTblList <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
                elseif actTblList <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3005, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3010, TARGET_ENE_0, 3.7 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3003, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
                end
                return true
            end
        elseif InsideRange(arg1, arg2, 0, 180, 1, 2) and arg1:GetRandam_Int(1, 100) <= 80 then
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3002, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 6, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 6)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:IsStartAttack() == false then
        if InsideRange(arg1, arg2, 0, 180, 4, 999) then
            if arg1:GetRandam_Int(1, 100) <= 85 then
                arg2:ClearSubGoal()
                Praxos_Sword_Act10(arg1, arg2, paramTbl)
                return true
            end
        elseif InsideRange(arg1, arg2, 0, 240, -99, 4) and arg1:GetRandam_Int(1, 100) <= 90 then
            arg2:ClearSubGoal()
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10830) == true and ReactBackstab_Act(arg1, arg2, 0, 3020, 100) then
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Praxos_Sword_AfterAttackAct, "GOAL_Praxos_Sword_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Praxos_Sword_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local actChanceList = arg1:GetDist(TARGET_ENE_0)
    local actFuncList = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 100)
    if 5 <= actChanceList then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 90)
    elseif 2.5 <= actChanceList then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 85)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 5)
    else
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 10)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

RegisterTableGoal(GOAL_Praxos_Sword_SwordStepAttack, "GOAL_Praxos_Sword_SwordStepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Praxos_Sword_SwordStepAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    if InsideRange(arg1, arg2, 0, 180, -99, 2) then
        local actChanceList = arg1:GetRandam_Int(1, 100)
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            if actChanceList <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            elseif actChanceList <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3005, TARGET_ENE_0, 3.3 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3007, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3007, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
        elseif actChanceList <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3005, TARGET_ENE_0, 3.7 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3003, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
        end
    elseif InsideRange(arg1, arg2, 0, 180, 2, 3) then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3003, TARGET_ENE_0, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3001, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF))
    elseif InsideRange(arg1, arg2, 0, 90, 3, 5) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3004, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
