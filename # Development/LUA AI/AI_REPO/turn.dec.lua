REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTarget, 0, 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Turn, 0, "旋回ターゲット", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Turn, 1, "正面判定角度", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Turn, 2, "ガードEzState番号", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Turn, 3, "ガードゴール終了タイプ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Turn, 4, "ガードゴール：寿命が尽きたら成功とするか", 0)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_Turn, true)
function Turn_Activate(arg0, arg1)
    local local0 = arg1:GetParam(3)
    local local1 = arg1:GetParam(4)
    GuardGoalSubFunc_Activate(arg0, life_time, arg1:GetParam(2))
    return 
end

function Turn_Update(arg0, arg1)
    arg0:RequestEmergencyQuickTurn()
    arg0:TurnTo(arg1:GetParam(0))
    if Turn_IsLookToTarget(arg0, arg1) then
        return GOAL_RESULT_Success
    else
        return GuardGoalSubFunc_Update(arg0, arg1, arg1:GetParam(2), arg1:GetParam(3), arg1:GetParam(4))
    end
end

function Turn_Terminate(arg0, arg1)
    return 
end

function Turn_Interupt(arg0, arg1)
    return GuardGoalSubFunc_Interrupt(arg0, arg1, arg1:GetParam(2), arg1:GetParam(3))
end

function Turn_IsLookToTarget(arg0, arg1)
    local local0 = arg1:GetParam(1)
    if local0 <= 0 then
        local0 = 15
    end
    return arg0:IsLookToTarget(local0)
end

return 
