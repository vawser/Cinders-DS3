RegisterTableGoal(GOAL_ProtoSkeleton_107010_Battle, "ProtoSkeleton_107010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProtoSkeleton_107010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if 2.5 <= arg1:GetDist(TARGET_ENE_0) then
        local0[1] = 100
    else
        local0[2] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, ProtoSkeleton_107010_Act02)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ProtoSkeleton_107010_ActAfter_AdjustSpace), local2)
    return 
end

function ProtoSkeleton_107010_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107010_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProtoSkeleton_107010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
