RegisterTableGoal(GOAL_Fly_609000_Battle, "GOAL_Fly_609000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Fly_609000_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:SetNumber(0, 0)
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 13055) then
        local0[1] = 170
        local0[2] = 100
        local0[3] = 0
        local0[5] = 80
        local0[6] = 150
        local0[7] = 200
        local0[8] = 200
        local0[14] = 0
        local0[15] = 0
        local0[16] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13056) then
        local0[17] = 1000
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if 5 <= local3 then
            local0[10] = 350
            local0[11] = 100
            local0[12] = 150
            local0[13] = 150
            local0[14] = 100
            local0[15] = 150
            local0[16] = 0
        else
            local0[10] = 0
            local0[11] = 150
            local0[12] = 300
            local0[13] = 300
            local0[14] = 100
            local0[15] = 150
            local0[16] = 0
        end
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if 5 <= local3 then
            local0[3] = 250
            local0[4] = 300
            local0[10] = 50
            local0[11] = 0
            local0[12] = 100
            local0[13] = 100
            local0[14] = 100
            local0[15] = 100
            local0[16] = 0
        else
            local0[3] = 300
            local0[4] = 0
            local0[10] = 0
            local0[11] = 100
            local0[12] = 150
            local0[13] = 150
            local0[14] = 150
            local0[15] = 150
            local0[16] = 0
        end
    elseif 7 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[3] = 350
        local0[4] = 200
        local0[5] = 10
        local0[6] = 0
        local0[7] = 30
        local0[8] = 30
        local0[10] = 350
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 0
    elseif 3 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 500
        local0[4] = 400
        local0[5] = 0
        local0[6] = 0
        local0[7] = 50
        local0[8] = 50
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 0
    else
        local0[1] = 150
        local0[2] = 50
        local0[3] = 300
        local0[4] = 0
        local0[5] = 50
        local0[6] = 150
        local0[7] = 150
        local0[8] = 150
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 3, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 3, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 4, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 3, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 4, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3015, 3, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3016, 3, local0[8], 1)
    local0[10] = SetCoolTime(arg1, arg2, 6000, 15, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 6001, 15, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 6002, 15, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 6003, 15, local0[13], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Fly_609000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Fly_609000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Fly_609000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Fly_609000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Fly_609000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Fly_609000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Fly_609000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Fly_609000_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, Fly_609000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Fly_609000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Fly_609000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, Fly_609000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, Fly_609000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, Fly_609000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, Fly_609000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, Fly_609000_Act17)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Fly_609000_ActAfter_AdjustSpace), local2)
    return 
end

