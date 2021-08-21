RegisterTableGoal(GOAL_Revived1st_122000_Battle, "GOAL_Revived1st_122000_Battle")
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
    local local7 = arg1:GetNpcThinkParamID()
    if local7 == 122000 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 4 then
            local0[20] = 100
        elseif 5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 30
            local0[4] = 20
            local0[5] = 30
        else
            local0[1] = 30
            local0[2] = 10
            local0[3] = 30
            local0[4] = 30
            local0[5] = 0
        end
    elseif local7 == 122010 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 4 then
            local0[20] = 100
        elseif 5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[4] = 20
            local0[5] = 50
        else
            local0[1] = 35
            local0[2] = 25
            local0[4] = 40
            local0[5] = 0
        end
    elseif local7 == 122020 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 4 then
            local0[20] = 100
        elseif 5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 30
            local0[4] = 20
            local0[5] = 30
        else
            local0[1] = 30
            local0[2] = 10
            local0[3] = 30
            local0[4] = 30
            local0[5] = 0
        end
    elseif local7 == 122030 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 4 then
            local0[20] = 100
        elseif 5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[4] = 20
            local0[5] = 50
        else
            local0[1] = 35
            local0[2] = 25
            local0[4] = 40
            local0[5] = 0
        end
    elseif local7 == 122040 then
        if arg1:GetHpRate(TARGET_SELF) == 1 then
            if 5 <= local3 then
                local0[6] = 1
            else
                local0[6] = 1
                local0[3] = 0
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 4 then
            local0[20] = 100
        elseif 5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 30
            local0[4] = 20
            local0[5] = 30
        else
            local0[1] = 30
            local0[2] = 10
            local0[3] = 30
            local0[4] = 30
            local0[5] = 0
        end
    elseif local7 == 122050 then
        if arg1:GetHpRate(TARGET_SELF) == 1 then
            local0[6] = 1
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local3 <= 4 then
            local0[20] = 100
        elseif 5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[4] = 20
            local0[5] = 50
        else
            local0[1] = 35
            local0[2] = 25
            local0[4] = 40
            local0[5] = 0
        end
    else
        local0[3] = 30
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 10, local0[5], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Revived1st_122000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Revived1st_122000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Revived1st_122000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Revived1st_122000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Revived1st_122000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Revived1st_122000_Act06)
    local1[20] = REGIST_FUNC(arg1, arg2, Revived1st_122000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Revived1st_122000_ActAfter_AdjustSpace), local2)
    return 
end

function Revived1st_122000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.3 - arg0:GetMapHitRadius(TARGET_SELF), 1.3 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 1.3 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived1st_122000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived1st_122000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2.5, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Revived1st_122000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1.6 - arg0:GetMapHitRadius(TARGET_SELF), 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 3003
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if 50 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived1st_122000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Revived1st_122000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 15), TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Revived1st_122000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
