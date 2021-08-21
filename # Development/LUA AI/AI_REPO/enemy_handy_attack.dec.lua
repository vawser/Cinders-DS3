RegisterTableGoal(GOAL_EnemyHandyAttack, "GOAL_EnemyHandyAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyHandyAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyHandyAttack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 0, "ëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 1, "É`ÉFÉCÉìÇ©", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 2, "çUåÇ1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 3, "çUåÇ2", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 4, "çUåÇ3", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 5, "çUåÇ4", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 6, "çUåÇ5", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 7, "çUåÇ6", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 8, "ämó¶1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 9, "ämó¶2", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 10, "ämó¶3", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 11, "ämó¶4", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 12, "ämó¶5", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg2:GetParam(2)
    if local0 == nil or local0 <= 0 then
        print("[HANDY ATTACK]" .. "èIóπ")
        return 
    end
    local local1 = arg2:GetParam(3)
    local local2 = arg2:GetParam(0)
    local local3 = arg1:GetDist(local2)
    local local4 = 0
    if arg1:GetRandam_Float(0.1, 100) < arg2:GetParam(8) then
        local4 = 1
    else
        print("[HANDY ATTACK]" .. local0 .. "ÅFíäëIÇÃåãâ éüÇÃçUåÇÇ…ÇÕåqÇ™Ç»Ç¢")
    end
    if local0 == 7008 then
        arg2:AddSubGoal(GOAL_EnemyStepFront, arg2:GetLife(), local2, 0)
    elseif local0 == 7003 then
        arg2:AddSubGoal(GOAL_EnemyStepLR, arg2:GetLife(), local2, 0)
    elseif local0 == 7004 then
        arg2:AddSubGoal(GOAL_EnemyStepBack, arg2:GetLife(), local2, 0)
    elseif 0 == 1 then
        if local1 == nil or local1 <= 0 or local4 == 0 then
            arg2:AddSubGoal(GOAL_EnemyTunableAttack, arg2:GetLife(), local2, local0)
        else
            arg2:AddSubGoal(GOAL_EnemyTunableComboAttack, arg2:GetLife(), local2, local0)
        end
    elseif local1 == nil or local1 <= 0 or local4 == 0 then
        arg2:AddSubGoal(GOAL_EnemyComboFinal, arg2:GetLife(), local2, local0)
    else
        arg2:AddSubGoal(GOAL_EnemyComboRepeat, arg2:GetLife(), local2, local0)
    end
    arg2:SetNumber(1, 0)
    if local1 ~= nil and local1 > 0 and local4 == 1 then
        arg2:SetNumber(1, 1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    elseif arg2:GetNumber(1) == 1 and arg1:IsEnableComboAttack() then
        arg2:SetNumber(1, 0)
        if arg1:IsHitAttack() then
            local local0 = arg2:GetParam(3)
            arg2:AddSubGoal(GOAL_EnemyHandyAttack, arg2:GetLife(), arg2:GetParam(0), arg2:GetParam(1), arg2:GetParam(3), arg2:GetParam(4), arg2:GetParam(5), arg2:GetParam(6), arg2:GetParam(7), nil, arg2:GetParam(8), arg2:GetParam(9), arg2:GetParam(10), arg2:GetParam(11), nil)
        elseif arg2:GetParam(1) == 0 then
            local local1 = arg2:GetParam(0)
            if arg1:IsFinishAttackCoolTime(arg2:GetParam(3)) and arg1:GetDist(local1) <= 0 and arg1:IsInsideTarget(local1, AI_DIR_CENTER, 0) then
                arg2:AddSubGoal(GOAL_EnemyHandyAttack, arg2:GetLife(), local1, arg2:GetParam(1), arg2:GetParam(3), arg2:GetParam(4), arg2:GetParam(5), arg2:GetParam(6), arg2:GetParam(7), nil, arg2:GetParam(8), arg2:GetParam(9), arg2:GetParam(10), arg2:GetParam(11), nil)
            end
        end
    end
    return GOAL_RESULT_Continue
end

return 
