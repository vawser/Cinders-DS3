RegisterTableGoal(GOAL_SnowryDeadWarrior_600000_Battle, "GOAL_SnowryDeadWarrior_600000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SnowryDeadWarrior_600000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0.7)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 5022) and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
        local0[8] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) and not arg1:HasSpecialEffectId(TARGET_SELF, 13080) and not arg1:HasSpecialEffectId(TARGET_SELF, 13081) then
        local0[4] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) and arg1:HasSpecialEffectId(TARGET_SELF, 13080) and 12 < arg1:GetDist(TARGET_EVENT) then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_EVENT, 11.5, TARGET_SELF, false, -1)
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 100
    elseif 4 <= local3 then
        local0[1] = 60
        local0[2] = 0
        local0[3] = 0
        local0[5] = 20
        local0[6] = 20
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
    elseif 2 <= local3 then
        local0[1] = 10
        local0[2] = 5
        local0[3] = 5
        local0[5] = 15
        local0[6] = 15
        local0[11] = 20
        local0[7] = 20
        local0[21] = 0
        local0[23] = 10
        if not arg1:IsFinishTimer(0) then
            local0[11] = 1
        end
    else
        local0[1] = 5
        local0[2] = 10
        local0[3] = 5
        local0[7] = 40
        local0[11] = 25
        local0[23] = 15
        if not arg1:IsFinishTimer(0) then
            local0[11] = 1
        end
    end
    local0[2] = SetCoolTime(arg1, arg2, 3002, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 5, local0[3], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3010, 5, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3011, 5, local0[6], 1)
    if SpaceCheck(arg1, arg2, -90, 3) == false then
        local0[5] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 3) == false then
        local0[6] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        local0[7] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act16)
    local1[20] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600000_ActAfter_AdjustSpace), local2)
    return 
end

function SnowryDeadWarrior_600000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.3, 0, 7.3 + arg0:GetStringIndexedNumber("AddDistRun") + 1, 0, 0, 2, 6)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.35, 0, 1.35 + arg0:GetStringIndexedNumber("AddDistRun") + 1, 100, 0, 4, 8)
    local local0 = 3002
    local local1 = 3003
    local local2 = 0.92 + 3
    local local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 1.1 + 3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.8, 0, 2.8 + arg0:GetStringIndexedNumber("AddDistRun") + 1, 100, 0, 2, 6)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act04(arg0, arg1, arg2)
    if not arg0:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 999) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 0, 4 + arg0:GetStringIndexedNumber("AddDistRun") + 1, 0, 0, 2, 6)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 0, 4 + arg0:GetStringIndexedNumber("AddDistRun") + 1, 0, 0, 2, 6)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act08(arg0, arg1, arg2)
    local local0 = 7.3
    local local1 = 0
    local local2 = 7.3 + arg0:GetStringIndexedNumber("AddDistRun") + 1
    local local3 = 0
    local local4 = 0
    local local5 = 2
    local local6 = 6
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
    return 
end

function SnowryDeadWarrior_600000_Act11(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    local0:TimingSetTimer(0, 5, AI_TIMING_SET__ACTIVATE)
    return 
end

function SnowryDeadWarrior_600000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    return 
end

function SnowryDeadWarrior_600000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    return 
end

function SnowryDeadWarrior_600000_Act14(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 3.5), TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function SnowryDeadWarrior_600000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act21(arg0, arg1, arg2)
    local local0 = 4
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, 60, true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, 60, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act22(arg0, arg1, arg2)
    local local0 = false
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local0 = true
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 6, TARGET_ENE_0, local0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 6.5
    local local2 = 2.5
    local local3 = 9
    local local4 = 2
    if local1 + 1 <= local0 then
        Approach_Act_Flex(arg0, arg1, local1, 0, 16, 0, 0, local2, 6)
    elseif local0 <= local1 - 1 then
        local local5 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local1, TARGET_ENE_0, true, -1)
        local5:SetTargetRange(1, local4, 999)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local5 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, 60, true, true, -1)
        local5 = local5:SetTargetRange(1, local4, 999)
        local5:SetTargetRange(0, 0, local3)
    else
        local local5 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, 60, true, true, -1)
        local5 = local5:SetTargetRange(1, local4, 999)
        local5:SetTargetRange(0, 0, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnowryDeadWarrior_600000_AfterAttackAct, 10)
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
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(1) and 10 <= arg1:GetAttackPassedTime(3012) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        SnowryDeadWarrior_600000_Act07(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SnowryDeadWarrior_600000_AfterAttackAct, "GOAL_SnowryDeadWarrior_600000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnowryDeadWarrior_600000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 8 <= local0 then
        local2[1] = 100
        local2[2] = 0
    elseif 4 <= local0 then
        local2[1] = 60
        local2[2] = 40
    else
        local2[1] = 100
        local2[2] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 and local3 == 2 then
        SnowryDeadWarrior_600000_Act23(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function SnowryDeadWarrior_600000_607000_Approach_Act(arg0, arg1, arg2)
    local local0 = 4
    local local1 = 0
    local local2 = 16
    local local3 = 0
    local local4 = 2
    local local5 = 6
    Approach_Act_Flex(arg0, arg1, local0 + 3, local1, local2, 100, local3, local4, local5)
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 0, local3, local4, local5)
    return 
end

return 
