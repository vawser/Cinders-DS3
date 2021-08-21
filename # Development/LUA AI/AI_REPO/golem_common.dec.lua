RegisterTableGoal(GOAL_Golem_CautionState, "GOAL_Golem_CautionState")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Golem_Common, true)
Goal.Activate = function (arg0, arg1, arg2)
    if 3 < arg1:GetDist(TARGET_ENE_0) then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    end
    arg2:AddSubGoal(GOAL_Golem_CautionStateRandaomAttack, 10, TARGET_SELF, -180, 180, 0, 2.5, arg1:GetRandam_Int(3000, 3003))
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

RegisterTableGoal(GOAL_Golem_CautionStateRandaomAttack, "GOAL_Golem_CautionStateRandaomAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Golem_CautionStateRandaomAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    arg1:SetAIFixedMoveTargetSpecifyAngle(arg2:GetParam(0), arg1:GetRandam_Float(arg2:GetParam(1), arg2:GetParam(2)), arg1:GetRandam_Float(arg2:GetParam(3), arg2:GetParam(4)), AI_SPA_DIR_TYPE_TargetF)
    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), POINT_AI_FIXED_POS, 1, TARGET_SELF, true, -1)
    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, arg2:GetParam(5), POINT_AI_FIXED_POS, DIST_None, 0, -1)
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
