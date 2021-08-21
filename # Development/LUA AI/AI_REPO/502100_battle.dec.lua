RegisterTableGoal(GOAL_CrimsonBat_Bit_502100_Battle, "CrimsonBat_Bit_502100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrimsonBat_Bit_502100_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15050) then
        local0[2] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15051) then
        local0[1] = 100
    else
        local0[1] = 100
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15050)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15051)
    local1[1] = REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_Act04)
    local1[10] = REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_Act12)
    local1[50] = REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_Act50)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CrimsonBat_Bit_502100_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function CrimsonBat_Bit_502100_Battle_Act01(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 60, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_Bit_502100_Battle_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_Bit_502100_Battle_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_Bit_502100_Battle_Act04(arg0, arg1, arg2)
    local local0 = 3003
    local local1 = 999
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2.8, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_Bit_502100_Battle_Act10(arg0, arg1, arg2)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, DistToAtt1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_Bit_502100_Battle_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_Bit_502100_Battle_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 5, 999, 0, 0, 4, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_Bit_502100_Battle_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 1.5, 20)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 999)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_Bit_502100_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 15051 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 60, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 15050 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 15032 or arg1:GetSpecialEffectActivateInterruptType(0) == 15034 or arg1:GetSpecialEffectActivateInterruptType(0) == 15051 then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_CrimsonBat_Bit_502100_AfterAttackAct, "GOAL_CrimsonBat_Bit_502100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrimsonBat_Bit_502100_AfterAttackAct, true)
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
