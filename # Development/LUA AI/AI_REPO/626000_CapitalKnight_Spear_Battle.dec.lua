RegisterTableGoal(GOAL_626000_CapitalKnight_Spear_Battle, "GOAL_626000_CapitalKnight_Spear_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_626000_CapitalKnight_Spear_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local7 = arg1:GetEventRequest()
    local local8 = arg1:GetHpRate(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if local3 <= 2 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local0[6] = 700
                local0[20] = 300
            else
                local0[7] = 700
                local0[20] = 300
            end
        else
            local0[20] = 900
            local0[21] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16269) then
        if 6 < local3 then
            local0[1] = 50
            local0[2] = 150
            local0[3] = 400
            local0[4] = 0
            local0[5] = 0
            local0[12] = 400
            local0[13] = 0
            local0[15] = 0
            local0[16] = 0
            local0[21] = 0
            local0[24] = 0
        elseif 4 < local3 then
            local0[1] = 50
            local0[2] = 200
            local0[3] = 500
            local0[4] = 250
            local0[5] = 0
            local0[12] = 0
            local0[13] = 0
            local0[15] = 0
            local0[16] = 0
            local0[21] = 0
            local0[24] = 0
        elseif 2.5 < local3 then
            local0[1] = 50
            local0[2] = 550
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[12] = 0
            local0[13] = 300
            local0[15] = 0
            local0[16] = 0
            local0[21] = 0
            local0[24] = 0
        else
            local0[1] = 50
            local0[2] = 400
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[12] = 0
            local0[13] = 350
            local0[15] = 0
            local0[16] = 0
            local0[21] = 0
            local0[24] = 200
        end
    elseif 6 < local3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
            local0[1] = 300
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 500
            local0[11] = 0
            local0[15] = 0
            local0[16] = 200
            local0[21] = 0
            local0[24] = 0
        else
            local0[1] = 300
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 0
            local0[11] = 0
            local0[15] = 0
            local0[16] = 200
            local0[17] = 500
            local0[21] = 0
            local0[24] = 0
        end
    elseif 4.5 < local3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
            local0[1] = 300
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 500
            local0[11] = 0
            local0[15] = 0
            local0[16] = 200
            local0[21] = 0
            local0[24] = 0
        else
            local0[1] = 300
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 0
            local0[11] = 0
            local0[15] = 0
            local0[16] = 200
            local0[17] = 500
            local0[21] = 0
            local0[24] = 0
        end
    elseif 3 < local3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
            local0[1] = 300
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 0
            local0[11] = 500
            local0[15] = 0
            local0[16] = 200
            local0[21] = 0
            local0[24] = 0
        else
            local0[1] = 300
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 0
            local0[11] = 0
            local0[15] = 0
            local0[16] = 200
            local0[17] = 500
            local0[21] = 0
            local0[24] = 0
        end
    elseif 2 < local3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
            local0[1] = 300
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 0
            local0[11] = 500
            local0[15] = 0
            local0[16] = 200
            local0[21] = 0
            local0[24] = 0
        else
            local0[1] = 300
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 0
            local0[11] = 0
            local0[15] = 0
            local0[16] = 200
            local0[17] = 500
            local0[21] = 0
            local0[24] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
        local0[1] = 50
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[10] = 0
        local0[11] = 700
        local0[15] = 100
        local0[16] = 50
        local0[21] = 0
        local0[24] = 100
    else
        local0[1] = 50
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 100
        local0[10] = 0
        local0[11] = 0
        local0[15] = 50
        local0[16] = 50
        local0[17] = 700
        local0[21] = 0
        local0[24] = 50
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16507) then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 1000
            local0[11] = 0
            local0[15] = 0
            local0[16] = 0
            local0[21] = 0
            local0[24] = 0
        else
            local0[3] = 0
            local0[10] = 0
            local0[11] = 0
        end
    end
    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) and 3 <= local3 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 16506) then
            local0[10] = local0[10] + 500
        end
        local0[12] = local0[12] * 2
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16262) then
        local0[1] = local0[1] * 0.5
        local0[2] = local0[2] * 0
        local0[3] = local0[3] * 1.5
        local0[4] = local0[4] * 1.5
        local0[5] = local0[5] * 0
        local0[10] = local0[10] * 1.5
        local0[11] = local0[11] * 0.5
        local0[12] = local0[12] * 1.5
        local0[13] = local0[13] * 0.5
        local0[21] = local0[21] * 0
        local0[24] = local0[21] * 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3006, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3012, 10, local0[3], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3016, 20, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3017, 10, local0[5], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3009, 10, local0[5], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3021, 10, local0[5], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3020, 10, local0[6], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3021, 10, local0[7], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3017, 10, local0[7], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3009, 10, local0[7], 0)
    local0[12] = SetCoolTime(arg1, arg2, 3024, 20, local0[12], 0)
    local0[13] = SetCoolTime(arg1, arg2, 3028, 20, local0[13], 0)
    local0[16] = SetCoolTime(arg1, arg2, 3030, 10, local0[16], 0)
    local0[31] = SetCoolTime(arg1, arg2, 3031, 10, local0[31], 1)
    local0[32] = SetCoolTime(arg1, arg2, 3032, 10, local0[32], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16502) then
        local0[3] = 0
        local0[12] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16503) then
        local0[3] = 0
        local0[13] = 0
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 5032) or arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
        local0[21] = 0
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 16260) or arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
        local0[15] = 0
        local0[24] = 0
    end
    if (not not arg1:HasSpecialEffectId(TARGET_SELF, 16512) or arg1:HasSpecialEffectId(TARGET_SELF, 16505) and arg1:HasSpecialEffectId(TARGET_SELF, 5023)) and not arg1:HasSpecialEffectId(TARGET_SELF, 16506) and not arg1:HasSpecialEffectId(TARGET_SELF, 16269) and local3 <= 10.4 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
            if 4.5 <= local3 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[10] = 1000
                local0[11] = 0
                local0[15] = 0
                local0[16] = 0
                local0[17] = 0
                local0[21] = 0
                local0[24] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[10] = 0
                local0[11] = 1000
                local0[15] = 0
                local0[16] = 0
                local0[17] = 0
                local0[21] = 0
                local0[24] = 0
            end
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[10] = 0
            local0[11] = 0
            local0[15] = 0
            local0[16] = 0
            local0[17] = 1000
            local0[21] = 0
            local0[24] = 0
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16506) then
        local0[10] = 0
        local0[11] = 0
        local0[17] = 0
    else
        local0[5] = 0
        local0[7] = 0
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        local0[5] = 0
        local0[7] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16505) then
        local0[5] = 0
        local0[7] = 0
        local0[17] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16269) then
        local0[7] = 0
    else
        local0[6] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
        local0[5] = 0
        local0[7] = 0
        local0[17] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 5) == false then
        local0[15] = 0
        local0[24] = 0
    end
    local0[4] = 0
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act07)
    local1[10] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act13)
    local1[15] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act17)
    local1[19] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act25)
    local1[31] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act32)
    local1[40] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_Act40)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_Spear_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_626000_CapitalKnight_Spear_Act01(arg0, arg1, arg2)
    local local0 = 4 + 0.5
    local local1 = local0 + 1
    local local2 = local0 + 6
    local local3 = 0
    local local4 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local1 = 998
        local2 = 999
        if arg0:IsTargetGuard(TARGET_SELF) then
            local4 = 100
        end
    else
        local4 = 0
        local3 = 70
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, 3, 6)
    local local5 = 3000
    local local6 = 3001
    local local7 = 3002
    local local8 = 3003
    local local9 = 3009
    local local10 = 4.6 + 1
    local local11 = 4.8 + 1
    local local12 = 4.7 + 1
    local local13 = 1.5 + 1
    local local14 = 999
    local local15 = 0
    local local16 = 0
    local local17 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        if local17 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local5, TARGET_ENE_0, local14, local15, local16, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local10, local15, local16, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local6, TARGET_ENE_0, local14, 0, 0)
        end
    elseif 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        if 10 <= arg0:GetAttackPassedTime(3003) then
            if local17 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local10, local15, local16, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local14, 0, 0)
            elseif local17 <= 80 and not arg0:HasSpecialEffectId(TARGET_SELF, 16505) and arg0:HasSpecialEffectId(TARGET_SELF, 16506) and not arg0:HasSpecialEffectId(TARGET_SELF, 5023) then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local12, local15, local16, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local8, TARGET_ENE_0, local13, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local9, TARGET_ENE_0, local14, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local10, local15, local16, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local6, TARGET_ENE_0, local12, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local14, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local10, local15, local16, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local14, 0, 0)
        end
    elseif 10 <= arg0:GetAttackPassedTime(3003) then
        if local17 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local5, TARGET_ENE_0, local14, local15, local16, 0, 0)
        elseif not arg0:HasSpecialEffectId(TARGET_SELF, 16505) and arg0:HasSpecialEffectId(TARGET_SELF, 16506) and not arg0:HasSpecialEffectId(TARGET_SELF, 5023) then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local12, local15, local16, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local8, TARGET_ENE_0, local13, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local9, TARGET_ENE_0, local14, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local12, local15, local16, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, local14, 0, 0)
        end
    elseif local17 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local5, TARGET_ENE_0, local14, local15, local16, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local10, local15, local16, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local14, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 4.7
    local local2 = local1 + 1
    local local3 = local1 + 8
    local local4 = 0
    local local5 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local2 = 998
        local3 = 999
        if arg0:IsTargetGuard(TARGET_SELF) then
            local5 = 100
        end
    else
        local5 = 0
        local4 = 70
    end
    Approach_Act_Flex(arg0, arg1, local1, local2, local3, local4, local5, 3, 6)
    local local6 = 3006
    local local7 = 3007
    local local8 = 4.9 + 1
    local local9 = 999
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        if local12 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local6, TARGET_ENE_0, local9, local10, local11, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local6, TARGET_ENE_0, local8, local10, local11, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local7, TARGET_ENE_0, local9, 0, 0)
        end
    elseif local12 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local6, TARGET_ENE_0, local9, local10, local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local6, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local7, TARGET_ENE_0, local9, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act03(arg0, arg1, arg2)
    local local0 = 4.5
    if arg0:GetDist(TARGET_ENE_0) <= local0 - 5 and not arg0:HasSpecialEffectId(TARGET_SELF, 16262) then
        GOAL_626000_CapitalKnight_Spear_Act24(arg0, arg1, arg2)
    else
        local local1 = local0 + 1
        local local2 = local0 + 8
        local local3 = 0
        local local4 = 100
        if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
            local1 = 998
            local2 = 999
            if arg0:IsTargetGuard(TARGET_SELF) then
                local4 = 100
            end
        else
            local4 = 0
            local3 = 70
        end
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, 3, 6)
    end
    local local2 = 3013
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    local local2 = local1 + 2
    local local3 = local1 + 8
    local local4 = 0
    local local5 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local2 = 998
        local3 = 999
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local5 = 0
        local4 = local4 + 70
    elseif arg0:IsTargetGuard(TARGET_SELF) then
        local5 = 100
    end
    Approach_Act_Flex(arg0, arg1, local1, local2, local3, local4, local5, 3, 6)
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act05(arg0, arg1, arg2)
    local local0 = 1.5
    local local1 = local0 + 1
    local local2 = local0 + 8
    local local3 = 0
    local local4 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local1 = 998
        local2 = 999
        if arg0:IsTargetGuard(TARGET_SELF) then
            local4 = 100
        end
    else
        local4 = 0
        local3 = 70
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, 3, 6)
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act10(arg0, arg1, arg2)
    local local0 = 10.4
    if arg0:GetDist(TARGET_ENE_0) <= local0 - 7.5 then
        GOAL_626000_CapitalKnight_Spear_Act24(arg0, arg1, arg2)
    else
        local local1 = local0 + 1
        local local2 = local0 + 8
        local local3 = 0
        local local4 = 70
        if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
            local1 = 998
            local2 = 999
            if arg0:IsTargetGuard(TARGET_SELF) then
                local4 = 100
            end
        else
            local4 = 0
            local3 = 70
        end
        if not not arg0:HasSpecialEffectId(TARGET_SELF, 5020) or not arg0:HasSpecialEffectId(TARGET_SELF, 16507) then
            Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, 3, 6)
        end
    end
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act11(arg0, arg1, arg2)
    local local0 = 4.5
    local local1 = local0 + 1
    local local2 = local0 + 8
    local local3 = 0
    local local4 = 70
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local1 = 998
        local2 = 999
        if arg0:IsTargetGuard(TARGET_SELF) then
            local4 = 100
        end
    else
        local4 = 0
        local3 = 70
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, 3, 6)
    local local5 = 3017
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act12(arg0, arg1, arg2)
    local local0 = 10.4
    if arg0:GetDist(TARGET_ENE_0) <= local0 - 7.5 then
        GOAL_626000_CapitalKnight_Spear_Act24(arg0, arg1, arg2)
    else
        local local1 = local0 + 1
        local local2 = local0 + 8
        local local3 = 0
        local local4 = 70
        if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
            local1 = 998
            local2 = 999
            if arg0:IsTargetGuard(TARGET_SELF) then
                local4 = 100
            end
        else
            local4 = 0
            local3 = 70
        end
        Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, 3, 6)
    end
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act13(arg0, arg1, arg2)
    local local0 = 4.5
    local local1 = local0 + 1
    local local2 = local0 + 8
    local local3 = 0
    local local4 = 70
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local1 = 998
        local2 = 999
        if arg0:IsTargetGuard(TARGET_SELF) then
            local4 = 100
        end
    else
        local4 = 0
        local3 = 70
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, 3, 6)
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 4.8 + 0.5
    local local2 = local1 + 1
    local local3 = local1 + 8
    local local4 = 0
    local local5 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local2 = 998
        local3 = 999
        if arg0:IsTargetGuard(TARGET_SELF) then
            local5 = 100
        end
    else
        local5 = 0
        local4 = 70
    end
    Approach_Act_Flex(arg0, arg1, local1, local2, local3, local4, local5, 3, 6)
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act19(arg0, arg1, arg2)
    local local0 = 4
    local local1 = local0 + 5
    local local2 = local0 + 10
    local local3 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local3 = 0
    elseif arg0:IsTargetGuard(TARGET_SELF) then
        local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 40, local3, 3, 6)
    local local4 = 3008
    local local5 = 3000
    local local6 = 3000
    local local7 = 999
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, local7, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, local7, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act20(arg0, arg1, arg2)
    local local0 = 100
    local local1 = -1
    if arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local0 = 100
    elseif arg0:IsTargetGuard(TARGET_SELF) then
        local0 = 100
    end
    if arg0:GetRandam_Int(1, 100) <= local0 then
        local1 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, local1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act21(arg0, arg1, arg2)
    local local0 = 0
    local local1 = -1
    local local2 = arg0:GetRandam_Float(1.5, 2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local0 = 1
    end
    if arg0:GetRandam_Int(1, 100) <= 100 and 50 < arg0:GetSp(TARGET_SELF) then
        local1 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, local0, 180, true, true, local1)
    return 
