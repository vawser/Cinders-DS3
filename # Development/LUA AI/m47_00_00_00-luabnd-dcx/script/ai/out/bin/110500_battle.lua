RegisterTableGoal(GOAL_MoujaSoldier_Axe_110500_Battle, "MoujaSoldier_Axe_110500_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Axe_110500_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetRandam_Int(1, 100)
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 60
        local0[12] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 5
        local0[2] = 5
        local0[4] = 0
        local0[11] = 50
        local0[12] = 35
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and 2 <= local3 and local3 <= 10 then
        local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 2 then
        local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 2 then
        local0[6] = 60
        local0[4] = 20
        local0[13] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 2 then
        local0[7] = 60
        local0[4] = 20
        local0[13] = 20
    elseif 12 <= local3 then
        local0[1] = 15
        local0[2] = 35
        local0[3] = 50
        local0[4] = 0
        local0[5] = 0
        local0[12] = 0
    elseif 7.5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 60
        local0[4] = 0
        local0[5] = 0
        local0[12] = 0
    elseif 5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 50
        local0[4] = 0
        local0[5] = 10
        local0[12] = 0
    elseif 2.5 <= local3 then
        local0[1] = 35
        local0[2] = 30
        local0[3] = 0
        local0[4] = 25
        local0[5] = 10
        local0[12] = 0
    else
        local0[1] = 40
        local0[2] = 0
        local0[3] = 0
        local0[4] = 50
        local0[5] = 10
        local0[12] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 5, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 10, local0[5], 1)
    if arg1:IsFinishTimer(0) == false and 0 < local0[13] then
        local0[13] = 1
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Axe_110500_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Axe_110500_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Axe_110500_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Axe_110500_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Axe_110500_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Axe_110500_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Axe_110500_Act07)
    local1[11] = REGIST_FUNC(arg1, arg2, Axe_110500_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Axe_110500_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, Axe_110500_Act13)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Axe_110500_ActAfter_AdjustSpace), local2)
    return 
end

function Axe_110500_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 8)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3005
    local local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local4 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local5 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if local8 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local6, local7, 0, 0)
    elseif local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Axe_110500_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Axe_110500_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.8 - arg0:GetMapHitRadius(TARGET_SELF), 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Axe_110500_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 8)
    local local0 = 3004
    local local1 = 3013
    local local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
        end
    elseif local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Axe_110500_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 8)
    local local0 = 3007
    local local1 = 3001
    local local2 = 3005
    local local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local4 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local5 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if local8 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local6, local7, 0, 0)
    elseif local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Axe_110500_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Axe_110500_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF), 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Axe_110500_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Axe_110500_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Axe_110500_Act13(arg0, arg1, arg2)
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Axe_110500_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_Axe_110500_AfterAttackAct, 10)
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
    elseif Damaged_Act(arg1, arg2, 3.5, 40) then
        arg2:ClearSubGoal()
        return true
    else
        local local0 = 6 - arg1:GetMapHitRadius(TARGET_SELF)
        local local1 = 0
        local local2 = 20
        local local3 = arg1:GetDist(TARGET_ENE_0)
        local local4 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 2 and local4 <= 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local0, local1, local2, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 2 and local4 <= 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local0, local1, local2, 0, 0)
            return true
        else
            return false
        end
    end
end

RegisterTableGoal(GOAL_MoujaSoldier_Axe_110500_AfterAttackAct, "MoujaSoldier_Axe_110500_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Axe_110500_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = arg1:GetRandam_Float(2.5, 4.5)
    local local4 = arg1:GetRandam_Int(0, 1)
    local local5 = arg1:GetRandam_Int(30, 45)
    local local6 = arg1:GetRandam_Float(2.5, 4.5)
    local local7 = local0 + arg1:GetRandam_Float(2.5, 4.5)
    local local8 = -1
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 8, TARGET_ENE_0, true, local8)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 8, TARGET_ENE_0, true, local8)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
        end
    elseif 8 <= local0 and arg1:GetRandam_Int(1, 100) <= 20 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local4, local5, true, true, local8)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
