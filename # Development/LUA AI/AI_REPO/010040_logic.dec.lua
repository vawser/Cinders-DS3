function common10040_Logic(arg0)
    COMMON_EasySetup3(arg0)
    return 
end

function common10040_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_ForgetTarget) and arg0:HasSpecialEffectId(TARGET_SELF, 5404) and arg0:HasSpecialEffectId(TARGET_SELF, 12621) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0)
        return true
    else
        return false
    end
end

return 
