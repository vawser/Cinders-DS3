function SnowryDeadWarrior_600000_Logic(arg0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) and arg0:HasSpecialEffectId(TARGET_SELF, 13080) then
        arg0:AddTopGoal(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID), -1)
    else
        COMMON_EasySetup3(arg0)
    end
    return 
end

function SnowryDeadWarrior_600000_Interupt(arg0, arg1)
    return 
end

return 
