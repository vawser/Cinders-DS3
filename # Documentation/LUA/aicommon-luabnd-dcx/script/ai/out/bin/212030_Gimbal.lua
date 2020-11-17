RegisterTableGoal(GOAL_NPC_Gimbal, "GOAL_NPC_Gimbal")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Gimbal, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 3152)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) == true then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3152)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50 -- Approach
        local0[11] = 50 -- Sideways Move
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10 -- Swipe
        local0[2] = 10 -- Forward Kick
        local0[10] = 40 -- Approach
        local0[11] = 40 -- Sideways Move
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        local0[20] = 10 -- Turn
    elseif 6 <= local3 then
        local0[1] = 10 -- Swipe
        local0[2] = 10 -- Forward Kick
        local0[3] = 30 -- Spin Kick
        local0[4] = 0 -- Grab
        local0[20] = 1 -- Turn
    elseif 2 <= local3 then
        local0[1] = 10 -- Swipe
        local0[2] = 10 -- Forward Kick
        local0[3] = 10 -- Spin Kick
        local0[4] = 0 -- Grab
        local0[20] = 1 -- Turn
    else
        local0[1] = 20 -- Swipe
        local0[2] = 10 -- Forward Kick
        local0[3] = 10 -- Spin Kick
        local0[4] = 0 -- Grab
        local0[20] = 1 -- Turn
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 12, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 12, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 12, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 18, local0[4], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Mimic_212000_Act01) -- Swipe
    local1[2] = REGIST_FUNC(arg1, arg2, Mimic_212000_Act02) -- Forward Kick
    local1[3] = REGIST_FUNC(arg1, arg2, Mimic_212000_Act03) -- Spin Kick
    local1[4] = REGIST_FUNC(arg1, arg2, Mimic_212000_Act04) -- Grab
    local1[10] = REGIST_FUNC(arg1, arg2, Mimic_212000_Act10) -- Approach
    local1[11] = REGIST_FUNC(arg1, arg2, Mimic_212000_Act11) -- Sideways Move
    local1[20] = REGIST_FUNC(arg1, arg2, Mimic_212000_Act20) -- Turn
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Mimic_212000_ActAfter_AdjustSpace), local2)
    return 
end

function Mimic_212000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 1.5, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Mimic_212000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Mimic_212000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9 - arg0:GetMapHitRadius(TARGET_SELF), 9 - arg0:GetMapHitRadius(TARGET_SELF), 9 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 2)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DistToAtt, 1.5, 120, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Mimic_212000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 2)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DistToAtt, 1.5, 120, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Mimic_212000_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function Mimic_212000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Mimic_212000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    return 
end

function Mimic_212000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 11700) == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 3010, TARGET_ENE_0, 999, 0, 0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Mimic_212000_AfterAttackAct, "Mimic_212000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Mimic_212000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
