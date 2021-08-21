RegisterTableGoal(GOAL_FallenProtectorMaiden_818100_Battle, "GOAL_FallenProtectorMaiden_818100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FallenProtectorMaiden_818100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
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
    local0[20] = 0
    local1[1] = REGIST_FUNC(arg1, arg2, FallenProtectorMaiden_818100_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, FallenProtectorMaiden_818100_Act02)
    local1[20] = REGIST_FUNC(arg1, arg2, FallenProtectorMaiden_818100_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, FallenProtectorMaiden_818100_ActAfter_AdjustSpace), local2)
    return 
end

function FallenProtectorMaiden_818100_Act01(arg0, arg1, arg2)
    local local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtectorMaiden_818100_Act02(arg0, arg1, arg2)
    local local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtectorMaiden_818100_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 6, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FallenProtectorMaiden_818100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetHpRate(TARGET_SELF)
    return false
end

return 
