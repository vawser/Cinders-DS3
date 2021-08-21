RegisterTableGoal(GOAL_MoujaDogSmall_202100_Battle, "GOAL_MoujaDogSmall_202100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaDogSmall_202100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12012)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 6 < local3 then
            local0[11] = 0
            local0[20] = 100
        elseif 2 < local3 then
            local0[11] = 30
            local0[20] = 70
        else
            local0[11] = 50
            local0[20] = 50
        end
    elseif 7 <= local3 then
        local0[1] = 0
        local0[2] = 5
        local0[3] = 40
        local0[4] = 5
        local0[5] = 20
        local0[6] = 20
        local0[7] = 0
        local0[10] = 10
        local0[11] = 0
    elseif 5 <= local3 then
        local0[1] = 10
        local0[2] = 20
        local0[3] = 35
        local0[4] = 35
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[10] = 0
        local0[11] = 0
    elseif 3 < local3 then
        local0[1] = 20
        local0[2] = 40
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[10] = 0
        local0[11] = 20
    else
        local0[1] = 30
        local0[2] = 20
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[10] = 0
        local0[11] = 30
    end
    local0[3] = SetCoolTime(arg1, arg2, 3005, 10, local0[3], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3010, 10, local0[7], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3011, 10, local0[7], 0)
    local0[11] = SetCoolTime(arg1, arg2, 6002, 5, local0[11], 0)
    local0[11] = SetCoolTime(arg1, arg2, 6003, 5, local0[11], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act07)
    local1[10] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaDogSmall202100_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaDogSmall202100_Act01(arg0, arg1, arg2)
    local local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 3000
    if local1 < arg0:GetDist(TARGET_ENE_0) then
        local0 = local0 + 0.3
        local2 = 3007
    end
    Approach_Act_Flex(arg0, arg1, local0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    if arg0:GetRandam_Int(1, 100) < 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act02(arg0, arg1, arg2)
    local local0 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 3002
    if local1 < arg0:GetDist(TARGET_ENE_0) then
        local0 = local0 + 0.3
        local2 = 3003
    end
    Approach_Act_Flex(arg0, arg1, local0, 2.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act04(arg0, arg1, arg2)
    local local0 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local2 = 3008
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        local0 = local0 + 0.3
        local2 = 3009
    end
    Approach_Act_Flex(arg0, arg1, local0, 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act05(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    if local1 < arg0:GetDist(TARGET_ENE_0) then
        local0 = local0 + 0.3
    end
    Approach_Act_Flex(arg0, arg1, local0, 7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act06(arg0, arg1, arg2)
    local local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    if local1 < arg0:GetDist(TARGET_ENE_0) then
        local0 = local0 + 0.3
    end
    Approach_Act_Flex(arg0, arg1, local0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local1, 0, 0, 1.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act07(arg0, arg1, arg2)
    local local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), 2, TARGET_SELF, false)
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(1, 5)
    if InsideRange(arg0, arg1, 90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    elseif InsideRange(arg0, arg1, -90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDogSmall202100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaDogSmall_202100_AfterAttackAct, 10)
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
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 12012 then
        arg2:ClearSubGoal()
        MoujaDogSmall202100_Act03(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_MoujaDogSmall_202100_AfterAttackAct, "GOAL_MoujaDogSmall_202100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaDogSmall_202100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 1 then
            if local1 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            end
        elseif local0 <= 3 and local1 <= 10 then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(1, 1.5), TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(1, 1.5), TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        end
    else
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 999, TARGET_SELF, false, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
