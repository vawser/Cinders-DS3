RegisterTableGoal(GOAL_BlackOldKing_514000_Battle, "BlackOldKing_514000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackOldKing_514000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3.8)
    arg1:SetStringIndexedNumber("Dist_BackStep", 7.5)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10636) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 5027)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    end
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetDist(TARGET_EVENT)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false and local5 <= 0.6 then
        local0[25] = 10
    elseif arg1:GetNumber(0) == 0 then
        local0[6] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10636) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            if InsideRange(arg1, arg2, 145, 115, -1, 3.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
                local0[14] = 70
                local0[5] = 30
            elseif InsideRange(arg1, arg2, -145, 115, -1, 3.3 - arg1:GetMapHitRadius(TARGET_SELF)) then
                local0[15] = 70
                local0[5] = 30
            else
                local0[5] = 100
            end
        elseif not not arg1:HasSpecialEffectId(TARGET_EVENT, 5025) or arg1:HasSpecialEffectId(TARGET_EVENT, 5026) then
            local0[48] = 100
        elseif 5 <= local3 then
            local0[6] = 100
        else
            local0[7] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10637) == false and arg1:IsFinishTimer(0) == true and (not (10 > local3 and 0.35 > local5 and arg1:IsFinishTimer(1) ~= false and (local5 > 0.3 or arg1:HasSpecialEffectId(TARGET_SELF, 5022) ~= false)) or local5 <= 0.12) then
        local0[24] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if InsideRange(arg1, arg2, 145, 115, -1, 3.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[14] = 70
            local0[9] = 20
            local0[5] = 10
        elseif InsideRange(arg1, arg2, -145, 115, -1, 3.3 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[15] = 70
            local0[8] = 20
            local0[5] = 10
        else
            local0[5] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and 15 <= local3 then
        local0[5] = 10
    elseif 25 <= local3 then
        local0[10] = 10
        local0[17] = 10
        local0[18] = 10
        local0[22] = 20
    elseif 15 <= local3 then
        local0[10] = 10
        local0[11] = 10
        local0[12] = 10
        local0[17] = 10
        local0[18] = 10
        local0[22] = 20
        local0[23] = 20
    elseif 8 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[10] = 20
        local0[11] = 20
        local0[12] = 20
        local0[13] = 10
        local0[19] = 10
        local0[20] = 10
        local0[22] = 20
        local0[23] = 20
    elseif 1.2 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[11] = 20
        local0[12] = 20
        local0[13] = 10
        local0[19] = 20
        local0[20] = 10
        local0[21] = 10
        local0[23] = 20
    else
        local0[8] = 10
        local0[9] = 10
        local0[16] = 10
        local0[21] = 10
    end
    if arg1:IsFinishTimer(1) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false and 10 <= local3 then
        local0[17] = local0[17] + 10
        local0[18] = local0[18] + 10
        local0[22] = local0[22] + 10
    end
    if arg1:IsFinishTimer(1) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false and 6 <= local3 then
        local0[10] = local0[10] + 50
    end
    if arg1:IsFinishTimer(0) == false and 8 <= local3 then
        local0[22] = local0[22] + 100
        local0[23] = local0[23] + 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[16] = 0
        local0[17] = 0
        local0[18] = 0
        local0[19] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
    end
    if arg1:GetNumber(1) == 1 then
        arg1:SetNumber(1, 0)
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            local0[16] = local0[16] + 10
            local0[19] = local0[19] + 10
            local0[21] = local0[21] + 10
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3003, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3011, 15, local0[2], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3000, 15, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3001, 15, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3002, 15, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3012, 15, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3013, 15, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3006, 15, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3014, 10, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3015, 10, local0[15], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3016, 15, local0[16], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3017, 15, local0[17], 1)
    local0[18] = SetCoolTime(arg1, arg2, 3018, 15, local0[18], 1)
    local0[19] = SetCoolTime(arg1, arg2, 3020, 15, local0[19], 1)
    local0[20] = SetCoolTime(arg1, arg2, 3021, 25, local0[20], 1)
    local0[21] = SetCoolTime(arg1, arg2, 3019, 25, local0[21], 1)
    local0[22] = SetCoolTime(arg1, arg2, 3024, 20, local0[22], 1)
    local0[23] = SetCoolTime(arg1, arg2, 3025, 20, local0[23], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act28)
    local1[29] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act29)
    local1[30] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act32)
    local1[33] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act33)
    local1[34] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act34)
    local1[35] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act35)
    local1[36] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act36)
    local1[37] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act37)
    local1[38] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act38)
    local1[39] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act39)
    local1[40] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act47)
    local1[48] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act48)
    local1[50] = REGIST_FUNC(arg1, arg2, BlackOldKing_Act50)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlackOldKing_ActAfter_AdjustSpace), local2)
    return 
