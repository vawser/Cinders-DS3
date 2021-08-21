RegisterTableGoal(GOAL_LastBoss_LargeLargeSword_Battle, "LastBoss_LargeLargeSword")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_LargeLargeSword_Battle, true)
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
    if 15 <= local3 then
        if InsideDir(arg1, arg2, 0, 120) then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 10
            local0[8] = 10
            local0[9] = 10
            local0[10] = 10
            local0[11] = 10
            local0[12] = 10
        else
            local0[20] = 40
        end
    elseif 10 <= local3 then
        if InsideDir(arg1, arg2, 0, 120) then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[6] = 10
            local0[8] = 10
            local0[9] = 10
            local0[10] = 10
            local0[11] = 10
            local0[12] = 10
        else
            local0[20] = 40
        end
    elseif 6 <= local3 then
        if InsideDir(arg1, arg2, 0, 120) then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[6] = 10
            local0[8] = 10
            local0[11] = 10
            local0[12] = 10
        else
            local0[20] = 40
        end
    elseif 3.5 <= local3 then
        if InsideDir(arg1, arg2, 0, 120) then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[6] = 10
            local0[8] = 10
            local0[11] = 10
            local0[12] = 10
        else
            local0[20] = 40
        end
    elseif 1.5 <= local3 then
        if InsideDir(arg1, arg2, 0, 120) then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[6] = 10
            local0[7] = 10
            local0[8] = 10
            local0[11] = 10
            local0[12] = 10
        else
            local0[20] = 40
        end
    elseif InsideDir(arg1, arg2, 0, 90) then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[6] = 10
        local0[7] = 10
        local0[11] = 10
        local0[12] = 10
    elseif InsideDir(arg1, arg2, 90, 90) then
        local0[4] = 75
        local0[20] = 25
    elseif InsideDir(arg1, arg2, -90, 90) then
        local0[5] = 75
        local0[20] = 25
    else
        local0[20] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, LastBoss_LargeLargeSword_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, 0, local2)
    return 
end

function LastBoss_LargeLargeSword_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9 - arg0:GetMapHitRadius(TARGET_SELF), 9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12 - arg0:GetMapHitRadius(TARGET_SELF), 12 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 12 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 13 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 50, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function LastBoss_LargeLargeSword_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
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
