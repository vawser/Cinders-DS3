RegisterTableGoal(GOAL_GiantGolem_Bastile_Battle, "GiantGolem_Bastile_Battle_uhaha")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantGolem_Bastile_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    print("地下牢 イベント戦スタート")
    _COMMON_InitEnemyAct(arg0, arg1, arg2)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    _COMMON_SetEnemyActRate(arg0, arg1, arg2, 0)
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3902500) then
        arg1:SetStringIndexedNumber("ActRate01", 1)
        arg1:SetStringIndexedNumber("ActRate02", 1)
        arg1:SetStringIndexedNumber("ActRate03", 1)
        arg1:SetStringIndexedNumber("ActRate04", 1)
        arg1:SetStringIndexedNumber("ActRate05", 1)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3902501) then
        if flag_LastAttackLeftSlash == true then
            arg1:SetStringIndexedNumber("ActRate10", 1)
        else
            arg1:SetStringIndexedNumber("ActRate07", 1)
            arg1:SetStringIndexedNumber("ActRate09", 1)
            arg1:SetStringIndexedNumber("ActRate10", 1)
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3902502) then
        arg1:SetStringIndexedNumber("ActRate01", 1)
        arg1:SetStringIndexedNumber("ActRate02", 1)
        arg1:SetStringIndexedNumber("ActRate03", 1)
        arg1:SetStringIndexedNumber("ActRate04", 1)
        arg1:SetStringIndexedNumber("ActRate05", 1)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3902503) then
        arg1:SetStringIndexedNumber("ActRate01", 1)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3902504) then
        arg1:SetStringIndexedNumber("ActRate06", 1)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3902505) then
        arg1:SetStringIndexedNumber("ActRate11", 1)
    end
    local local0 = _COMMON_SelectEnemyAct(arg0, arg1, arg2, TARGET_ENE_0, 0, 0)
    local local1 = 10
    if local0 ~= nil then
        local1 = local0(arg0, arg1, arg2, nil)
    else
        print("関数が選ばれなかった")
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal["ActBase01"] = 2003000
Goal.Act01 = function (arg0, arg1, arg2, arg3)
    arg1:SetEventMoveTarget(3902300)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, POINT_EVENT, 0, 3000)
    return 100
end

Goal["ActBase02"] = 2003001
Goal.Act02 = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3001)
    return 100
end

Goal["ActBase03"] = 2003002
Goal.Act03 = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3002)
    return 100
end

Goal["ActBase04"] = 2003003
Goal.Act04 = function (arg0, arg1, arg2, arg3)
    local local0 = 3003
    local local1 = 0
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3902500) then
        arg1:SetEventMoveTarget(3902301)
        arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, POINT_EVENT, local1, local0)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3902502) then
        arg1:SetEventMoveTarget(3902300)
        arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, POINT_EVENT, local1, local0)
    end
    return 100
end

Goal["ActBase05"] = 2003004
Goal.Act05 = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3004)
    return 100
end

Goal["ActBase06"] = 2003005
Goal.Act06 = function (arg0, arg1, arg2, arg3)
    arg1:SetEventMoveTarget(3902309)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, POINT_EVENT, 0, 3005)
    return 100
end

Goal["ActBase07"] = 2003006
Goal.Act07 = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3006)
    return 100
end

Goal["ActBase08"] = 2003007
Goal.Act08 = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3007)
    return 100
end

Goal["ActBase09"] = 2003008
Goal.Act09 = function (arg0, arg1, arg2, arg3)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, TARGET_ENE_0, 0, 3008)
    return 100
end

Goal["ActBase10"] = 2003009
Goal.Act10 = function (arg0, arg1, arg2, arg3)
    arg1:SetEventMoveTarget(3902303)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, POINT_EVENT, 0, 3009)
    return 100
end

Goal["ActBase11"] = 2003010
Goal.Act11 = function (arg0, arg1, arg2, arg3)
    arg1:SetEventMoveTarget(3902304)
    arg2:AddSubGoal(GOAL_EnemyMultiAttack, 10, POINT_EVENT, 0, 3010)
    return 100
end

return 
