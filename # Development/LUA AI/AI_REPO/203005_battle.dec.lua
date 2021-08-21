RegisterTableGoal(GOAL_DeathGodOfSullivan_sword_203005_Battle, "GOAL_1DeathGodOfSullivan_sword_203005_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_DeathGodOfSullivan_sword_203005_Battle, true)
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
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 60
        local0[11] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[7] = 20
        local0[10] = 50
        local0[11] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and SpaceCheck(arg1, arg2, 270, arg1:GetStringIndexedNumber("Dist_SideStep")) == true and local3 <= 3 then
        local0[16] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_SideStep")) == true and local3 <= 3 then
        local0[17] = 100
    elseif 11 <= local3 then
        local0[1] = 0
        local0[2] = 1
        local0[3] = 1
        local0[4] = 1
        local0[6] = 1
        local0[7] = 50
        local0[8] = 1
        local0[10] = 0
        local0[11] = 50
    elseif 6 <= local3 then
        local0[1] = 1
        local0[2] = 2
        local0[3] = 2
        local0[4] = 2
        local0[6] = 1
        local0[7] = 30
        local0[8] = 2
        local0[10] = 5
        local0[11] = 55
    elseif 2 <= local3 then
        local0[1] = 3
        local0[2] = 0
        local0[3] = 10
        local0[4] = 3
        local0[6] = 2
        local0[7] = 2
        local0[8] = 10
        local0[10] = 20
        local0[11] = 50
    else
        local0[1] = 5
        local0[2] = 0
        local0[3] = 15
        local0[4] = 3
        local0[6] = 2
        local0[7] = 0
        local0[8] = 5
        local0[10] = 40
        local0[11] = 30
    end
    local0[2] = SetCoolTime(arg1, arg2, 3003, 6, local0[2], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 6, local0[4], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3010, 6, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3013, 6, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3015, 6, local0[8], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act04)
    local1[6] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act11)
    local1[15] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act17)
    local1[20] = REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DeathGodOfSullivan203005_ActAfter_AdjustSpace), local2)
    return 
end

function DeathGodOfSullivan203005_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 30, 100, 4, 8)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3002
    local local3 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local4 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3
    local local6 = 90
    local local7 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local5, local6, 0, 0)
    elseif local7 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4, 0, 0)
    elseif local7 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4, 45)
    elseif local7 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4, 45)
    elseif local7 <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4, 45)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4, 45)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203005_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11.1 - arg0:GetMapHitRadius(TARGET_SELF), 11.1 - arg0:GetMapHitRadius(TARGET_SELF), 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 75, 100, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203005_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 75, 100, 4, 8)
    local local0 = 3004
    local local1 = 3005
    local local2 = 3006
    local local3 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 3
    local local6 = 90
    local local7 = arg0:GetRandam_Int(1, 100)
    if local7 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local5, local6, 0, 0)
    elseif local7 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local4, 0, 0)
    elseif local7 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local4, 45)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local4, 45)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203005_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 0, 100, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203005_Act06(arg0, arg1, arg2)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 + 2 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, arg0:GetStringIndexedNumber("Dist_BackStep"))
    end
    Approach_Act_Flex(arg0, arg1, local0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 0, 100, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
    local local2 = 1
    for local3 = 1 - local2, arg0:GetRandam_Int(1, 2), local2 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203005_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203005_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 0, 100, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203005_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, 9910)
    return 
end

function DeathGodOfSullivan203005_Act11(arg0, arg1, arg2)
    local local0 = 30
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        local0 = 100
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    return 
end

function DeathGodOfSullivan203005_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    return 
end

function DeathGodOfSullivan203005_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    return 
end

function DeathGodOfSullivan203005_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    return 
end

function DeathGodOfSullivan203005_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeathGodOfSullivan203005_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DeathGodOfSullivan_sword_203005_AfterAttackAct, 10)
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
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and local0 < 5 then
        arg2:ClearSubGoal()
        if local2 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3, 0, 0, 0, 0)
        elseif local2 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            local local4 = 1
            for local5 = 1 - local4, arg1:GetRandam_Int(1, 2), local4 do
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999)
            end
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999)
        else
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 3, 0, 0, 0, 0)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) and local0 <= 6 then
        arg2:ClearSubGoal()
        if local2 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3015, TARGET_ENE_0, 999, 0, 0)
        elseif local3 <= 10 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 5, 0, 0, 0, 0)
        elseif local3 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 5, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 5, 0, 0)
        elseif local3 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 5, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5, 0, 45)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 5, 45)
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 5, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5, 0, 45)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 5, 0, 45)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 5, 45)
        end
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_DeathGodOfSullivan_sword_203005_AfterAttackAct, "GOAL_DeathGodOfSullivan_sword_203005_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DeathGodOfSullivan_sword_203005_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 5 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
    elseif 3 <= local0 then
        local2[1] = 20
        local2[2] = 10
        local2[3] = 10
        local2[4] = 10
        local2[5] = 15
        local2[6] = 30
    else
        local2[1] = 20
        local2[2] = 30
        local2[3] = 5
        local2[4] = 5
        local2[5] = 30
        local2[6] = 10
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            DeathGodOfSullivan203005_Act15(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            DeathGodOfSullivan203005_Act16(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            DeathGodOfSullivan203005_Act17(arg1, arg2, paramTbl)
        elseif local3 == 5 then
            DeathGodOfSullivan203005_Act10(arg1, arg2, paramTbl)
        elseif local3 == 6 then
            DeathGodOfSullivan203005_Act11(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
