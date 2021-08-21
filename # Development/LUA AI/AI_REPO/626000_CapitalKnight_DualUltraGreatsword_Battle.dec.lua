RegisterTableGoal(GOAL_626000_CapitalKnight_DualUltraGreatsword_Battle, "GOAL_626000_CapitalKnight_DualUltraGreatsword_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_626000_CapitalKnight_DualUltraGreatsword_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if local3 <= 2 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5024) then
                    local0[5] = 500
                    local0[20] = 500
                else
                    local0[20] = 1000
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
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
    elseif 6 < local3 then
        local0[1] = 500
        local0[2] = 200
        local0[3] = 100
        local0[4] = 200
        local0[8] = 0
        local0[9] = 0
        local0[21] = 0
        local0[24] = 0
    elseif 3 < local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 400
        local0[4] = 0
        local0[8] = 300
        local0[9] = 300
        local0[21] = 0
        local0[24] = 0
    elseif 2 < local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 400
        local0[4] = 0
        local0[8] = 300
        local0[9] = 300
        local0[21] = 0
        local0[24] = 0
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 100
        local0[4] = 0
        local0[8] = 400
        local0[9] = 350
        local0[21] = 0
        local0[24] = 150
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16262) then
        local0[21] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3005, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3010, 10, local0[3], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3030, 7, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3015, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3018, 15, local0[5], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3020, 10, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3021, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3021, 10, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3020, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3025, 15, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3026, 15, local0[9], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16261) then
        local0[1] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
        local0[21] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 5) == false then
        local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 0, 5) == false then
        local0[5] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16260) then
        local0[24] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act09)
    local1[19] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act25)
    local1[40] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_Act40)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_DualUltraGreatsword_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act01(arg0, arg1, arg2)
    local local0 = 6.5
    local local1 = local0 + 5
    local local2 = local0 + 10
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 40, 0, 3, 6)
    local local3 = 3001
    local local4 = 3002
    local local5 = 3003
    local local6 = 8.4
    local local7 = 8.1
    local local8 = 6.3
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act02(arg0, arg1, arg2)
    local local0 = 7.9
    local local1 = local0 + 5
    local local2 = local0 + 10
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 60, 0, 3, 6)
    local local3 = 3005
    local local4 = 3006
    local local5 = 3007
    local local6 = 4.6
    local local7 = 4.7
    local local8 = 999
    local local9 = 0
    local local10 = 0
    if 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local6, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local8, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, local9, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local6, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act03(arg0, arg1, arg2)
    local local0 = 5
    local local1 = local0 + 5
    local local2 = local0 + 10
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 60, 0, 3, 6)
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(1, 100)
    if local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 60 then
        if local7 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 5.5, local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 5.5, local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, local3, 0, 0)
        end
    elseif local7 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 6.3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 5.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 6.3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 5.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act04(arg0, arg1, arg2)
    local local0 = 7.4
    local local1 = local0 + 5
    local local2 = local0 + 10
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 70, 0, 3, 6)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 5.8 + 1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act05(arg0, arg1, arg2)
    local local0 = 5.3
    local local1 = local0 + 5
    local local2 = local0 + 10
    local local3 = 70
    local local4 = 0
    local local5 = 3
    local local6 = 6
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    local local7 = 3018
    local local8 = 999
    local local9 = 0
    local local10 = 0
    if arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local7, TARGET_ENE_0, local8, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local7, TARGET_ENE_0, 6.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local7, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act07(arg0, arg1, arg2)
    local local0 = 3021
    local local1 = 999
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.5, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act08(arg0, arg1, arg2)
    local local0 = 5.5
    local local1 = local0 + 5
    local local2 = local0 + 10
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 80, 0, 3, 6)
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(1, 100)
    if local6 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 5, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, local3, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 6.3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 6.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 6.3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 5.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act09(arg0, arg1, arg2)
    local local0 = 5.5
    local local1 = local0 + 5
    local local2 = local0 + 10
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 80, 0, 3, 6)
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(1, 100)
    if local6 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 5, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, local3, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 6.3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 6.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 6.3, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 5.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act19(arg0, arg1, arg2)
    local local0 = 3
    local local1 = local0 + 5
    local local2 = local0 + 10
    local local3 = 40
    local local4 = 0
    local local5 = 3
    local local6 = 6
    local local7 = 3026
    local local8 = 3011
    local local9 = 3026
    local local10 = 999
    local local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local1 = 1
    end
    local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3), TARGET_ENE_0, local1, 180, true, true, -1)
    local3:SetTargetRange(0, arg0:GetRandam_Float(2, 2.5), 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Float(2, 2.5)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act23(arg0, arg1, arg2)
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

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act25(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3, 998, 999, 0, 0, 3, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_Act40(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3, -1, 0, 100, 0, 3, 6)
    local local0 = 3007
    local local1 = 4.7
    local local2 = 999
    local local3 = 0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 5.8 + 1, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 4.6, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
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
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) and not arg1:IsTargetGuard(TARGET_SELF) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and local0 <= 2 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and 20 <= arg1:GetAttackPassedTime(3018) and local2 <= 50 and SpaceCheck(arg1, arg2, 0, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 5024) then
            arg2:ClearSubGoal()
            GOAL_626000_CapitalKnight_DualUltraGreatsword_Act05(arg1, arg2, paramTbl)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_DualUltraGreatsword_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and local0 <= 8.4 + 1 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and arg1:GetRandam_Int(1, 100) <= 70 then
            local local3 = 3001
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 210) then
                if 5 > local0 then
                    if 2 <= local0 then
                        if local2 <= 60 then
                            local3 = 3002
                        end
                    elseif local2 <= 100 then
                        local3 = 3002
                    end
                end
            else
                local3 = 3001
            end
            arg2:ClearSubGoal()
            if local3 == 3002 and arg1:GetRandam_Int(1, 100) <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 999, 0, 0)
            end
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_DualUltraGreatsword_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and local0 <= 4.7 + 1 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 270) and local2 <= 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_DualUltraGreatsword_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5034 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and local0 <= 3 and not arg1:HasSpecialEffectId(TARGET_SELF, 5030) and local2 <= 40 and 10 <= arg1:GetAttackPassedTime(3000) then
        arg2:ClearSubGoal()
        GOAL_626000_CapitalKnight_DualUltraGreatsword_Act01(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) and 6 <= local0 then
        arg2:ClearSubGoal()
        GOAL_626000_CapitalKnight_DualUltraGreatsword_Act40(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

function GOAL_626000_CapitalKnight_DualUltraGreatsword_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_626000_CapitalKnight_DualUltraGreatsword_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_626000_CapitalKnight_DualUltraGreatsword_AfterAttackAct, "GOAL_626000_CapitalKnight_DualUltraGreatsword_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_626000_CapitalKnight_DualUltraGreatsword_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    local local2 = {}
    if 6 <= local0 then
        local2[1] = 0
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
        local2[6] = 100
    elseif 4 <= local0 then
        local2[1] = 0
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
        local2[6] = 100
    elseif 2 <= local0 then
        local2[1] = 0
        local2[2] = 70
        local2[3] = 30
        local2[4] = 0
        local2[5] = 0
        local2[6] = 0
    else
        local2[1] = 0
        local2[2] = 0
        local2[3] = 100
        local2[4] = 0
        local2[5] = 0
        local2[6] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16260) then
        local2[4] = 0
        local2[5] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
        local2[6] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            GOAL_626000_CapitalKnight_DualUltraGreatsword_Act21(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            GOAL_626000_CapitalKnight_DualUltraGreatsword_Act22(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            GOAL_626000_CapitalKnight_DualUltraGreatsword_Act23(arg1, arg2, paramTbl)
        elseif local3 == 5 then
            GOAL_626000_CapitalKnight_DualUltraGreatsword_Act24(arg1, arg2, paramTbl)
        else
            GOAL_626000_CapitalKnight_DualUltraGreatsword_Act25(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
