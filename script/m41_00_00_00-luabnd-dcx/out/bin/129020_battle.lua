RegisterTableGoal(GOAL_KingCastleDebuAngel_129020_Battle, "GOAL_KingCastleDebuAngel_129020_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) and (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki) then
        if 8 <= local3 then
            local0[8] = 30
            local0[9] = 40
            local0[10] = 30
        elseif 4.5 <= local3 then
            local0[5] = 10
            local0[6] = 10
            local0[8] = 30
            local0[9] = 25
            local0[10] = 25
        else
            if 1 <= local3 then
                local0[3] = 15
            end
            local0[1] = 25
            local0[2] = 25
            local0[4] = 20
            local0[5] = 10
            local0[6] = 10
            local0[7] = 10
        end
    end
    local0[6] = SetCoolTime(arg1, arg2, 3025, 20, local0[6], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_Act10)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, KingCastleDebuAngel129020_ActAfter_AdjustSpace), local2)
    return 
end

function KingCastleDebuAngel129020_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 9 - arg0:GetMapHitRadius(TARGET_SELF), 9 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, -1, 60, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    local local0 = 3005
    local local1 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = -1
    local local3 = 60
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 10 - arg0:GetMapHitRadius(TARGET_SELF), 10 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    local local0 = 3010
    local local1 = 3011
    local local2 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = -1
    local local5 = 60
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0)
    elseif local6 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    local local0 = 3020
    local local1 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = -1
    local local5 = 60
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    local local0 = 3021
    local local1 = 3023
    local local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = -1
    local local5 = 60
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 9 - arg0:GetMapHitRadius(TARGET_SELF), 9 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 8)
    local local0 = 3024
    local local1 = 3011
    local local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0)
    elseif local6 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebuAngel129020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_KingCastleDebuAngel_129020_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

RegisterTableGoal(GOAL_KingCastleDebuAngel_129020_AfterAttackAct, "GOAL_KingCastleDebuAngel_129020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingCastleDebuAngel_129020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    if 7 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif 4 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 5)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
