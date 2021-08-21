RegisterTableGoal(GOAL_Jailer_223020_Battle, "Jailer_223020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Jailer_223020_Battle, true)
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
    elseif 6 <= local3 then
        local0[10] = 30
        local0[11] = 30
        local0[12] = 30
    elseif 4 <= local3 then
        local0[10] = 30
        local0[11] = 30
        local0[12] = 30
    else
        local0[10] = 30
        local0[11] = 30
        local0[12] = 30
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 3, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 3, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 3, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 3, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 3, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 3, local0[6], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3010, 3, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3011, 3, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3012, 3, local0[12], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Jailer_223020_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Jailer_223020_Act02)
    local1[5] = REGIST_FUNC(arg1, arg2, Jailer_223020_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Jailer_223020_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, Jailer_223020_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Jailer_223020_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Jailer_223020_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, Jailer_223020_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Jailer_223020_ActAfter_AdjustSpace), local2)
    return 
end

function Jailer_223020_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223020_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    Approach_Act_Flex(arg0, arg1, 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 0, 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223020_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223020_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2, 0, 0, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223020_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223020_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223020_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Jailer_223020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Jailer_223020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Jailer_223020_AfterAttackAct, 10)
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
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetDist(TARGET_ENE_0) <= 1.8 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_Jailer_223020_AfterAttackAct, "Jailer_223020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Jailer_223020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 5)
    arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
    arg1:SetStringIndexedNumber("Odds_Back_AAA", 45)
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
