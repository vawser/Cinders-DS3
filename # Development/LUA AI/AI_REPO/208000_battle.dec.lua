RegisterTableGoal(GOAL_MoujaDoggrub_208000_Battle, "GOAL_MoujaDoggrub_208000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaDoggrub_208000_Battle, true)
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
        local0[20] = 50
        local0[22] = 50
    else
        if 5 <= local3 then
            local0[1] = 40
            local0[2] = 30
            local0[3] = 0
            local0[4] = 10
            local0[21] = 0
            local0[23] = 20
            local0[24] = 0
        elseif 1.5 <= local3 then
            local0[1] = 25
            local0[2] = 25
            local0[3] = 10
            local0[4] = 10
            local0[21] = 0
            local0[23] = 20
            local0[24] = 0
        else
            local0[1] = 25
            local0[2] = 25
            local0[3] = 10
            local0[4] = 10
            local0[21] = 0
            local0[23] = 0
            local0[24] = 20
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) then
            local0[3] = local0[3] + 20
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
            local0[4] = local0[4] + 50
        end
    end
    local0[3] = SetCoolTime(arg1, arg2, 3003, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 15, local0[4], 1)
    local0[21] = SetCoolTime(arg1, arg2, 6002, 5, local0[22], 0)
    local0[21] = SetCoolTime(arg1, arg2, 6003, 5, local0[22], 0)
    local0[24] = SetCoolTime(arg1, arg2, 6001, 5, local0[24], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act04)
    local1[20] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaDoggrub208000_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaDoggrub208000_Act01(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 1.5)
    local local0 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, local0, 100, 0, 2, 3)
    local local1 = 3000
    local local2 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if local0 + arg0:GetStringIndexedNumber("AddDistRun") <= arg0:GetDist(TARGET_ENE_0) then
        local1 = 3007
    end
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 1.5)
    local local0 = 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    Approach_Act_Flex(arg0, arg1, 1.8 - arg0:GetMapHitRadius(TARGET_SELF), 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, local0, 100, 0, 2, 3)
    local local1 = 3002
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        local1 = 3009
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_Act03(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 1.5)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 100, 0, 2, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_Act04(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 1.5)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, local0, 100, 0, 2, 3)
    local local1 = 3004
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        local1 = 3008
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_Act22(arg0, arg1, arg2)
    if InsideRange(arg0, arg1, 90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    elseif InsideRange(arg0, arg1, -90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if InsideRange(arg0, arg1, 90, 180, -9999, 9999) then
        if 5 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, AI_DIR_TYPE_ToL, 6, TARGET_SELF, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, AI_DIR_TYPE_ToL, 6, TARGET_SELF, false)
        end
    elseif InsideRange(arg0, arg1, -90, 180, -9999, 9999) then
        if 5 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, AI_DIR_TYPE_ToR, 6, TARGET_SELF, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, AI_DIR_TYPE_ToR, 6, TARGET_SELF, false)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaDoggrub208000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaDoggrub_208000_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_MoujaDoggrub_208000_AfterAttackAct, "GOAL_MoujaDoggrub_208000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaDoggrub_208000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
