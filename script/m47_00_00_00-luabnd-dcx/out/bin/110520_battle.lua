RegisterTableGoal(GOAL_MoujaSoldier_Wizard_110520_Battle, "MoujaSoldier_Wizard_110520_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Wizard_110520_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetRandam_Int(1, 100)
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 60
        local0[12] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[11] = 50
        local0[12] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[13] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if 15 <= local3 then
            local0[1] = 20
            local0[12] = 20
        elseif 10 <= local3 then
            local0[1] = 20
            local0[14] = 20
            local0[12] = 10
        elseif 6 <= local3 then
            local0[1] = 10
            local0[14] = 20
        elseif 1.5 <= local3 then
            local0[12] = 1
            local0[14] = 30
        else
            local0[5] = 10
            local0[14] = 10
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        if 10 <= local3 then
            local0[2] = 10
            local0[12] = 10
        elseif 4 <= local3 then
            local0[2] = 30
            local0[14] = 10
        elseif 1.5 <= local3 then
            local0[2] = 10
            local0[14] = 20
        else
            local0[5] = 10
            local0[14] = 10
        end
    elseif 15 <= local3 then
        local0[1] = 10
        local0[14] = 10
        local0[12] = 10
    elseif 8 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[14] = 10
    elseif 4 <= local3 then
        local0[2] = 30
        local0[14] = 10
    elseif 1.5 <= local3 then
        local0[2] = 10
        local0[14] = 30
    else
        local0[5] = 10
        local0[14] = 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3020, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3021, 8, local0[2], 1)
    if arg1:IsFinishTimer(0) == false and 0 < local0[13] then
        local0[13] = 1
    end
    if arg1:IsFinishTimer(1) == false and 0 < local0[14] then
        local0[14] = 1
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Wizard_110520_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Wizard_110520_Act02)
    local1[5] = REGIST_FUNC(arg1, arg2, Wizard_110520_Act05)
    local1[11] = REGIST_FUNC(arg1, arg2, Wizard_110520_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Wizard_110520_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, Wizard_110520_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, Wizard_110520_Act14)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Wizard_110520_ActAfter_AdjustSpace), local2)
    return 
end

function Wizard_110520_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Wizard_110520_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 20 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Wizard_110520_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Wizard_110520_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Wizard_110520_Act12(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    local0:SetTargetRange(1, 0.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Wizard_110520_Act13(arg0, arg1, arg2)
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Wizard_110520_Act14(arg0, arg1, arg2)
    arg0:SetTimer(1, 6)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
    local0:SetTargetRange(1, 1, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Wizard_110520_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_Wizard_110520_AfterAttackAct, 10)
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
        arg2:ClearSubGoal()
        return true
    elseif Damaged_Act(arg1, arg2, 3.5, 40) then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_MoujaSoldier_Wizard_110520_AfterAttackAct, "MoujaSoldier_Wizard_110520_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_Wizard_110520_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = 0
    local local4 = arg1:GetRandam_Float(2.5, 4.5)
    local local5 = arg1:GetRandam_Int(0, 1)
    local local6 = arg1:GetRandam_Int(30, 45)
    local local7 = arg1:GetRandam_Float(2.5, 4.5)
    local local8 = local0 + arg1:GetRandam_Float(2.5, 4.5)
    local local9 = -1
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, 8, TARGET_ENE_0, true, local9)
            local10:SetTargetRange(1, 1, 999)
        else
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, 8, TARGET_ENE_0, true, local9)
            local10:SetTargetRange(1, 1, 999)
        else
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif 6 <= local0 then
        if local2 <= 50 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif 4 <= local0 then
        if local2 <= 35 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif 2 <= local0 then
        if local2 <= 10 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        elseif local2 <= 15 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif 0.5 <= local0 then
        if local2 <= 0 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
            local10:SetTargetRange(1, 1, 999)
        elseif local2 <= 15 then
            local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, local9)
            local10:SetTargetRange(1, 1, 999)
        end
    elseif local2 <= 0 then
        local local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, local6, true, true, local9)
        local10:SetTargetRange(1, 1, 999)
    elseif local2 <= 15 then
        local local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, local7, TARGET_ENE_0, local8, TARGET_ENE_0, true, local9)
        local10:SetTargetRange(1, 1, 999)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

return 
