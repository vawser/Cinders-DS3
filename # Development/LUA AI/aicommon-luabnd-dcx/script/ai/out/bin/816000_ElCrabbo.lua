RegisterTableGoal(GOAL_ElCrabbo_816000_Battle, "GOAL_ElCrabbo_816000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ElCrabbo_816000_Battle, true)

Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    
    if arg1:GetHpRate(TARGET_SELF) <= 0.75 and arg1:GetNpcThinkParamID() == 227000 and not arg1:HasSpecialEffectId(TARGET_ENE_0, 4300) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 4310) then
        local0[27] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if 8 <= local3 then
            if InsideRange(arg1, arg2, 157.5, 45, -999, 999) then
                local0[22] = 70
                local0[20] = 30
            else
                local0[23] = 70
                local0[20] = 30
            end
        else
            local0[20] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if 23 <= local3 then
            local0[22] = 85
            local0[28] = 15
        elseif 8 <= local3 then
            local0[24] = 85
            local0[28] = 15
        elseif 3 <= local3 then
            local0[13] = 80
            local0[28] = 10
            local0[11] = 10
        else
            local0[12] = 40
            local0[16] = 40
            local0[11] = 10
            local0[10] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if 23 <= local3 then
            local0[23] = 85
            local0[28] = 15
        elseif 8 <= local3 then
            local0[25] = 85
            local0[28] = 15
        elseif 3 <= local3 then
            local0[15] = 80
            local0[28] = 10
            local0[11] = 10
        else
            local0[14] = 25
            local0[17] = 55
            local0[11] = 10
            local0[10] = 10
        end
    elseif 8 <= local3 then
        if InsideRange(arg1, arg2, 22.5, 45, -999, 999) then
            local0[22] = 70
            local0[28] = 30
        else
            local0[23] = 70
            local0[20] = 30
        end
    elseif 3 <= local3 then
        local0[2] = 10
        local0[3] = 10
        local0[5] = 0
        local0[7] = 0
        local0[8] = 10
        local0[9] = 35
        local0[11] = 35
    else
        local0[1] = 15
        local0[4] = 5
        local0[6] = 0
        local0[7] = 20
        local0[9] = 0
        local0[10] = 40
        local0[11] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 20, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3009, 10, local0[10], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act17)
    local1[20] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, ElCrabbo_816000_Act28)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ElCrabbo_816000_ActAfter_AdjustSpace), local2)
    return 
end

function ElCrabbo_816000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF), 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.1 - arg0:GetMapHitRadius(TARGET_SELF), 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.8 - arg0:GetMapHitRadius(TARGET_SELF), 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.7 - arg0:GetMapHitRadius(TARGET_SELF), 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.9 - arg0:GetMapHitRadius(TARGET_SELF), 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 85
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), -1, 35, 0, 0)
    GetWellSpace_Odds = 85
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11.1 - arg0:GetMapHitRadius(TARGET_SELF), 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), -1, 30, 0, 0)
    GetWellSpace_Odds = 85
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act12(arg0, arg1, arg2)
    local local0 = 3011
    local local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act13(arg0, arg1, arg2)
    local local0 = 3012
    local local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act14(arg0, arg1, arg2)
    local local0 = 3018
    local local1 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act15(arg0, arg1, arg2)
    local local0 = 3014
    local local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act22(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 6, 6003, TARGET_ENE_0, 10, 7)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act23(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 6, 6002, TARGET_ENE_0, 10, 7)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act24(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 3, 6003, TARGET_ENE_0, 10, 7)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act25(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 3, 6002, TARGET_ENE_0, 10, 7)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 4.5), TARGET_NONE, 0, 0, 0)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 6, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElCrabbo_816000_Act28(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3, 999, 999, 0, 0, 10, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElCrabbo_816000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
