RegisterTableGoal(GOAL_COMMON_AfterAttackAct, "AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    if local0 >= arg1:GetStringIndexedNumber("DistMin_AAA") and arg1:GetStringIndexedNumber("DistMax_AAA") >= local0 and arg1:IsInsideTarget(TARGET_ENE_0, arg1:GetStringIndexedNumber("BaseDir_AAA"), arg1:GetStringIndexedNumber("Angle_AAA")) ~= false then
        local local1 = -1
        if arg1:GetRandam_Int(1, 100) <= arg1:GetStringIndexedNumber("Odds_Guard_AAA") then
            local1 = 9910
        end
        local local2 = arg1:GetRandam_Int(0, 1)
        local local3 = arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 4)
        local local4 = arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 4)
        if local4 < local3 then
            local2 = 1
        elseif local3 < local4 then
            local2 = 0
        end
        local local5 = 0 + arg1:GetStringIndexedNumber("Odds_NoAct_AAA")
        local local6 = local5 + arg1:GetStringIndexedNumber("Odds_BackAndSide_AAA")
        local local7 = local6 + arg1:GetStringIndexedNumber("Odds_Back_AAA")
        local local8 = local7 + arg1:GetStringIndexedNumber("Odds_Backstep_AAA")
        local local9 = local8 + arg1:GetStringIndexedNumber("Odds_Sidestep_AAA")
        local local10 = local9 + arg1:GetStringIndexedNumber("Odds_BitWait_AAA")
        local local11 = local10 + arg1:GetStringIndexedNumber("Odds_BsAndSide_AAA")
        local local12 = arg1:GetRandam_Int(1, arg1:GetStringIndexedNumber("Odds_NoAct_AAA") + arg1:GetStringIndexedNumber("Odds_BackAndSide_AAA") + arg1:GetStringIndexedNumber("Odds_Back_AAA") + arg1:GetStringIndexedNumber("Odds_Backstep_AAA") + arg1:GetStringIndexedNumber("Odds_Sidestep_AAA") + arg1:GetStringIndexedNumber("Odds_BitWait_AAA") + arg1:GetStringIndexedNumber("Odds_BsAndSide_AAA") + arg1:GetStringIndexedNumber("Odds_BsAndSs_AAA"))
        if 0 >= local12 or local12 > local5 then
            if local5 < local12 and local12 <= local6 then
                local local13 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetStringIndexedNumber("BackAndSide_BackLife_AAA"), TARGET_ENE_0, arg1:GetStringIndexedNumber("BackAndSide_BackDist_AAA"), TARGET_ENE_0, true, local1)
                local13 = local13:SetTargetRange(30, arg1:GetStringIndexedNumber("DistMin_Inter_AAA"), arg1:GetStringIndexedNumber("DistMax_Inter_AAA"))
                local13:SetTargetAngle(30, arg1:GetStringIndexedNumber("BaseAng_Inter_AAA"), arg1:GetStringIndexedNumber("Ang_Inter_AAA"))
                local13 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetStringIndexedNumber("BackAndSide_SideLife_AAA"), TARGET_ENE_0, local2, arg1:GetStringIndexedNumber("BackAndSide_SideDir_AAA"), true, true, local1)
                local13 = local13:SetTargetRange(30, arg1:GetStringIndexedNumber("DistMin_Inter_AAA"), arg1:GetStringIndexedNumber("DistMax_Inter_AAA"))
                local13:SetTargetAngle(30, arg1:GetStringIndexedNumber("BaseAng_Inter_AAA"), arg1:GetStringIndexedNumber("Ang_Inter_AAA"))
            elseif local6 < local12 and local12 <= local7 then
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetStringIndexedNumber("BackLife_AAA"), TARGET_ENE_0, arg1:GetStringIndexedNumber("BackDist_AAA"), TARGET_ENE_0, true, local1)
            elseif local7 < local12 and local12 <= local8 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif local8 < local12 and local12 <= local9 then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, arg1:GetStringIndexedNumber("Dist_SideStep"))
            elseif local9 < local12 and local12 <= local10 then
                arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
            elseif local10 < local12 and local12 <= local11 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                local local13 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetStringIndexedNumber("BsAndSide_SideLife_AAA"), TARGET_ENE_0, local2, arg1:GetStringIndexedNumber("BsAndSide_SideDir_AAA"), true, true, local1)
                local13 = local13:SetTargetRange(30, arg1:GetStringIndexedNumber("DistMin_Inter_AAA"), arg1:GetStringIndexedNumber("DistMax_Inter_AAA"))
                local13:SetTargetAngle(30, arg1:GetStringIndexedNumber("BaseAng_Inter_AAA"), arg1:GetStringIndexedNumber("Ang_Inter_AAA"))
            elseif local11 < local12 and local12 <= local11 + arg1:GetStringIndexedNumber("Odds_BsAndSs_AAA") then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, arg1:GetStringIndexedNumber("Dist_SideStep"))
            end
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    elseif arg2:GetLife() <= 0 then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

Goal.Interrupt_TargetOutOfRange = function (arg0, arg1, arg2, arg3)
    if arg3 == 30 then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

Goal.Interrupt_TargetOutOfAngle = function (arg0, arg1, arg2, arg3)
    if arg3 == 30 then
        arg2:ClearSubGoal()
        return true
    else
        return false
    end
end

return 
