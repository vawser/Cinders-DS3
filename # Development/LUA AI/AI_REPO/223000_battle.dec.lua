RegisterTableGoal(GOAL_Jailer_223000_Battle, "Jailer_223000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Jailer_223000_Battle, true)
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
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif arg1:GetNpcThinkParamID() == 223006 and 3 <= local3 and 0.6 <= arg1:GetHpRate(TARGET_SELF) then
        local0[12] = 50
    elseif arg1:GetNpcThinkParamID() == 223005 then
        if 6 <= local3 then
            local0[1] = 0
            local0[2] = 5
            local0[10] = 15
            local0[11] = 30
            local0[12] = 50
        elseif 4 <= local3 then
            local0[1] = 0
            local0[2] = 10
            local0[10] = 50
            local0[11] = 20
            local0[12] = 20
        else
            local0[1] = 45
            local0[2] = 0
            local0[10] = 50
            local0[11] = 5
        end
    elseif 6 <= local3 then
        local0[1] = 0
        local0[2] = 60
        local0[5] = 30
    elseif 4 <= local3 then
        local0[1] = 0
        local0[2] = 40
        local0[5] = 50
    else
        local0[1] = 90
        local0[2] = 0
        local0[5] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 3, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 3, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 3, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 3, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 3, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 3, local0[6], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, Jailer_223000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Jailer_223000_ActAfter_AdjustSpace), local2)
    return 
end

function Jailer_223000_Act01(arg0, arg1, arg2)
    local local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 100
    if arg0:GetNpcThinkParamID() == 223005 then
        local0 = 999
        local1 = 0
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 11909)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 0, local0, local1, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223000_Act02(arg0, arg1, arg2)
    local local0 = 6.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 100
    if arg0:GetNpcThinkParamID() == 223005 then
        local0 = 999
        local1 = 0
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 11909)
    Approach_Act_Flex(arg0, arg1, 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 0, local0, local1, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 11909)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223000_Act06(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 100
    if arg0:GetNpcThinkParamID() == 223005 then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 2, 0, local0, local1, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223000_Act10(arg0, arg1, arg2)
    local local0 = 8
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function Jailer_223000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Jailer_223000_Act12(arg0, arg1, arg2)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 4), TARGET_ENE_0)
    return 
end

function Jailer_223000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Jailer_223000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Jailer_223000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    if GuardBreak_Act(arg1, arg2, 2.6, 30) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        arg2:ClearSubGoal()
        if arg1:GetSpecialEffectActivateInterruptType(0) == 11909 and arg1:GetDist(TARGET_ENE_0) <= 1.8 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        arg1:DeleteObserve(0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Jailer_223000_AfterAttackAct, "Jailer_223000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Jailer_223000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
    arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 15)
    arg1:SetStringIndexedNumber("Odds_Back_AAA", 25)
    arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
