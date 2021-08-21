function TopGoal_Activate(arg0, arg1)
    return 
end

function TopGoal_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function TopGoal_Terminate(arg0, arg1)
    return 
end

function TopGoal_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_CANNOT_MOVE) then
        local local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
        if arg0:IsTouchBreakableObject() and 0 <= local0 and arg0:IsLookToTarget(POINT_CurrRequestPosition, 90) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, -1, local0, TARGET_NONE, DIST_None)
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_CANNOT_MOVE_DisableInterupt) then
        local local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
        if arg0:IsTouchBreakableObject() and 0 <= local0 and arg0:IsLookToTarget(POINT_CurrRequestPosition, 90) then
            arg1:AddSubGoal_Front(GOAL_COMMON_NonspinningAttack, -1, local0, TARGET_NONE, DIST_None)
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_HitEnemyWall) then
        local local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__BackHomeLife_OnHitEnemyWall)
        if 0 < local0 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_BackToHome, local0, 0)
            return true
        end
    end
    return false
end

return 
