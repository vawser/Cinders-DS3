RegisterTableGoal(GOAL_ZonbieCrow_Staff_221002_Battle, "ZonbieCrow_Staff_221002_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ZonbieCrow_Staff_221002_Battle, true)
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
    local local7 = arg1:GetDist(TARGET_ENE_0)
    local local8 = arg1:GetHpRate(TARGET_SELF)
    local local9 = arg1:GetMapHitRadius(TARGET_SELF)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    else
        if arg1:GetNumber(0) == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 12140) == false then
            local0[1] = 100
            arg1:SetNumber(0, 1)
        elseif 15 <= local7 then
            local0[1] = 200
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 25
            local0[21] = 25
            local0[22] = 0
            local0[23] = 0
        elseif 10 <= local7 then
            local0[1] = 200
            local0[3] = 0
            local0[4] = 0
            local0[5] = 20
            local0[6] = 25
            local0[21] = 25
            local0[22] = 0
            local0[23] = 0
        elseif 6 <= local7 then
            local0[1] = 200
            local0[3] = 0
            local0[4] = 0
            local0[5] = 20
            local0[6] = 25
            local0[21] = 10
            local0[22] = 0
            local0[23] = 15
        elseif 3.5 <= local7 then
            local0[1] = 200
            local0[3] = 0
            local0[4] = 0
            local0[5] = 25
            local0[6] = 10
            local0[21] = 12
            local0[22] = 5
            local0[23] = 8
        elseif 2 <= local7 then
            local0[1] = 300
            local0[3] = 20
            local0[4] = 20
            local0[5] = 30
            local0[21] = 0
            local0[22] = 12
            local0[23] = 0
        else
            local0[1] = 10
            local0[2] = 0
            local0[3] = 26
            local0[4] = 26
            local0[5] = 0
            local0[21] = 0
            local0[22] = 26
            local0[23] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 12140) == true then
            local0[1] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true then
            local0[2] = 0
            local0[5] = 0
            local0[6] = 0
            local0[23] = 5
            local0[21] = local0[21] * 2
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[1] = 0.1 * local0[1]
            local0[2] = 0.1 * local0[2]
            local0[3] = 0.1 * local0[3]
            local0[4] = 0.1 * local0[4]
            local0[5] = 0.1 * local0[5]
            local0[21] = 1 * local0[21]
            local0[22] = 1 * local0[22]
            local0[23] = 1 * local0[23]
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
            local0[1] = 1 * local0[1]
            local0[2] = 1 * local0[2]
            local0[3] = 1 * local0[3]
            local0[4] = 1 * local0[4]
            local0[5] = 1 * local0[5]
            local0[21] = 1 * local0[21]
            local0[22] = 1 * local0[22]
            local0[23] = 1 * local0[23]
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, local9, local9) < 0.8 then
            local0[21] = 1.2 * local0[21]
        end
        local0[1] = SetCoolTime(arg1, arg2, 4003000, 0, local0[1], local0[1] * 0.1)
        local0[2] = SetCoolTime(arg1, arg2, 4003001, 0, local0[2], local0[2] * 0.1)
        local0[3] = SetCoolTime(arg1, arg2, 4003002, 5, local0[3], local0[3] * 0.1)
        local0[4] = SetCoolTime(arg1, arg2, 4003003, 5, local0[4], local0[4] * 0.1)
        local0[5] = SetCoolTime(arg1, arg2, 4003004, 0, local0[5], local0[5] * 0.1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act06)
    local1[20] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ZonbieCrow_Staff_ActAfter_AdjustSpace), local2)
    return 
end

function ZonbieCrow_Staff_Act01(arg0, arg1, arg2)
    local local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 12143) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 60), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ZonbieCrow_Staff_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
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
    else
        return 
    end
end

function ZonbieCrow_Staff_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(ZonbieCrow_Staff_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(ZonbieCrow_Staff_AfterAttackAct, "ZonbieCrow_Staff_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(ZonbieCrow_Staff_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 999)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
    arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
