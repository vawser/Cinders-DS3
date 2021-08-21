function Mimic212000_Logic(arg0)
    COMMON_EasySetup3(arg0)
    return 
end

function Mimic212000_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Damaged) and arg0:HasSpecialEffectId(TARGET_SELF, 11700) == true then
        arg1:ClearSubGoal()
        if arg0:HasSpecialEffectId(TARGET_SELF, 5020) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3010, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3011, TARGET_ENE_0, 999, 0, 0)
        end
        return true
    else
        return false
    end
end

return 
