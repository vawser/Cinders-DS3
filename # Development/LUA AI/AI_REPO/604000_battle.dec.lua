RegisterTableGoal(GOAL_WolfM_604000_Battle, "GOAL_WolfM_604000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_WolfM_604000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    if arg1:GetNpcThinkParamID() == 604000 or arg1:GetNpcThinkParamID() == 604010 or arg1:GetNpcThinkParamID() == 604020 then
        arg1:SetNumber(0, 1)
    else
        arg1:SetNumber(0, 0)
    end
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    if arg1:GetNumber(0) == 1 then
        arg1:SetStringIndexedNumber("AddDistRun", 1.5)
    else
        arg1:SetStringIndexedNumber("AddDistRun", 1.2)
    end
    if arg1:GetNumber(0) ~= 1 then
        arg1:SetNumber(1, -1.4)
    end
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and not arg1:HasSpecialEffectId(TARGET_SELF, 13022) and not arg1:HasSpecialEffectId(TARGET_SELF, 13027) and not arg1:HasSpecialEffectId(TARGET_SELF, 13030) then
        local0[6] = 100
        arg1:SetNumber(3, 1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) and (not not arg1:HasSpecialEffectId(TARGET_SELF, 13022) or arg1:HasSpecialEffectId(TARGET_SELF, 13023)) and arg1:IsSearchTarget(TARGET_ENE_0) == false and not arg1:HasSpecialEffectId(TARGET_SELF, 13026) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13030) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13031) then
                if 5 < arg1:GetDist(POINT_EVENT) then
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, 5, TARGET_SELF, false, -1)
                else
                    local0[28] = 65
                end
            elseif not arg1:HasSpecialEffectId(TARGET_SELF, 13024) then
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_EVENT, 7, TARGET_SELF, false, -1)
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_EVENT, 7, TARGET_SELF, true, 9920)
            end
        else
            local0[6] = 100
            arg1:SetNumber(3, 1)
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13032) then
        if local3 < 2 then
            local0[31] = 20
            local0[10] = 80
        elseif local3 < 13 and SpaceCheck(arg1, arg2, 180, 3) then
            local0[21] = 100
        else
            local0[30] = 65
            local0[26] = 35
        end
    elseif arg1:HasSpecialEffectId(TARGET_EVENT, 13028) then
        local0[28] = 100
    elseif arg1:GetEventRequest() == 100 then
        if 3 <= arg1:GetDist(TARGET_EVENT) then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_EVENT, 3, TARGET_SELF, false, -1)
        else
            local0[26] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5023) and 5 <= arg1:GetDist(TARGET_EVENT) then
        local0[27] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5022) and not arg1:HasSpecialEffectId(TARGET_SELF, 13025) and arg1:IsFinishTimer(8) then
        local local6 = 24
        local local7 = 20
        local local8 = 6
        if local6 < local3 and not arg1:HasSpecialEffectId(TARGET_SELF, 13024) then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local6, TARGET_SELF, false, 0)
        elseif local7 < local3 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local7, TARGET_SELF, true, 9920)
        else
            local0[25] = 65
            local0[26] = 35
        end
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 13020) then
        local local6 = 25
        local local7 = 22
        if local6 < local3 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local6, TARGET_SELF, false, 0)
        elseif local7 < local3 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local7, TARGET_SELF, true, 9920)
        else
            local0[22] = 65
            local0[23] = 35
        end
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13020)
    elseif not (arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku or arg1:HasSpecialEffectId(TARGET_ENE_0, NKM_SP_EFFECT_IS_MIMMICK)) or arg1:HasSpecialEffectId(TARGET_SELF, NKM_SP_EFFECT_WAIT_MIMMICK) then
        if 8.5 <= local3 then
            local0[16] = 50
        elseif arg1:GetNumber(2) <= 1 then
            if arg1:GetNumber(0) == 1 then
                local0[19] = 15
            else
                local0[16] = 80
                local0[19] = 10
                if 7 <= local3 then
                    local0[8] = 20
                end
                if arg1:IsLockOnTarget(TARGET_ENE_0, TARGET_SELF) then
                    local0[19] = 80
                end
            end
        else
            arg1:SetNumber(2, 0)
            if arg1:GetNumber(0) == 1 then
                local0[19] = 100
            else
                local0[8] = 10
                local0[19] = 20
                if 5 <= local3 then
                    local0[8] = 70
                end
            end
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and not arg1:HasSpecialEffectId(TARGET_ENE_0, NKM_SP_EFFECT_IS_MIMMICK) then
        if 7.5 <= local3 then
            local0[16] = 50
        elseif arg1:GetNumber(2) <= 1 then
            if arg1:GetNumber(0) == 1 then
                local0[19] = 20
                if 8 <= local3 then
                    local0[19] = 50
                end
            else
                local0[8] = 0
                local0[16] = 80
                local0[19] = 10
                if 7 <= local3 then
                    local0[8] = 20
                end
                if arg1:IsLockOnTarget(TARGET_ENE_0, TARGET_SELF) then
                    local0[19] = 80
                end
            end
        else
            arg1:SetNumber(2, 0)
            if arg1:GetNumber(0) == 1 then
                local0[19] = 100
            else
                local0[19] = 30
                if 5 <= local3 then
                    local0[8] = 60
                end
            end
        end
    elseif not arg1:IsFinishTimer(1) then
        local0[1] = 10
        local0[2] = 10
    elseif 9 <= local3 then
        local0[16] = 20
    elseif 7 <= local3 then
        arg1:SetNumber(2, 0)
        if arg1:GetNumber(2) <= 1 and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 999) then
            local0[16] = 80
        else
            arg1:SetNumber(2, 0)
            local0[5] = 40
            local0[13] = 10
        end
    elseif 6 <= local3 then
        arg1:SetNumber(2, 0)
        if 1 < arg1:GetNumber(2) or not arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 999) then
            local0[13] = 50
            local0[16] = 1
        else
            local0[31] = 10
            local0[32] = 10
            if not not arg1:IsTargetGuard(TARGET_ENE_0) or arg1:GetNumber(0) == 1 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 9) then
                local0[3] = 200
            end
        end
    elseif 4 <= local3 then
        arg1:SetNumber(2, 0)
        local0[31] = 50
        local0[32] = 35
        local local7 = arg1
        local local6 = arg1["IsTargetGuard"]
        local local8 = TARGET_ENE_0
        local6 = arg1:IsTargetGuard(TARGET_ENE_0)
        if not not arg1:IsTargetGuard(TARGET_ENE_0) or arg1:GetNumber(0) == 1 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 9) then
            local0[3] = 200
        end
    elseif 2 <= local3 then
        arg1:SetNumber(2, 0)
        local0[31] = 35
        local0[32] = 20
    elseif 1 <= local3 then
        arg1:SetNumber(2, 0)
        local0[31] = 10
        local0[10] = 10
    else
        arg1:SetNumber(2, 0)
        local0[4] = 50
        local0[10] = 15
    end
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13020)
    if not arg1:IsFinishTimer(0) then
        local0[13] = 1
        local0[31] = 1
        local0[32] = 1
    end
    if not arg1:IsFinishTimer(2) then
        local0[10] = 1
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 5, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 5, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 5, local0[5], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 5, local0[5], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 5, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 20, local0[8], 1)
    local0[31] = SetCoolTime(arg1, arg2, 3000, 5, local0[31], 1)
    local0[32] = SetCoolTime(arg1, arg2, 3001, 5, local0[32], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act13)
    local1[15] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act23)
    local1[25] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act28)
    local1[29] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act29)
    local1[30] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act32)
    local1[40] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, WolfM_604000_Act43)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, WolfM_604000_ActAfter_AdjustSpace), local2)
    return 
