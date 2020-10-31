RegisterTableGoal(GOAL_NPC_Alfreda, "GOAL_NPC_Alfreda")
REGISTER_GOAL_NO_UPDATE(GOAL_NPC_Alfreda, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 24130) then
            local0[8] = 30
        end
        local0[10] = 60
        local0[11] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 24130) then
            local0[8] = 30
        end
        local0[9] = 5
        local0[10] = 55
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 24130) then
        if arg1:GetNumber(10) == 2 then
            local0[8] = 100
        elseif 11 <= local3 then
            local0[1] = 30
            local0[2] = 30
            local0[3] = 80
            local0[5] = 0
            local0[7] = 100
            local0[9] = 120
        elseif 6 <= local3 then
            local0[1] = 50
            local0[2] = 40
            local0[3] = 60
            local0[5] = 0
            local0[9] = 90
        elseif 2 <= local3 then
            local0[1] = 100
            local0[2] = 30
            local0[3] = 0
            local0[5] = 20
            local0[9] = 0
        else
            local0[1] = 70
            local0[2] = 0
            local0[3] = 0
            local0[5] = 70
            local0[9] = 0
        end
    elseif arg1:GetHpRate(TARGET_SELF) < 0.5 and 6 <= local3 then
        local0[8] = 100
    elseif 11 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 80
        local0[5] = 0
        local0[8] = 80
        local0[9] = 120
    elseif 6 <= local3 then
        local0[1] = 30
        local0[2] = 80
        local0[3] = 0
        local0[5] = 30
        local0[8] = 50
        local0[9] = 60
    elseif 2 <= local3 then
        local0[1] = 100
        local0[2] = 80
        local0[3] = 0
        local0[5] = 20
        local0[8] = 0
        local0[9] = 0
    else
        local0[1] = 50
        local0[2] = 0
        local0[3] = 0
        local0[5] = 80
        local0[8] = 0
        local0[9] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act03)
    local1[5] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203010_ActAfter_AdjustSpace), local2)
    return 
end

function DeathGodOfSullivan203010_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local5 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local6 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = -1
    local local9 = 60
    local local10 = arg0:GetRandam_Int(1, 100)
    if local10 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local7, 45)
    elseif local10 <= 58 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local6, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7, 45)
    elseif local10 <= 72 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local5, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7, 45)
    elseif local10 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local7, 45)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local7, local8, local9, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.6 - arg0:GetMapHitRadius(TARGET_SELF), 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    local local0 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = -1
    local local2 = 60
    local local3 = 3005
    local local4 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 0
    local local6 = 0
    if arg0:GetRandam_Int(1, 100) <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local4, local5, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.8, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.6 - arg0:GetMapHitRadius(TARGET_SELF), 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.6 - arg0:GetMapHitRadius(TARGET_SELF), 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, TARGET_ENE_0, SuccessDist, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.6 - arg0:GetMapHitRadius(TARGET_SELF), 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function DeathGodOfSullivan203010_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function DeathGodOfSullivan203010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DeathGodOfSullivan_scythe_203010_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_DeathGodOfSullivan_scythe_203010_AfterAttackAct, "GOAL_DeathGodOfSullivan_scythe_203010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DeathGodOfSullivan_scythe_203010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
