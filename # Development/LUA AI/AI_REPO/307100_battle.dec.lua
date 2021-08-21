RegisterTableGoal(GOAL_DemonBishopBit_307100_Battle, "GOAL_DemonBishopBit_307100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemonBishopBit_307100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(1, 0)
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
    if arg1:IsFinishTimer(1) == true then
        local0[1] = 100
    else
        local0[2] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, DemonBishopBit307100_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DemonBishopBit307100_Act02)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DemonBishopBit307100_ActAfter_AdjustSpace), local2)
    return 
end

function DemonBishopBit307100_Act01(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 12205) then
        arg0:SetTimer(1, 6)
    else
        arg0:SetTimer(1, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonBishopBit307100_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE, 0, 0, 0)
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
