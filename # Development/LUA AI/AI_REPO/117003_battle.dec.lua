RegisterTableGoal(GOAL_Roller_117003_Battle, "GOAL_Roller_117003_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Roller_117003_Battle, true)
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
    local local6 = 1
    if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 999) then
        local6 = 5
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if 5 < local3 then
            local0[4] = 100
        else
            local0[7] = 100
        end
    elseif 0 < arg1:GetNumber(0) then
        local0[1] = 50
        arg1:SetNumber(0, 1)
    elseif arg1:IsLadderAct(TARGET_ENE_0) then
        local0[1] = 15 * local6
    elseif 10 < local3 then
        local0[1] = 15 * local6
    elseif 4 < local3 then
        local0[1] = 15 * local6
    else
        local0[7] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Roller117003_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Roller117003_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Roller117003_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Roller117003_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Roller117003_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Roller117003_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Roller117003_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Roller117003_Act08)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Roller117003_ActAfter_AdjustSpace), local2)
    return 
end

function Roller117003_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, 44 - arg0:GetMapHitRadius(TARGET_SELF), 44 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    local local1 = 3000
    local local2 = 44 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 0
    local local4 = 0
    if 40 <= arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 44 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller117003_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller117003_Act05(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetDist(TARGET_ENE_0) < 12 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3), TARGET_ENE_0)
    else
        local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3), TARGET_ENE_0)
        local1:SetTargetRange(0, 12, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller117003_Act06(arg0, arg1, arg2)
    local local0 = 0
    local local1 = arg0:GetRandam_Int(30, 45)
    local local2 = {}
    local local3 = false
    local local4, local5, local6, local7 = Probe_Safety_selffuntion(arg0, arg1, TARGET_ENE_0, -1, -1, arg0:GetRandam_Float(1, 2), arg0:GetRandam_Float(1, 2), 0)
    local2[4] = local7
    local2[3] = local6
    local2[2] = local5
    local2[1] = local4
    local2[1] = 0
    local2[2] = 0
    local4 = SelectOddsIndex(arg0, local2)
    if local4 == 3 then
        local0 = 0
    elseif local4 == 4 then
        local0 = 1
    end
    if arg0:GetDist(TARGET_ENE_0) < 12 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local0, local1, true, true, -1)
    else
        local5 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local0, local1, true, true, -1)
        local5:SetTargetRange(0, 12, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller117003_Act07(arg0, arg1, arg2)
    local local0 = false
    local local1 = TARGET_SELF
    local local2 = arg0:GetRandam_Float(5, 6)
    if 10 < arg0:GetDist(TARGET_ENE_0) then
        local2 = arg0:GetRandam_Float(2, 3)
        local0 = true
        local1 = TARGET_ENE_0
    end
    local local3 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, 15, local1, local0, -1)
    local3:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 44 - arg0:GetMapHitRadius(TARGET_SELF), 3, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Roller117003_Act08(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(5, 10), TARGET_ENE_0, 15, TARGET_ENE_0, false, -1)
    local0:SetTargetRange(0, 5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Roller117003_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Roller_117003_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

function Probe_Safety_selffuntion(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local local0 = arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    local local4 = 0
    if arg3 == nil or arg3 < 0 then
        local1 = 0
    elseif arg3 <= arg0:GetExistMeshOnLineDistEx(arg2, AI_DIR_TYPE_F, arg3 + 1, local0, arg7) then
        local1 = 1
    end
    if arg4 == nil or arg4 < 0 then
        local2 = 0
    elseif arg4 <= arg0:GetExistMeshOnLineDistEx(arg2, AI_DIR_TYPE_B, arg4 + 1, local0, arg7) then
        local2 = 1
    end
    if arg5 == nil or arg5 < 0 then
        local3 = 0
    elseif arg5 <= arg0:GetExistMeshOnLineDistEx(arg2, AI_DIR_TYPE_L, arg5 + 1, local0, arg7) then
        local3 = 1
    end
    if arg6 == nil or arg6 < 0 then
        local4 = 0
    elseif arg6 <= arg0:GetExistMeshOnLineDistEx(arg2, AI_DIR_TYPE_R, arg6 + 1, local0, arg7) then
        local4 = 1
    end
    return local1, local2, local3, local4
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) and arg1:GetRandam_Int(1, 100) < 100 then
        arg2:ClearSubGoal()
        return true
    else
        return 
    end
end

RegisterTableGoal(GOAL_Roller_117003_AfterAttackAct, "GOAL_Roller_117003_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Roller_117003_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local1 = {50}
    local1[3] = 50
    if 4 < arg1:GetDist(TARGET_ENE_0) then
        local1[3] = 0
    else
        local1[1] = 0
    end
    local local2 = SelectOddsIndex(arg1, local1)
    if local2 == 1 then
        Roller117003_Act05(arg1, arg2, paramTbl)
    elseif local2 == 3 then
        Roller117003_Act08(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