end

function WolfM_604000_CommonStep(arg0, arg1)
    arg0:SetTimer(0, 5)
    local local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
    local local1 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
    end
    return 
end

function WolfM_604000_Act01(arg0, arg1, arg2)
    local local0 = 5.14 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1)
    local local1 = local0
    local local2 = local0 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0, TARGET_SELF, false, 0)
    local local7 = 3000
    local local8 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local9 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = 0
    local local11 = 60
    local local12 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local8, local10, local11, 0, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 4, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    else
        local local13 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local7, TARGET_ENE_0, local8, local10, local11, 0, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act02(arg0, arg1, arg2)
    local local0 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1)
    local local1 = local0
    local local2 = local0 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0, TARGET_SELF, false, 0)
    local local7 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local9:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act03(arg0, arg1, arg2)
    local local0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1) + arg0:GetStringIndexedNumber("AddDistRun")
    local local1 = local0
    local local2 = local0
    local local3 = 100
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        local local7 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local7)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local7)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0, TARGET_SELF, false, 0)
    local local8 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local10:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act04(arg0, arg1, arg2)
    local local0 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local3 = 100
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    local local7 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local9:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act05(arg0, arg1, arg2)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg0:SetTimer(0, 5)
        local local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
        end
    end
    local local1 = 9.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 9.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local3 = 0
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 9.1 - arg0:GetMapHitRadius(TARGET_SELF), TARGET_SELF, false, 0)
    local local7 = 3004
    local local8 = 5.14 - arg0:GetMapHitRadius(TARGET_SELF)
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local7 = 3004
    else
        local7 = 3005
    end
    local local11 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local7, TARGET_ENE_0, 4, 0, 60, 0, 0)
    local11:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act06(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13027) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.3), TARGET_NONE, 0, 0, 0)
    end
    if not arg0:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 999) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    end
    local local0 = 3009
    local local1 = 0
    local local2 = 0
    local local3 = 0
    local local4 = 0
    if arg0:HasSpecialEffectId(TARGET_ENE_0, NKM_SP_EFFECT_IS_MIMMICK) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local2, local3, local4, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 1), TARGET_NONE, 0, 0, 0)
    local local0 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act08(arg0, arg1, arg2)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
        end
    end
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 1), TARGET_NONE, 0, 0, 0)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local local1 = 5
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local1)
        end
    end
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, 5)
    arg0:SetTimer(2, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
    end
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1.5, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToB, 4)
    return 0
