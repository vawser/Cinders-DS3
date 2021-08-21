RegisterTableGoal(GOAL_Cardinal_Boss_522000_Battle, "Cardinal_Boss_522000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Cardinal_Boss_522000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetRandam_Int(1, 100)
    local local8 = arg1:GetHpRate(TARGET_SELF)
    if 10 <= local3 then
        local0[1] = 30
        local0[3] = 50
        local0[6] = 50
    elseif 3 <= local3 then
        local0[1] = 50
        local0[3] = 50
        local0[6] = 50
    else
        local0[1] = 50
        local0[2] = 20
        local0[3] = 20
        local0[4] = 20
        local0[6] = 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 11554) == true then
        local0[3] = local0[3] - 10
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 11554) == true then
        local0[3] = local0[3] - 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 11556) == true then
        local0[3] = 0
    end
    if arg1:IsFinishTimer(0) == false then
        local0[3] = 0
    end
    if arg1:IsFinishTimer(1) == false then
        local0[6] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Cardinal_Boss_522000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Cardinal_Boss_522000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Cardinal_Boss_522000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Cardinal_Boss_522000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Cardinal_Boss_522000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Cardinal_Boss_522000_Act06)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Cardinal_Boss_522000_ActAfter_AdjustSpace), local2)
    return 
end

function Cardinal_Boss_522000_Act01(arg0, arg1, arg2)
    Cardinal_Boss_522000_Yousumi(arg0, arg1, arg0:GetRandam_Float(6, 7.5))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Cardinal_Boss_522000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Cardinal_Boss_522000_Act03(arg0, arg1, arg2)
    arg0:SetTimer(0, 60)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3001, TARGET_SELF, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Cardinal_Boss_522000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Cardinal_Boss_522000_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 2, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Cardinal_Boss_522000_Act06(arg0, arg1, arg2)
    arg0:SetTimer(1, 30)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Cardinal_Boss_522000_Yousumi(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg2 + 1 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, arg2, TARGET_SELF, true, -1)
    elseif local0 <= arg2 - 1 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, arg2, TARGET_ENE_0, true, -1)
    end
    if arg2 - 1 <= local0 and arg2 + 1 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function Cardinal_Boss_522000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Cardinal_Boss_522000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetMp(TARGET_SELF)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if 35 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999)
            return true
        elseif 30 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999)
            return true
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_Cardinal_Boss_522000_AfterAttackAct, "Cardinal_Boss_522000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Cardinal_Boss_522000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 999)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 360)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 15)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
