function TeamReplyHelp_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_MinWaitTime), arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_MaxWaitTime)), TARGET_SELF)
    arg0:TeamHelp_Reply()
    local local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ReplyActionId)
    if local0 ~= -1 then
        arg1:AddSubGoal(GOAL_COMMON_Attack, arg1:GetLife(), local0, TARGET_FRI_0, DIST_None)
    end
    local local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ReplyBehaviorType)
    if local1 == 0 then
        if 3 < arg0:GetDist(TARGET_FRI_0) then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_FRI_0)
        end
    elseif local1 == 1 then
        if 3 < arg0:GetDist(TARGET_FRI_0) then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_FRI_0)
        end
    elseif local1 == 2 then
        if 3 < arg0:GetDist(TARGET_FRI_0) then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_FRI_0)
        end
    elseif local1 == 3 then
        if 3 < arg0:GetDist(TARGET_FRI_0) then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_FRI_0)
        end
    elseif local1 ~= 4 and local1 ~= 5 then
        if local1 == 6 then
            if 2 < arg0:GetDist(POINT_AI_FIXED_POS) then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), POINT_AI_FIXED_POS, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
            else
                arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, POINT_AI_FIXED_POS)
            end
        elseif local1 == 7 then
            if 2 < arg0:GetDist(POINT_AI_FIXED_POS) then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), POINT_AI_FIXED_POS, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
            else
                arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, POINT_AI_FIXED_POS)
            end
        end
    end
    return 
end

function TeamReplyHelp_Update(arg0, arg1)
    return 
end

function TeamReplyHelp_Terminate(arg0, arg1)
    arg0:SetNumber(2, 2)
    if arg0:ChkNearCorpsePos(3) then
        arg0:SetNumber(2, 3)
    end
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TeamReplyHelp, true)
function TeamReplyHelp_Interupt(arg0, arg1)
    return false
end

return 