end

function WolfM_604000_Act16(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 1.5
    local local2 = 7
    local local3 = 2
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local2 = 8
        local1 = arg0:GetRandam_Float(1.7, 2)
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local2 = 6
        local1 = arg0:GetRandam_Float(1.5, 1.8)
    else
        local2 = 6
        local1 = 1.4
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local5 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local2)
        local5:SetTargetRange(3, local3, 100)
    else
        local local5 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local2)
        local5:SetTargetRange(3, local3, 100)
    end
    return 0
end

function WolfM_604000_Act17(arg0, arg1, arg2)
    local local0 = 5
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act18(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 1.5
    local local2 = 0.5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local2)
    end
    return 
end

function WolfM_604000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 8.5
    local local2 = 12
    local local3 = 0
    if arg0:GetNumber(0) == 1 then
        local3 = 3.5
    else
        local3 = 3.5
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local4 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, local2)
        local4:SetTargetRange(1, local3, 100)
    else
        local local4 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local1, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, local2)
        local4:SetTargetRange(1, local3, 100)
    end
    return 
end

function WolfM_604000_Act20(arg0, arg1, arg2)
    local local0 = 9.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 9.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act21(arg0, arg1, arg2)
    local local0 = 3.5
    local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(4.5, 5.5), TARGET_ENE_0, 15, TARGET_ENE_0, true, 9920)
    local1:SetTargetRange(2, local0, 100)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(5.5, 5.5), 9920, TARGET_ENE_0, true, 0)
    local2:SetTargetRange(2, local0, 100)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    if arg0:GetNumber(0) == 1 then
        local1 = 8
    else
        local1 = 7
    end
    local local2 = AI_DIR_TYPE_ToL
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        local2 = AI_DIR_TYPE_ToL
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5024) then
        local2 = AI_DIR_TYPE_ToR
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local2 = AI_DIR_TYPE_ToL
    else
        local2 = AI_DIR_TYPE_ToR
    end
    local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(5.5, 6.5), TARGET_ENE_0, 2, TARGET_SELF, true, 9920, local2, 150)
    local3:SetTargetRange(0, local1, 100)
    return 0
end

function WolfM_604000_Act23(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetNumber(0) == 1 then
        local0 = 8
    else
        local0 = 7
    end
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(7, 7), 9920, TARGET_ENE_0, true, 0)
    local1:SetTargetRange(0, local0, 100)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act24(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 1)
    local local0 = 2
    local local1 = 15
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local1)
    end
    return 0
end

function WolfM_604000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(5.5, 6.5)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 15
    local local3 = 0
    if arg0:GetNumber(0) == 1 then
        local3 = 3.5
    else
        local3 = 3.5
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 13027) then
        local3 = 8
    end
    local local4 = 999
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local5 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, local2)
        local5:SetTargetRange(2, local3, local4)
    else
        local local5 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, local2)
        local5:SetTargetRange(2, local3, local4)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13020)
    return 0
end

function WolfM_604000_Act26(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetNumber(0) == 1 then
        local0 = 3.5
    else
        local0 = 3.5
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 13027) then
        local0 = 8
    end
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(6.5, 7.5), 9920, TARGET_ENE_0, true, 0)
    local1:SetTargetRange(2, local0, 999)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13020)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act27(arg0, arg1, arg2)
    local local0 = 3.5
    local local1 = arg0:GetRandam_Float(1, 3)
    local local2 = 2
    if arg0:GetRandam_Int(0, 1) then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local1)
        local3:SetTargetRange(3, local2, 100)
    else
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local1)
        local3:SetTargetRange(3, local2, 100)
    end
    return 0
