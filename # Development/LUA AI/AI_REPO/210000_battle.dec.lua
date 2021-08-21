RegisterTableGoal(GOAL_Floats_210000_Battle, "Floats_210000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Floats_210000_Battle, true)
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
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    if local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if 8 <= local3 then
            local0[22] = 100
        elseif 5 <= local3 then
            local0[21] = 100
        else
            local0[23] = 100
        end
    elseif local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if 8 <= local3 then
            local0[22] = 100
        elseif 5 <= local3 then
            local0[2] = 15
            local0[21] = 85
        else
            local0[23] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif 7.3 <= local3 then
        local0[1] = 15
        local0[2] = 5
        local0[3] = 20
        local0[4] = 60
    elseif 4.3 <= local3 then
        local0[1] = 35
        local0[2] = 20
        local0[3] = 45
    elseif 1.8 <= local3 then
        local0[1] = 40
        local0[2] = 35
        local0[3] = 10
        local0[5] = 15
    else
        local0[1] = 20
        local0[2] = 35
        local0[5] = 45
    end
    if arg1:IsInsideTargetRegion(TARGET_SELF, 3704350) then
        local0[3] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Floats_210000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Floats_210000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Floats_210000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Floats_210000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Floats_210000_Act05)
    local1[20] = REGIST_FUNC(arg1, arg2, Floats_210000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Floats_210000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Floats_210000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Floats_210000_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Floats_210000_ActAfter_AdjustSpace), local2)
    return 
end

function Floats_210000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.7 - arg0:GetMapHitRadius(TARGET_SELF), 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Floats_210000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Floats_210000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF), 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Floats_210000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(8 - arg0:GetMapHitRadius(TARGET_SELF), 12.3 - arg0:GetMapHitRadius(TARGET_SELF)), 12.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 12.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Floats_210000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Floats_210000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    return 0
end

function Floats_210000_Act21(arg0, arg1, arg2)
    if InsideDir(arg0, arg1, 0, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 0)
    elseif InsideDir(arg0, arg1, 90, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 0)
    elseif InsideDir(arg0, arg1, -90, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
    end
    return 0
end

function Floats_210000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, 6, TARGET_SELF, true, -1)
    return 0
end

function Floats_210000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    return 0
end

function Floats_210000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Floats_210000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

RegisterTableGoal(GOAL_Floats_210000_AfterAttackAct, "GOAL_Floats_210000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Floats_210000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    if arg1:GetDist(TARGET_ENE_0) <= 7 and arg1:GetRandam_Int(1, 100) <= 40 then
        Floats_210000_Act21(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
