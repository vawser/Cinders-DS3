RegisterTableGoal(GOAL_BlackOldKing_Mist, "GOAL_BlackOldKing_Mist")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackOldKing_Mist, true)
Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_EnemyKeepDist, -1, TARGET_ENE_0, TARGET_SELF, 1, 3, 0, 0, 30, 0, 0, 0, 0, 0)
    return 
end

Goal.Interrupt_OnCreateDamage = function (arg0, arg1, arg2)
    if arg1:GetDist(TARGET_ENE_0) < 2 then
        local local0 = 9999999
        local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
        if math.abs(local1) < 5 then
            local local2 = arg1:GetLatestAttackedDir()
            if 6 <= local2 and local2 <= 8 then
                local0 = 2
                print("右や（1）")
            elseif 0 <= local2 and local2 <= 4 then
                local0 = 1
                print("左や（1）")
            end
        elseif 0 < local1 then
            local0 = 2
            print("右や（2）")
        else
            local0 = 1
            print("左や（2）")
        end
        if local0 ~= 9999999 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            arg2:ClearSubGoal()
            if arg1:GetNumber(0) <= 2 then
                if local0 == 1 then
                    arg2:AddSubGoal(GOAL_EnemyStepRight, 5, 5)
                else
                    arg2:AddSubGoal(GOAL_EnemyStepLeft, 5, 5)
                end
            else
                arg1:SetNumber(0, 0)
                if local0 == 1 then
                    arg2:AddSubGoal(GOAL_EnemyTunableAttack, -1, TARGET_ENE_0, 3000)
                else
                    arg2:AddSubGoal(GOAL_EnemyTunableAttack, -1, TARGET_ENE_0, 3001)
                end
            end
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:Replanning()
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

return 
