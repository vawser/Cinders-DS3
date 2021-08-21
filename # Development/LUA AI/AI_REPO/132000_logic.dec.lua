function OldmanCrystal132000_Logic(arg0)
    if arg0:GetEventRequest() == 10 and 5 <= arg0:GetMp(TARGET_SELF) then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3020, TARGET_NONE)
    else
        COMMON_EasySetup3(arg0)
    end
    return 
end

function OldmanCrystal132000_Interupt(arg0, arg1)
    return 
end

return 
