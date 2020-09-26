REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround, 0, "ˆÚ“®‚·‚é‰~‚Ì”¼Œa", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround, 1, "•à‚­‚©", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround, 2, "“G‚É”½‰ž‚·‚é‹——£", 0)
function WalkAround_Activate(arg0, arg1)
    local local0 = arg1:GetParam(2)
    local local1 = arg1:GetParam(3) ~= 0
    local local2 = POINT_WalkAroundPosition_Home
    if local1 then
        local2 = POINT_WalkAroundPosition_Free
    end
    if local1 then
        arg0:ChangeWalkAroundFreePoint()
    else
        arg0:DecideWalkAroundPos()
    end
    if 2 <= arg0:GetDist(local2) then
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 30, local2, AI_DIR_TYPE_CENTER, arg1:GetParam(0), TARGET_SELF, arg1:GetParam(1))
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 6), TARGET_NONE, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    end
    return 
end

function WalkAround_Update(arg0, arg1)
    if arg0:IsSearchTarget(TARGET_ENE_0) == true and arg0:GetDist(TARGET_ENE_0) < arg1:GetParam(2) then
        return GOAL_RESULT_Failed
    else
        return GOAL_RESULT_Continue
    end
end

function WalkAround_Terminate(arg0, arg1)
    return 
end

function WalkAround_Interupt(arg0, arg1)
    return false
end

return 
