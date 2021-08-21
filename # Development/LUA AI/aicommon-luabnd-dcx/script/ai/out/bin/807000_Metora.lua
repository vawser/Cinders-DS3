RegisterTableGoal(GOAL_Metora_807000_Battle, "GOAL_Metora_807000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Metora_807000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6, local7 = nil
    local local8 = 1
    local local9 = 0
    local local10 = 1
    local local11 = arg1:GetEventRequest()
    if arg1:GetNpcThinkParamID() == 123003 then
        local6 = 1
    end
    if arg1:GetNpcThinkParamID() == 123004 then
        local7 = 1
    end
    if arg1:GetNpcThinkParamID() == 123005 then
        local8 = 0
        local9 = 1
        local10 = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and 3 <= local3 and local3 <= 10 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 3 then
        local0[1] = 35
        local0[4] = 15
        local0[8] = 0 -- Grab: Fire Hug
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 2 then
        local0[2] = 10
        local0[8] = 0 -- Grab: Fire Hug
        local0[10] = 50
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 2 then
        local0[4] = 60
        local0[8] = 0 -- Grab: Fire Hug
        local0[20] = 20
    else
        if local6 == 1 then
            if 10 <= local3 then
                local0[1] = 10
                local0[2] = 5
                local0[3] = 0
                local0[4] = 10
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 0
                local0[10] = 0
                local0[12] = 0
            elseif 6 <= local3 then
                local0[1] = 15
                local0[2] = 15
                local0[3] = 0
                local0[4] = 20
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 0
                local0[10] = 0
                local0[12] = 0
            elseif 3 <= local3 then
                local0[1] = 20
                local0[2] = 25
                local0[3] = 10
                local0[4] = 15
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 0
                local0[10] = 20
            elseif 1.5 <= local3 then
                local0[1] = 5
                local0[2] = 10
                local0[3] = 25
                local0[4] = 5
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 0
                local0[10] = 30
            else
                local0[1] = 5
                local0[2] = 5
                local0[3] = 35
                local0[4] = 5
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 0
                local0[10] = 25
            end
        elseif local7 == 1 then
            if 10 <= local3 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 45
                local0[10] = 0
                local0[12] = 30
            elseif 6 <= local3 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 60
                local0[10] = 0
                local0[12] = 40
            elseif 3 <= local3 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 15
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 0
                local0[10] = 20
                local0[13] = 20
            elseif 1.5 <= local3 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 0
                local0[10] = 20
                local0[13] = 60
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 35
                local0[4] = 0
                local0[8] = 0 -- Grab: Fire Hug
                local0[9] = 0
                local0[10] = 25
                local0[13] = 60
            end
        elseif 10 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 0
            local0[4] = 5
            local0[8] = 0 -- Grab: Fire Hug
            local0[9] = 55 * local8
            local0[10] = 0
            local0[12] = 30 * local10
            local0[14] = 55 * local9
        elseif 6 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 0
            local0[4] = 20
            local0[8] = 0 -- Grab: Fire Hug
            local0[9] = 30 * local8
            local0[10] = 0
            local0[12] = 20
            local0[13] = 0 * local10
            local0[14] = 30 * local9
        elseif 4 <= local3 then
            local0[1] = 20
            local0[2] = 25
            local0[3] = 5
            local0[4] = 15
            local0[8] = 0 -- Grab: Fire Hug
            local0[9] = 0 * local8
            local0[10] = 0
            local0[13] = 20 * local10
            local0[14] = 0 * local9
        elseif 1.5 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 10
            local0[4] = 5
            local0[8] = 0 -- Grab: Fire Hug
            local0[9] = 0 * local8
            local0[10] = 10
            local0[13] = 30 * local10
            local0[14] = 0 * local9
        else
            local0[1] = 5
            local0[2] = 5
            local0[3] = 35
            local0[4] = 5
            local0[8] = 0 -- Grab: Fire Hug
            local0[9] = 0 * local8
            local0[10] = 25
            local0[14] = 0 * local9
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[1] = 1 * local0[1]
            local0[2] = 1 * local0[2]
            local0[3] = 0 * local0[3]
            local0[4] = 1 * local0[4]
            local0[8] = 1 * local0[8] -- Grab: Fire Hug
            local0[9] = 1 * local0[9]
            local0[10] = 0 * local0[10]
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[1] = 1 * local0[1]
            local0[2] = 1 * local0[2]
            local0[3] = 1 * local0[3]
            local0[4] = 1 * local0[4]
            local0[8] = 1 * local0[8] -- Grab: Fire Hug
            local0[9] = 1 * local0[9]
            local0[10] = 1 * local0[10]
        end
        if arg1:IsVisibleCurrTarget() == false then
            local0[1] = 1 * local0[1]
            local0[2] = 1 * local0[2]
            local0[3] = 1 * local0[3]
            local0[4] = 1 * local0[4]
            local0[8] = 1 * local0[8] -- Grab: Fire Hug
            local0[9] = 0 * local0[9]
            local0[10] = 1 * local0[10]
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], local0[1] * 0.1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 5, local0[2], local0[2] * 0.1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 15, local0[3], local0[3] * 0.1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 15, local0[4], local0[4] * 0.1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 10, local0[8], local0[8] * 0)
    local0[9] = SetCoolTime(arg1, arg2, 3010, 5, local0[9], local0[9] * 0.1)
    local0[10] = SetCoolTime(arg1, arg2, 3011, 10, local0[10], local0[10] * 0.1)
    local1[1] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act01) -- Slash Down -> Slash Right
    local1[2] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act02) -- Slash Right -> Slash Left
    local1[3] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act03) -- Book Smash
    local1[4] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act04) -- Step Forward and Slash Left
    local1[8] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act08) -- Grab: Fire Hug
    local1[9] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act09) -- Gnaw
    local1[10] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act10) -- Book Slash
    local1[11] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act11) -- Gnaw
    local1[12] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act12) -- Movement
    local1[13] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act13) -- Leave
    local1[14] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act14) -- Spin
    local1[20] = REGIST_FUNC(arg1, arg2, Metora_807000_123099_Battle_Act20) -- Turn
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Metora_807000_ActAfter_AdjustSpace), local2)
    return 
end

function Metora_807000_123099_Battle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 0, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 0, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 100, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3009, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 25 - arg0:GetMapHitRadius(TARGET_SELF), 25 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 25 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act12(arg0, arg1, arg2)
    if InsideDir(arg0, arg1, 0, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 0)
    elseif InsideDir(arg0, arg1, 90, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 0)
    elseif InsideDir(arg0, arg1, -90, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
    end
    return 0
end

function Metora_807000_123099_Battle_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 25 - arg0:GetMapHitRadius(TARGET_SELF), 25 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 25 - arg0:GetMapHitRadius(TARGET_SELF) + 20, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Metora_807000_123099_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
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
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and 20 < arg1:GetDist(TARGET_ENE_0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    end
    return false
end

function Metora_807000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Metora_807000_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_Metora_807000_AfterAttackAct, "GOAL_Metora_807000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Metora_807000_AfterAttackAct, true)
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
    if arg1:GetNpcThinkParamID() == 123005 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    elseif 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
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
