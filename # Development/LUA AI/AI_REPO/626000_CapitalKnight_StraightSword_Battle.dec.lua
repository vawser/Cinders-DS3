RegisterTableGoal(GOAL_626000_CapitalKnight_StraightSword_Battle, "GOAL_626000_CapitalKnight_StraightSword_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_626000_CapitalKnight_StraightSword_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
        if 5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[8] = 0
            local0[10] = 0
            local0[11] = 0
            local0[12] = 1000
            local0[15] = 0
            local0[21] = 0
            local0[24] = 0
        elseif 4.5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[8] = 0
            local0[10] = 0
            local0[11] = 800
            local0[12] = 200
            local0[15] = 0
            local0[21] = 0
            local0[24] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[8] = 0
            local0[10] = 0
            local0[11] = 1000
            local0[12] = 0
            local0[15] = 0
            local0[21] = 0
            local0[24] = 0
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if local3 <= 2 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
                local0[20] = 900
                local0[21] = 100
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local0[5] = 700
                local0[20] = 300
            else
                local0[7] = 700
                local0[20] = 300
            end
        else
            local0[20] = 900
            local0[21] = 100
        end
    elseif 6 <= local3 then
        local0[1] = 100
        local0[2] = 0
        local0[3] = 250
        local0[4] = 0
        local0[5] = 100
        local0[8] = 450
        local0[10] = 200
        local0[11] = 0
        local0[12] = 0
        local0[15] = 0
        local0[21] = 0
        local0[24] = 0
    elseif 4 <= local3 then
        local0[1] = 200
        local0[2] = 0
        local0[3] = 250
        local0[4] = 0
        local0[5] = 150
        local0[8] = 0
        local0[10] = 400
        local0[11] = 0
        local0[12] = 0
        local0[15] = 0
        local0[21] = 0
        local0[24] = 0
    elseif 2.5 <= local3 then
        local0[1] = 350
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 250
        local0[8] = 0
        local0[10] = 400
        local0[11] = 0
        local0[12] = 0
        local0[15] = 0
        local0[21] = 0
        local0[24] = 0
    elseif 1.5 <= local3 then
        local0[1] = 250
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 150
        local0[8] = 0
        local0[10] = 400
        local0[11] = 0
        local0[12] = 0
        local0[15] = 0
        local0[21] = 0
        local0[24] = 200
    else
        local0[1] = 400
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 300
        local0[8] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[15] = 0
        local0[21] = 0
        local0[24] = 300
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16262) then
        if 6 <= local3 then
            local0[1] = 1
            local0[2] = 0
            local0[3] = 300
            local0[4] = 0
            local0[5] = 0
            local0[8] = 700
            local0[10] = 0
            local0[11] = 0
            local0[12] = 0
            local0[15] = 0
            local0[21] = 0
            local0[24] = 0
        elseif 4 <= local3 then
            local0[1] = 1
            local0[2] = 150
            local0[3] = 700
            local0[4] = 0
            local0[5] = 0
            local0[8] = 150
            local0[10] = 0
            local0[11] = 0
            local0[12] = 0
            local0[15] = 0
            local0[21] = 0
            local0[24] = 0
        else
            local0[1] = 1
            local0[2] = 700
            local0[3] = 300
            local0[4] = 0
            local0[5] = 0
            local0[8] = 0
            local0[10] = 0
            local0[11] = 0
            local0[12] = 0
            local0[15] = 0
            local0[21] = 0
            local0[24] = 0
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 2)
    local0[2] = SetCoolTime(arg1, arg2, 3008, 10, local0[2], 0)
    local0[3] = SetCoolTime(arg1, arg2, 3016, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3017, 15, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3011, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3020, 5, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3021, 5, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3013, 5, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3033, 15, local0[8], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5023) and not arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[8] = 0
        local0[10] = 1000
        local0[11] = 0
        local0[12] = 0
        local0[15] = 0
        local0[21] = 0
        local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 5) == false then
        local0[15] = 0
        local0[24] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16510) then
        local0[10] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[8] = 0
        local0[10] = 0
        local0[15] = 0
        local0[21] = 0
        local0[24] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16260) then
        local0[15] = 0
        local0[24] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
        local0[21] = 0
    end
    if arg1:GetAttackPassedTime(3017) <= 5 then
        local0[21] = 0
        local0[24] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
        local0[4] = 0
        local0[7] = 0
        local0[8] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, HORIH_SPEFF_HORIH_SPEFF_CHANCE) then
        local0[21] = 0
        local0[24] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act12)
    local1[15] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act15)
    local1[18] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act28)
    local1[29] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act29)
    local1[30] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act30)
    local1[36] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act36)
    local1[37] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act37)
    local1[38] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act38)
    local1[40] = REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_Act40)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_626000_CapitalKnight_StraightSword_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_626000_CapitalKnight_StraightSword_Act01(arg0, arg1, arg2)
    local local0 = 4
    local local1 = local0 + 2
    local local2 = local0 + 4
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 40, 0, 3, 6)
    local local3 = 3000
    local local4 = 3001
    local local5 = 3002
    local local6 = 3013
    local local7 = 4.5
    local local8 = 5.1
    local local9 = 5.9
    local local10 = 999
    local local11 = 0
    local local12 = 0
    local local13 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local7, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10, 0, 0)
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local7, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act02(arg0, arg1, arg2)
    local local0 = 3008
    local local1 = 3009
    local local2 = 3010
    local local3 = 3013
    local local4 = 3.7
    local local5 = 4.1
    local local6 = 5.9
    local local7 = 999
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local7, 0, 0)
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local7, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act03(arg0, arg1, arg2)
    local local0 = 7.3
    local local1 = local0 + 2
    local local2 = local0 + 4
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 80, 0, 3, 6)
    local local3 = 3016
    local local4 = 3003
    local local5 = 3
    local local6 = 999
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg0:GetRandam_Int(1, 100)
    local local11 = arg0:GetDist(TARGET_ENE_0)
    if local9 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 3.9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local6, 0, 0)
    elseif local9 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 4.4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local3, TARGET_ENE_0, local6, local7, local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act04(arg0, arg1, arg2)
    local local0 = 4
    local local1 = local0 + 2
    local local2 = local0 + 4
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 40, 0, 3, 6)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act05(arg0, arg1, arg2)
    local local0 = 4.2
    local local1 = local0 + 2
    local local2 = local0 + 4
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 80, 0, 3, 6)
    local local3 = 3011
    local local4 = 3012
    local local5 = 3013
    local local6 = 3014
    local local7 = 4.7
    local local8 = 5.9
    local local9 = 5.1
    local local10 = 999
    local local11 = 0
    local local12 = 0
    local local13 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local3, TARGET_ENE_0, local10, local11, local12, 0, 0)
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local3, TARGET_ENE_0, local10, local11, local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act06(arg0, arg1, arg2)
    local local0 = 3008
    local local1 = 3009
    local local2 = 3010
    local local3 = 3011
    local local4 = 3.8
    local local5 = 3.7
    local local6 = 4.1
    local local7 = 4.2
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act08(arg0, arg1, arg2)
    local local0 = 6.8
    local local1 = local0 + 2
    local local2 = local0 + 4
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 80, 0, 3, 6)
    local local3 = 3033
    local local4 = 3009
    local local5 = 3.7
    local local6 = 999
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    if local9 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 5.1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local6, 0, 0)
    elseif local9 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, 5.9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local3, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act10(arg0, arg1, arg2)
    local local0 = 10
    local local1 = local0 + 2
    local local2 = local0 + 4
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    Approach_Act_Flex(arg0, arg1, local0, local1, local2, 40, 0, 3, 6)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = {}
    if 4 <= local5 then
        local6[1] = 100
        local6[2] = 0
        local6[3] = 0
        local6[4] = 0
    elseif 2.5 <= local5 then
        local6[1] = 100
        local6[2] = 0
        local6[3] = 0
        local6[4] = 0
    elseif 1.5 <= local5 then
        local6[1] = 40
        local6[2] = 40
        local6[3] = 0
        local6[4] = 20
    else
        local6[1] = 0
        local6[2] = 0
        local6[3] = 80
        local6[4] = 20
    end
    local local7 = SelectOddsIndex(arg0, local6)
    if local7 == 1 then
        GOAL_626000_CapitalKnight_StraightSword_Act26(arg0, arg1, arg2)
    elseif local7 == 2 then
        GOAL_626000_CapitalKnight_StraightSword_Act27(arg0, arg1, arg2)
    elseif local7 == 3 then
        GOAL_626000_CapitalKnight_StraightSword_Act28(arg0, arg1, arg2)
    elseif local7 == 4 then
        if 5 <= local5 then
            GOAL_626000_CapitalKnight_StraightSword_Act12(arg0, arg1, arg2)
        else
            GOAL_626000_CapitalKnight_StraightSword_Act11(arg0, arg1, arg2)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act11(arg0, arg1, arg2)
    local local0 = 4.8
    local local1 = local0 + 2
    local local2 = local0 + 4
    local local3 = 40
    local local4 = 0
    local local5 = 3
    local local6 = 6
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3203, TARGET_ENE_0, 5.1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act12(arg0, arg1, arg2)
    local local0 = 5
    local local1 = local0 + 2
    local local2 = local0 + 4
    local local3 = 40
    local local4 = 0
    local local5 = 3
    local local6 = 6
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local1 = 998
        local2 = 999
    end
    local local7 = 3029
    local local8 = 3030
    local local9 = 5
    local local10 = 999
    local local11 = arg0:GetRandam_Int(1, 100)
    local local12 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3204, TARGET_ENE_0, 5, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act15(arg0, arg1, arg2)
    local local0 = 3000
    local local1 = 999
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    if SpaceCheck(arg0, arg1, 180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act18(arg0, arg1, arg2)
    local local0 = 4
    local local1 = local0 + 3
    local local2 = local0 + 10
    local local3 = 40
    local local4 = 0
    local local5 = 3
    local local6 = 6
    local local7 = 3013
    local local8 = 3003
    local local9 = 3004
    local local10 = 999
    local local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act19(arg0, arg1, arg2)
    local local0 = 4
    local local1 = local0 + 3
    local local2 = local0 + 10
    local local3 = 40
    local local4 = 0
    local local5 = 3
    local local6 = 6
    local local7 = 3013
    local local8 = 3003
    local local9 = 3005
    local local10 = 999
    local local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3034, TARGET_ENE_0, local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act20(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, local0, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = -1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local1 = 1
    end
    if arg0:GetDist(TARGET_ENE_0) <= 3 and 50 <= arg0:GetSp(TARGET_SELF) then
        local2 = 9910
    end
    local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.3, 3), TARGET_ENE_0, local1, 180, true, true, local2)
    local3:SetTargetRange(0, arg0:GetRandam_Float(1.7, 2), 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act22(arg0, arg1, arg2)
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

function GOAL_626000_CapitalKnight_StraightSword_Act23(arg0, arg1, arg2)
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

function GOAL_626000_CapitalKnight_StraightSword_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local1 = 1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.6, TARGET_ENE_0, local1, 180, true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(3.5, 5)
    local local1 = 1
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5821) then
        local0 = local0 - 2
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local2 = 1
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, local0 * 0.7, TARGET_ENE_0, local1, TARGET_SELF, true, 9920)
        local3 = local3:SetLifeEndSuccess(true)
        local3 = local3:SetTargetRange(1, -1, 9)
        local3:SetTargetRange(5, 2, 999)
        local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, local2, 180, true, true, 9920)
        local3:SetLifeEndSuccess(true)
        local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, local0 * 0.3, TARGET_ENE_0, local1, TARGET_SELF, true, 9920)
        local3 = local3:SetLifeEndSuccess(true)
        local3 = local3:SetTargetRange(1, -1, 9)
        local3:SetTargetRange(5, 2, 999)
    else
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, local0, TARGET_ENE_0, local1, TARGET_SELF, true, 9920)
        local3 = local3:SetLifeEndSuccess(true)
        local3 = local3:SetTargetRange(1, -1, 9)
        local3:SetTargetRange(5, 2, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Float(3, 4)
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5821) then
        local1 = local1 - 1
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local2 = 1
    end
    local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, local2, 180, true, true, 9920)
    local3 = local3:SetLifeEndSuccess(true)
    local3 = local3:SetTargetRange(2, -1, 4)
    local3:SetTargetRange(4, 1.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = -1
    local local2 = 0
    local local3 = 180
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local2 = 1
    end
    local local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, 7, TARGET_ENE_0, true, 9920)
    local4 = local4:SetLifeEndSuccess(true)
    local4:SetTargetRange(1, -1, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetSp(TARGET_SELF)
    local local1 = 999
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetSp(TARGET_SELF)
    local local1 = arg0:GetRandam_Float(1.5, 2)
    local local2 = 0
    local local3 = 180
    local local4 = arg0:GetRandam_Float(3, 5)
    local local5 = -1
    local local6 = arg0:GetRandam_Float(2, 2.5)
    local local7 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local2 = 1
    end
    local5 = 9910
    if 5 <= local7 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local1, TARGET_ENE_0, 2.5, TARGET_SELF, true, local5)
    elseif 2.5 <= local7 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, local2, local3, true, true, local5)
    elseif 2 <= local7 then
        if arg0:GetRandam_Int(1, 100) <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, local2, local3, true, true, local5)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local1, TARGET_ENE_0, local4, TARGET_ENE_0, true, local5)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local1, TARGET_ENE_0, local4, TARGET_ENE_0, true, local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act36(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 1, TARGET_SELF, true, 9920)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local1 = 1
    end
    local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, local1, 180, true, true, 9920)
    local2:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = -1
    local local2 = 0
    local local3 = 180
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local2 = 1
    end
    local local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, 7, TARGET_ENE_0, true, 9920)
    local4:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_626000_CapitalKnight_StraightSword_Act40(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5, -1, 0, 100, 100, 3, 6)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local local0 = 3016
        local local1 = 3003
        local local2 = 3
        local local3 = 999
        local local4 = 0
        local local5 = 0
        local local6 = arg0:GetRandam_Int(1, 100)
        local local7 = arg0:GetRandam_Int(1, 100)
        local local8 = arg0:GetDist(TARGET_ENE_0)
        if local6 <= 25 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, DistToAtt2, local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 3.9, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0, 0)
        elseif local6 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, DistToAtt2, local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
        end
    else
        local local0 = 3000
        local local1 = 3001
        local local9 = 3002
        local local10 = 3013
        local local2 = 4.5
        local local11 = 5.1
        local local12 = 5.9
        local local3 = 999
        local local4 = 0
        local local5 = 0
        local local7 = arg0:GetDist(TARGET_ENE_0)
        if arg0:GetRandam_Int(1, 100) <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
        else
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
        end
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
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if arg1:IsTargetOutOfRangeInterruptSlot(0) and not arg1:IsTargetGuard(TARGET_SELF) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(1) and arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
            arg2:ClearSubGoal()
            GOAL_626000_CapitalKnight_StraightSword_Act12(arg1, arg2, paramTbl)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, 10)
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(2) and arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
            arg2:ClearSubGoal()
            GOAL_626000_CapitalKnight_StraightSword_Act26(arg1, arg2, paramTbl)
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(3) and arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
            arg2:ClearSubGoal()
            GOAL_626000_CapitalKnight_StraightSword_Act27(arg1, arg2, paramTbl)
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(4) and arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
            arg2:ClearSubGoal()
            GOAL_626000_CapitalKnight_StraightSword_Act28(arg1, arg2, paramTbl)
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(5) and arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
            arg2:ClearSubGoal()
            GOAL_626000_CapitalKnight_StraightSword_Act11(arg1, arg2, paramTbl)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, 10)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and local2 <= 70 and arg1:HasSpecialEffectId(TARGET_SELF, 5821) and local0 <= 4.5 then
        arg2:ClearSubGoal()
        GOAL_626000_CapitalKnight_StraightSword_Act11(arg1, arg2, paramTbl)
        arg2:AddSubGoal(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, 10)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            local local6 = 3002
            if 10 <= arg1:GetAttackPassedTime(3013) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 30) and local2 <= 50 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
                local6 = 3013
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            local local6 = 3010
            if 10 <= arg1:GetAttackPassedTime(3013) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 30) and local2 <= 50 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
                local6 = 3013
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            local local6 = 3012
            if local2 <= 50 then
                local6 = 3014
            end
            if 10 <= arg1:GetAttackPassedTime(3013) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 30) and local3 <= 50 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
                local6 = 3013
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, 10)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) and 15 <= arg1:GetAttackPassedTime(3034) and local2 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and local0 <= 5 and not arg1:HasSpecialEffectId(TARGET_SELF, 5030) and not arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
        if 50 <= arg1:GetSp(TARGET_SELF) then
            if local3 <= 50 then
                arg2:ClearSubGoal()
                GOAL_626000_CapitalKnight_StraightSword_Act25(arg1, arg2, paramTbl)
                return true
            elseif local3 <= 80 then
                arg2:ClearSubGoal()
                GOAL_626000_CapitalKnight_StraightSword_Act24(arg1, arg2, paramTbl)
                return true
            end
        elseif local3 <= 70 then
            arg2:ClearSubGoal()
            GOAL_626000_CapitalKnight_StraightSword_Act24(arg1, arg2, paramTbl)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and local0 <= 2.5 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) and 5 <= local0 and not arg1:HasSpecialEffectId(TARGET_SELF, 5030) and not arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
        arg2:ClearSubGoal()
        GOAL_626000_CapitalKnight_StraightSword_Act40(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

function GOAL_626000_CapitalKnight_StraightSword_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, "GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_626000_CapitalKnight_StraightSword_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    local local2 = {}
    if 7 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
    elseif 5 <= local0 then
        local2[1] = 40
        local2[2] = 60
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
    elseif 1.5 <= local0 then
        local2[1] = 0
        local2[2] = 100
        local2[3] = 0
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
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            GOAL_626000_CapitalKnight_StraightSword_Act21(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            GOAL_626000_CapitalKnight_StraightSword_Act22(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            GOAL_626000_CapitalKnight_StraightSword_Act23(arg1, arg2, paramTbl)
        else
            GOAL_626000_CapitalKnight_StraightSword_Act24(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
