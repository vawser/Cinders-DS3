RegisterTableGoal(GOAL_DogRatlarge_228000_Battle, "GOAL_DogRatlarge_228000_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) and (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki) then
        if InsideRange(arg1, arg2, 22.5, 45, 0, 2) then
            local0[5] = 98
            local0[20] = 2
        elseif InsideRange(arg1, arg2, 112.5, 45, 0, 2) then
            local0[5] = 70
            local0[9] = 25
            local0[20] = 5
        elseif InsideRange(arg1, arg2, 157.5, 45, 0, 2) then
            local0[9] = 98
            local0[20] = 2
        elseif InsideRange(arg1, arg2, -22.5, 45, 0, 2) then
            local0[6] = 98
            local0[20] = 2
        elseif InsideRange(arg1, arg2, -112.5, 45, 0, 2) then
            local0[5] = 70
            local0[9] = 25
            local0[20] = 5
        elseif InsideRange(arg1, arg2, -157.5, 45, 0, 2) then
            local0[11] = 98
            local0[20] = 2
        elseif 5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 15
            local0[4] = 15
            local0[7] = 30
            local0[8] = 10
            local0[10] = 10
            local0[21] = 0
        elseif 3 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 15
            local0[4] = 15
            local0[7] = 10
            local0[8] = 20
            local0[10] = 10
            local0[21] = 0
        else
            local0[1] = 15
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[7] = 10
            local0[8] = 25
            local0[10] = 20
            local0[21] = 0
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 5, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 5, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 8, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 8, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 5, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3009, 8, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3010, 5, local0[11], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, DogRatlarge228000_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, atkAfterFunc, local2)
    return 
end

function DogRatlarge228000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 3, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DogRatlarge228000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
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
