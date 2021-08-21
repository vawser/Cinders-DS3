RegisterTableGoal(GOAL_SnakeAssasin139100_Battle, "GOAL_SnakeAssasin139100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 6)
    arg1:SetStringIndexedNumber("Dist_BackStep", 6)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = 1
    local local8 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 12720) then
        local7 = 0
    end
    if not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204200) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204201) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204202) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204203) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204204) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204210) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204211) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204212) or arg1:IsInsideTargetRegion(TARGET_SELF, 3204213) then
        local8 = 1
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 < 2.5 then
        local0[9] = 70 * local8
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and 2.5 <= local3 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 < 2.5 then
        local0[10] = 70
        local0[20] = 10
        local0[25] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 < 2.5 then
        local0[11] = 70
        local0[20] = 10
        local0[24] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 4.5 <= local3 then
        local0[20] = 30
        local0[25] = 70
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 4.5 <= local3 then
        local0[20] = 30
        local0[24] = 70
    elseif 15 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 35 * local7
        local0[5] = 15 * local7
        local0[6] = 35 * local7
        local0[8] = 5
        local0[12] = 10
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 30 * local7
        local0[5] = 20 * local7
        local0[6] = 35 * local7
        local0[8] = 5
        local0[12] = 10
    elseif 5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 30 * local7
        local0[5] = 30 * local7
        local0[6] = 25 * local7
        local0[8] = 5
        local0[12] = 10
    else
        local0[1] = 50
        local0[2] = 50
        local0[3] = 0 * local7
        local0[5] = 0 * local7
        local0[6] = 0 * local7
        local0[8] = 0
        local0[12] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3008, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 15, local0[3], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3014, 15, local0[6], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3013, 15, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3007, 15, local0[9], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3005, 15, local0[12], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act03)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act06)
    local1[8] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, SnakeAssasin139100_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnakeAssasin139100_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeAssasin139100_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.7 - arg0:GetMapHitRadius(TARGET_SELF), 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    local local0 = 3000
    local local1 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    local local0 = 3008
    local local1 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, DistToAtt3, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.4 - arg0:GetMapHitRadius(TARGET_SELF), 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    local local0 = 3004
    local local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, DistToAtt3, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF), 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6 - arg0:GetMapHitRadius(TARGET_SELF), 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepFront, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139100_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnakeAssasin139100_AfterAttackAct, 10)
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
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        local local2 = 10.7 - arg1:GetMapHitRadius(TARGET_SELF)
        if 13 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local2, 0, 0)
            return true
        elseif 8 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local2, 0, 0)
            return true
        end
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
        local local2 = 10.7 - arg1:GetMapHitRadius(TARGET_SELF)
        if 13 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local2, 0, 0)
            return true
        elseif 8 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local2, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_SnakeAssasin139100_AfterAttackAct, "GOAL_SnakeAssasin139100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg1:SetStringIndexedNumber("BackDist_AAA", 20)
    arg1:SetStringIndexedNumber("BackLife_AAA", 2)
    if 7 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSs_AAA", 0)
    elseif 4 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BsAndSs_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSs_AAA", 0)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
