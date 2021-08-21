RegisterTableGoal(GOAL_SnakeShaman138000_Battle, "GOAL_SnakeShaman138000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeShaman138000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
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
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    local local6 = 0
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202230) and arg1:HasSpecialEffectId(TARGET_SELF, 11292) then
        local0[22] = 100
    elseif arg1:GetNpcThinkParamID() == 138010 and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202230) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202234) then
        local0[22] = 100
    elseif 7 <= arg1:GetDist(TARGET_ENE_0) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 30
        local0[4] = 30
        local0[5] = 40
        local0[21] = 0
    else
        local0[1] = 20
        local0[2] = 20
        local0[3] = 0
        local0[4] = 0
        local0[5] = 40
        local0[21] = 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 11292) then
        local0[5] = 0
    else
        local0[3] = 0
        local0[4] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3001, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 0, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 10, local0[4], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeShaman138000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeShaman138000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnakeShaman138000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnakeShaman138000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeShaman138000_Act05)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeShaman138000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeShaman138000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnakeShaman138000_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnakeShaman138000_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeShaman138000_Act01(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11290) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    Approach_Act_Flex(arg0, arg1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF), 4.6 - arg0:GetMapHitRadius(TARGET_SELF), 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeShaman138000_Act02(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11290) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    Approach_Act_Flex(arg0, arg1, 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeShaman138000_Act03(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11291) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1600, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeShaman138000_Act04(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11291) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1600, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeShaman138000_Act05(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11291) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1600, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeShaman138000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeShaman138000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeShaman138000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0)
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
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_ENE_0, 0, 0, 0)
        return true
    else
        return false
    end
end

function SnakeShaman138000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

return 
