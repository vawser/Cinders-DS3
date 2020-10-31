RegisterTableGoal(GOAL_NPC_Bazdulk, "GOAL_NPC_Bazdulk")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Bazdulk, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:GetHpRate(TARGET_SELF) <= 0.65 and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0[15] = 100
    elseif SpaceCheck(arg1, arg2, 0, 4) == false and 4 < local3 then
        local0[24] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if 3 <= local3 then
            local0[20] = 100
        else
            local0[9] = 60
            local0[10] = 20
            local0[20] = 20
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3802352) then
        local0[13] = 10
    elseif 16 <= local3 then
        local0[1] = 10
        local0[2] = 40
        local0[3] = 30
        local0[5] = 10
        local0[6] = 10
        local0[21] = 1
    elseif 10 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 20
        local0[5] = 20
        local0[6] = 20
        local0[21] = 1
    elseif 3.2 <= local3 then
        local0[2] = 20
        local0[6] = 30
        local0[7] = 30
        local0[8] = 20
        local0[21] = 1
    elseif 1.5 <= local3 then
        local0[4] = 30
        local0[8] = 20
        local0[11] = 20
        local0[12] = 30
        local0[21] = 1
    else
        local0[4] = 20
        local0[9] = 20
        local0[10] = 20
        local0[11] = 20
        local0[12] = 20
        local0[21] = 1
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0[7] = 0
        local0[12] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 16, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 16, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 60, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 16, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 16, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 16, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3007, 30, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3008, 16, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3009, 16, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3010, 30, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3011, 16, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3012, 30, local0[12], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act13)
    local1[15] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DaemonFirewood_306000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function DaemonFirewood_306000_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.46, 9.46, 9.46 + 2, 100, 0, 3, 5)
    local local0 = 999
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 19.43, 19.43, 19.43 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.05, 12.05, 12.05 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 17.45, 17.45, 17.45 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 19.85, 19.85, 19.85 + 2, 100, 0, 3, 5)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 24.29, 24.29, 24.29 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.6, 4.6, 4.6 + 2, 100, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act11(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act13(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3802350)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0, TARGET_ENE_0, true, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 2, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.8, TARGET_ENE_0, 5.5, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DaemonFirewood_306000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and 5 <= local0 and local0 <= 11.2 and local1 <= 80 then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and local0 <= 3 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and 5 <= local0 and local1 <= 80 then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        return true
    else
        return false
    end
end

return 
