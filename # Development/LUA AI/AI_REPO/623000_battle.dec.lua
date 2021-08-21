RegisterTableGoal(GOAL_Shadow623000_Battle, "GOAL_Shadow623000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Shadow623000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 16222) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16239) == false then
        local0[5] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16223) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16239) == false then
        local0[8] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16232) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16239) == false then
        local0[6] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16238) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16239) == false then
        local0[7] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16241) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16239) == false then
        local0[2] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16227) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[5] = 1
            local0[20] = 100
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 100
            local0[6] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16221) == true then
        if arg1:GetHpRate(TARGET_SELF) == 1 and 6.5 <= local3 then
            local0[6] = 100
            local0[23] = 1
        elseif 6.5 <= local3 then
            local0[1] = 20
            local0[2] = 0
            local0[3] = 20
            local0[4] = 10
            local0[5] = 30
            local0[21] = 20
            local0[22] = 0
        elseif 3.3 <= local3 then
            local0[1] = 30
            local0[2] = 0
            local0[3] = 30
            local0[4] = 10
            local0[5] = 0
            local0[21] = 20
            local0[22] = 0
        else
            local0[1] = 20
            local0[2] = 50
            local0[3] = 0
            local0[4] = 10
            local0[5] = 0
            local0[21] = 0
            local0[22] = 20
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16233) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[5] = 1
            local0[20] = 100
        elseif 6 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 80
            local0[21] = 20
            local0[22] = 0
        elseif 2 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 60
            local0[21] = 20
            local0[22] = 20
        else
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 0
            local0[5] = 30
            local0[21] = 0
            local0[22] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16234) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[5] = 1
            local0[20] = 100
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 80
            local0[6] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 20
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16224) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[5] = 1
            local0[20] = 100
        elseif 30 <= local3 then
            local0[5] = 100
        else
            local0[8] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[1] = 1
        local0[20] = 100
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if 3.3 <= local3 then
            local0[1] = 30
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[21] = 70
            local0[22] = 0
        else
            local0[1] = 20
            local0[2] = 50
            local0[3] = 0
            local0[4] = 10
            local0[5] = 0
            local0[21] = 0
            local0[22] = 20
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if 3.3 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 0
            local0[5] = 20
            local0[21] = 30
            local0[22] = 30
        else
            local0[1] = 20
            local0[2] = 50
            local0[3] = 0
            local0[4] = 10
            local0[5] = 0
            local0[21] = 0
            local0[22] = 20
        end
    elseif 6.5 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 20
        local0[4] = 10
        local0[5] = 30
        local0[21] = 20
        local0[22] = 0
    elseif 3.3 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 30
        local0[4] = 10
        local0[5] = 0
        local0[21] = 20
        local0[22] = 0
    else
        local0[1] = 20
        local0[2] = 50
        local0[3] = 0
        local0[4] = 10
        local0[5] = 0
        local0[21] = 0
        local0[22] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3007, 20, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3010, 5, local0[5], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16245) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16239) == true then
        local0[6] = 0
        local0[7] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16245) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16225) == true then
        local0[6] = 9999
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16245) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16226) == true then
        local0[7] = 9999
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16119) == true then
        local0[5] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Shadow623000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Shadow623000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Shadow623000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Shadow623000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Shadow623000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Shadow623000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Shadow623000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Shadow623000_Act08)
    local1[20] = REGIST_FUNC(arg1, arg2, Shadow623000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Shadow623000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Shadow623000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Shadow623000_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Shadow623000_ActAfter_AdjustSpace), local2)
    return 
end

