REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 0, "移動対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 1, "到達判定距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 2, "旋回対象", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 3, "歩く?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 4, "ガードEzState番号", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 5, "移動方向", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 6, "指定方向への距離", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 7, "寿命終了時、成功扱いにするか", 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachSettingDirection, true)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_ApproachSettingDirection, true)
function ApproachSettingDirection_Activate(arg0, arg1)
    local local0 = arg1:GetParam(0)
    local local1 = arg1:GetParam(1)
    local local2 = arg1:GetParam(4)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, -1, local0, arg1:GetParam(5), local1, arg1:GetParam(2), arg1:GetParam(3), arg1:GetParam(6))
    if 0 < local2 and local1 < arg0:GetDist(local0) then
        arg0:DoEzAction(arg1:GetLife(), local2)
    end
    return 
end

function ApproachSettingDirection_Update(arg0, arg1, arg2)
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    elseif arg1:GetLife() <= 0 then
        if arg1:GetParam(7) == nil then
            return GOAL_RESULT_Failed
        else
            return GOAL_RESULT_Success
        end
    else
        return GOAL_RESULT_Continue
    end
end

function ApproachSettingDirection_Terminate(arg0, arg1)
    return 
end

function ApproachSettingDirection_Interupt(arg0, arg1)
    return false
end

return 
