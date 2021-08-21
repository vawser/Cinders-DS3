RegisterTableGoal(GOAL_Shadow623100_Battle, "GOAL_Shadow623100")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Shadow623100_Battle, true)
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
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16245) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16248) == true then
        local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16237) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16239) == false then
        local0[4] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16236) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16239) == false then
        local0[5] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[1] = 1
        local0[20] = 100
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[21] = 60
        local0[22] = 0
        local0[23] = 0
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[21] = 40
        local0[22] = 0
        local0[23] = 0
    elseif 4 <= arg1:GetDist(TARGET_ENE_0) then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 30
        local0[4] = 20
        local0[5] = 0
        local0[21] = 30
        local0[23] = 0
    else
        local0[1] = 50
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[21] = 0
        local0[22] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3007, 60, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3010, 99, local0[5], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16235) == false then
        local0[5] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Shadow623100_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Shadow623100_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Shadow623100_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Shadow623100_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Shadow623100_Act05)
    local1[10] = REGIST_FUNC(arg1, arg2, Shadow623100_Act10)
    local1[20] = REGIST_FUNC(arg1, arg2, Shadow623100_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Shadow623100_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Shadow623100_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Shadow623100_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BossFather_ActAfter_AdjustSpace), local2)
    return 
end

function Shadow623100_Act01(arg0, arg1, arg2)
    local local0 = 1.52
    local local1 = 1.52 + 9999
    local local2 = 1.52 + 9999
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16228) == true then
        local1 = 1.52 + 2
        local2 = 1.52 + 2
    end
    if local0 <= local3 and 2 <= local3 then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 0, 0, 1.8, 3)
    end
    local local4 = 3000
    local local5 = 999
    local local6 = 1
    local local7 = 90
    if arg0:GetRandam_Int(1, 100) < 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, local5, local6, local7, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local4, TARGET_ENE_0, 0.97 + 2, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623100_Act02(arg0, arg1, arg2)
    local local0 = 1.2
    local local1 = 1.2 + 9999
    local local2 = 1.2 + 9999
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16228) == true then
        local1 = 1.2 + 2
        local2 = 1.2 + 2
    end
    if local0 <= local3 and 2 <= local3 then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 0, 0, 3, 3)
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623100_Act03(arg0, arg1, arg2)
    local local0 = 3.1
    local local1 = 3.1 + 9999
    local local2 = 3.1 + 9999
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16228) == true then
        local1 = 3.1 + 2
        local2 = 3.1 + 2
    end
    if local0 <= local3 and 2 <= local3 then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 0, 0, 3, 3)
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623100_Act04(arg0, arg1, arg2)
    local local0 = 2
    local local1 = 2 + 9999
    local local2 = 2 + 9999
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16228) == true then
        local1 = 2 + 2
        local2 = 2 + 2
    end
    if local0 <= local3 and 2 <= local3 then
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, 0, 0, 3, 3)
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623100_Act05(arg0, arg1, arg2)
    local local0 = 99
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act_Flex(arg0, arg1, local0, 99 + 9999, 99 + 9999, 0, 0, 3, 3)
    end
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 1, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shadow623100_Act10(arg0, arg1, arg2)
    arg0:Replaning()
    if 0 < arg0:GetHpRate(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 0, TARGET_ENE_0, 0, 0)
    end
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 20002, TARGET_ENE_0, 0, 0, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shadow623100_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shadow623100_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shadow623100_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 2, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shadow623100_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1.2), TARGET_ENE_0)
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
    return 
end

function Shadow623100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Shadow623100_Battle_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_Shadow623100_Battle_AfterAttackAct, "GOAL_Shadow623100_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Shadow623100_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if 10 > local0 then
        if 2 <= local0 then
            if local1 <= 50 then
                Shadow623100_Act21(arg1, arg2, paramTbl)
            end
        elseif local1 <= 50 then
            Shadow623100_Act22(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
