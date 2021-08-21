RegisterTableGoal(GOAL_WolfS_605030_Battle, "GOAL_WolfS_605030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfS_605030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetTimer(1, 20)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0.3)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:GetNumber(0) == 0 then
        arg1:SetNumber(0, 1)
        local0[20] = 100
    elseif arg1:GetNpcThinkParamID() == 605030 then
        if 10 <= local3 then
            local0[18] = 100
        elseif 7 <= local3 then
            local0[6] = 50
            local0[18] = 50
        elseif 3 <= local3 then
            local0[3] = 20
            local0[11] = 30
            local0[18] = 30
        else
            local0[1] = 20
            local0[3] = 20
            local0[10] = 40
            local0[17] = 20
        end
    elseif arg1:GetNpcThinkParamID() == 605031 then
        if 10 <= local3 then
            local0[19] = 100
        elseif 7 <= local3 then
            local0[9] = 50
            local0[19] = 50
        elseif 3 <= local3 then
            local0[1] = 20
            local0[9] = 20
            local0[12] = 30
            local0[19] = 30
        else
            local0[1] = 20
            local0[10] = 40
            local0[17] = 40
        end
    elseif 7 <= local3 then
        local0[2] = 1
        local0[16] = 100
    elseif 3 <= local3 then
        local0[1] = 20
        local0[2] = 30
        local0[8] = 50
    else
        local0[1] = 40
        local0[4] = 40
        local0[17] = 20
    end
    if arg1:IsFinishTimer(0) == false then
        local0[18] = 1
        local0[19] = 1
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 5)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 90, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 20, local0[3], 5)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 10, local0[4], 5)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 90, local0[5], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 90, local0[6], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 10, local0[7], 5)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 8, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 8, local0[9], 0)
    local0[10] = SetCoolTime(arg1, arg2, 6001, 20, local0[10], 5)
    local0[11] = SetCoolTime(arg1, arg2, 6002, 20, local0[11], 5)
    local0[12] = SetCoolTime(arg1, arg2, 6003, 20, local0[12], 5)
    local1[1] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act13)
    local1[16] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, WolfS_605030_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, WolfS_605030_ActAfter_AdjustSpace), local2)
    return 
end

function WolfS_605030_Act01(arg0, arg1, arg2)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    end
    Approach_Act_Flex(arg0, arg1, 3.9 + 1, 3.9 + 1, 3.9 + 1, 75, 0, 4, 5.5)
    local local0 = 3.9 + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605030_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.9, 3.9, 3.9 + 0, 75, 0, 4, 5.5)
    local local0 = 3.9 + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605030_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.3, 2.3, 2.3 + 0, 75, 0, 4, 5.5)
    local local0 = 2.3 + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605030_Act04(arg0, arg1, arg2)
    local local0 = 2
    local local1 = 2
    local local2 = 2 + 0
    local local3 = 75
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    local local7 = 2 + 2
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605030_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7, 7, 7, 0, 0, 4, 5.5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4, 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605030_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7, 7, 7, 100, 0, 4, 5.5)
    local local0 = 7 + 2
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfS_605030_Act07(arg0, arg1, arg2)
    local local0 = 6
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 100, 0, 4, 5.5)
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act08(arg0, arg1, arg2)
    local local0 = 6
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 100, 0, 4, 5.5)
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act09(arg0, arg1, arg2)
    local local0 = 6
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 100, 0, 4, 5.5)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act13(arg0, arg1, arg2)
    local local0 = 5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
    end
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(2, 3.4)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act16(arg0, arg1, arg2)
    local local0 = arg0:IsSearchTarget(TARGET_FRI_0)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 5, TARGET_SELF, false, 0)
    return 0
end

function WolfS_605030_Act17(arg0, arg1, arg2)
    local local0 = 5
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.2, 3), TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1.2, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 5)
    return 
end

function WolfS_605030_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1.2, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 5)
    return 
end

function WolfS_605030_Act20(arg0, arg1, arg2)
    if arg0:GetNpcThinkParamID() == 605030 then
        local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 9, TARGET_SELF, false, 0)
        local0:SetLifeEndSuccess(true)
    elseif arg0:GetNpcThinkParamID() == 605031 then
        local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10.7, TARGET_ENE_0, 5, TARGET_SELF, true, 9920)
        local0:SetLifeEndSuccess(true)
    else
        local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 12.7, TARGET_ENE_0, 5, TARGET_SELF, true, 9920)
        local0:SetLifeEndSuccess(true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfS_605030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_WolfS_605030_AfterAttackAct, "GOAL_WolfS_605030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfS_605030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:IsSearchTarget(TARGET_FRI_0)
    local local1 = arg1:GetDist(TARGET_FRI_0)
    local local2 = 5
    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(1, 2), TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