end

function WolfM_604000_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(5.5, 6.5)
    local local1 = arg0:GetDist(POINT_EVENT)
    local local2 = 5
    if arg0:IsInsideTarget(POINT_EVENT, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, POINT_EVENT, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, POINT_EVENT, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, local2)
    end
    return 0
end

function WolfM_604000_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(6.5, 7.5), -1, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WolfM_604000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = AI_DIR_TYPE_ToL
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        local1 = AI_DIR_TYPE_ToL
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5024) then
        local1 = AI_DIR_TYPE_ToR
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local1 = AI_DIR_TYPE_ToL
    else
        local1 = AI_DIR_TYPE_ToR
    end
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(5.5, 6.5), TARGET_ENE_0, 2, TARGET_SELF, true, 9920, local1, 150)
    local2 = local2:SetTargetRange(2, 3.5, 100)
    local2:SetLifeEndSuccess(true)
    return 0
end

function WolfM_604000_Act31(arg0, arg1, arg2)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 110) or not arg0:IsFinishTimer(5) then
        arg0:SetTimer(0, 5)
        local local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
        end
    end
    local local0 = 5.14 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1) + arg0:GetStringIndexedNumber("AddDistRun")
    local local1 = local0
    local local2 = local0 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0, TARGET_SELF, false, 0)
    local local7 = 3000
    local local8 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local9 = 0
    local local10 = 0
    local local11 = arg0:GetRandam_Int(1, 100)
    local local12 = arg0:GetRandam_Int(1, 100)
    if local11 <= 20 then
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, 0.7 - arg0:GetMapHitRadius(TARGET_SELF), local9, local10, 0, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 4, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    elseif local11 <= 45 then
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local8, local9, local10, 0, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        local13 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local13)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local13)
        end
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0, TARGET_SELF, false, 0)
        local local14 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, SuccessDist, local9, local10, 0, 0)
        local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    elseif local11 <= 70 then
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local8, local9, local10, 0, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 4, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        local13 = 1.3
        local local14 = 0.5
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local13, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local14)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local13, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local14)
        end
    else
        local local13 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local7, TARGET_ENE_0, local8, local9, local10, 0, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        local13 = 1.3
        local local14 = 0.5
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local13, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local14)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local13, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local14)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act32(arg0, arg1, arg2)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) or not arg0:IsFinishTimer(5) then
        arg0:SetTimer(0, 5)
        local local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local0)
        end
    end
    local local0 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1) + arg0:GetStringIndexedNumber("AddDistRun")
    local local1 = local0
    local local2 = local0 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0, TARGET_SELF, false, 0)
    local local7 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local9:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    local9 = 1.3
    local local10 = 0.5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local9, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, local10)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local9, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, local10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act40(arg0, arg1, arg2)
    local local0 = 5.5
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 150
    local local3 = 0
    if arg0:GetNumber(0) == 1 then
        local3 = 8
    else
        local3 = 7
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, local2)
    end
    arg1:AddSubGoal(GOAL_COMMON_Guard, 5.5, 9920, TARGET_ENE_0, true, 0)
    return 0
end

function WolfM_604000_Act41(arg0, arg1, arg2)
    local local0 = 5.14 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1) + arg0:GetStringIndexedNumber("AddDistRun")
    local local1 = local0
    local local2 = local0 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, local0, TARGET_SELF, false, 0)
    local local7 = 3000
    local local8 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local9 = 1
    local local10 = 0
    local local11 = 60
    local local12 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 75 then
        local local13 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local7, TARGET_ENE_0, local8, local10, local11, 0, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 4, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    else
        local local13 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local7, TARGET_ENE_0, local8, local10, local11, 0, 0)
        local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act42(arg0, arg1, arg2)
    local local0 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1) + arg0:GetStringIndexedNumber("AddDistRun")
    local local1 = local0
    local local2 = local0 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 4
    local local6 = 5.5
    local local7 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local9:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WolfM_604000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, 0)
    local local0 = 5.5
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 150
    local local3 = 0
    if arg0:GetNumber(0) == 1 then
        local3 = 8
    else
        local3 = 7
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, local2)
    end
    arg1:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    return 0
end

