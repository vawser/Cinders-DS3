RegisterTableGoal(GOAL_SnakeAssasin139110_Battle, "GOAL_SnakeAssasin139110_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139110_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 < 2.5 then
        local0[4] = 70
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and 2.5 <= local3 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 < 2.5 then
        local0[2] = 70
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 < 2.5 then
        local0[1] = 70
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 4.5 <= local3 then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 4.5 <= local3 then
        local0[20] = 100
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 30
        local0[5] = 0
        local0[6] = 70
        local0[7] = 0
    elseif 5 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 0
        local0[5] = 25
        local0[6] = 0
        local0[7] = 0
        local0[8] = 15
    else
        local0[1] = 25
        local0[2] = 25
        local0[3] = 0
        local0[5] = 10
        local0[6] = 0
        local0[7] = 20
        local0[8] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 30, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 30, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3015, 30, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3019, 60, local0[8], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act16)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, SnakeAssasin139110_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnakeAssasin139110_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeAssasin139110_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 0.5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 0.5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 0.5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 0.5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 0.5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.9 - arg0:GetMapHitRadius(TARGET_SELF), 12.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 12.9 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 0.5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 998, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0.5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 0, 0.5, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepFront, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139110_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139110_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnakeAssasin139110_AfterAttackAct, 10)
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
    if not arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            if arg1:GetNumber(0) <= 4 then
                arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                local local2 = 8 - arg1:GetMapHitRadius(TARGET_SELF)
                if local1 <= 20 then
                    arg2:ClearSubGoal()
                    SnakeAssasin139110_Act10(arg1, arg2, paramTbl)
                    return true
                elseif local1 <= 40 then
                    arg2:ClearSubGoal()
                    SnakeAssasin139110_Act11(arg1, arg2, paramTbl)
                    return true
                elseif local1 <= 60 then
                    arg2:ClearSubGoal()
                    SnakeAssasin139110_Act12(arg1, arg2, paramTbl)
                    return true
                end
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            if arg1:GetNumber(0) <= 4 then
                arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                local local2 = 8 - arg1:GetMapHitRadius(TARGET_SELF)
                if local1 <= 20 then
                    arg2:ClearSubGoal()
                    SnakeAssasin139110_Act13(arg1, arg2, paramTbl)
                    return true
                elseif local1 <= 40 then
                    arg2:ClearSubGoal()
                    SnakeAssasin139110_Act14(arg1, arg2, paramTbl)
                    return true
                elseif local1 <= 60 then
                    arg2:ClearSubGoal()
                    SnakeAssasin139110_Act15(arg1, arg2, paramTbl)
                    return true
                end
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and arg1:GetNumber(0) <= 4 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            local local2 = 8 - arg1:GetMapHitRadius(TARGET_SELF)
            if 3 <= local0 and local0 <= 4 and local1 <= 50 then
                arg2:ClearSubGoal()
                SnakeAssasin139110_Act16(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_SnakeAssasin139110_AfterAttackAct, "GOAL_SnakeAssasin139110_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139110_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 8)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 6 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
    elseif 3 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 30)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 20)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
