REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LiftOff, true)
function LiftOff_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 9520, TARGET_NONE, DIST_None)
    return 
end

function LiftOff_Update(arg0, arg1)
    local local0 = 5
    local local1 = arg0:GetDistY(TARGET_ENE_0)
    local local2 = arg1:GetLastSubGoalResult()
    if (local2 == GOAL_RESULT_Success or local2 == GOAL_RESULT_Failed) and (not not arg0:IsLanding() or local1 < local0) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 9520, TARGET_NONE, DIST_None)
    end
    if not arg0:IsLanding() and local0 <= local1 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function LiftOff_Terminate(arg0, arg1)
    return 
end

function LiftOff_Interupt(arg0, arg1)
    return false
end

REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_Landing, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing, true)
function Landing_Activate(arg0, arg1)
    arg0:SetAIFixedMoveTarget(arg1:GetParam(0), TARGET_SELF, 0)
    arg1:AddSubGoal(GOAL_COMMON_Landing_Move, 10, arg1:GetParam(1))
    if 0 < arg0:GetDistYSigned(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_AI_FIXED_POS, 0.1, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Landing_Landing, 10)
    end
    return 
end

function Landing_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Landing_Terminate(arg0, arg1)
    return 
end

function Landing_Interupt(arg0, arg1)
    return false
end

REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Landing_Move, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing_Move, true)
function Landing_Move_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_AI_FIXED_POS, arg1:GetParam(0), TARGET_SELF, false, -1)
    return 
end

function Landing_Move_Update(arg0, arg1)
    if arg0:GetDistXZ(POINT_AI_FIXED_POS) < 1 then
        return GOAL_RESULT_Success
    elseif arg0:IsLanding() then
        return GOAL_RESULT_Failed
    else
        return GOAL_RESULT_Continue
    end
end

function Landing_Move_Terminate(arg0, arg1)
    return 
end

function Landing_Move_Interupt(arg0, arg1)
    return false
end

REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Landing_Landing, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing_Landing, true)
function Landing_Landing_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Attack, arg1:GetLife(), 9510, TARGET_NONE, DIST_None)
    return 
end

function Landing_Landing_Update(arg0, arg1)
    if arg0:IsLanding() then
        local local0 = arg1:GetNumber(0)
        if 10 < local0 then
            return GOAL_RESULT_Success
        end
        arg1:SetNumber(0, local0 + 1)
    end
    local local0 = arg1:GetLastSubGoalResult()
    if (local0 == GOAL_RESULT_Success or local0 == GOAL_RESULT_Failed) and not arg0:IsLanding() then
        arg1:AddSubGoal(GOAL_COMMON_Attack, arg1:GetLife(), 9510, TARGET_NONE, DIST_None)
    end
    if 1 < arg0:GetDistYSigned(POINT_AI_FIXED_POS) then
        arg0:PrintText("[Landing_Landing_Update]ターゲットより高さが下になりました。失敗を返します。")
        return GOAL_RESULT_Failed
    else
        return GOAL_RESULT_Continue
    end
end

function Landing_Landing_Terminate(arg0, arg1)
    return 
end

function Landing_Landing_Interupt(arg0, arg1)
    return false
end

return 
