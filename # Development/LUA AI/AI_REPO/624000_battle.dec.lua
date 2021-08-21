RegisterTableGoal(GOAL_HumanWorm_Youngs_624000_Battle, "HumanWorm_Youngs_624000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HumanWorm_Youngs_624000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 10)
    arg1:SetStringIndexedNumber("Dist_BackStep", 10)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:IsEventFlag(15005230) and arg1:HasSpecialEffectId(TARGET_SELF, 16630) then
        local0[5] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) and arg1:IsEventFlag(15005231) and arg1:HasSpecialEffectId(TARGET_SELF, 16631) then
        local0[5] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5022) and arg1:IsEventFlag(15005232) and arg1:HasSpecialEffectId(TARGET_SELF, 16632) then
        local0[5] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) and arg1:HasSpecialEffectId(TARGET_SELF, 16609) then
        local0[6] = 250
    elseif not arg1:IsVisibleTarget(TARGET_ENE_0) then
        local0[4] = 1000
    elseif 5 < arg1:GetDist(TARGET_ENE_0) then
        local0[1] = 0
        local0[2] = 0
        local0[4] = 1000
    else
        local0[1] = 450
        local0[2] = 250
        local0[3] = 300
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16609)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16640)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16641)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16642)
    local1[1] = REGIST_FUNC(arg1, arg2, HumanWorm_Youngs_624000_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HumanWorm_Youngs_624000_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HumanWorm_Youngs_624000_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HumanWorm_Youngs_624000_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HumanWorm_Youngs_624000_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HumanWorm_Youngs_624000_Battle_Act06)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HumanWorm_Youngs_624000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function HumanWorm_Youngs_624000_Battle_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HumanWorm_Youngs_624000_Battle_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HumanWorm_Youngs_624000_Battle_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HumanWorm_Youngs_624000_Battle_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HumanWorm_Youngs_624000_Battle_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HumanWorm_Youngs_624000_Battle_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HumanWorm_Youngs_624000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 16609 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (arg1:GetSpecialEffectActivateInterruptType(0) == 16640 or arg1:GetSpecialEffectActivateInterruptType(0) == 16641 or arg1:GetSpecialEffectActivateInterruptType(0) == 16642) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_HumanWorm_Youngs_624000_AfterAttackAct, "HumanWorm_Youngs_624000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HumanWorm_Youngs_624000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
