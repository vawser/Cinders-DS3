RegisterTableGoal(GOAL_SnowryDeadWarrior_600010_Battle, "GOAL_SnowryDeadWarrior_600010_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SnowryDeadWarrior_600010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0.22)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 5021) and arg1:HasSpecialEffectId(TARGET_SELF, 13080) and 12 < arg1:GetDist(TARGET_EVENT) then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_EVENT, 11.5, TARGET_SELF, false, -1)
    elseif InsideRange(arg1, arg2, 180, 180, -1, 3) then
        local0[20] = 100
    elseif 4.5 <= local3 then
        local0[1] = 250
        local0[2] = 100
        local0[3] = 50
        local0[4] = 600
        local0[7] = 0
    elseif 1.5 <= local3 then
        local0[1] = 400
        local0[2] = 250
        local0[3] = 200
        local0[4] = 0
        local0[7] = 150
    else
        local0[1] = 400
        local0[2] = 250
        local0[3] = 200
        local0[7] = 150
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) then
        local0[7] = local0[7] + 400
    end
    local0[4] = SetCoolTime(arg1, arg2, 3018, 5, local0[4], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3018, 8, local0[7], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act07)
    local1[10] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act12)
    local1[19] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnowryDeadWarrior_600010_ActAfter_AdjustSpace), local2)
    return 
end

function SnowryDeadWarrior_600010_Act01(arg0, arg1, arg2)
    local local0 = 1.8
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3000
    local local2 = 3001
    local local3 = 3002
    local local4 = 3003
    local local5 = 1.6 + 2.5
    local local6 = 1.2 + 2.5
    local local7 = 2 + 2.5
    local local8 = 999
    local local9 = 0
    local local10 = 0
    local local11 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, local9, local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act02(arg0, arg1, arg2)
    local local0 = 2.3
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3008
    local local2 = 3009
    local local3 = 2 + 2.5
    local local4 = 999
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 1.8 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 1.6 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 1.2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act03(arg0, arg1, arg2)
    local local0 = 2
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3014
    local local2 = 3015
    local local3 = 3000
    local local4 = 2 + 2.5
    local local5 = 999
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    if local8 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 1.6 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 1.2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act04(arg0, arg1, arg2)
    local local0 = 5.8
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act05(arg0, arg1, arg2)
    local local0 = 1.5
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 1.2 + 2.5
    local local5 = 2 + 2.5
    local local6 = 999
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, local6, 0, 0, 0, 0)
    if local7 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    elseif local7 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 1.6 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    elseif local7 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act06(arg0, arg1, arg2)
    local local0 = 1.5
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3001
    local local2 = 3002
    local local3 = 3003
    local local4 = 1.2 + 2.5
    local local5 = 2 + 2.5
    local local6 = 999
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, local6, 0, 0)
    if local9 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    elseif local9 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 1.6 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    elseif local9 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act07(arg0, arg1, arg2)
    local local0 = 2
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 2 + 2.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act10(arg0, arg1, arg2)
    local local0 = 1.8
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3000
    local local2 = 3001
    local local3 = 3002
    local local4 = 3003
    local local5 = 3020
    local local6 = 1.6 + 2.5
    local local7 = 1.2 + 2.5
    local local8 = 2 + 2.5
    local local9 = 2 + 2.5
    local local10 = 999
    local local11 = 0
    local local12 = 0
    local local13 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local4, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local6, local11, local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local3, TARGET_ENE_0, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act11(arg0, arg1, arg2)
    local local0 = 2.3
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3008
    local local2 = 3009
    local local3 = 3020
    local local4 = 2 + 2.5
    local local5 = 2 + 2.5
    local local6 = 999
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act12(arg0, arg1, arg2)
    local local0 = 2
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 4, 100, 0, 4, 8)
    local local1 = 3014
    local local2 = 3015
    local local3 = 3000
    local local4 = 3020
    local local5 = 2 + 2.5
    local local6 = 2 + 2.5
    local local7 = 999
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    if local10 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local7, 0, 0)
    elseif local10 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 1.6 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 1.2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local7, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local5, local8, local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 2 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local7, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ExecAction, -1, 700)
    return 
end

function SnowryDeadWarrior_600010_Act20(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, local0, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act21(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    local local1 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, local0)
    local1:SetTargetRange(1, 3, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act22(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, 99, TARGET_ENE_0, true, local0)
    local1:SetTargetRange(2, 1.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act23(arg0, arg1, arg2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnowryDeadWarrior_600010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnowryDeadWarrior_600010_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetDist(TARGET_ENE_0) < 4 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:GetRandam_Int(1, 100) <= 45 then
        arg2:ClearSubGoal()
        if arg1:GetRandam_Int(1, 100) <= 60 then
            SnowryDeadWarrior_600010_Act24(arg1, arg2, paramTbl)
        else
            SnowryDeadWarrior_600010_Act23(arg1, arg2, paramTbl)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(1) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(2) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_SnowryDeadWarrior_600010_AfterAttackAct, "GOAL_SnowryDeadWarrior_600010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnowryDeadWarrior_600010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    local local3 = {}
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 220) then
        local3[1] = 100
        local3[2] = 0
        local3[3] = 0
        local3[4] = 0
        local3[5] = 0
    elseif 7 <= local0 then
        local3[1] = 100
        local3[2] = 0
        local3[3] = 0
        local3[4] = 0
        local3[5] = 0
    elseif 3 <= local0 then
        local3[1] = 70
        local3[2] = 0
        local3[3] = 0
        local3[4] = 0
        local3[5] = 30
    else
        local3[1] = 80
        local3[2] = 0
        local3[3] = 0
        local3[4] = 20
        local3[5] = 0
    end
    local local4 = SelectOddsIndex(arg1, local3)
    if local4 ~= 1 then
        if local4 == 2 then
            SnowryDeadWarrior_600010_Act24(arg1, arg2, paramTbl)
        elseif local4 == 3 then
            SnowryDeadWarrior_600010_Act23(arg1, arg2, paramTbl)
        elseif local4 == 4 then
            SnowryDeadWarrior_600010_Act22(arg1, arg2, paramTbl)
        elseif local4 == 5 then
            SnowryDeadWarrior_600010_Act21(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
