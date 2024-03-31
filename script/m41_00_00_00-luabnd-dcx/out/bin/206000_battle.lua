RegisterTableGoal(GOAL_Revived_206000_Battle, "Revived_206000_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 3 then
        local0[4] = 30
        local0[5] = 30
        local0[20] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 3 then
        local0[5] = 85
        local0[20] = 15
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 3 then
        local0[4] = 85
        local0[20] = 15
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 3 < local3 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 3 < local3 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[30] = 100
    elseif 9 <= local3 then
        local0[1] = 25
        local0[2] = 60
        local0[3] = 15
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
    elseif 5.5 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 15
        local0[4] = 10
        local0[5] = 20
        local0[6] = 25
    elseif 3.8 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 20
        local0[4] = 10
        local0[5] = 20
        local0[6] = 30
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 15
        local0[4] = 20
        local0[5] = 30
        local0[6] = 35
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3006, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3009, 8, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3001, 8, local0[6], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Revived_206000_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Revived_206000_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Revived_206000_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Revived_206000_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Revived_206000_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Revived_206000_Battle_Act06)
    local1[20] = REGIST_FUNC(arg1, arg2, Revived_206000_Battle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Revived_206000_Battle_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Revived_206000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function Revived_206000_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 60, 0, 5, 5)
    local local0 = 3000
    local local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = -1
    local local3 = 45
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived_206000_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.8 - arg0:GetMapHitRadius(TARGET_SELF), 12.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 12.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 100, 0, 3, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), -1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived_206000_Battle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF), 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 60, 0, 3, 10)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived_206000_Battle_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 60, 0, 3, 10)
    local local0 = 3008
    local local1 = 3011
    local local2 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local3 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = -1
    local local5 = 45
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    elseif local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local3, 0, 0)
    elseif local6 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived_206000_Battle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 60, 0, 3, 10)
    local local0 = 3009
    local local1 = 3010
    local local2 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local3 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = -1
    local local5 = 45
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    elseif local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0, 0)
    elseif local6 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived_206000_Battle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 3, 10)
    local local0 = 3001
    local local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = -1
    local local3 = 45
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived_206000_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Revived_206000_Battle_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Revived_206000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Revived_206000_Battle_AfterAttackAct, 10)
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
    else
        return false
    end
end

RegisterTableGoal(GOAL_Revived_206000_Battle_AfterAttackAct, "Revived_206000_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Revived_206000_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if not (local3 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or local3 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local1 <= 85 then
            arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(1, 2.5), TARGET_NONE, 0, 0, 0)
        end
    elseif 4.5 > arg1:GetDist(TARGET_ENE_0) and local1 <= 30 then
        local local4 = oal
        local4:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(1, 2.5), TARGET_NONE, 0, 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
