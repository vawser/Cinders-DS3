function ZonbieCrow221000_Logic(arg0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 12141) == true then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5404) == true or arg0:HasSpecialEffectId(TARGET_SELF, 5406) == true then
            arg0:AddTopGoal(GOAL_ZonbieCrow_Scythe_221001_Battle, -1)
        else
            arg0:AddTopGoal(GOAL_ZonbieCrow_Dagger_221000_Battle, -1)
        end
    else
        COMMON_EasySetup3(arg0)
    end
    return 
end

function Sniper123000_Interupt(arg0, arg1)
    return 
end

return 
