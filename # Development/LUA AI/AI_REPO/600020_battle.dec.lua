RegisterTableGoal(GOAL_SnowryDeadWarrior_600020_Battle, "GOAL_SnowryDeadWarrior_600020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SnowryDeadWarrior_600020_Battle, true)
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
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 5021) and arg1:HasSpecialEffectId(TARGET_SELF, 13080) and 12 < arg1:GetDist(TARGET_EVENT) then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_EVENT, 11.5, TARGET_SELF, false, -1)
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[23] = 100
        if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 999) then
            local0[1] = 25
            local0[2] = 25
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 3
        local0[2] = 2
        local0[3] = 0
        local0[4] = 0
        local0[23] = 95
        if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 999) then
            local0[1] = 65
            local0[2] = 30
        end
    elseif 7 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[21] = 0
        local0[23] = 100
        if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 999) then
            local0[3] = 200
        end
    elseif 4 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[21] = 0
        local0[23] = 100
        if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 999) then
            local0[3] = 200
        end
    elseif 1.5 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 0
        local0[4] = 0
        local0[23] = 90
        if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 999) then
            local0[1] = 60
            local0[2] = 30
        end
    else
        local0[1] = 15
        local0[2] = 5
        local0[3] = 0
        local0[4] = 5
        local0[5] = 10
        local0[23] = 65
        if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 999) then
            local0[1] = 75
            local0[2] = 30
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3100, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3101, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 5, local0[4], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act05)
    local1[10] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act16)
    local1[20] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600020_ActAfter_AdjustSpace), local2)
    return 
end

function SnowryDeadWarrior_600020_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.65, 0, 2.65 + 3, 0, 100, 2, 6)
    local local0 = 3100
    local local1 = 2.65 + 3
    local local2 = 999
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.06 + 3, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3103, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 999, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3102, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.81, 0, 2.81 + 3, 0, 100, 2, 6)
    local local0 = 3102
    local local1 = 3103
    local local2 = 3.06 + 1
    local local3 = 999
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3101, TARGET_ENE_0, 2.65 + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.1, 0, 6.1 + 3, 100, 100, 2, 6)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.32, 0, 3.32 + 3, 0, 100, 2, 6)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act05(arg0, arg1, arg2)
    local local0 = 3.32
    local local1 = 0
    local local2 = 3.32 + 3
    local local3 = 0
    local local4 = 100
    local local5 = 2
    local local6 = 6
    local local7 = 3104
    local local8 = 3100
    local local9 = 2.65 + 1
    local local10 = 999
    local local11 = 0
    local local12 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, local7, TARGET_ENE_0, local9, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local8, TARGET_ENE_0, 2.81 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3103, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
    return 
end

function SnowryDeadWarrior_600020_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    return 
end

function SnowryDeadWarrior_600020_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    return 
end

function SnowryDeadWarrior_600020_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    return 
end

function SnowryDeadWarrior_600020_Act14(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 3.5), TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function SnowryDeadWarrior_600020_Act15(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act21(arg0, arg1, arg2)
    local local0 = 5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, 60, true, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, 60, true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 1.5
    local local2 = 0
    local local3 = 5
    local local4 = 0
    local local5 = 100
    local local6 = 2
    local local7 = local1 + 2.5
    if local1 + 2.5 <= local0 then
        local local8 = AI_DIR_TYPE_ToL
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            local8 = AI_DIR_TYPE_ToL
        else
            local8 = AI_DIR_TYPE_ToR
        end
        local local9 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 6, TARGET_ENE_0, local1 + 1, TARGET_SELF, false, 9910, local8, 0.5)
        local9:SetTargetRange(1, local1, 999)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local6, TARGET_ENE_0, local1 + 0, TARGET_SELF, true, 9910)
    elseif local1 + 1 <= local0 then
        local local10 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local6, TARGET_ENE_0, local1 + 0, TARGET_SELF, true, 9910)
        local10:SetTargetRange(0, 0, local7)
    elseif arg0:GetRandam_Int(1, 100) <= 100 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            local local10 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, 0, 60, true, true, 9910)
            local10:SetTargetRange(0, 0, local7)
        else
            local local10 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, 1, 60, true, true, 9910)
            local10:SetTargetRange(0, 0, local7)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(2, 3), 9910, TARGET_ENE_0, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnowryDeadWarrior_600020_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and arg1:GetDist(TARGET_ENE_0) <= 2 then
        if local0 <= 0 then
            arg2:ClearSubGoal()
            SnowryDeadWarrior_600020_Act01(arg1, arg2, paramTbl)
            return true
        elseif local0 <= 100 then
            arg2:ClearSubGoal()
            SnowryDeadWarrior_600020_Act05(arg1, arg2, paramTbl)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and local0 <= 100 then
        arg2:ClearSubGoal()
        SnowryDeadWarrior_600020_Act21(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and (not not arg1:IsTargetOutOfRangeInterruptSlot(0) or arg1:IsTargetOutOfRangeInterruptSlot(1)) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        arg2:AddSubGoal(GOAL_COMMON_Guard, 0.1, 9910, TARGET_ENE_0, true, 0)
        return true
    else
        return 
    end
end

RegisterTableGoal(GOAL_SnowryDeadWarrior_600020_AfterAttackAct, "GOAL_SnowryDeadWarrior_600020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnowryDeadWarrior_600020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 7.5 <= local0 then
        local2[1] = 100
        local2[2] = 0
    elseif 4 <= local0 then
        local2[1] = 100
        local2[2] = 0
    else
        local2[1] = 0
        local2[2] = 100
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 and local3 == 2 then
        SnowryDeadWarrior_600020_Act23(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
