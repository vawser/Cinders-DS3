RegisterTableGoal(GOAL_Ballista226000_Battle, "GOAL_Ballista226000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Ballista226000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3802500) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3802501) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3802502) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3802503) == true or arg1:IsEventFlag(13800200) == false then
        local0[4] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 10) then
        local0[1] = 100
    else
        local0[3] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Ballista_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Ballista_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Ballista_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Ballista_Act04)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Ballista226000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function Ballista_Act01(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Ballista_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Ballista_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, -1, TARGET_SELF, true, 0)
    local0:SetTargetAngle(1, 180, 350)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Ballista_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Ballista226000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfAngle) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
        return true
    else
        return 
    end
end

return 
