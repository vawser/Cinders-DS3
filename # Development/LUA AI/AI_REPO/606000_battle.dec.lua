RegisterTableGoal(GOAL_SnowWoman_606000_Battle, "GOAL_SnowWoman_606000_Battle")
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetHpRate(TARGET_SELF)
    if arg1:GetEventRequest(0) == 100 and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0[7] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0[5] = 1000
    elseif arg1:GetNpcThinkParamID() == 606001 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0[6] = 1000
    elseif arg1:GetNpcThinkParamID() == 606002 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0[5] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            if 5 <= local3 then
                local0[20] = 1000
            else
                local0[15] = 100
                local0[20] = 900
            end
        elseif 5 <= local3 then
            local0[10] = 250
            local0[11] = 500
            local0[14] = 200
            local0[15] = 50
        else
            local0[10] = 350
            local0[11] = 250
            local0[14] = 350
            local0[15] = 50
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13000) then
        if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            local0[22] = 1000
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if 3 <= local3 then
                local0[5] = 100
                local0[21] = 0
                local0[22] = 600
            else
                local0[4] = 100
                local0[6] = 200
                local0[21] = 0
                local0[22] = 700
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            if 5 <= local3 then
                local0[20] = 1000
            else
                local0[4] = 100
                local0[20] = 900
            end
        elseif 5 <= local3 then
            local0[5] = 1000
        else
            local0[4] = 100
            local0[5] = 400
            local0[6] = 500
        end
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 1000
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if 6 <= local3 then
            local0[3] = 400
            local0[21] = 0
            local0[22] = 600
        elseif 3 <= local3 then
            local0[1] = 100
            local0[2] = 100
            local0[3] = 200
            local0[21] = 0
            local0[22] = 600
        else
            local0[4] = 200
            local0[6] = 200
            local0[21] = 0
            local0[22] = 600
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 5 <= local3 then
            local0[20] = 1000
        else
            local0[4] = 100
            local0[20] = 900
        end
    elseif 8 <= local3 then
        local0[2] = 0
        local0[3] = 1000
    elseif 6 <= local3 then
        local0[2] = 400
        local0[3] = 600
    elseif 3 <= local3 then
        local0[1] = 300
        local0[2] = 250
        local0[4] = 0
        local0[6] = 450
    else
        local0[2] = 0
        local0[4] = 200
        local0[6] = 800
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 13000) then
        local0[5] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3001, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3005, 15, local0[2], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3012, 15, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3003, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3004, 15, local0[6], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3004, 15, local0[15], 0)
    local0[15] = SetCoolTime(arg1, arg2, 3010, 5, local0[15], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act07)
    local1[10] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnowWoman_606000_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnowWoman_606000_ActAfter_AdjustSpace), local2)
    return 
end

function SnowWoman_606000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10, 10, 10 + 999, 0, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 17.5, 17.5, 17.5 + 999, 0, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 17, 17, 17 + 999, 0, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5, 5 + 999, 0, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15, 15, 15 + 999, 0, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5, 5 + 999, 0, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act07(arg0, arg1, arg2)
    local local0 = 4.8
    local local1 = 4.8
    local local2 = 4.8 + 999
    local local3 = 0
    local local4 = 0
    local local5 = 3
    local local6 = 5
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    SnowWoman_606000_Act10(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act10(arg0, arg1, arg2)
    local local0 = 6.1
    Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 999, 100, 0, 3, 5)
    local local1 = 3000
    local local2 = 3003
    local local3 = 5.6
    local local4 = 999
    local local5 = 0
    local local6 = 0
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local5, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act11(arg0, arg1, arg2)
    local local0 = 9.4 - 3
    Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 999, 100, 0, 3, 5)
    local local1 = 9.4
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act12(arg0, arg1, arg2)
    local local0 = 6.1
    Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 999, 100, 0, 3, 5)
    local local1 = 3002
    local local2 = 999
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, local2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act13(arg0, arg1, arg2)
    local local0 = 9.4
    Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 999, 100, 0, 3, 5)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act14(arg0, arg1, arg2)
    local local0 = 5.6
    Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 999, 100, 0, 3, 5)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act15(arg0, arg1, arg2)
    local local0 = 5
    Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 999, 100, 0, 3, 5)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act21(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    local0:SetTargetRange(0, 3, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act22(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, -1)
    local0:SetTargetRange(1, 3, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowWoman_606000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnowWoman_606000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and (not not arg1:IsTargetOutOfRangeInterruptSlot(0) or arg1:IsTargetOutOfRangeInterruptSlot(1)) then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SnowWoman_606000_AfterAttackAct, "GOAL_SnowWoman_606000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnowWoman_606000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 5 <= local0 then
        local2[1] = 30
        local2[2] = 60
        local2[3] = 10
    elseif 3 <= local0 then
        local2[1] = 30
        local2[2] = 35
        local2[3] = 35
    else
        local2[1] = 30
        local2[2] = 20
        local2[3] = 50
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            SnowWoman_606000_Act22(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            SnowWoman_606000_Act21(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
