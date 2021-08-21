RegisterTableGoal(GOAL_TikarouSyuuzin_207020_Battle, "GOAL_TikarouSyuuzin_207020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_TikarouSyuuzin_207020_Battle, true)
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
    local local6 = arg1:GetHpRate(TARGET_SELF)
    local local7 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif 5 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 10
        local0[4] = 30
        local0[5] = 10
        local0[21] = 40
        local0[22] = 0
    elseif 1 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 30
        local0[4] = 0
        local0[5] = 30
        local0[21] = 0
        local0[22] = 0
    else
        local0[1] = 20
        local0[2] = 20
        local0[3] = 10
        local0[4] = 0
        local0[5] = 10
        local0[21] = 0
        local0[22] = 40
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 8, local0[5], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_Act05)
    local1[20] = REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, TikarouSyuuzin207020_ActAfter_AdjustSpace), local2)
    return 
end

function TikarouSyuuzin207020_Act01(arg0, arg1, arg2)
    if 2.5 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, 3.56, 3.56 + 2, 3.56 + 2, 0, 0, 2, 2)
    end
    local local0 = 3000
    local local1 = 3001
    local local2 = 3.13 + 1
    local local3 = 5
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.08 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TikarouSyuuzin207020_Act02(arg0, arg1, arg2)
    if 2.5 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, 2.44, 2.44 + 2, 2.44 + 2, 0, 0, 2, 2)
    end
    local local0 = 3003
    local local1 = 5
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.4 + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TikarouSyuuzin207020_Act03(arg0, arg1, arg2)
    if 2.5 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, 5.26, 5.26 + 2, 5.26 + 2, 0, 0, 2, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 5, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TikarouSyuuzin207020_Act04(arg0, arg1, arg2)
    if 2.5 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, 8, 8 + 2, 8 + 2, 0, 0, 2, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TikarouSyuuzin207020_Act05(arg0, arg1, arg2)
    if 2.5 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, 5.77, 5.77 + 2, 5.77 + 2, 0, 0, 2, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 5, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TikarouSyuuzin207020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TikarouSyuuzin207020_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    return 
end

function TikarouSyuuzin207020_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, 0)
    return 
end

function TikarouSyuuzin207020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_TikarouSyuuzin_207020_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_TikarouSyuuzin_207020_AfterAttackAct, "GOAL_TikarouSyuuzin_207020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TikarouSyuuzin_207020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    if arg1:GetDist(TARGET_ENE_0) <= 3 then
        TikarouSyuuzin207020_Act22(arg1, arg2, paramTbl)
    else
        TikarouSyuuzin207020_Act21(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
