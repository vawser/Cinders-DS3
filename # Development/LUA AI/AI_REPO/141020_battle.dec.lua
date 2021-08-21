RegisterTableGoal(GOAL_Silverknight141020_archerSwitch, "GOAL_Silverknight141020_archerSwitch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Silverknight141020_archerSwitch, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        if 7 > local0 and 4 <= arg1:GetAttackPassedTime(1300) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0)
            return 
        end
        arg2:AddSubGoal(GOAL_Silverknight141020_archerBattle, -1)
    else
        if 7 <= local0 and 4 <= arg1:GetAttackPassedTime(1300) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0)
            return 
        end
        arg2:AddSubGoal(GOAL_Silverknight141000_SwordBattle, -1)
    end
    return 
end

return 
