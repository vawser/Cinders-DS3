RegisterTableGoal(GOAL_ForestSacredBeast312000_Battle, "GOAL_ForestSacredBeast312000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ForestSacredBeast312000_Battle, true)
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
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local7 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 150) and local3 <= 2 then
        local0[4] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 150) and local3 <= 2 then
        local0[3] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 3 then
        local0[5] = 40
        local0[6] = 40
        local0[20] = 20
    else
        if 10 <= local3 then
            local0[1] = 0
            local0[2] = 50
            local0[5] = 0
            local0[6] = 0
            local0[7] = 30
            local0[8] = 20
            local0[21] = 0
            local0[22] = 0
        elseif 6 <= local3 then
            local0[1] = 0
            local0[2] = 20
            local0[5] = 0
            local0[6] = 50
            local0[7] = 0
            local0[8] = 20
            local0[21] = 0
            local0[22] = 0
        elseif 3 <= local3 then
            local0[1] = 5
            local0[2] = 20
            local0[5] = 0
            local0[6] = 30
            local0[7] = 20
            local0[8] = 5
            local0[21] = 0
            local0[22] = 20
        else
            local0[1] = 30
            local0[2] = 0
            local0[5] = 20
            local0[6] = 10
            local0[7] = 0
            local0[8] = 30
            local0[21] = 0
            local0[22] = 0
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[21] = local0[21] + 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 12000) then
            local0[6] = 0
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 5, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 20, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 12, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 5, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 5, local0[8], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act08)
    local1[20] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ForestSacredBeast312000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function ForestSacredBeast312000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 99 - arg0:GetMapHitRadius(TARGET_SELF), 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 6.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.2 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if 3 <= arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 3 + local0, local0, 0) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 30, TARGET_ENE_0, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ForestSacredBeast312000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
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

return 
