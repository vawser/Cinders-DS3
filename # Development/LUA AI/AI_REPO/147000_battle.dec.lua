RegisterTableGoal(GOAL_WheelSkeleton_147000_Battle, "GOAL_WheelSkeleton_147000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WheelSkeleton_147000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[20] = 100
        elseif 3 <= local3 then
            local0[1] = 0
            local0[2] = 100
        else
            local0[1] = 70
            local0[2] = 30
        end
    elseif local3 <= 1 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 359) then
        local0[4] = 100
    else
        local0[3] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, WheelSkeleton_147000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, WheelSkeleton_147000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, WheelSkeleton_147000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, WheelSkeleton_147000_Act04)
    local1[20] = REGIST_FUNC(arg1, arg2, WheelSkeleton_147000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, WheelSkeleton_147000_ActAfter_AdjustSpace), local2)
    return 
end

function WheelSkeleton_147000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1 - arg0:GetMapHitRadius(TARGET_SELF), 1 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WheelSkeleton_147000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF), 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WheelSkeleton_147000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WheelSkeleton_147000_Act04(arg0, arg1, arg2)
    local local0 = 6000
    local local1 = 999
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WheelSkeleton_147000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(arg1, arg2, 180, 120, 5, 999) then
        arg2:ClearSubGoal()
        WheelSkeleton_147000_Act04(arg1, arg2, paramTbl)
    end
    return false
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
