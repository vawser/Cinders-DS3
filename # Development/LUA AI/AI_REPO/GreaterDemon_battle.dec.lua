RegisterTableGoal(GOAL_GreaterDemon_Battle, "GOAL_GreaterDemon_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GreaterDemon_Battle, true)
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
    local local7 = arg1:GetDist(TARGET_ENE_0)
    local local8 = arg1:GetHpRate(TARGET_SELF)
    if 11 <= local7 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[21] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            local0[6] = 20
            local0[7] = 20
            local0[11] = 60
            local0[21] = 1
        else
            local0[6] = 50
            local0[7] = 50
            local0[21] = 1
        end
    elseif 5.5 <= local7 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[2] = 50
                local0[11] = 50
                local0[21] = 1
            else
                local0[1] = 50
                local0[11] = 50
                local0[21] = 1
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[6] = 40
            local0[2] = 40
            local0[21] = 20
        else
            local0[6] = 40
            local0[1] = 40
            local0[21] = 20
        end
    elseif 1.5 <= local7 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[4] = 20
                local0[5] = 40
                local0[11] = 40
                local0[21] = 1
            else
                local0[3] = 20
                local0[5] = 40
                local0[11] = 40
                local0[21] = 1
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[2] = 50
            local0[4] = 50
            local0[21] = 1
        else
            local0[1] = 50
            local0[3] = 50
            local0[21] = 1
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[4] = 50
            local0[10] = 50
            local0[21] = 1
        else
            local0[3] = 50
            local0[10] = 50
            local0[21] = 1
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[8] = 40
        local0[9] = 60
        local0[21] = 1
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local0[4] = 50
        local0[8] = 50
        local0[21] = 1
    else
        local0[3] = 50
        local0[8] = 50
        local0[21] = 1
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 8, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 8, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3007, 8, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3008, 8, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3009, 8, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3010, 8, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3011, 8, local0[11], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GreaterDemon_Battle_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GreaterDemon_ActAfter_AdjustSpace), local2)
    return 
end

function GreaterDemon_Battle_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act03(arg0, arg1, arg2)
    local local0 = 3002
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act04(arg0, arg1, arg2)
    local local0 = 3004
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20.6, 20.6, 20.6, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 27.8, 27.8, 27.8, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15, 15, 15, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DragonGuardianKnight_316000_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon_Battle_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and local0 <= 5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and local1 <= 80 then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and local0 <= 5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and local1 <= 80 then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
        return true
    else
        return false
    end
end

return 
