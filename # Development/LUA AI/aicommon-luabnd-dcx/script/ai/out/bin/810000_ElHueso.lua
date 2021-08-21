RegisterTableGoal(GOAL_ElHueso_810000_Battle, "GOAL_ElHueso_810000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_ElHueso_810000_Battle, true)
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
    
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetNumber(0)
    
    if local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[2] = 10
        local0[10] = 40
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and arg1:GetRandam_Int(1, 100) <= 40 then
        local0[4] = 60
        local0[10] = 40
    elseif 5 <= local3 then
        local0[1] = 200
        local0[2] = 130
        local0[3] = 100
        local0[4] = 0
        local0[6] = 100
        local0[11] = 0
    elseif 2.5 <= local3 then
        local0[1] = 200
        local0[2] = 130
        local0[3] = 100
        local0[4] = 0
        local0[6] = 100
        local0[11] = 100
    elseif 1 <= local3 then
        local0[1] = 200
        local0[2] = 130
        local0[3] = 100
        local0[4] = 0
        local0[6] = 100
        local0[11] = 100
    else
        local0[1] = 200
        local0[2] = 130
        local0[3] = 100
        local0[4] = 0
        local0[6] = 100
        local0[11] = 100
    end
    
    if local6 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local6 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local6 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local6 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local6 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local6 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    local1[1] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act01) -- Swipe Combo
    local1[2] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act02) -- Slow Right Swipe
    local1[3] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act03) -- Twirl Swipe
    local1[4] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act04) -- Quick Swipe and Backstep
    local1[5] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act06) -- Leap Swipe
    local1[10] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act10) -- Stop
    local1[11] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act11) -- Sideways Move
    local1[20] = REGIST_FUNC(arg1, arg2, ElHueso_810000_Act20) -- Turn
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ElHueso_810000_ActAfter_AdjustSpace), local2)
    return 
end

function ElHueso_810000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    local local0 = 3000 -- Swipe Right
    local local1 = 3001 -- Swipe Left
    local local2 = 3002 -- Swipe Right 2
    local local3 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3
    local local7 = 90
    local local8 = arg0:GetRandam_Int(1, 100)
    if local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local6, local7, 0, 0)
    elseif local8 <= 35 then
        if fate2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ElHueso_810000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.6 - arg0:GetMapHitRadius(TARGET_SELF), 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 3, 90, 0, 0)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ElHueso_810000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.1 - arg0:GetMapHitRadius(TARGET_SELF), 1.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 1.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 3, 90, 0, 0)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ElHueso_810000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.3 - arg0:GetMapHitRadius(TARGET_SELF), -999, 1.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 3, 90, 0, 0)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ElHueso_810000_Act05(arg0, arg1, arg2)
    local local0 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local2 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local5 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    Approach_Act_Flex(arg0, arg1, AppDist, ForceWalkDist, ForceRunDist, 50, 0, 4, 8)
    local local6 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = 3
    local local8 = 90
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local6, local7, local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local6, local7, local8, 0, 0)
    end
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ElHueso_810000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ElHueso_810000_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function ElHueso_810000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function ElHueso_810000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElHueso_810000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
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
    elseif GuardBreak_Act(arg1, arg2, 2.6, 30) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_ElHueso_810000_AfterAttackAct, "GOAL_ElHueso_810000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ElHueso_810000_AfterAttackAct, true)
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
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 15)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