function Fly_609000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 90, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Fly_609000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 90, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Fly_609000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 2.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Fly_609000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.3 - arg0:GetMapHitRadius(TARGET_SELF), 9.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 9.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 90, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Fly_609000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.7 - arg0:GetMapHitRadius(TARGET_SELF), 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 90, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Fly_609000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 90, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Fly_609000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 90, 0, 4, 8)
    local local0 = 3015
    local local1 = 3001
    local local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if local5 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    elseif local5 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Fly_609000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF), 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 90, 0, 4, 8)
    local local0 = 3016
    local local1 = 3000
    local local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if local5 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    elseif local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Fly_609000_Act10(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6000, TARGET_ENE_0, 20, 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Fly_609000_Act11(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6001, TARGET_ENE_0, 20, 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Fly_609000_Act12(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6002, TARGET_ENE_0, 20, 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Fly_609000_Act13(arg0, arg1, arg2)
    local local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6003, TARGET_ENE_0, 20, 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Fly_609000_Act14(arg0, arg1, arg2)
    local local0 = 0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 3.5), TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function Fly_609000_Act15(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Fly_609000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Fly_609000_Act17(arg0, arg1, arg2)
    local local0 = 0.5
    local local1 = arg0:GetRandam_Int(1, 100)
    if local1 <= 30 then
        local0 = arg0:GetRandam_Float(0.5, 1)
    elseif local1 <= 60 then
        local0 = arg0:GetRandam_Float(1.5, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, local0, TARGET_ENE_0, 0, 0, 0)
    local local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 1.5
    local local4 = 90
    local local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if local5 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6000, TARGET_ENE_0, 20, local3, local4, 0, 0)
    elseif local5 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6002, TARGET_ENE_0, 20, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6003, TARGET_ENE_0, 20, local3, local4, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Fly_609000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Fly_609000_AfterAttackAct, 10)
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
    local local4 = arg1:GetNumber(0)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13056) and 6 <= local0 then
                if local3 <= 90 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                elseif local3 <= 95 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                end
                return true
            elseif 4 > local4 and local2 > 10 then
                if local2 <= 25 and SpaceCheck(arg1, arg2, 90, 4) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                elseif local2 <= 40 and SpaceCheck(arg1, arg2, -90, 4) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                elseif local0 > 5 and SpaceCheck(arg1, arg2, 0, 5) ~= false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                end
            end
            return false
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            if 4 > local4 and (5 > local0 or local1 > 80) and local2 > 10 then
                if local2 <= 25 and SpaceCheck(arg1, arg2, 90, 4) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                elseif local2 <= 40 and SpaceCheck(arg1, arg2, -90, 4) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                elseif SpaceCheck(arg1, arg2, 180, 4) ~= false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                end
            end
            return false
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13056) and 4 <= local0 then
                if local3 <= 95 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                end
                return true
            elseif 4 > local4 and (5 > local0 or local0 > 10 or local1 > 80) and local2 > 10 then
                if local2 <= 45 and SpaceCheck(arg1, arg2, 0, 4) == true and 5 <= local0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                elseif local2 <= 65 and SpaceCheck(arg1, arg2, 180, 4) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                elseif SpaceCheck(arg1, arg2, -90, 4) ~= false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                end
            end
            return false
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13056) and 4 <= local0 then
                if local3 <= 95 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                end
                return true
            elseif 4 > local4 and (5 > local0 or local0 > 10 or local1 > 80) and local2 > 10 then
                if local2 <= 45 and SpaceCheck(arg1, arg2, 0, 4) == true and 5 <= local0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                elseif local2 <= 65 and SpaceCheck(arg1, arg2, 180, 4) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                elseif SpaceCheck(arg1, arg2, 90, 4) ~= false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, local4 + 1)
                    return true
                end
            end
            return false
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5029 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13056) and 6 <= local0 then
                if local3 <= 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                elseif local3 <= 35 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                end
                return true
            else
                return false
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5030 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13056) and 6 <= local0 then
                if local3 <= 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                elseif local3 <= 95 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                end
                return true
            else
                return false
            end
        end
    end
    return 
end

RegisterTableGoal(GOAL_Fly_609000_AfterAttackAct, "GOAL_Fly_609000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Fly_609000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    local local3 = {}
    if arg1:HasSpecialEffectId(TARGET_SELF, 13055) then
        local3[1] = 80
        local3[2] = 0
        local3[3] = 0
        local3[4] = 0
        local3[5] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
        local3[1] = 20
        local3[2] = 40
        local3[3] = 20
        local3[4] = 20
        local3[5] = 0
    elseif 6 <= local0 then
        local3[1] = 0
        local3[2] = 10
        local3[3] = 30
        local3[4] = 30
        local3[5] = 30
    elseif 3 <= local0 then
        local3[1] = 80
        local3[2] = 10
        local3[3] = 5
        local3[4] = 5
        local3[5] = 0
    else
        local3[1] = 10
        local3[2] = 80
        local3[3] = 5
        local3[4] = 5
        local3[5] = 0
    end
    local local4 = SelectOddsIndex(arg1, local3)
    if local4 ~= 1 then
        if local4 == 2 then
            Fly_609000_Act11(arg1, arg2, paramTbl)
        elseif local4 == 3 then
            Fly_609000_Act12(arg1, arg2, paramTbl)
        elseif local4 == 4 then
            Fly_609000_Act13(arg1, arg2, paramTbl)
        elseif local4 == 5 then
            Fly_609000_Act15(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
