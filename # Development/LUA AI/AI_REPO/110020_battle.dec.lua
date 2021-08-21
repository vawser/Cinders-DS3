RegisterTableGoal(GOAL_MoujaSoldier_bow_110020_Battle, "MoujaSoldierbow")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_bow_110020_Battle, true)
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
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3012330) then
        local0[11] = 100
    elseif arg1:GetNpcThinkParamID() == 110023 and 10 <= local3 then
        if InsideDir(arg1, arg2, 180, 270) then
            local0[11] = 100
        else
            local0[10] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[4] = 100
    elseif arg1:IsLadderAct(TARGET_ENE_0) then
        local0[1] = 50
        local0[2] = 50
    elseif 10 < local3 then
        local0[1] = 25
        local0[2] = 75
    elseif 5 < local3 then
        local0[1] = 50
        local0[2] = 50
    else
        local0[1] = 50
    end
    if arg1:GetNpcThinkParamID() == 110024 or arg1:GetNpcThinkParamID() == 144030 or arg1:GetNpcThinkParamID() == 144031 or arg1:GetNpcThinkParamID() == 144035 then
        local0[2] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, MoujaSoldierBow_Act11)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoujaSoldierBow_ActAfter_AdjustSpace), local2)
    return 
end

function MoujaSoldierBow_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, 44 - arg0:GetMapHitRadius(TARGET_SELF), 44 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    local local1 = 3000
    if arg0:GetNpcThinkParamID() == 110025 or arg0:GetNpcThinkParamID() == 144035 then
        local1 = 3006
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 44 - arg0:GetMapHitRadius(TARGET_SELF), 3, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, 44 - arg0:GetMapHitRadius(TARGET_SELF), 44 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    local local1 = 3002
    if arg0:GetNpcThinkParamID() == 110025 or arg0:GetNpcThinkParamID() == 144035 then
        local1 = 3008
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 44 - arg0:GetMapHitRadius(TARGET_SELF), 3, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act03(arg0, arg1, arg2)
    return 
end

function MoujaSoldierBow_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act05(arg0, arg1, arg2)
    local local0 = 0
    local0 = arg0:GetRandam_Float(2, 3)
    if arg0:GetDist(TARGET_ENE_0) < 12 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, local0, TARGET_ENE_0)
    else
        local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, local0, TARGET_ENE_0)
        local1:SetTargetRange(0, 12, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(0, 1)
    local local1 = arg0:GetRandam_Int(30, 45)
    if arg0:GetDist(TARGET_ENE_0) < 12 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local0, local1, true, true, -1)
    else
        local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local0, local1, true, true, -1)
        local2:SetTargetRange(0, 12, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act07(arg0, arg1, arg2)
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
    local3 = 3000
    if arg0:GetNpcThinkParamID() == 110025 or arg0:GetNpcThinkParamID() == 144035 then
        local3 = 3006
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, 44 - arg0:GetMapHitRadius(TARGET_SELF), 3, 45, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2.5, 4), TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2.5, 4), TARGET_ENE_0, 15, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act10(arg0, arg1, arg2)
    local local0 = 3000
    if arg0:GetNpcThinkParamID() == 110025 or arg0:GetNpcThinkParamID() == 144035 then
        local0 = 3006
    end
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 2), TARGET_NONE)
    local1:SetTargetAngle(1, 0, 120)
    local1 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 44 - arg0:GetMapHitRadius(TARGET_SELF), 3, 45, 0, 0)
    local1:SetTargetAngle(1, 0, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoujaSoldierBow_Act11(arg0, arg1, arg2)
    local local0 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoujaSoldierBow_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_bow_110020_AfterAttackAct, 10)
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
        if arg1:IsTargetOutOfRangeInterruptSlot(0) and arg1:GetRandam_Int(1, 100) < 100 then
            arg2:ClearSubGoal()
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfAngle) and arg1:IsTargetOutOfRangeInterruptSlot(1) then
        arg2:ClearSubGoal()
        return true
    end
    return 
end

RegisterTableGoal(GOAL_MoujaSoldier_bow_110020_AfterAttackAct, "GOAL_MoujaSoldier_bow_110020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoujaSoldier_bow_110020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if arg1:GetNpcThinkParamID() == 144031 and 5 <= local0 then
        local2[1] = 0
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
    elseif arg1:GetNpcThinkParamID() == 110023 and 10 <= local0 then
        local2[1] = 0
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
        local2[5] = 100
    elseif 10 <= local0 then
        local2[1] = 50
        local2[2] = 50
        local2[3] = 0
        local2[4] = 0
        local2[5] = 0
    elseif 5 <= local0 then
        local2[1] = 0
        local2[2] = 25
        local2[3] = 75
        local2[4] = 0
        local2[5] = 0
    elseif 2.5 <= local0 then
        local2[1] = 0
        local2[2] = 0
        local2[3] = 20
        local2[4] = 80
        local2[5] = 0
    else
        local2[1] = 0
        local2[2] = 0
        local2[3] = 0
        local2[4] = 100
        local2[5] = 0
    end
    if 110026 <= arg1:GetNpcThinkParamID() and arg1:GetNpcThinkParamID() <= 110028 then
        local2[1] = local2[1] + local2[2]
        local2[2] = 0
    end
    if arg1:GetNpcThinkParamID() == 144030 then
        local2[1] = local2[1] + local2[2]
        local2[2] = 0
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 == 1 then
        MoujaSoldierBow_Act05(arg1, arg2, paramTbl)
    elseif local3 == 2 then
        MoujaSoldierBow_Act06(arg1, arg2, paramTbl)
    elseif local3 == 3 then
        MoujaSoldierBow_Act08(arg1, arg2, paramTbl)
    elseif local3 == 4 then
        MoujaSoldierBow_Act09(arg1, arg2, paramTbl)
    elseif local3 == 5 then
        MoujaSoldierBow_Act11(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
