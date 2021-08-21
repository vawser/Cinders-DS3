local local0 = {4, 5, 15}
local local1 = {10, 4, 15}
local local2 = {}
local local3 = -1
function Select_ListIndex_For_EnemyCommonSubGoal(arg0, arg1)
    local local0 = 0
    local local1 = 1
    for local2 = 1 - local1, table.getn(arg1), local1 do
        local0 = local0 + arg1[local2]
    end
    local local3 = 0
    local local4 = 1
    for local1 = 1 - local4, table.getn(arg1), local4 do
        local3 = arg1[local1] + local3
        if arg0:GetRandam_Int(0, local0) < local3 and 0 < arg1[local1] then
            return local1
        end
    end
    return -1
end

local0 = 0
function Get_AnimOffset_For_EnemyCommonSubGoal(arg0, arg1)
    if arg1 == -1 then
        return -1
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg1 = arg1 - 1000000
        local local0 = 1000000
        SETUPVAL 2 0 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5405) then
        arg1 = arg1 - 2000000
        local local0 = 2000000
        SETUPVAL 2 0 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg1 = arg1 - 3000000
        local local0 = 3000000
        SETUPVAL 2 0 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5407) then
        arg1 = arg1 - 4000000
        local local0 = 4000000
        SETUPVAL 2 0 0
    else
        local local0 = 0
        SETUPVAL 2 0 0
    end
    return arg1
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_Attack, "EnemyCommonSubGoal_Attack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyCommonSubGoal_Attack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 0, "UŒ‚1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 1, "UŒ‚2", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 2, "UŒ‚3", 2)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(0))
    local local1 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(1))
    local local2 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(2))
    local local3 = arg2:GetParam(3)
    local local4 = arg2:GetParam(4)
    local local5 = arg2:GetParam(5)
    if local3 == -1 then
        local3 = TARGET_ENE_0
    end
    if local4 == -1 then
        local4 = 50
    end
    if local5 == -1 then
        local5 = 50
    end
    if attackIndex1 == -1 then
        print("¦¦¦ UŒ‚ID‚ª“ü—Í‚³‚ê‚Ä‚Ü‚¹‚ñ ¦¦¦")
    elseif local4 < arg1:GetRandam_Int(1, 100) or local1 == -1 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, local3, GET_SUCCESS_DIST(local0), 0, 0)
    elseif local5 < arg1:GetRandam_Int(1, 100) or local2 == -1 then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, local3, GET_SUCCESS_DIST(local0), 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, local3, GET_SUCCESS_DIST(local1), 0, 0)
    else
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, local3, GET_SUCCESS_DIST(local0), 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, local3, GET_SUCCESS_DIST(local2), 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, local3, GET_SUCCESS_DIST(local2), 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_AfterAttack, "EnemyCommonSubGoal_AfterAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyCommonSubGoal_AfterAttack, true)
local0 = local1
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    if arg1:GetDist(TARGET_ENE_0) < 2.5 then
        local0 = UPVAL0
    else
        local0 = UPVAL1
    end
    local local1 = 9910
    local local2 = Select_ListIndex_For_PriestSoldier_115000(arg1, local0)
    if local2 == 1 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, distLeave, TARGET_ENE_0, true, local1)
    elseif local2 == 2 then
        arg2:AddSubGoal(GOAL_EnemyCommonSubGoal_SideWalk, 10, arg1:GetRandam_Int(2, 3), local1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_ApproachAct, "EnemyCommonSubGoal_ApproachAct")
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 5, "ƒK[ƒhŠm—¦", 5)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(0))
    local local1 = arg2:GetParam(1)
    local local2 = arg2:GetParam(2)
    local local3 = arg2:GetParam(3)
    local local4 = arg2:GetParam(5)
    local local5 = arg2:GetParam(6)
    if local1 == -1 then
        local1 = TARGET_ENE_0
    end
    if turnTarget == -1 then
        turnTarget = TARGET_ENE_0
    end
    if local2 == -1 then
        local2 = 0
    end
    if local3 == -1 then
        local3 = 4
    end
    if arg2:GetParam(4) == -1 then
        local local6 = 20
    end
    if local4 == -1 then
        local4 = 80
    end
    if local5 == -1 then
        local5 = 0
    end
    local local7 = true
    if local2 + local3 < arg1:GetDist(TARGET_ENE_0) and arg1:GetRandam_Int(1, 100) < local4 then
        local7 = false
    end
    local local8 = -1
    if local7 == true and arg1:GetRandam_Int(1, 100) <= local5 then
        local8 = 9910
    end
    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, local1, local2, TARGET_SELF, local7, local8)
    return 
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_LeaveTarget, "EnemyCommonSubGoal_LeaveTarget")
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(1)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = -1
    if arg1:GetRandam_Int(1, 100) < arg2:GetParam(2) then
        local2 = 9910
    end
    if arg2:GetParam(0) == 0 then
        local local3 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, local2)
        local3:SetTargetRange(0, local1 / 2, local1 + 20)
    else
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_SELF, false, -1)
    end
    return 
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_SideWalk, "EnemyCommonSubGoal_SideWalk")
REGISTER_GOAL_NO_SUB_GOAL(EnemyCommonSubGoal_SideWalk, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(0)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = false
    local local3 = -1
    if arg1:GetRandam_Int(1, 100) < arg2:GetParam(1) then
        local3 = 9910
    end
    if local0 == 2 then
        if arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 5) < 1 or local2 == true then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_LEFT, arg1:GetRandam_Int(30, 60), true, true, local3)
            local local4 = arg2:GetLatestAddGoalFunc()
            local4:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_RIGHT, arg1:GetRandam_Int(30, 60), true, true, local3)
            local local4 = arg2:GetLatestAddGoalFunc()
            local4:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 0)
        end
    elseif local0 == 3 then
        if arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 5) < 1 or local2 == true then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEAY_MOVE_RIGHT, arg1:GetRandam_Int(30, 60), true, true, local3)
            local local4 = arg2:GetLatestAddGoalFunc()
            local4:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_LEFT, arg1:GetRandam_Int(30, 60), true, true, local3)
            local local4 = arg2:GetLatestAddGoalFunc()
            local4:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 0)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

return 