end

function BlackOldKing_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 2, 5)
    local local0 = 3004
    local local1 = 3005
    local local2 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF), 1, 180)
    BlackOldKing_Act03(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.8 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 2, 5)
    local local0 = 3005
    local local1 = 3009
    local local2 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 1, 150)
    BlackOldKing_Act04(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act03(arg0, arg1, arg2)
    local local0 = 3004
    local local1 = 3005
    local local2 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = arg0:GetRandam_Int(1, 100)
    if local5 <= 40 then
        local local6 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local2)
        local6:SetTargetRange(1, -99, 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4)
    elseif local5 <= 70 then
        local local6 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF))
        local6:SetTargetAngle(0, 0, 60)
        local6 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local2)
        local6:SetTargetRange(1, -99, 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local2)
        local local6 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        local6:SetTargetRange(0, -99, 5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act04(arg0, arg1, arg2)
    local local0 = 3005
    local local1 = 3009
    local local2 = 3004
    local local3 = 3010
    local local4 = 3011
    local local5 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local9 = 10.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local11 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10636) == false and arg0:GetRandam_Int(1, 100) <= 30 then
        local local12 = 3000
        if local11 <= 15 then
            local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local6)
            local13:SetTargetRange(0, -99, 5)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local10)
        elseif local11 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
            local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5)
            local13:SetTargetRange(1, -99, 5)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10)
        elseif local11 <= 55 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local12, TARGET_ENE_0, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10)
        elseif local11 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local12, TARGET_ENE_0, local9)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local10)
        end
    elseif local11 <= 40 then
        local local12 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local6)
        local12:SetTargetRange(0, -99, 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local10)
    elseif local11 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local7)
        local local12 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5)
        local12:SetTargetRange(1, -99, 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act06(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act07(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(4, 5.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF))
    local0:SetTargetAngle(0, 0, 60)
    local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 10.3 - arg0:GetMapHitRadius(TARGET_SELF))
    local0:SetTargetRange(1, -99, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF))
    local0:SetTargetRange(0, -99, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 25.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 999, 999, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 210)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 999, 999, 0, 0, 2, 5)
    local local0 = 3012
    local local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1
    local local3 = 240
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) and arg0:GetHpRate(TARGET_SELF) <= 0.35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 6.8 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.8 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 999, 999, 0, 0, 2, 5)
    local local0 = 3013
    local local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1
    local local3 = 240
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) and arg0:GetHpRate(TARGET_SELF) <= 0.35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.3 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 6.8 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 9.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 29.8 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act18(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 23.8 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act20(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 999, 999, 0, 0, 2, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 1, 150)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act21(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 360)
    local0:SetTargetRange(2, -99, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 150)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackOldKing_Act24(arg0, arg1, arg2)
    local local0 = 2
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        if InsideRange(arg0, arg1, 120, 120, -1, 3) and arg0:HasSpecialEffectId(TARGET_SELF, 5032) == false then
            local local1 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            local1:SetLifeEndSuccess(true)
        elseif InsideRange(arg0, arg1, -120, 120, -1, 3) and arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
            local local1 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            local1:SetLifeEndSuccess(true)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5030) == false then
            local local1 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            local1:SetLifeEndSuccess(true)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, SuccessDist)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999)
    arg0:SetTimer(0, 6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act28(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3008, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act34(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3009, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act35(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3010, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act36(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act37(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3012, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act38(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3013, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act39(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3017, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3018, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3019, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3020, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3021, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3024, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3025, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act48(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_EVENT, 5025) == true or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 45) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, 30, true, true, -1)
    elseif arg0:HasSpecialEffectId(TARGET_EVENT, 5026) == true or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 45) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, 30, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_Act50(arg0, arg1, arg2)
    local local0 = 3008
    local local1 = 3008
    local local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_StepAct(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg2 == 1 then
        if arg0:GetRandam_Int(1, 100) <= 50 and arg0:HasSpecialEffectId(TARGET_SELF, 5032) == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        if InsideRange(arg0, arg1, 120, 120, -1, 3) and arg0:HasSpecialEffectId(TARGET_SELF, 5032) == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif InsideRange(arg0, arg1, -120, 120, -1, 3) and arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5030) == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif InsideRange(arg0, arg1, 120, 120, -1, 3) and arg0:HasSpecialEffectId(TARGET_SELF, 5032) == false then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif InsideRange(arg0, arg1, -120, 120, -1, 3) and arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5030) == false then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackOldKing_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BlackOldKing_514000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true or 0.6 <= HpRate then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_EVENT, 5027)
                local local0 = arg1:GetDist(TARGET_ENE_0)
                if 8 <= local0 then
                    BlackOldKing_Act07(arg1, arg2, paramTbl)
                elseif arg1:GetDistAtoB(TARGET_EVENT, TARGET_ENE_0) < local0 or local0 <= 7.5 then
                    BlackOldKing_Act06(arg1, arg2, paramTbl)
                else
                    BlackOldKing_Act07(arg1, arg2, paramTbl)
                end
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
                arg1:SetTimer(1, 4)
                arg2:ClearSubGoal()
                arg1:Replaning()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_GuardBreak) then
            arg1:SetTimer(1, 2)
            return false
        elseif arg1:IsInterupt(INTERUPT_UseItem) and arg1:GetRandam_Int(1, 100) <= 50 then
            arg1:SetTimer(1, 3)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsInterupt(INTERUPT_Shoot) then
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5032) == false then
                arg1:SetTimer(1, 3)
                if arg1:GetRandam_Int(1, 100) <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg1:GetStringIndexedNumber("Dist_SideStep"))
                else
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg1:GetStringIndexedNumber("Dist_SideStep"))
                end
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            arg1:DeleteObserve(0)
            return true
        elseif arg1:IsInterupt(INTERUPT_Damaged) then
            local local1 = arg1:GetRandam_Int(1, 100)
            if local1 <= 50 and arg1:HasSpecialEffectId(TARGET_SELF, 5030) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5032) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5029) == false then
                arg2:ClearSubGoal()
                BlackOldKing_StepAct(arg1, arg2, 2)
                return true
            elseif local1 <= 80 and arg1:HasSpecialEffectId(TARGET_SELF, 5030) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5032) == false then
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_TargetOutOfAngle) and arg1:IsTargetOutOfAngleInterruptSlot(0) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
            if arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(arg1, arg2, 0, 90, 5, 8.3 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, SuccessDist)
                return true
            elseif arg1:IsTargetOutOfRangeInterruptSlot(1) and InsideRange(arg1, arg2, 0, 90, 5, 25.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, SuccessDist)
                return true
            elseif arg1:IsTargetOutOfRangeInterruptSlot(2) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if InsideRange(arg1, arg2, 0, 360, 8, 23.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, SuccessDist)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, SuccessDist)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_EventRequest) then
        local local0 = arg1:GetEventRequest()
        if local0 == 10 then
            arg2:ClearSubGoal()
            BlackOldKing_Act26(arg1, arg2, paramTbl)
            return true
        elseif local0 == 20 then
            arg2:ClearSubGoal()
            BlackOldKing_Act27(arg1, arg2, paramTbl)
            return true
        elseif local0 == 200 then
            arg2:ClearSubGoal()
            BlackOldKing_Act42(arg1, arg2, paramTbl)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if local0 == 30 then
                arg2:ClearSubGoal()
                BlackOldKing_Act28(arg1, arg2, paramTbl)
                return true
            elseif local0 == 40 then
                arg2:ClearSubGoal()
                BlackOldKing_Act29(arg1, arg2, paramTbl)
                return true
            elseif local0 == 50 then
                arg2:ClearSubGoal()
                BlackOldKing_Act30(arg1, arg2, paramTbl)
                return true
            elseif local0 == 60 then
                arg2:ClearSubGoal()
                BlackOldKing_Act31(arg1, arg2, paramTbl)
                return true
            elseif local0 == 80 then
                arg2:ClearSubGoal()
                BlackOldKing_Act32(arg1, arg2, paramTbl)
                return true
            elseif local0 == 90 then
                arg2:ClearSubGoal()
                BlackOldKing_Act33(arg1, arg2, paramTbl)
                return true
            elseif local0 == 100 then
                arg2:ClearSubGoal()
                BlackOldKing_Act34(arg1, arg2, paramTbl)
                return true
            elseif local0 == 110 then
                arg2:ClearSubGoal()
                BlackOldKing_Act35(arg1, arg2, paramTbl)
                return true
            elseif local0 == 120 then
                arg2:ClearSubGoal()
                BlackOldKing_Act36(arg1, arg2, paramTbl)
                return true
            elseif local0 == 130 then
                arg2:ClearSubGoal()
                BlackOldKing_Act37(arg1, arg2, paramTbl)
                return true
            elseif local0 == 140 then
                arg2:ClearSubGoal()
                BlackOldKing_Act38(arg1, arg2, paramTbl)
                return true
            elseif local0 == 170 then
                arg2:ClearSubGoal()
                BlackOldKing_Act39(arg1, arg2, paramTbl)
                return true
            elseif local0 == 180 then
                arg2:ClearSubGoal()
                BlackOldKing_Act40(arg1, arg2, paramTbl)
                return true
            elseif local0 == 190 then
                arg2:ClearSubGoal()
                BlackOldKing_Act41(arg1, arg2, paramTbl)
                return true
            elseif local0 == 210 then
                arg2:ClearSubGoal()
                BlackOldKing_Act43(arg1, arg2, paramTbl)
                return true
            elseif local0 == 220 then
                arg2:ClearSubGoal()
                BlackOldKing_Act44(arg1, arg2, paramTbl)
                return true
            elseif local0 == 230 then
                arg2:ClearSubGoal()
                BlackOldKing_Act45(arg1, arg2, paramTbl)
                return true
            elseif local0 == 250 then
                arg2:ClearSubGoal()
                BlackOldKing_Act46(arg1, arg2, paramTbl)
                return true
            elseif local0 == 260 then
                arg2:ClearSubGoal()
                BlackOldKing_Act47(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_BlackOldKing_514000_AfterAttackAct, "BlackOldKing_514000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackOldKing_514000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    end
    if 4 <= arg1:GetDist(TARGET_ENE_0) and 0.35 <= local0 and arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        if arg1:GetRandam_Int(1, 100) <= 80 or local0 <= 0.5 then
            arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 3.5)
        end
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(4, 5.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg1:Replaning()
        arg1:DeleteObserve(0)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_EventRequest) then
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg1:SetTimer(1, 2)
        return false
    elseif arg1:IsInterupt(INTERUPT_UseItem) then
        arg1:SetTimer(1, 3)
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if arg1:GetRandam_Int(1, 100) <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
        arg1:SetTimer(1, 4)
        arg2:ClearSubGoal()
        arg1:Replaning()
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
        return true
    else
        return false
    end
end

return 
