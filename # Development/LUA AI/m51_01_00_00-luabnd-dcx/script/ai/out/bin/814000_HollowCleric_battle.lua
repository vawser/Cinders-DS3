RegisterTableGoal(GOAL_HollowCleric_814000_Battle, "GOAL_HollowCleric_814000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HollowCleric_814000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 16295) and not arg1:HasSpecialEffectId(TARGET_SELF, 16296) then
        local0[8] = 100
    elseif not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
        local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if 25 <= local3 then
            local0[10] = 100
        elseif 6 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[4] = 0
            local0[5] = 0
            local0[7] = 100
            local0[8] = 0
        elseif 3 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 50
            local0[5] = 0
            local0[7] = 50
            local0[8] = 0
        else
            local0[1] = 25
            local0[2] = 15
            local0[3] = 5
            local0[4] = 5
            local0[5] = 0
            local0[7] = 0
            local0[8] = 0
            if arg1:GetHpRate(TARGET_SELF) <= 0.5 then
                local0[5] = 50
            end
        end
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 100
        local0[8] = 0
    elseif 3 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 80
        local0[5] = 0
        local0[7] = 0
        local0[8] = 0
        local0[25] = 0
        local0[26] = 0
        local0[27] = 0
        if arg1:GetHpRate(TARGET_SELF) <= 0.5 then
            local0[5] = 300
        end
    else
        local0[1] = 400
        local0[2] = 250
        local0[3] = 150
        local0[4] = 0
        local0[5] = 50
        local0[7] = 0
        local0[8] = 0
        local0[25] = 0
        local0[26] = 0
        local0[27] = 0
        if arg1:GetHpRate(TARGET_SELF) <= 0.5 then
            local0[5] = 500
        end
    end
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 90)
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3001, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 5, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 3, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 15, local0[8], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act10)
    local1[20] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act20)
    local1[25] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_Act26)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HollowCleric_814000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function HollowCleric_814000_Battle_Act01(arg0, arg1, arg2)
    local local0 = 2.14
    local local1 = 2.14 + 0
    local local2 = 2.14 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 2
    local local6 = 5
    HollowCleric_814000_Approach_Act(arg0, arg1, 2.14)
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act02(arg0, arg1, arg2)
    local local0 = 2
    local local1 = 2 + 0
    local local2 = 2 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 2
    local local6 = 5
    HollowCleric_814000_Approach_Act(arg0, arg1, 2)
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act03(arg0, arg1, arg2)
    local local0 = 2
    local local1 = 2 + 0
    local local2 = 2 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 2
    local local6 = 5
    HollowCleric_814000_Approach_Act(arg0, arg1, 2)
    local local7 = 3001
    local local8 = 3000
    local local9 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 2 + 6.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act04(arg0, arg1, arg2)
    local local0 = 2.3
    local local1 = 2.3 + 0
    local local2 = 2.3 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 2
    local local6 = 5
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act05(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 999 + 3
    local local2 = 999 + 3
    local local3 = 100
    local local4 = 0
    local local5 = 2
    local local6 = 5
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act07(arg0, arg1, arg2)
    local local0 = 20
    local local1 = 20 + 3
    local local2 = 20 + 3
    local local3 = 100
    local local4 = 0
    local local5 = 2
    local local6 = 5
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act08(arg0, arg1, arg2)
    local local0 = 3012
    local local1 = 999
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 5 + 2
    local local4 = 5 + 2
    local local5 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, local1, 0, 0, 0, 0)
    local5:SetLifeEndSuccess(true)
    local local6 = 1
    for local5 = 1 - local6, 4, local6 do
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, local1, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act25(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 45, true, true, -1)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 45, true, true, -1)
    local0:SetTargetRange(0, 2.3, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act26(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 45, true, true, -1)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 45, true, true, -1)
    local0:SetTargetRange(0, 2.3, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_Act27(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10.5, TARGET_ENE_0, true, -1)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10.5, TARGET_ENE_0, true, -1)
    local0:SetTargetRange(0, 2.3, 999)
    arg0:SetTimer(0, 6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HollowCleric_814000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HollowCleric_814000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 16293) and arg1:GetSpecialEffectActivateInterruptType(0) == 90 and not arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        arg2:ClearSubGoal()
        local local0 = arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 0.05, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
        local0:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 16293) and arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetHpRate(TARGET_SELF) < 1 and arg1:GetRandam_Int(1, 100) <= 35 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 1, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    elseif arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_HollowCleric_814000_AfterAttackAct, "GOAL_HollowCleric_814000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HollowCleric_814000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = {}
    if 10 < local0 then
        local1[1] = 70
        local1[2] = 30
        local1[3] = 0
    elseif 9 <= local0 then
        local1[1] = 30
        local1[2] = 0
        local1[3] = 70
    elseif 2.5 <= local0 then
        local1[1] = 25
        local1[2] = 75
        local1[3] = 0
    else
        local1[1] = 25
        local1[2] = 25
        local1[3] = 50
    end
    local local2 = SelectOddsIndex(arg1, local1)
    if local2 ~= 1 then
        if local2 == 2 then
            if arg1:GetRandam_Int(1, 100) <= 50 then
                HollowCleric_814000_Battle_Act25(arg1, arg2, paramTbl)
            else
                HollowCleric_814000_Battle_Act26(arg1, arg2, paramTbl)
            end
        else
            HollowCleric_814000_Battle_Act27(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function HollowCleric_814000_Approach_Act(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, arg2, arg2 + 2, arg2 + 2, 50, 0, 2, 5.5)
    return 
end

return 
