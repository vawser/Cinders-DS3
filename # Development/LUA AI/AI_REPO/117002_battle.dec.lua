RegisterTableGoal(GOAL_Roller_117002_Battle, "GOAL_Roller_117002_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Roller_117002_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    else
        local0[1] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Roller117002_Act01)
    local1[20] = REGIST_FUNC(arg1, arg2, Roller117002_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Roller117002_ActAfter_AdjustSpace), local2)
    return 
end

function Roller117002_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 12 <= local0 then
        local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 12, TARGET_SELF, false, 0)
        local1:SetLifeEndSuccess(true)
    elseif local0 <= 4.5 then
        local local1 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.4, TARGET_ENE_0, 12, TARGET_ENE_0, true, 0)
        local1:SetLifeEndSuccess(true)
    end
    local local1 = 3000
    local local2 = 3001
    local local3 = 0
    local local4 = 0
    if 40 <= arg0:GetRandam_Int(1, 100) and 12 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller117002_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller117002_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Roller_117002_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        local local0 = 0
        local local1 = 0
        arg2:ClearSubGoal()
        Roller117002_Act01(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Roller_117002_AfterAttackAct, "GOAL_Roller_117002_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Roller_117002_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Float(1, 1.5)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    if 15 <= local0 then
        local local4 = arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(1.5, 2), TARGET_ENE_0, 0, 0, 0)
        local4:SetTargetRange(1, 7, 999)
    elseif 7 <= local0 then
        if local2 <= 60 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local local4 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 0, 60, true, true, 0)
                local4:SetTargetRange(1, 7, 999)
            else
                local local4 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 1, 60, true, true, 0)
                local4:SetTargetRange(1, 7, 999)
            end
        else
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 12, TARGET_ENE_0, true, 0)
        end
    elseif 4 <= local0 then
        if local2 > 60 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 12, TARGET_ENE_0, true, 0)
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if local2 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 12, TARGET_SELF, false, 0)
        elseif SpaceCheck(arg1, arg2, 90, 1) == true then
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif local2 <= 25 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 12, TARGET_SELF, false, 0)
    elseif local2 <= 85 and SpaceCheck(arg1, arg2, 180, 1) == true then
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg1:GetRandam_Int(1, 100) <= 50 and SpaceCheck(arg1, arg2, 90, 1) == true then
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
