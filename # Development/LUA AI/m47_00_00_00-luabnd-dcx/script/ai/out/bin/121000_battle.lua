RegisterTableGoal(GOAL_BlueMan_SpearShield_121000_battle, "BlueMan_SpearShield_121000_battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_SpearShield_121000_battle, true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetNumber(0)
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[2] = 10
        local0[10] = 40
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 50
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        if 7.4 <= local3 then
            local0[1] = 10
            local0[6] = 30
            local0[10] = 0
            local0[11] = 40
        elseif 3 <= local3 then
            local0[1] = 25
            local0[2] = 15
            local0[3] = 20
            local0[4] = 0
            local0[5] = 20
            local0[6] = 60
            local0[10] = 20
            local0[11] = 40
        else
            local0[1] = 10
            local0[2] = 0
            local0[3] = 20
            local0[4] = 0
            local0[5] = 0
            local0[6] = 60
            local0[10] = 60
            local0[11] = 20
        end
    elseif 7.4 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[3] = 10
        local0[4] = 20
        local0[5] = 20
        local0[6] = 10
        local0[10] = 0
        local0[11] = 0
    elseif 3 <= local3 then
        local0[1] = 25
        local0[2] = 15
        local0[3] = 20
        local0[4] = 0
        local0[5] = 20
        local0[6] = 20
        local0[10] = 10
        local0[11] = 40
    else
        local0[1] = 10
        local0[2] = 0
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
        local0[6] = 30
        local0[10] = 40
        local0[11] = 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12132) == true then
        local0[10] = local0[10] + 10
        local0[11] = local0[11] + 40
    end
    local1[1] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlueMan_SpearShield_121000_ActAfter_AdjustSpace), local2)
    return 
end

function BlueMan_SpearShield_121000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.7 - arg0:GetMapHitRadius(TARGET_SELF), 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 60, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.1 - arg0:GetMapHitRadius(TARGET_SELF), 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 100, 5, 5)
    local local0 = 3002
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 1.5
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12.5 - arg0:GetMapHitRadius(TARGET_SELF), 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 100, 100, 5, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.4 - arg0:GetMapHitRadius(TARGET_SELF), 6.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 6.4 - arg0:GetMapHitRadius(TARGET_SELF) + 5, 50, 0, 5, 5)
    local local0 = 6.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 8, 0, 100, 5, 5)
    local local0 = 3006
    local local1 = 3007
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 1.5
    local local4 = 20
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, Attack3, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 1500, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 4700, TARGET_ENE_0, DIST_None, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 9910)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(15, 30), true, true, 9910)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, 9910)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(15, 30), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local0, TARGET_ENE_0, true, 9910)
    return 
end

function BlueMan_SpearShield_121000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    return 
end

function BlueMan_SpearShield_121000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1.5), TARGET_NONE, 0, 0, 0)
    return 
end

function BlueMan_SpearShield_121000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlueMan_SpearShield_121000_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    elseif GuardBreak_Act(arg1, arg2, 2.6, 75) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    elseif Damaged_Act(arg1, arg2, 4.5, 80) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Guard, 2, 9910, TARGET_ENE_0, false, 0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_BlueMan_SpearShield_121000_AfterAttackAct, "BlueMan_SpearShield_121000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlueMan_SpearShield_121000_AfterAttackAct, true)
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
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 100)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 25)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 100)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 25)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 100)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 25)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 50)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
