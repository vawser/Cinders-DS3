RegisterTableGoal(GOAL_NPC_ElCrabbo, "GOAL_NPC_ElCrabbo")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_ElCrabbo, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100 -- Turn
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 < 2 then
        local0[4] = 100 -- Side Swipe Right
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 < 2 then
        local0[5] = 100 -- Side Swipe Left
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 2 <= local3 then
        local0[21] = 90 -- Step Right
        local0[1] = 10 -- Swipe Right
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 2 <= local3 then
        local0[22] = 90 -- Step Right
        local0[2] = 10 -- Swipe Left
    elseif 3 <= local3 then
        local0[1] = 1 -- Swipe Right
        local0[2] = 1 -- Swipe Left
        local0[3] = 1 -- Swipe Both
    else
        local0[1] = 1 -- Swipe Right
        local0[2] = 1 -- Swipe Left
        local0[3] = 1 -- Swipe Both
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DeathCrabMini227100_Act01) -- Swipe Right
    local1[2] = REGIST_FUNC(arg1, arg2, DeathCrabMini227100_Act02) -- Swipe Left
    local1[3] = REGIST_FUNC(arg1, arg2, DeathCrabMini227100_Act03) -- Swipe Both
    local1[4] = REGIST_FUNC(arg1, arg2, DeathCrabMini227100_Act04) -- Side Swipe Right
    local1[5] = REGIST_FUNC(arg1, arg2, DeathCrabMini227100_Act05) -- Side Swipe Left
    local1[20] = REGIST_FUNC(arg1, arg2, DeathCrabMini227100_Act20) -- Turn
    local1[21] = REGIST_FUNC(arg1, arg2, DeathCrabMini227100_Act21) -- Step Right
    local1[22] = REGIST_FUNC(arg1, arg2, DeathCrabMini227100_Act22) -- Step Right
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DeathCrabMini227100_ActAfter_AdjustSpace), local2)
    return 
end

function DeathCrabMini227100_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0.3 - arg0:GetMapHitRadius(TARGET_SELF), 0.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathCrabMini227100_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0.3 - arg0:GetMapHitRadius(TARGET_SELF), 0.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathCrabMini227100_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0.8 - arg0:GetMapHitRadius(TARGET_SELF), 0.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathCrabMini227100_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0.4 - arg0:GetMapHitRadius(TARGET_SELF), 0.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathCrabMini227100_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0.4 - arg0:GetMapHitRadius(TARGET_SELF), 0.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeathCrabMini227100_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeathCrabMini227100_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeathCrabMini227100_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeathCrabMini227100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_DeathCrabMini227100_AfterAttackAct, "GOAL_DeathCrabMini227100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DeathCrabMini227100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