end

function GOAL_626000_CapitalKnight_Spear_Act22(arg0, arg1, arg2)
    local local0 = -1
    local local1 = arg0:GetRandam_Float(1.5, 2)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 100 and 50 < arg0:GetSp(TARGET_SELF) then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Float(5, 7), TARGET_ENE_0, true, local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act23(arg0, arg1, arg2)
    local local0 = 6003
    local local1 = 6002
    if SpaceCheck(arg0, arg1, -90, 5) == true then
        if SpaceCheck(arg0, arg1, 90, 5) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local1, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local1, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
        end
    elseif SpaceCheck(arg0, arg1, 90, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local1 = 1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, local1, 180, true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act31(arg0, arg1, arg2)
    local local0 = 4 + 0.5
    local local1 = local0 + 1
    local local2 = local0 + 8
    local local3 = 0
    local local4 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local1 = 998
        local2 = 999
        if arg0:IsTargetGuard(TARGET_SELF) then
            local4 = 100
        end
    else
        local4 = 0
        local3 = 70
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, local3, local4, 3, 6)
    local local5 = 3031
    local local6 = 3001
    local local7 = 3002
    local local8 = 4.6 + 1
    local local9 = 4.8 + 1
    local local10 = 999
    local local11 = 0
    local local12 = 0
    local local13 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        if local13 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local5, TARGET_ENE_0, local10, local11, local12, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local8, local11, local12, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local6, TARGET_ENE_0, local10, 0, 0)
        end
    elseif 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local8, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local10, 0, 0)
    elseif local13 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local5, TARGET_ENE_0, local10, local11, local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local8, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 4.8 + 0.5
    local local2 = local1 + 1
    local local3 = local1 + 8
    local local4 = 0
    local local5 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 16269) then
        local2 = 998
        local3 = 999
        if arg0:IsTargetGuard(TARGET_SELF) then
            local5 = 100
        end
    else
        local5 = 0
        local4 = 70
    end
    Approach_Act_Flex(arg0, arg1, local1, local2, local3, local4, local5, 3, 6)
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_Spear_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4, TARGET_SELF, false, 9910)
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
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local2 = arg1:GetSp(TARGET_SELF)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if arg1:IsTargetOutOfRangeInterruptSlot(0) and not arg1:IsTargetGuard(TARGET_SELF) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(1) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 360) and arg1:HasSpecialEffectId(TARGET_SELF, 16269) and local0 <= 4.8 + 1 then
            local local5 = 3003
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
                local5 = 3003
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_Spear_AfterAttackAct, 10)
            return true
        elseif (arg1:GetSpecialEffectActivateInterruptType(0) == 5026 or arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and arg1:HasSpecialEffectId(TARGET_SELF, 16269)) and not arg1:HasSpecialEffectId(TARGET_SELF, 16511) then
            local local5 = 3008
            if arg1:HasSpecialEffectId(TARGET_SELF, 16269) then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 210) then
                    local5 = 3008
                end
            elseif not (arg1:GetAttackPassedTime(3009) > 10 or arg1:GetAttackPassedTime(3017) > 10 or arg1:GetAttackPassedTime(3021) > 10) or 1.5 + 0.5 <= local0 then
                arg2:AddSubGoal(GOAL_626000_CapitalKnight_Spear_AfterAttackAct, 10)
                return true
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_Spear_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 360) and local0 <= 4.4 + 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_Spear_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and local0 <= 7.1 + 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_Spear_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5034 then
            if 4.5 <= local0 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and local0 <= 5 and not arg1:HasSpecialEffectId(TARGET_SELF, 5030) and local3 <= 80 then
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 16269) then
            if 50 <= local2 and local4 <= 50 then
                GOAL_626000_CapitalKnight_Spear_Act25(arg1, arg2, paramTbl)
            else
                GOAL_626000_CapitalKnight_Spear_Act24(arg1, arg2, paramTbl)
            end
        elseif 50 <= local2 then
            GOAL_626000_CapitalKnight_Spear_Act25(arg1, arg2, paramTbl)
        else
            GOAL_626000_CapitalKnight_Spear_Act24(arg1, arg2, paramTbl)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_SuccessGuard) and local3 <= 80 and targertDist <= 3 then
        arg2:ClearSubGoal()
        if local4 <= 20 and 10 <= arg1:GetAttackPassedTime(3009) and 10 <= arg1:GetAttackPassedTime(3017) and 10 <= arg1:GetAttackPassedTime(3021) then
            GOAL_626000_CapitalKnight_Spear_Act05(arg1, arg2, paramTbl)
        elseif local4 <= 40 then
            GOAL_626000_CapitalKnight_Spear_Act24(arg1, arg2, paramTbl)
        elseif 50 <= local2 then
            GOAL_626000_CapitalKnight_Spear_Act25(arg1, arg2, paramTbl)
        elseif arg1:GetRandam_Int(1, 100) <= 50 then
            GOAL_626000_CapitalKnight_Spear_Act05(arg1, arg2, paramTbl)
        else
            GOAL_626000_CapitalKnight_Spear_Act24(arg1, arg2, paramTbl)
        end
        return true
    elseif arg1:IsTargetGuard(TARGET_SELF) and arg1:IsInterupt(INTERUPT_FindAttack) and targertDist <= 3 and 50 <= local2 then
        arg2:ClearSubGoal()
        GOAL_626000_CapitalKnight_Spear_Act25(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) and 6 <= local0 then
        arg2:ClearSubGoal()
        GOAL_626000_CapitalKnight_Spear_Act40(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_SuccessGuard) and 6 <= targertDist then
        arg2:ClearSubGoal()
        GOAL_626000_CapitalKnight_Spear_Act40(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

function GOAL_626000_CapitalKnight_Spear_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_626000_CapitalKnight_Spear_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_626000_CapitalKnight_Spear_AfterAttackAct, "GOAL_626000_CapitalKnight_Spear_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_626000_CapitalKnight_Spear_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    local local2 = {}
    if arg1:HasSpecialEffectId(TARGET_SELF, 16269) then
        if 7 <= local0 then
            local2[1] = 100
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 0
        elseif 5 <= local0 then
            local2[1] = 100
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 0
        elseif 2.5 <= local0 then
            local2[1] = 100
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 0
        else
            local2[1] = 100
            local2[2] = 0
            local2[3] = 0
            local2[4] = 0
            local2[5] = 0
        end
    elseif 7 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
    elseif 5 <= local0 then
        local2[1] = 20
        local2[2] = 80
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
    elseif 2.5 <= local0 then
        local2[1] = 0
        local2[2] = 40
        local2[3] = 60
        local2[4] = 0
        local2[5] = 0
    else
        local2[1] = 0
        local2[2] = 0
        local2[3] = 100
        local2[4] = 0
        local2[5] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16260) then
        local2[4] = 0
        local2[5] = 0
    end
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 30) or arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            GOAL_626000_CapitalKnight_Spear_Act21(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            GOAL_626000_CapitalKnight_Spear_Act22(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            GOAL_626000_CapitalKnight_Spear_Act23(arg1, arg2, paramTbl)
        else
            GOAL_626000_CapitalKnight_Spear_Act24(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
