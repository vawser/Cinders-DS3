RegisterTableGoal(GOAL_CrowVillager_plague_608010_Battle, "GOAL_CrowVillager_plague_608010_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_CrowVillager_plague_608010_Battle, true)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:IsSearchTarget(TARGET_ENE_0)
    local local7 = arg1:GetDist(POINT_EVENT)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13112)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13113) then
        local0[16] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13114) then
        local0[17] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0[11] = 200
        local0[12] = 200
        local0[13] = 200
        local0[14] = 400
        local0[25] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        local0[6] = 1000
    elseif 6 <= local3 then
        local0[1] = 100
        local0[2] = 50
        local0[3] = 50
        local0[4] = 600
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[20] = 0
        local0[25] = 0
        local0[26] = 200
    elseif 2 <= local3 then
        local0[1] = 100
        local0[2] = 100
        local0[3] = 100
        local0[4] = 550
        local0[6] = 0
        local0[7] = 0
        local0[8] = 50
        local0[20] = 0
        local0[25] = 0
        local0[26] = 100
    else
        local0[1] = 200
        local0[2] = 150
        local0[3] = 150
        local0[4] = 250
        local0[6] = 0
        local0[7] = 0
        local0[8] = 100
        local0[20] = 0
        local0[25] = 100
        local0[26] = 50
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 4, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 4, local0[3], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3011, 15, local0[6], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3012, 15, local0[8], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3000, 4, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3001, 4, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3002, 4, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3010, 15, local0[14], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act08)
    local1[11] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act14)
    local1[16] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act18)
    local1[20] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act20)
    local1[25] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_Act27)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CrowVillager_plague_608010_ActAfter_AdjustSpace), local2)
    return 
end

function CrowVillager_plague_608010_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 90, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 90, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 90, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3010, TARGET_NONE, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    arg0:SetTimer(1, arg0:GetRandam_Int(15, 30))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3013, TARGET_NONE, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    arg0:SetTimer(1, arg0:GetRandam_Int(15, 30))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 90, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 90, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 90, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3010, TARGET_NONE, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    arg0:SetTimer(2, arg0:GetRandam_Int(15, 30))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act16(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 90, 0, 3, 5)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3015, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 0, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 3.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    return 
end

function CrowVillager_plague_608010_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 4, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowVillager_plague_608010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrowVillager_plague_608010_AfterAttackAct, 10)
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 13112) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
            arg2:ClearSubGoal()
            CrowVillager_plague_608010_Act14(arg1, arg2, paramTbl)
            return true
        elseif local1 <= 65 then
            arg2:ClearSubGoal()
            CrowVillager_plague_608010_Act04(arg1, arg2, paramTbl)
            return true
        elseif local1 <= 99 then
            arg2:ClearSubGoal()
            CrowVillager_plague_608010_Act08(arg1, arg2, paramTbl)
            return true
        else
            return false
        end
    else
        return false
    end
end

RegisterTableGoal(GOAL_CrowVillager_plague_608010_AfterAttackAct, "GOAL_CrowVillager_plague_608010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrowVillager_plague_608010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    local local3 = {}
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local3[2] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
        local3[1] = 0
        local3[2] = 10
        local3[3] = 45
    elseif 4 <= local0 then
        local3[1] = 0
        local3[2] = 0
        local3[3] = 100
    elseif 2 <= local0 then
        local3[1] = 0
        local3[2] = 15
        local3[3] = 15
    else
        local3[1] = 0
        local3[2] = 45
        local3[3] = 20
    end
    local local4 = SelectOddsIndex(arg1, local3)
    if local4 ~= 1 then
        if local4 == 2 then
            CrowVillager_plague_608010_Act25(arg1, arg2, paramTbl)
        elseif local4 == 3 then
            CrowVillager_plague_608010_Act26(arg1, arg2, paramTbl)
        elseif local4 == 4 then
            CrowVillager_plague_608010_Act05(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
