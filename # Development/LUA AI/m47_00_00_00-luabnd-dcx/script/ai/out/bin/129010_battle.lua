RegisterTableGoal(GOAL_KingCastleDebu_129010_Battle, "GOAL_KingCastleDebu_129010_Battle")
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
    local local6 = arg1:GetEventRequest()
    if (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) and (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki) then
        if 5.5 <= local3 then
            local0[1] = 10
            local0[2] = 20
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 10
            local0[13] = 5
            local0[14] = 30
        elseif 2.5 <= local3 then
            local0[1] = 20
            local0[2] = 20
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 10
            local0[21] = 10
        elseif InsideDir(arg1, arg2, 180, 120) then
            local0[3] = 80
            local0[7] = 20
        elseif InsideDir(arg1, arg2, 90, 45) then
            local0[11] = 95
            local0[7] = 5
        else
            local0[1] = 25
            local0[2] = 0
            local0[3] = 30
            local0[4] = 5
            local0[5] = 10
            local0[6] = 15
            local0[7] = 15
        end
    end
    local0[7] = SetCoolTime(arg1, arg2, 3011, 20, local0[7], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3015, 20, local0[5], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3012, 6, local0[13], 2)
    local0[14] = SetCoolTime(arg1, arg2, 3014, 8, local0[14], 5)
    local1[1] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act07)
    local1[10] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, KingCastleDebu129010_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, KingCastleDebu129010_ActAfter_AdjustSpace), local2)
    return 
end

function KingCastleDebu129010_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 8)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3004
    local local3 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.7 - arg0:GetMapHitRadius(TARGET_SELF), 3.7 - arg0:GetMapHitRadius(TARGET_SELF), 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local2 + 2, TARGET_ENE_0, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, local1, 0, 180)
    if local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, local1, 0, 0)
    elseif local0 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, local1, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 1.5, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, AttDist, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, AttDist, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6000, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act14(arg0, arg1, arg2)
    local local0 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 20, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 8, TARGET_ENE_0, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleDebu129010_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingCastleDebu129010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_KingCastleDebu_129010_AfterAttackAct, 10)
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
    elseif ReactBackstab_Act(arg1, arg2, 1, RivalAtkID, 0) then
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        local local0 = arg1:GetDist(TARGET_ENE_0)
        local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
        if InsideRange(arg1, arg2, 0, 120, 2, 7) then
            if arg1:GetRandam_Int(1, 100) <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, 6000, TARGET_ENE_0, 7, 0, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3012, TARGET_ENE_0, 7, 0, 0)
                return true
            end
        elseif InsideRange(arg1, arg2, 0, 120, 7, 15) and arg1:GetRandam_Int(1, 100) <= 70 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3014, TARGET_ENE_0, 20, 0, 0, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_KingCastleDebu_129010_AfterAttackAct, "GOAL_KingCastleDebu_129010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingCastleDebu_129010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 360)
    if 10 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    end
    if arg1:GetRandam_Int(1, 100) <= 40 and 5 <= local0 then
        KingCastleDebu129010_Act14(arg1, arg2, paramTbl)
    else
        arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
