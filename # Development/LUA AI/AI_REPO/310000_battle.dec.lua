RegisterTableGoal(GOAL_CrystalLizardKing_310000_Battle, "GOAL_CrystalLizardKing_310000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalLizardKing_310000_Battle, true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = 0
    local local8 = 0
    if InsideDir(arg1, arg2, 40, 120) then
        local7 = 1
    end
    if InsideDir(arg1, arg2, -40, 120) then
        local8 = 1
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 4 then
        local0[3] = 40
        local0[9] = 10
        local0[12] = 5
        local0[14] = 15
        local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 4 then
        local0[3] = 40
        local0[8] = 10
        local0[11] = 5
        local0[13] = 15
        local0[20] = 30
    elseif 18 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 10
        local0[5] = 0
        local0[10] = 0
        local0[15] = 90
    elseif 12 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 60
        local0[5] = 0
        local0[10] = 0
        local0[15] = 40
    elseif 7 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 20
        local0[5] = 20
        local0[10] = 0
        local0[15] = 40
    elseif 5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 15
        local0[4] = 0
        local0[5] = 40
        local0[8] = 5 * local7
        local0[9] = 5 * local8
        local0[10] = 15
        local0[15] = 20
    elseif 3 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 40
        local0[5] = 20
        local0[8] = 5 * local7
        local0[9] = 5 * local8
        local0[10] = 10
        local0[15] = 20
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 50
        local0[4] = 0
        local0[5] = 0
        local0[8] = 15 * local7
        local0[9] = 15 * local8
        local0[10] = 0
        local0[15] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 25, local0[3], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 25, local0[4], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 25, local0[5], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3013, 25, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3013, 25, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3016, 30, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3007, 25, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3008, 25, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3002, 25, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3003, 25, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3009, 15, local0[15], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act05)
    local1[8] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CrystalLizardKingBattle_ActAfter_AdjustSpace), local2)
    return 
end

function CrystalLizardKingBattle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 1, 3, 100, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3000, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4, 1, 3, 100, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3001, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.5, 1, 3, 100, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 15, 1, 3, 100, 0, 0.5, 0.5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10, 1, 3, 100, 0, 1.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3006, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 20, 1, 3, 100, 0, 0.5, 0.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0, 1, 3, 100, 0, 0.5, 0.5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.7 - arg0:GetMapHitRadius(TARGET_SELF), 1, 3, 100, 0, 1, 1)
    local local0 = 3013
    local local1 = 999
    local local2 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 1.5
    local local4 = 40
    if 20 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.7 - arg0:GetMapHitRadius(TARGET_SELF), 1, 3, 100, 0, 1, 1)
    local local0 = 3013
    local local1 = 999
    local local2 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 1.5
    local local4 = 40
    if 20 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 0.5, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3016, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3008, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3002, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 1, 40)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act15(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 35 - arg0:GetMapHitRadius(TARGET_SELF), 35 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 35 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 1.5, 3)
    local local0 = 3009
    local local1 = 3010
    local local2 = 3011
    local local3 = 3012
    local local4 = 999
    local local5 = 999
    local local6 = 999
    local local7 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg0:GetDist(TARGET_ENE_0)
    if 27.5 <= local9 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7, 0)
    elseif 20 <= local9 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7, 0)
    elseif 12.5 <= local9 then
        if 50 <= local8 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local7, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7, 0)
        end
    elseif 5 <= local9 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7, 0)
    elseif 50 <= local8 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, 1, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local7, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrystalLizardKingBattle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrystalLizardKing_310000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupu = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and arg1:GetDist(TARGET_ENE_0) <= 4.7 and arg1:GetRandam_Int(1, 100) <= 65 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 9999 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_CrystalLizardKing_310000_AfterAttackAct, "GOAL_CrystalLizardKing_310000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalLizardKing_310000_AfterAttackAct, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
