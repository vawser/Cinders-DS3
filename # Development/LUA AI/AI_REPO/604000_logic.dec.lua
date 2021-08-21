function WolfM604000_Logic(arg0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) and (not not arg0:HasSpecialEffectId(TARGET_SELF, 13022) or arg0:HasSpecialEffectId(TARGET_SELF, 13023)) and not arg0:HasSpecialEffectId(TARGET_SELF, 13026) then
        arg0:AddTopGoal(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID), -1)
    else
        COMMON_EasySetup3(arg0)
        arg0:SetNumber(3, 0)
    end
    return 
end

function WolfM604000_Interupt(arg0, arg1)
    return 
end

return 
