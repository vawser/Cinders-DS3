RegisterTableGoal(GOAL_DarkGuardian_304010_Battle, "GOAL_DarkGuardianV3_304010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkGuardian_304010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetHpRate(TARGET_SELF)
    if arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        Kankyaku_Act(arg1, arg2, 0)
    elseif arg1:GetNumber(0) == 0 then
        local0[15] = 100
    elseif InsideRange(arg1, arg2, 180, 150, -999, 4) then
        local0[17] = 30
    elseif InsideRange(arg1, arg2, 180, 150, -999, 10) then
        local0[20] = 100
    elseif 9 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 20
        local0[4] = 50
        local0[5] = 10
        local0[6] = 30
        local0[7] = 70
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 80
        local0[16] = 0
        local0[17] = 0
    elseif 6 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 60
        local0[4] = 50
        local0[5] = 20
        local0[6] = 50
        local0[7] = 50
        local0[8] = 10
        local0[9] = 0
        local0[10] = 5
        local0[11] = 5
        local0[12] = 60
        local0[16] = 0
        local0[17] = 0
    elseif 3 <= local3 then
        local0[1] = 40
        local0[2] = 50
        local0[3] = 20
        local0[4] = 10
        local0[5] = 50
        local0[6] = 20
        local0[7] = 0
        local0[8] = 60
        local0[9] = 0
        local0[10] = 35
        local0[11] = 20
        local0[12] = 25
        local0[16] = 10
        local0[17] = 20
    else
        local0[1] = 20
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[5] = 60
        local0[6] = 0
        local0[7] = 0
        local0[8] = 40
        local0[9] = 30
        local0[10] = 50
        local0[11] = 20
        local0[12] = 0
        local0[16] = 20
        local0[17] = 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 20, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 20, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3011, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3012, 10, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3015, 10, local0[11], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act12)
    local1[15] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, DarkGuardian304010_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DarkGuardian304010_ActAfter_AdjustSpace), local2)
    return 
end

function DarkGuardian304010_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), -999, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DistToAtt3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5, -999, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 6001
    local local1 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    if 5 <= arg0:GetDist(TARGET_ENE_0) then
        if local2 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local1, 0, 0)
        elseif local2 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local1, 0, 0)
        end
    elseif local2 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local1, 0, 0)
    elseif local2 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.5 - arg0:GetMapHitRadius(TARGET_SELF), -999, 10.5 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.4 - arg0:GetMapHitRadius(TARGET_SELF), -999, 13.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), -999, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.9 - arg0:GetMapHitRadius(TARGET_SELF), -999, 10.9 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 0.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    Approach_Act_Flex(arg0, arg1, 14.8 - arg0:GetMapHitRadius(TARGET_SELF), -999, 14.8 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = arg0:GetHpRate(TARGET_SELF)
    local local1 = 3008
    local local2 = 14.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act08(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    Approach_Act_Flex(arg0, arg1, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.3, -999, 4.9 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), -999, 2 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 2, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    Approach_Act_Flex(arg0, arg1, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), -999, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3, -999, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12, -999, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3019, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act15(arg0, arg1, arg2)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 8, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    return 
end

function DarkGuardian304010_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLR, 10, TARGET_ENE_0, -99)
    return 
end

function DarkGuardian304010_Act18(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 3.5), TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function DarkGuardian304010_Act19(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkGuardian304010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkGuardian304010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DarkGuardian_304010_AfterAttackAct, 10)
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
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        arg1:DeleteObserve(0)
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        if local1 <= 60 then
            arg2:ClearSubGoal()
            if arg1:GetDist(TARGET_ENE_0) <= 7 then
                DarkGuardian304010_Act06(arg1, arg2, paramTbl)
            elseif local2 <= 70 then
                DarkGuardian304010_Act17(arg1, arg2, paramTbl)
            else
                DarkGuardian304010_Act06(arg1, arg2, paramTbl)
            end
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        arg2:ClearSubGoal()
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            if local0 <= 6.3 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                elseif local0 <= 10.5 and local1 <= 85 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                end
            elseif local0 <= 10.5 and local1 <= 65 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and 3 <= local0 and local1 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            if local2 <= 80 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            elseif local3 <= 25 and local0 <= 3 then
                arg2:AddSubGoal(GOAL_EnemyStepBack, 5, TARGET_ENE_0, -99)
            elseif local3 <= 40 then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and local0 <= 5 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            if local2 <= 80 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            elseif local3 <= 25 and local0 <= 3 then
                arg2:AddSubGoal(GOAL_EnemyStepBack, 5, TARGET_ENE_0, -99)
            elseif local3 <= 40 then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and 2 <= local0 and local1 <= 55 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            if local2 <= 80 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            elseif local3 <= 25 and local0 <= 3 then
                arg2:AddSubGoal(GOAL_EnemyStepBack, 5, TARGET_ENE_0, -99)
            elseif local3 <= 40 then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and local0 <= 5 then
            if local2 <= 80 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            elseif local3 <= 25 and local0 <= 3 then
                arg2:AddSubGoal(GOAL_EnemyStepBack, 5, TARGET_ENE_0, -99)
            elseif local3 <= 40 then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and 3 <= local0 and local1 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            if local2 <= 80 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            elseif local3 <= 25 and local0 <= 3 then
                arg2:AddSubGoal(GOAL_EnemyStepBack, 5, TARGET_ENE_0, -99)
            elseif local3 <= 40 then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and local0 <= 5 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999, 0, 0)
            if local2 <= 80 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            elseif local3 <= 25 and local0 <= 3 then
                arg2:AddSubGoal(GOAL_EnemyStepBack, 5, TARGET_ENE_0, -99)
            elseif local3 <= 40 then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, -99)
            end
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_DarkGuardian_304010_AfterAttackAct, "GOAL_DarkGuardian_304010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkGuardian_304010_AfterAttackAct, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    local local3 = {}
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
        local3[1] = 15
        local3[2] = 5
        local3[3] = 80
        local3[4] = 0
        local3[5] = 0
    elseif 6 <= local0 then
        local3[1] = 90
        local3[2] = 0
        local3[3] = 0
        local3[4] = 10
        local3[5] = 0
    elseif 3 <= local0 then
        local3[1] = 50
        local3[2] = 10
        local3[3] = 20
        local3[4] = 15
        local3[5] = 5
    else
        local3[1] = 50
        local3[2] = 25
        local3[3] = 20
        local3[4] = 0
        local3[5] = 5
    end
    local local4 = SelectOddsIndex(arg1, local3)
    if local4 ~= 1 then
        if local4 == 2 then
            DarkGuardian304010_Act16(arg1, arg2, paramTbl)
        elseif local4 == 3 then
            DarkGuardian304010_Act17(arg1, arg2, paramTbl)
        elseif local4 == 4 then
            DarkGuardian304010_Act06(arg1, arg2, paramTbl)
        elseif local4 == 5 then
            DarkGuardian304010_Act11(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
