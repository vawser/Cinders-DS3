function CrowVillager_608000_Logic(arg0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        arg0:AddTopGoal(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID), -1)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5022) and arg0:IsFinishTimer(1) == true then
        arg0:SetTimer(1, arg0:GetRandam_Int(15, 30))
        local local0 = arg0:GetRandam_Int(1, 100)
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_NONE, ATT_SUCCESSDIST, 1.5, 90, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5023) and arg0:IsFinishTimer(2) == true then
        arg0:SetTimer(2, arg0:GetRandam_Int(15, 30))
        local local0 = arg0:GetRandam_Int(1, 100)
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_NONE, ATT_SUCCESSDIST, 1.5, 90, 0, 0)
    else
        COMMON_EasySetup3(arg0)
    end
    return 
end

function CrowVillager_608000_Interupt(arg0, arg1)
    return 
end

return 
