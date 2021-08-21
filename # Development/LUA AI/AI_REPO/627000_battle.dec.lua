RegisterTableGoal(GOAL_CapitalDeadWarrior_Sacrifice_627000_Battle, "CapitalDeadWarrior_Sacrifice_627000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CapitalDeadWarrior_Sacrifice_627000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16277) then
        local0[40] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16700) then
        local0[41] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16701) then
        local0[42] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        local0[24] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16270) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[30] = 100
        elseif 3 < local3 then
            local0[28] = 70
        else
            local0[10] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[30] = 100
        elseif 25 < local3 then
            local0[10] = 100
        elseif 6 < local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[7] = 0
            local0[16] = 0
            local0[19] = 100
            local0[20] = 0
            local0[21] = 0
            local0[25] = 0
            local0[22] = 0
            local0[23] = 0
            local0[26] = 0
        elseif 3 < local3 then
            local0[1] = 10
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[6] = 0
            local0[7] = 15
            local0[19] = 30
            local0[20] = 5
            local0[21] = 0
            local0[25] = 10
            local0[22] = 5
            local0[23] = 0
            local0[26] = 10
            local0[24] = 10
        else
            local0[1] = 20
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[7] = 20
            local0[6] = 0
            local0[20] = 0
            local0[21] = 0
            local0[25] = 0
            local0[22] = 0
            local0[23] = 0
            local0[26] = 0
            local0[24] = 60
        end
    elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 4.5) and SpaceCheck(arg1, arg2, 60, 5) then
        local0[20] = 70
        local0[21] = 25
        local0[30] = 5
    elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 4.5) and SpaceCheck(arg1, arg2, -60, 5) then
        local0[22] = 70
        local0[23] = 25
        local0[30] = 5
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[30] = 100
    elseif 7.5 < local3 then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[7] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[16] = 10
        local0[17] = 0
        local0[18] = 35
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[26] = 0
        local0[24] = 0
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[3] = 300
        end
    elseif 5 < local3 then
        local0[1] = 0
        local0[2] = 5
        local0[3] = 0
        local0[4] = 15
        local0[7] = 0
        local0[16] = 30
        local0[17] = 0
        local0[18] = 10
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 10
        local0[26] = 10
        local0[24] = 0
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[3] = 300
        end
    elseif 3.5 < local3 then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 5
        local0[4] = 0
        local0[7] = 0
        local0[15] = 0
        local0[16] = 10
        local0[17] = 10
        local0[18] = 15
        local0[20] = 5
        local0[21] = 0
        local0[22] = 5
        local0[23] = 0
        local0[24] = 0
        local0[25] = 10
        local0[26] = 10
        local0[24] = 0
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[3] = 100
        end
    elseif 1 < local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[7] = 15
        local0[9] = 35
        local0[17] = 0
        local0[18] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 10
        local0[25] = 0
        local0[26] = 0
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[24] = 40
        end
    else
        local0[1] = 5
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[7] = 10
        local0[9] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 30
        local0[25] = 0
        local0[26] = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 5024) then
            local0[20] = 0
            local0[22] = 0
            local0[27] = 30
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 3, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 3, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 3, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 3, local0[4], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 3, local0[7], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3007, 5, local0[9], 1)
    local0[18] = SetCoolTime(arg1, arg2, 3012, 5, local0[18], 1)
    if SpaceCheck(arg1, arg2, 90, 4) == false then
        local0[20] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 4) == false then
        local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 4) == false then
        local0[17] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 5) == false or SpaceCheck(arg1, arg2, 170, 5) == false or SpaceCheck(arg1, arg2, 190, 5) == false then
        local0[24] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5024) then
        local0[4] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[17] = 0
        local0[21] = 0
        local0[23] = 0
        local0[24] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        local0[16] = 0
        local0[17] = 0
        local0[18] = 0
    end
    if SpaceCheck(arg1, arg2, -45, 6) == false then
        local0[4] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act04)
    local1[6] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act28)
    local1[30] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act30)
    local1[40] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act42)
    local1[50] = REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_Act50)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CapitalDeadWarrior_Sacrifice_627000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4, 3.4 + 2, 3.4 + 2, 100, 0, 2, 5.5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3, 4.3 + 2, 4.3 + 2, 100, 0, 2, 5.5)
    local local0 = 3001
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) < 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.4 + 1.5, local1, local2)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 999, local1, local2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5 + 2, 5 + 2, 100, 0, 2, 5.5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act04(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) < 1 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_SideStep"))
    end
    Approach_Act_Flex(arg0, arg1, 7, 7 + 2, 7 + 2, 100, 0, 2, 5.5)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act06(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 12 + 0
    local local2 = 100
    local local3 = 0
    local local4 = 2
    local local5 = 5.5
    CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, 12)
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.7, 3.7 + 2, 3.7 + 2, 100, 0, 2, 5.5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act08(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 12 + 0
    local local2 = 100
    local local3 = 0
    local local4 = 2
    local local5 = 5.5
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 1), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act09(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 3.3 + 0
    local local2 = 100
    local local3 = 0
    local local4 = 2
    local local5 = 5.5
    local local6 = arg0:GetDist(TARGET_ENE_0)
    CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, 3.3)
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5024) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_SideStep"))
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act11(arg0, arg1, arg2)
    local local0 = 3.8
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 100, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.3 + 0, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act12(arg0, arg1, arg2)
    local local0 = 3.8
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 100, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.3 + 0, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act13(arg0, arg1, arg2)
    local local0 = 6
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 100, 0, 2.5, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 7 + 0.5, TARGET_SELF, false, -1)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_SideStep"))
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 7 + 0.5, TARGET_SELF, false, -1)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act15(arg0, arg1, arg2)
    if arg0:GetRandam_Int(1, 100) < 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act16(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 8 + 0
    local local2 = 100
    local local3 = 0
    local local4 = 2
    local local5 = 5.5
    CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, 8)
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7, 7 + 4, 7 + 4, 100, 0, 2, 5.5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act18(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 6.6 + 0
    local local2 = 100
    local local3 = 0
    local local4 = 2
    local local5 = 5.5
    if arg0:GetDist(TARGET_ENE_0) < 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_SideStep"))
    end
    CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, 6.6)
    local local6 = 999
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act19(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 8 + 0
    local local2 = 100
    local local3 = 0
    local local4 = 2
    local local5 = 5.5
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 1), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act21(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act23(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act25(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, 45, true, true, -1)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, 45, true, true, -1)
    local0:SetTargetRange(0, 5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act26(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, 45, true, true, -1)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, 45, true, true, -1)
    local0:SetTargetRange(0, 5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 13, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act28(arg0, arg1, arg2)
    CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act40(arg0, arg1, arg2)
    CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, SuccessDist, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act41(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 3.3 + 0
    local local2 = 100
    local local3 = 0
    local local4 = 2
    local local5 = 5.5
    local local6 = arg0:GetDist(TARGET_ENE_0)
    CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, 3.3)
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act42(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 6.6 + 0
    local local2 = 100
    local local3 = 0
    local local4 = 2
    local local5 = 5.5
    local local6 = arg0:GetDist(TARGET_ENE_0)
    CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, 6.6)
    local local7 = 999
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_Act50(arg0, arg1, arg2)
    local local0 = 999
    Approach_Act_Flex(arg0, arg1, local0, 0, local0 + 0, 100, 0, 2, 5.5)
    local local1 = 3006
    local local2 = 3001
    local local3 = 999
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CapitalDeadWarrior_Sacrifice_627000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CapitalDeadWarrior_Sacrifice_627000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if arg1:IsTargetOutOfRangeInterruptSlot(0) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(1) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_CapitalDeadWarrior_Sacrifice_627000_AfterAttackAct, "CapitalDeadWarrior_Sacrifice_627000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CapitalDeadWarrior_Sacrifice_627000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if arg1:HasSpecialEffectId(TARGET_SELF, 16270) then
        if 6 <= local0 then
            local2[1] = 50
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 50
        elseif 4.5 <= local0 then
            local2[1] = 50
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 50
        else
            local2[1] = 25
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 25
            local2[6] = 50
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if 6 <= local0 then
            local2[1] = 100
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 0
        elseif 3 <= local0 then
            local2[1] = 40
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 60
        else
            local2[1] = 50
            local2[2] = 50
            local2[3] = 0
            local2[4] = 0
            local2[5] = 0
            local2[6] = 0
        end
    elseif 7.5 <= local0 then
        local2[1] = 35
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 65
    elseif 4.5 <= local0 then
        local2[1] = 40
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 60
    else
        local2[1] = 50
        local2[2] = 50
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
        local2[6] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 5) == false or SpaceCheck(arg1, arg2, 170, 5) == false or SpaceCheck(arg1, arg2, 190, 5) == false then
        local2[2] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            CapitalDeadWarrior_Sacrifice_627000_Battle_Act24(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                CapitalDeadWarrior_Sacrifice_627000_Battle_Act20(arg1, arg2, paramTbl)
            else
                CapitalDeadWarrior_Sacrifice_627000_Battle_Act22(arg1, arg2, paramTbl)
            end
        elseif local3 == 4 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                CapitalDeadWarrior_Sacrifice_627000_Battle_Act21(arg1, arg2, paramTbl)
            else
                CapitalDeadWarrior_Sacrifice_627000_Battle_Act23(arg1, arg2, paramTbl)
            end
        elseif local3 == 5 then
            local local4 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), 45, true, true, -1)
            local4:SetLifeEndSuccess(true)
            local4 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), 45, true, true, -1)
            local4:SetTargetRange(0, 5, 999)
        else
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
            local local4 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
            local4:SetTargetRange(0, 2, 999)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function CapitalDeadWarrior_Sacrifice_627000_Approach_Act(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg2 + 3
    local local2 = 100
    if arg0:HasSpecialEffectId(TARGET_SELF, 16270) then
        local1 = 999
        local2 = 0
    end
    Approach_Act_Flex(arg0, arg1, arg2, arg2 + 1.5, local1, local2, 0, 2, 5.5)
    return 
end

return 
