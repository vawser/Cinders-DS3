RegisterTableGoal(GOAL_GreaterDemon_HU_Battle, "GOAL_GreaterDemon_HU_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GreaterDemon_HU_Battle, true)
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
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetDist(TARGET_ENE_0)
    local local8 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 220) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[20] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local7 <= 4 then
                local0[5] = 40
                local0[3] = 40
                local0[20] = 20
            else
                local0[20] = 100
            end
        elseif local7 <= 4 then
            local0[1] = 40
            local0[6] = 40
            local0[20] = 20
        else
            local0[1] = 40
            local0[20] = 60
        end
    elseif 14 <= local7 then
        local0[7] = 40
        local0[8] = 30
        local0[9] = 0
    elseif 3.3 <= local7 then
        local0[2] = 30
        local0[3] = 30
        local0[8] = 0
        local0[9] = 20
    else
        local0[2] = 20
        local0[3] = 10
        local0[4] = 50
        local0[8] = 0
        local0[9] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 8, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3008, 8, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3019, 8, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 15, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3012, 15, local0[9], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act09)
    local1[20] = REGIST_FUNC(arg1, arg2, GreaterDemon_HU_Battle_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GreaterDemon_HU_ActAfter_AdjustSpace), local2)
    return 
end

function GreaterDemon_HU_Battle_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act02(arg0, arg1, arg2)
    local local0 = 3001
    local local1 = 3002
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14.72, 14.72, 14.72, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GreaterDemon_HU_Battle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon_HU_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

return 
