RegisterTableGoal(GOAL_SnowryDeadWarrior_600030_Battle, "GOAL_SnowryDeadWarrior_600030_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SnowryDeadWarrior_600030_Battle, true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 5021) and arg1:HasSpecialEffectId(TARGET_SELF, 13080) and 12 < arg1:GetDist(TARGET_EVENT) then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_EVENT, 11.5, TARGET_SELF, false, -1)
    elseif arg1:GetNpcThinkParamID() == 600031 and not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        local0[6] = 1000
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 220) then
        local0[20] = 1000
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[25] = 1000
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if 3 <= local3 then
            local0[4] = 400
            local0[25] = 600
        else
            local0[3] = 400
            local0[25] = 600
        end
    elseif 7 <= local3 then
        local0[1] = 1
        local0[2] = 1
        local0[3] = 0
        local0[4] = 998
    elseif 5 <= local3 then
        local0[1] = 1
        local0[2] = 1
        local0[3] = 0
        local0[4] = 998
    elseif 3 <= local3 then
        local0[1] = 1
        local0[2] = 1
        local0[3] = 997
        local0[4] = 1
    else
        local0[1] = 200
        local0[2] = 100
        local0[3] = 0
        local0[4] = 0
        local0[5] = 700
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3007, 5, local0[3], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 5, local0[5], 1)
    if not SpaceCheck(arg1, arg2, 0, 15) then
        local0[3] = 0
        local0[5] = 0
        local0[7] = 0
    end
    if not SpaceCheck(arg1, arg2, 180, 4) then
        local0[5] = 0
    end
    if not SpaceCheck(arg1, arg2, 90, 3) and not SpaceCheck(arg1, arg2, -90, 3) then
        local0[23] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
        local0[3] = 0
        local0[5] = 0
        local0[7] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act07)
    local1[19] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600030_ActAfter_AdjustSpace), local2)
    return 
end

function SnowryDeadWarrior_600030_Act01(arg0, arg1, arg2)
    local local0 = 2.8
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 75, 0, 4, 8)
    local local1 = 3000
    local local2 = 999
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.7, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act02(arg0, arg1, arg2)
    local local0 = 2.6
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 75, 0, 4, 8)
    local local1 = 3003
    local local2 = 999
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 2.8, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 2.8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local0 = 5
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 75, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act04(arg0, arg1, arg2)
    local local0 = 22
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 50, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    if not SpaceCheck(arg0, arg1, 0, 2) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local local2 = arg0:GetRandam_Float(1.5, 3)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and not arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki and arg0:GetNpcThinkParamID() ~= 600031 and arg0:GetNpcThinkParamID() ~= 600032 then
        if local1 <= 25 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local2, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
        elseif local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, 60, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, 60, true, true, -1)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act05(arg0, arg1, arg2)
    local local0 = 5
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 75, 0, 4, 8)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act06(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act07(arg0, arg1, arg2)
    local local0 = 22
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 75, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act19(arg0, arg1, arg2)
    local local0 = 5
    Approach_Act_Flex(arg0, arg1, local0, local0 + 1.5, local0 + 4, 75, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act21(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    local local1 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 6), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, local0)
    local1:SetTargetRange(0, 1.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act22(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, local0)
    local1:SetTargetRange(0, 1.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if not SpaceCheck(arg0, arg1, 90, 5) then
        local0 = 100
    elseif not SpaceCheck(arg0, arg1, -90, 5) then
        local0 = 0
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    local local2 = 0
    local local3 = 5
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(2, 3)
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = local1 + 2
    if local1 + 5 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 6, TARGET_ENE_0, local1 + 3, TARGET_SELF, false, -1)
    elseif local1 + 2 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local6, TARGET_ENE_0, local1, TARGET_SELF, true, -1)
    elseif local0 <= local1 - 2 then
        local local9 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local1, TARGET_ENE_0, true, -1)
        local9:SetTargetRange(0, 1.5, 999)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local9 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, 0, 60, true, true, -1)
        local9:SetTargetRange(0, 1.5, 999)
    else
        local local9 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, 1, 60, true, true, -1)
        local9:SetTargetRange(0, 1.5, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnowryDeadWarrior_600030_AfterAttackAct, 10)
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
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SnowryDeadWarrior_600030_AfterAttackAct, "GOAL_SnowryDeadWarrior_600030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnowryDeadWarrior_600030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    local local2 = {}
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local2[1] = 70
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 30
    elseif 7 <= local0 then
        local2[1] = 0
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 100
    elseif 3 <= local0 then
        local2[1] = 30
        local2[2] = 30
        local2[3] = 10
        local2[4] = 0
        local2[5] = 30
    else
        local2[1] = 60
        local2[2] = 20
        local2[3] = 20
        local2[4] = 0
        local2[5] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            SnowryDeadWarrior_600030_Act24(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            SnowryDeadWarrior_600030_Act23(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            SnowryDeadWarrior_600030_Act22(arg1, arg2, paramTbl)
        elseif local3 == 5 then
            SnowryDeadWarrior_600030_Act21(arg1, arg2, paramTbl)
        elseif local3 == 6 then
            SnowryDeadWarrior_600030_Act25(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
