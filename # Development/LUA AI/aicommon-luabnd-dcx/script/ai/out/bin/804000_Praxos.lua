RegisterTableGoal(GOAL_Praxos_804000_Battle, "Praxos_804000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Praxos_804000_Battle, true)

Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        if 7 > local0 and 4 <= arg1:GetAttackPassedTime(1300) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0)
            return 
        end
        arg2:AddSubGoal(GOAL_Praxos_Archer_Battle, -1)
    else
        if 7 <= local0 and 4 <= arg1:GetAttackPassedTime(1300) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0)
            return 
        end
        arg2:AddSubGoal(GOAL_Praxos_Sword_Battle, -1)
    end
    return 
end

return 
