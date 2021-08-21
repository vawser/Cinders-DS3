RegisterTableGoal(GOAL_HinminMoujaGenan_Nokogiri_Battle, "GOAL_HinminMoujaGenan_Nokogiri_Battle")
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) and local3 <= 4 then
        local0[8] = 90
        local0[20] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 110) and local3 <= 2 then
        local0[10] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 110) and local3 <= 2 then
        local0[11] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 1 <= local3 then
        local0[20] = 100
    elseif 12 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 80
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10
        local0[13] = 0
        local0[14] = 10
        local0[20] = 0
    elseif 7.5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 45
        local0[10] = 0
        local0[11] = 0
        local0[12] = 5
        local0[13] = 0
        local0[14] = 30
        local0[20] = 0
    elseif 5 <= local3 then
        local0[1] = 10
        local0[2] = 5
        local0[3] = 10
        local0[4] = 5
        local0[5] = 15
        local0[6] = 5
        local0[7] = 0
        local0[8] = 0
        local0[9] = 20
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 30
        local0[20] = 0
    elseif 2.5 <= local3 then
        local0[1] = 25
        local0[2] = 10
        local0[3] = 25
        local0[4] = 30
        local0[5] = 10
        local0[6] = 10
        local0[7] = 20
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[20] = 0
    else
        local0[1] = 30
        local0[2] = 5
        local0[3] = 30
        local0[4] = 5
        local0[5] = 0
        local0[6] = 5
        local0[7] = 25
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[20] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 3, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3009, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3001, 3, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3010, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3003, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3002, 10, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3015, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3005, 5, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 15, local0[9], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3020, 20, local0[12], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3015, 10, local0[14], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3002, 10, local0[14], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HinminMoujaGenan_Nokogiri_ActAfter_AdjustSpace), local2)
    return 
end

function HinminMoujaGenan_Nokogiri_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 0, 0, 3, 6)
    local local0 = 3000
    local local1 = 3012
    local local2 = 3011
    local local3 = 3016
    local local4 = 3017
    local local5 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local6 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local7 = 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local8 = 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 6, 0)
    elseif local12 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    elseif local12 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 6, 0)
    elseif local12 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local7, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 6, 0)
    elseif local12 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local7, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, 6, 0)
    elseif local12 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local7, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local7, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 6)
    local local0 = 3009
    local local1 = 0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0.7 - arg0:GetMapHitRadius(TARGET_SELF), 0.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 6)
    local local0 = 3001
    local local1 = 3013
    local local2 = 3016
    local local3 = 3017
    local local4 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local5 = 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local6 = 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local7 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    if local10 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 6, 0)
    elseif local10 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    elseif local10 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.1 - arg0:GetMapHitRadius(TARGET_SELF), 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 6)
    local local0 = 3010
    local local1 = 3011
    local local2 = 3012
    local local3 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local4 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local5 = 0
    local local6 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.7 - arg0:GetMapHitRadius(TARGET_SELF), 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 6)
    local local0 = 3004
    local local1 = 3011
    local local2 = 3012
    local local3 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local4 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local5 = 0
    local local6 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 6)
    local local0 = 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, local0, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF), 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 0, 0, 3, 6)
    local local0 = 3002
    local local1 = 3018
    local local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if local5 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
    elseif local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act08(arg0, arg1, arg2)
    local local0 = 3005
    local local1 = 3011
    local local2 = 3012
    local local3 = 3013
    local local4 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local5 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local6 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    if local9 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local7, local8, 0, 0)
    elseif local9 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local6, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 6, 0)
    elseif local9 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 0.7 - arg0:GetMapHitRadius(TARGET_SELF), 0.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 6)
    local local0 = 3001
    local local1 = 3013
    local local2 = 3016
    local local3 = 3017
    local local4 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local5 = 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local6 = 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local7 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    if local10 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 6, 0)
    elseif local10 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    elseif local10 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local4, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 6)
    local local0 = 3000
    local local1 = 3012
    local local2 = 3011
    local local3 = 3016
    local local4 = 3017
    local local5 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local6 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local7 = 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local8 = 1.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local10 = 0
    local local11 = 0
    local local12 = arg0:GetRandam_Int(1, 100)
    if local12 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 6, 0)
    elseif local12 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    elseif local12 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 10, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 6, 0)
    elseif local12 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local7, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, 6, 0)
    elseif local12 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local7, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, 6, 0)
    elseif local12 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local7, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local8, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, local7, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local5, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local10, local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act14(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF), 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 0, 0, 3, 6)
    local local0 = 3015
    local local1 = 3018
    local local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if local5 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
    elseif local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 6, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act15(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HinminMoujaGenan_Nokogiri_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetRandam_Int(1, 100) <= 35 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local0 <= 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0)
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local0 <= 2 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0)
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local0 <= 2 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 999, 0)
        end
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and local0 <= 3 then
        arg2:ClearSubGoal()
        HinminMoujaGenan_Nokogiri_Act15(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
