function BossDaughterHU_602010_Logic(arg0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13139) then
        arg0:AddTopGoal(GOAL_BossDaughter_602000_Battle, -1)
    else
        arg0:AddTopGoal(GOAL_BossDaughterHU_602010_Battle, -1)
    end
    return 
end

function BossDaughterHU_602010_Interupt(arg0, arg1)
    return 
end

return 
