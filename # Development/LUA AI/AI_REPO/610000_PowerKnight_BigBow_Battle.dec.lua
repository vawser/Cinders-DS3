RegisterTableGoal(GOAL_610000_PowerKnight_BigBow_Battle, "GOAL_610000_PowerKnight_BigBow_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_610000_PowerKnight_BigBow_Battle, true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetHpRate(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 4670)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 4502280) then
        if arg1:GetNpcThinkParamID() == 610030 or arg1:GetNpcThinkParamID() == 610032 or arg1:GetNpcThinkParamID() == 610034 then
            local0[2] = 100
        else
            local0[3] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 4670) then
        local0[23] = 100
    elseif 12 <= local3 and not arg1:HasSpecialEffectId(TARGET_SELF, 13069) then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 13063) then
            local0[1] = 100
        else
            local0[5] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 4502391) then
        arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    elseif 8 <= local3 then
        local0[4] = 100
    elseif arg1:GetNpcThinkParamID() == 610030 or arg1:GetNpcThinkParamID() == 610032 or arg1:GetNpcThinkParamID() == 610034 then
        local0[2] = 100
    else
        local0[3] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act05)
    local1[20] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_Act23)
    arg1:DeleteObserve(0)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_610000_PowerKnight_BigBow_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.4), TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.6, 2.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1600, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.4), TARGET_ENE_0, 0, 0, 0)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local1:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.6, 2.5), TARGET_ENE_0, 0, 0, 0)
    arg0:AddObserveRegion(0, TARGET_ENE_0, 4502391)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.4), TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.6, 2.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_610000_PowerKnight_BigBow_Battle_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
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
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        arg1:DeleteObserve(0)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 4502391) and arg1:HasSpecialEffectId(TARGET_SELF, 13069) then
        GOAL_610000_PowerKnight_BigBow_Battle_Act02(arg1, arg2, paramTbl)
    end
    return 
end

function GOAL_610000_PowerKnight_BigBow_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

return 
