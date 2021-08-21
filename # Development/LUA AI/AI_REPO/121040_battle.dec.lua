RegisterTableGoal(GOAL_BlueMan_PlayingDead_121040_battle, "BlueMan_PlayingDead_121040_battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_PlayingDead_121040_battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(0, 10)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetNumber(0)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 50
    elseif 10 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 30
        local0[4] = 10
        local0[10] = 0
        local0[11] = 0
    elseif 6 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 20
        local0[4] = 20
        local0[10] = 0
        local0[11] = 0
    elseif 2 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 0
        local0[4] = 30
        local0[10] = 0
        local0[11] = 0
    else
        local0[1] = 20
        local0[2] = 20
        local0[3] = 0
        local0[4] = 10
        local0[10] = 0
        local0[11] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 5, local0[2], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 5, local0[4], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, BlueMan_PlayingDead_121040_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlueMan_PlayingDead_121040_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlueMan_PlayingDead_121040_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlueMan_PlayingDead_121040_Act04)
    local1[10] = REGIST_FUNC(arg1, arg2, BlueMan_PlayingDead_121040_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, BlueMan_PlayingDead_121040_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, BlueMan_PlayingDead_121040_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlueMan_PlayingDead_121040_ActAfter_AdjustSpace), local2)
    return 
end

function BlueMan_PlayingDead_121040_Act01(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 1)
    arg0:SetStringIndexedNumber("AddDistRun", 2)
    Approach_Act_Flex(arg0, arg1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 5, 5)
    local local0 = 3000
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_PlayingDead_121040_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 1)
    arg0:SetStringIndexedNumber("AddDistRun", 2)
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_PlayingDead_121040_Act03(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 1)
    arg0:SetStringIndexedNumber("AddDistRun", 2)
    Approach_Act_Flex(arg0, arg1, 12.5 - arg0:GetMapHitRadius(TARGET_SELF), 12.5 - arg0:GetMapHitRadius(TARGET_SELF), 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_PlayingDead_121040_Act04(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 1)
    arg0:SetStringIndexedNumber("AddDistRun", 2)
    Approach_Act_Flex(arg0, arg1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 100, 0, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_PlayingDead_121040_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function BlueMan_PlayingDead_121040_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function BlueMan_PlayingDead_121040_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_PlayingDead_121040_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif Damaged_Act(arg1, arg2, 4.5, 80) then
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_BlueMan_PlayingDead_121040_AfterAttackAct, "BlueMan_PlayingDead_121040_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_PlayingDead_121040_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 360)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 40)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 15)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 35)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
