RegisterTableGoal(GOAL_OldmanCrystal_132050_Battle, "OldmanCrystal_132050_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldmanCrystal_132050_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetMapHitRadius(TARGET_SELF)
    local local7 = arg1:GetDistYSigned(TARGET_ENE_0)
    if arg1:GetEventRequest() == 10 then
        local0[27] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3412760) then
        if 15 <= local3 then
            local0[1] = 20
            local0[2] = 10
        elseif 10 <= local3 then
            local0[1] = 20
            local0[2] = 10
        elseif 5 <= local3 then
            local0[1] = 20
            local0[2] = 10
        elseif 2.5 <= local3 then
            local0[1] = 30
            local0[2] = 10
            local0[10] = 20
        else
            local0[10] = 20
            local0[11] = 20
        end
    elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3412761) then
        if arg1:GetNpcThinkParamID() == 132051 and arg1:GetDistXZ(TARGET_ENE_0) <= 4 and local7 <= -1 then
            local0[23] = 100
        elseif 15 <= local3 then
            local0[1] = 20
            local0[2] = 20
            local0[6] = 20
        elseif 10 <= local3 then
            local0[1] = 20
            local0[2] = 20
            local0[6] = 20
        elseif 5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[6] = 20
        elseif 2.5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[10] = 20
            local0[11] = 20
        else
            local0[10] = 20
            local0[11] = 20
        end
    elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3412762) then
        if 15 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[5] = 20
            local0[6] = 20
        elseif 10 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[5] = 20
            local0[6] = 20
        elseif 5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[5] = 20
            local0[6] = 20
        elseif 2.5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[10] = 20
            local0[11] = 20
        else
            local0[10] = 20
            local0[11] = 20
        end
    elseif 15 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[5] = 20
        local0[6] = 20
    elseif 10 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[5] = 20
        local0[6] = 20
    elseif 5 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[5] = 20
        local0[6] = 20
    elseif 2.5 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[10] = 20
        local0[11] = 20
    else
        local0[10] = 20
        local0[11] = 20
    end
    if arg1:IsInsideTargetRegion(TARGET_SELF, 3412760) then
        if arg1:IsInsideTargetRegion(TARGET_SELF, 3412761) then
            if local7 <= -1 then
                local0[1] = 0
            end
        elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3412762) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 3412762) == false then
            local0[5] = 0
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local0[5] = 0
    end
    local0[5] = SetCoolTime(arg1, arg2, 3004, 8, local0[5], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3018, 8, local0[10], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act02)
    local1[5] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act23)
    local1[27] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act27)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, OldmanCrystal_ActAfter_AdjustSpace), local2)
    return 
end

function OldmanCrystal_Act01(arg0, arg1, arg2)
    local local0 = 40.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 1.5, 20, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function OldmanCrystal_Act02(arg0, arg1, arg2)
    local local0 = 50 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 1.5, 20, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function OldmanCrystal_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_FRI_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act05(arg0, arg1, arg2)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Float(2.5, 4.5)
    local local4 = arg0:GetRandam_Int(0, 1)
    local local5 = arg0:GetRandam_Int(30, 45)
    local local6 = arg0:GetMapHitRadius(TARGET_SELF)
    local local7 = arg0:GetDistYSigned(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 1.5, 20, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act06(arg0, arg1, arg2)
    local local0 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 1.5
    local local2 = 45
    local local3 = arg0:GetRandam_Int(1, 100)
    if 12 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function OldmanCrystal_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act08(arg0, arg1, arg2)
    local local0 = 999.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function OldmanCrystal_Act09(arg0, arg1, arg2)
    local local0 = ATT3008_DIST_MAX + 1
    local local1 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 1.5, 20)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 999, 999, 0, 0, 2.5, 5)
    local local0 = 3024
    local local1 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    return 
end

function OldmanCrystal_Act21(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function OldmanCrystal_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function OldmanCrystal_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    return 
end

function OldmanCrystal_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_NONE, 999, 0, 360, 0, 0)
    return 
end

function OldmanCrystal_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_OldmanCrystal_132050_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

RegisterTableGoal(GOAL_OldmanCrystal_132050_AfterAttackAct, "OldmanCrystal_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldmanCrystal_132050_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInsideTargetRegion(TARGET_SELF, 3412760) then
        if arg1:IsInsideTargetRegion(TARGET_SELF, 3412761) then
            if 10 <= local0 then
                arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(1, 2), TARGET_NONE, 0, 0, 0)
            end
        elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3412762) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 3412762) == false then
            local local1 = arg1:GetRandam_Int(1, 100)
            if 25 <= local0 then
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
