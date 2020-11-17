RegisterTableGoal(GOAL_NPC_Rocky, "GOAL_NPC_Rocky")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)

    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 1
    if SpaceCheck(arg1, arg2, 0, 2.5) == false then
        local6 = 0
    end
    local local7 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[10] = 100 -- Turn
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:GetNpcThinkParamID() == 322001 then
        local0[3] = 100 -- Roll
    elseif 6 <= local3 then
        local0[1] = 30 -- Shove
        local0[2] = 10 -- Fire Breath
        local0[3] = 60 * local6 -- Roll
    elseif 2 <= local3 then
        local0[1] = 20 -- Shove
        local0[2] = 45 -- Fire Breath
        local0[3] = 35 * local6 -- Roll
    else
        local0[1] = 60 -- Shove
        local0[2] = 30 -- Fire Breath
        local0[3] = 10 * local6 -- Roll
    end
    if arg1:GetNpcThinkParamID() == 322002 then
        local0[3] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, RockLizard322000_Act01) -- Shove
    local1[2] = REGIST_FUNC(arg1, arg2, RockLizard322000_Act02) -- Fire Breath
    local1[3] = REGIST_FUNC(arg1, arg2, RockLizard322000_Act03) -- Roll
    local1[9] = REGIST_FUNC(arg1, arg2, RockLizard322000_Act9) -- Stop
    local1[10] = REGIST_FUNC(arg1, arg2, RockLizard322000_Act10) -- Turn
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, RockLizard322000_ActAfter_AdjustSpace), local2)
    return 
end

function RockLizard322000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RockLizard322000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RockLizard322000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(2, 4)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RockLizard322000_Act9(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, 100, TARGET_SELF, false, -1)
    local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_SELF, 999 - arg0:GetMapHitRadius(TARGET_SELF), -1, 0, 0, 0)
    return 
end

function RockLizard322000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(30, 45))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RockLizard322000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = 2.5
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        arg2:ClearSubGoal()
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            if SpaceCheck(arg1, arg2, 0, 4) == false then
                return true
            elseif local0 <= local2 and local1 <= 60 then
                return true
            elseif local1 <= 10 then
                return true
            end
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 999, 0, 0)
        else
            if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
                arg2:ClearSubGoal()
                if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
                    if SpaceCheck(arg1, arg2, 0, 4) == false then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    elseif local0 <= local2 and local1 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    elseif local1 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    end
                    return true
                end
            end
            return 
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        arg2:ClearSubGoal()
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            if SpaceCheck(arg1, arg2, 0, 4) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            elseif local0 <= local2 and local1 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            elseif local1 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
