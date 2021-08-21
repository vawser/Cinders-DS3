function CrowKnight_Rapier_607000_Logic(arg0)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 13250) or arg0:HasSpecialEffectId(TARGET_SELF, 13251) then
        arg0:AddTopGoal(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID), -1)
    else
        COMMON_EasySetup3(arg0)
    end
    return 
end

function CrowKnight_Rapier_607000_Interupt(arg0, arg1)
    return 
end

return 
