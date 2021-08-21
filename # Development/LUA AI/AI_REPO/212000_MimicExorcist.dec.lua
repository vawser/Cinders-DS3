RegisterTableGoal(GOAL_MimicExorcist_212000_Battle, "GOAL_MimicExorcist_212000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MimicExorcist_212000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 3152)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) == true then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3152)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if InsideRange(arg1, arg2, 180, 60, -5, 2) then
            local0[2] = 90
            local0[11] = 10
        else
            local0[11] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if local3 <= 2 then
            local0[4] = 10
        else
            local0[11] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if local3 <= 2 then
            local0[5] = 10
        else
            local0[11] = 10
        end
    elseif 5.5 <= local3 then
        local0[1] = 10
    else
        local0[1] = 10
        local0[3] = 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, MimicExorcist_212000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MimicExorcist_212000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MimicExorcist_212000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MimicExorcist_212000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MimicExorcist_212000_Act05)
    local1[10] = REGIST_FUNC(arg1, arg2, MimicExorcist_212000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, MimicExorcist_212000_Act11)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MimicExorcist_212000_ActAfter_AdjustSpace), local2)
    return 
end

function MimicExorcist_212000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MimicExorcist_212000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MimicExorcist_212000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MimicExorcist_212000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MimicExorcist_212000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MimicExorcist_212000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.1, TARGET_ENE_0, 3, TARGET_ENE_0, false, -1, AI_DIR_TYPE_CENTER, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MimicExorcist_212000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    return 
end

function MimicExorcist_212000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_EventRequest) and arg1:GetEventRequest() == 10 and arg1:HasSpecialEffectId(TARGET_SELF, 11730) == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 10, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 11700) == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 3011, TARGET_ENE_0, 999, 0, 0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_MimicExorcist_212000_AfterAttackAct, "MimicExorcist_212000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MimicExorcist_212000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
