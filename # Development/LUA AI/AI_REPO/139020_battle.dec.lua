RegisterTableGoal(GOAL_SnakeAssasin139020_Battle, "GOAL_SnakeAssasin139020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139020_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if InsideDir(arg1, arg2, 180, 180) then
        local0[20] = 100
    elseif 6 <= local3 then
        local0[5] = 100
    elseif 4.5 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 20
        local0[4] = 5
        local0[5] = 5
        local0[21] = 40
    elseif 2.5 <= local3 then
        local0[1] = 25
        local0[2] = 25
        local0[4] = 25
        local0[5] = 5
        local0[21] = 20
    else
        local0[1] = 30
        local0[2] = 30
        local0[4] = 30
        local0[21] = 10
    end
    local0[4] = SetCoolTime(arg1, arg2, 3016, 8, local0[4], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3017, 8, local0[4], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act05)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnakeAssasin139010_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnakeAssasin139010_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeAssasin139010_Act01(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, 0, local0, local1)
    local local2 = 3000
    local local3 = 3001
    local local4 = 3003
    local local5 = 3004
    local local6 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local7 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local9, local10, local11)
    elseif local12 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local9)
    elseif local12 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local9)
    elseif local12 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local9)
    elseif local12 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local9)
    elseif local12 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local9)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local6, local10, local11)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local9)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act02(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, 0, local0, local1)
    local local2 = 3002
    local local3 = 3003
    local local4 = 3001
    local local5 = 3004
    local local6 = 3009
    local local7 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local8 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local9 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local10 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local11 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local12 = 0
    local local13 = 0
    local local14 = arg0:GetRandam_Int(1, 100)
    if local14 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local11, local12, local13)
    elseif local14 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local11)
    elseif local14 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local11)
    elseif local14 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local11)
    elseif local14 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local11)
    elseif local14 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local7, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local11)
    elseif local14 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local9, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local11)
    elseif local14 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local9, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local11)
    elseif local14 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local9, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local11)
    elseif local14 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local9, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local9)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local11)
    elseif local14 <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local9, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local10)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local11)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, local10, local12, local13)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local11)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act03(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, arg0:GetRandam_Float(4.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.7 - arg0:GetMapHitRadius(TARGET_SELF)), 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, local0, local1)
    local local2 = 3005
    local local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local3, local4, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act04(arg0, arg1, arg2)
    local local0, local1 = nil
    Approach_Act_Flex(arg0, arg1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF), 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 75, 0, local0, local1)
    local local2 = 3016
    local local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local3, local4, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 1, 75)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeAssasin139010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, TARGET_ENE_0, 45)
    return 0
end

function SnakeAssasin139010_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 0
end

function SnakeAssasin139010_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 5, TARGET_SELF, 1, -1)
    return 0
end

function SnakeAssasin139010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnakeAssasin139012_AfterAttackAct, 10)
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
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        return SnakeAssasin139010_Dameged(arg1, arg2)
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        return SnakeAssasin139010_DownCanselAttack(arg1, arg2)
    else
        return false
    end
end

function SnakeAssasin139010_DownCanselAttack(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 180, -99, 2.5 - arg0:GetMapHitRadius(TARGET_SELF)) then
        if arg0:GetRandam_Int(1, 100) <= 80 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 0, 180, -99, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5) then
        if arg0:GetRandam_Int(1, 100) <= 40 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return false
        end
    else
        return false
    end
end

function SnakeAssasin139010_Dameged(arg0, arg1)
    if InsideRange(arg0, arg1, 0, 180, -99, 3) then
        if arg0:GetRandam_Int(1, 100) <= 85 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 15 then
                local local0 = arg0:GetRandam_Int(6001, 6003)
                if local0 == 6001 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
                elseif local0 == 6002 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
                elseif local0 == 6003 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
                end
            end
            return true
        else
            return false
        end
    elseif InsideRange(arg0, arg1, 180, 180, -99, 3) then
        if arg0:GetRandam_Int(1, 100) <= 65 then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 15 then
                local local0 = arg0:GetRandam_Int(6001, 6003)
                if local0 == 6001 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
                elseif local0 == 6002 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
                elseif local0 == 6003 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
                end
            end
            return true
        else
            return false
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_SnakeAssasin139012_AfterAttackAct, "GOAL_SnakeAssasin139012_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeAssasin139012_AfterAttackAct, true)
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
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg1:SetStringIndexedNumber("BackDist_AAA", 6)
    arg1:SetStringIndexedNumber("BackLife_AAA", 2)
    arg1:SetStringIndexedNumber("BackAndSide_SideLife_AAA", 2)
    arg1:SetStringIndexedNumber("BackAndSide_SideDir_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
    elseif 2.5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 15)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 15)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 30)
    else
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
