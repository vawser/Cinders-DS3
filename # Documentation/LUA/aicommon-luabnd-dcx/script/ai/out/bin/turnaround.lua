REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 0, "ˆÚ“®‘ÎÛyTypez", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 1, "‘ÎÛ‚Ì•ûŒüyTypez", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 2, "Šp“xy“xz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 3, "•à‚­?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 4, "õ–½‚Å¬Œ÷H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 5, "ƒK[ƒhEzState”Ô†", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_TurnAround, 0.1, 0.2)
function TurnAround_Activate(arg0, arg1)
    local local0 = arg1:GetParam(0)
    local local1 = arg1:GetParam(5)
    if 0 < local1 then
        arg1:AddSubGoal(GOAL_COMMON_Guard, arg1:GetLife(), local1, local0, 0, 0)
    end
    arg0:TurnTo(local0)
    local local2 = arg0:GetTurnAroundOptimizedDirection(local0, arg1:GetParam(1))
    arg0:SetMoveLROnly(true)
    arg0:MoveTo(TARGET_SELF, local2, 10, arg1:GetParam(3), 0)
    if local2 == AI_DIR_TYPE_L then
        arg1:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, local0, 0)
    elseif local2 == AI_DIR_TYPE_R then
        arg1:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, local0, 0)
    end
    return 
end

function TurnAround_Update(arg0, arg1, arg2)
    if arg0:IsInsideTargetEx(targetType, TARGET_SELF, arg1:GetParam(1), arg1:GetParam(2), 999) then
        return GOAL_RESULT_Success
    elseif arg1:GetParam(4) ~= 0 and arg1:GetLife() <= 0 then
        return GOAL_RESULT_Success
    elseif arg0:CannotMove() then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function TurnAround_Terminate(arg0, arg1)
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TurnAround, true)
function TurnAround_Interupt(arg0, arg1)
    return false
end

return 