function WolfM_604000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WolfM_604000_AfterAttackAct, 10)
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
    if not (not arg1:IsInterupt(INTERUPT_TargetOutOfRange) or not arg1:IsTargetOutOfRangeInterruptSlot(0)) or arg1:IsInterupt(INTERUPT_Damaged) and not arg1:HasSpecialEffectId(TARGET_SELF, 13020) then
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and not arg1:HasSpecialEffectId(TARGET_SELF, 13022) and arg1:HasSpecialEffectId(TARGET_SELF, 13027) and not arg1:HasSpecialEffectId(TARGET_SELF, 13030) then
            WolfM_604000_Act06(arg1, arg2, paramTbl)
        elseif arg1:GetRandam_Int(1, 100) <= 0 then
            WolfM_604000_Act31(arg1, arg2, paramTbl)
        else
            WolfM_604000_Act42(arg1, arg2, paramTbl)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(2) and arg1:IsFinishTimer(7) then
        arg1:SetTimer(7, 3)
        arg1:SetTimer(8, 10)
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and not arg1:HasSpecialEffectId(TARGET_SELF, 13022) and arg1:HasSpecialEffectId(TARGET_SELF, 13027) and not arg1:HasSpecialEffectId(TARGET_SELF, 13030) then
            WolfM_604000_Act06(arg1, arg2, paramTbl)
        elseif arg1:GetRandam_Int(1, 100) <= 100 then
            WolfM_604000_Act31(arg1, arg2, paramTbl)
        else
            WolfM_604000_Act42(arg1, arg2, paramTbl)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 13020 and arg1:IsFinishTimer(6) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(0.1, 0.5), TARGET_ENE_0)
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and not arg1:HasSpecialEffectId(TARGET_SELF, 13022) and arg1:HasSpecialEffectId(TARGET_SELF, 13027) and not arg1:HasSpecialEffectId(TARGET_SELF, 13030) then
                WolfM_604000_Act06(arg1, arg2, paramTbl)
            elseif local1 <= 20 then
                WolfM_604000_Act16(arg1, arg2, paramTbl)
            elseif local1 <= 70 then
                WolfM_604000_Act31(arg1, arg2, paramTbl)
            else
                WolfM_604000_Act32(arg1, arg2, paramTbl)
            end
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13020)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 13025 then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and not arg1:HasSpecialEffectId(TARGET_SELF, 13022) and arg1:HasSpecialEffectId(TARGET_SELF, 13027) and not arg1:HasSpecialEffectId(TARGET_SELF, 13030) then
                WolfM_604000_Act06(arg1, arg2, paramTbl)
            else
                arg1:Replaning()
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(1) then
        arg2:ClearSubGoal()
        if arg1:GetRandam_Int(1, 100) <= 30 then
            WolfM_604000_Act10(arg1, arg2, paramTbl)
        else
            WolfM_604000_Act13(arg1, arg2, paramTbl)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) and (not arg1:HasSpecialEffectId(TARGET_SELF, 13020) or arg1:HasSpecialEffectId(TARGET_SELF, 5025)) then
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and not arg1:HasSpecialEffectId(TARGET_SELF, 13022) and arg1:HasSpecialEffectId(TARGET_SELF, 13027) and not arg1:HasSpecialEffectId(TARGET_SELF, 13030) then
            local local3 = arg1:GetStringIndexedNumber("Dist_SideStep")
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local3)
            else
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local3)
            end
            WolfM_604000_Act06(arg1, arg2, paramTbl)
        elseif local0 < 9.1 - arg1:GetMapHitRadius(TARGET_SELF) and 7.5 < local0 then
            WolfM_604000_Act05(arg1, arg2, paramTbl)
        else
            arg1:SetTimer(5, 2)
            if arg1:GetRandam_Int(1, 100) <= 60 then
                WolfM_604000_Act31(arg1, arg2, paramTbl)
            else
                WolfM_604000_Act32(arg1, arg2, paramTbl)
            end
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) then

    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg1:SetTimer(1, 2)
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_ENE_0, NKM_SP_EFFECT_IS_MIMMICK) then
        if local1 <= 40 then
            arg2:ClearSubGoal()
            WolfM_604000_Act31(arg1, arg2, paramTbl)
            return true
        elseif local1 <= 50 then
            arg2:ClearSubGoal()
            WolfM_604000_Act32(arg1, arg2, paramTbl)
            return true
        end
        local local3 = arg1:GetStringIndexedNumber("Dist_SideStep")
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local3)
        else
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local3)
        end
    end
    return false
end

RegisterTableGoal(GOAL_WolfM_604000_AfterAttackAct, "GOAL_WolfM_604000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfM_604000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetDist(TARGET_ENE_0)
    local local3 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local4 = {}
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
