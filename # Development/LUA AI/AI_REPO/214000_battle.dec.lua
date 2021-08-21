RegisterTableGoal(GOAL_Basilisk_214000_Battle, "GOAL_Basilisk_214000_Battle")
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
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if 8 <= local3 then
            local0[12] = 100
        else
            local0[11] = 70
            local0[12] = 30
        end
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if 8 <= local3 then
            local0[1] = 5
            local0[2] = 20
            local0[12] = 75
        else
            local0[1] = 5
            local0[2] = 10
            local0[11] = 65
            local0[12] = 10
        end
    elseif 10 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[11] = 50
    elseif 6 <= local3 then
        local0[1] = 30
        local0[2] = 40
        local0[11] = 20
        local0[12] = 10
    elseif 1.5 <= local3 then
        local0[1] = 50
        local0[2] = 20
        local0[10] = 30
    else
        local0[1] = 40
        local0[2] = 0
        local0[10] = 50
        local0[12] = 10
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Basilisk214000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Basilisk214000_Act02)
    local1[10] = REGIST_FUNC(arg1, arg2, Basilisk214000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Basilisk214000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Basilisk214000_Act12)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Basilisk214000_ActAfter_AdjustSpace), local2)
    return 
end

function Basilisk214000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Basilisk214000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7 - arg0:GetMapHitRadius(TARGET_SELF), 7 - arg0:GetMapHitRadius(TARGET_SELF), 7 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Basilisk214000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    if local0 <= 2 and arg0:GetRandam_Int(1, 100) <= 80 and SpaceCheck(arg0, arg1, -180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2.5, 5.5), TARGET_ENE_0, local1, TARGET_ENE_0, false, -1)
    end
    return 
end

function Basilisk214000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), false, true, -1)
    return 
end

function Basilisk214000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 8
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Basilisk214000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Basilisk_214000_AfterAttackAct, 10)
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

RegisterTableGoal(GOAL_Basilisk_214000_AfterAttackAct, "GOAL_Basilisk_214000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Basilisk_214000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 5 <= local0 then
        local2[1] = 0
        local2[2] = 60
        local2[3] = 10
        local2[4] = 30
    elseif 3 <= local0 then
        local2[1] = 30
        local2[2] = 60
        local2[3] = 10
        local2[4] = 0
    else
        local2[1] = 20
        local2[2] = 60
        local2[3] = 20
        local2[4] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            Basilisk214000_Act11(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            Basilisk214000_Act10(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            Basilisk214000_Act12(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
