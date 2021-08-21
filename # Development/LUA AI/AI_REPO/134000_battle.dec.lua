RegisterTableGoal(GOAL_RounoSibito134000_Battle, "GOAL_RounoSibito134000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RounoSibito134000_Battle, true)
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
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if local3 <= 3 then
            local0[5] = 80
            local0[20] = 20
        else
            local0[20] = 100
        end
    else
        if 15 <= local3 then
            local0[1] = 100
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
        elseif 10 <= local3 then
            local0[1] = 40
            local0[2] = 0
            local0[3] = 60
            local0[4] = 0
            local0[5] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
        elseif 4.8 <= local3 then
            local0[1] = 0
            local0[2] = 40
            local0[3] = 40
            local0[4] = 0
            local0[5] = 0
            local0[21] = 0
            local0[22] = 20
            local0[23] = 0
        elseif 1 <= local3 then
            local0[1] = 0
            local0[2] = 40
            local0[3] = 0
            local0[4] = 40
            local0[5] = 0
            local0[21] = 0
            local0[22] = 20
            local0[23] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 20
            local0[5] = 60
            local0[21] = 0
            local0[22] = 20
            local0[23] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 12021) then
            local0[3] = 0
            local0[4] = 1
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 0, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 5, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 5, local0[5], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act05)
    local1[20] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, RounoSibito134000_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, RounoSibito134000_ActAfter_AdjustSpace), local2)
    return 
end

function RounoSibito134000_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RounoSibito134000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RounoSibito134000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RounoSibito134000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RounoSibito134000_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 99 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RounoSibito134000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RounoSibito134000_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 90), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RounoSibito134000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RounoSibito134000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RounoSibito134000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RounoSibito134000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

RegisterTableGoal(GOAL_RounoSibito134000_AfterAttackAct, "GOAL_RounoSibito134000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RounoSibito134000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    if 12 < local0 then
        arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, 0, 0, 0)
    elseif 8 < local0 then
        arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    elseif 6 < local0 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg1:GetRandam_Int(60, 90), true, true, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg1:GetRandam_Int(60, 90), true, true, 0)
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