function Shadow623000_Act01(arg0, arg1, arg2)
    local local0 = 3.39
    local local1 = 3.39 + 8
    local local2 = 3.39 + 8
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local1 = 9999
        local2 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) and not arg0:HasSpecialEffectId(TARGET_SELF, 16234) == true then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 0, 0, 3, 4)
    end
    local local3 = 3000
    local local4 = 999
    local local5 = 1
    local local6 = 20
    if arg0:GetRandam_Int(1, 100) < 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, local5, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, 2.86 + 2, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623000_Act02(arg0, arg1, arg2)
    local local0 = 2.17
    local local1 = 2.17 + 8
    local local2 = 2.17 + 8
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local1 = 9999
        local2 = 9999
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 16241) == true and arg0:HasSpecialEffectId(TARGET_SELF, 16239) == false then
        local1 = 2.17
        local2 = 2.17
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) and not arg0:HasSpecialEffectId(TARGET_SELF, 16234) == true then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 100, 0, 5, 5)
    end
    local local3 = 3002
    local local4 = 999
    local local5 = 0
    local local6 = 0
    if arg0:GetRandam_Int(1, 100) < 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, local5, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, 2.29 + 2, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623000_Act03(arg0, arg1, arg2)
    local local0 = 2.92 + 3
    local local1 = 2.92 + 8
    local local2 = 2.92 + 8
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local1 = 9999
        local2 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) and not arg0:HasSpecialEffectId(TARGET_SELF, 16234) == true then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 100, 0, 5, 5)
    end
    local local3 = 3004
    local local4 = 999
    local local5 = 0
    local local6 = 0
    if arg0:GetRandam_Int(1, 100) < 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, local4, local5, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local3, TARGET_ENE_0, 3.01 + 5, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623000_Act04(arg0, arg1, arg2)
    local local0 = 3.19
    local local1 = 3.19 + 5
    local local2 = 3.19 + 5
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local1 = 9999
        local2 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) and not arg0:HasSpecialEffectId(TARGET_SELF, 16234) == true then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 100, 0, 5, 5)
    end
    local local3 = 999
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 5.57, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623000_Act05(arg0, arg1, arg2)
    local local0 = 15 + 9999
    local local1 = 15 + 9999
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0 = 9999
        local1 = 9999
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16234) == true and not arg0:HasSpecialEffectId(TARGET_SELF, 16224) == true then
        Approach_Act_Flex(arg0, arg1, 15, local0, local1, 100, 0, 5, 5)
    end
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623000_Act06(arg0, arg1, arg2)
    local local0 = 999 + 9999
    local local1 = 999 + 9999
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0 = 9999
        local1 = 9999
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16234) == true then
        Approach_Act_Flex(arg0, arg1, 999, local0, local1, 100, 0, 5, 5)
    end
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623000_Act07(arg0, arg1, arg2)
    local local0 = 999 + 9999
    local local1 = 999 + 9999
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0 = 9999
        local1 = 9999
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16234) == true then
        Approach_Act_Flex(arg0, arg1, 999, local0, local1, 100, 0, 5, 5)
    end
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shadow623000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if 10 <= arg0:GetDist(TARGET_ENE_0) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4.3, TARGET_ENE_0, 0, 60, true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4.3, TARGET_ENE_0, 1, 60, true, true, 0)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.2, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.2, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shadow623000_Act22(arg0, arg1, arg2)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, 12, TARGET_ENE_0, true, 0)
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 8, TARGET_ENE_0, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 3.39, TARGET_ENE_0, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shadow623000_Act23(arg0, arg1, arg2)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0)
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetDist(TARGET_ENE_0) <= 5 and not arg1:HasSpecialEffectId(TARGET_SELF, 16234) == true and not arg1:HasSpecialEffectId(TARGET_SELF, 16224) == true then
        if local0 <= 40 then
            arg2:ClearSubGoal()
            Shadow623000_Act02(arg1, arg2, paramTbl)
        elseif local0 <= 80 then
            arg2:ClearSubGoal()
            Shadow623000_Act04(arg1, arg2, paramTbl)
        end
    end
    return 
end

function Shadow623000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Shadow623000_Battle_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_Shadow623000_Battle_AfterAttackAct, "GOAL_Shadow623000_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Shadow623000_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    if not arg1:HasSpecialEffectId(TARGET_SELF, 16227) == true then
        if 10 <= local0 and not arg1:HasSpecialEffectId(TARGET_SELF, 16224) == true then
            Shadow623000_Act23(arg1, arg2, paramTbl)
        elseif 4 <= local0 then
            if arg1:GetRandam_Int(1, 100) <= 50 and not arg1:HasSpecialEffectId(TARGET_SELF, 16234) and not arg1:HasSpecialEffectId(TARGET_SELF, 16224) == true then
                Shadow623000_Act21(arg1, arg2, paramTbl)
            end
        elseif not arg1:HasSpecialEffectId(TARGET_SELF, 16234) and not arg1:HasSpecialEffectId(TARGET_SELF, 16224) == true then
            Shadow623000_Act22(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
