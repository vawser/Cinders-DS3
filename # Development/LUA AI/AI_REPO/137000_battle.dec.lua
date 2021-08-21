RegisterTableGoal(GOAL_CrucifyTheDead_137000_Battle, "CrucifyTheDead137000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrucifyTheDead_137000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        Kankyaku_Act(arg1, arg2, 0)
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:GetRandam_Int(0, 99) < 10 then
            local0[1] = 10
        else
            Torimaki_Act(arg1, arg2, 0)
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[10] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 <= 2 then
        local0[4] = 40
        local0[10] = 60
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 <= 2 then
        local0[4] = 40
        local0[10] = 60
    elseif 10 < local3 then
        local0[1] = 10
        local0[3] = 10
        local0[5] = 10
        local0[6] = 70
    elseif 5.2 < local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 15
        local0[5] = 15
        local0[6] = 50
    elseif 3.2 < local3 then
        local0[1] = 25
        local0[2] = 25
        local0[3] = 25
        local0[5] = 25
    else
        local0[1] = 25
        local0[2] = 25
        local0[3] = 15
        local0[4] = 30
        local0[5] = 15
    end
    local1[1] = REGIST_FUNC(arg1, arg2, CrucifyTheDead137000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CrucifyTheDead137000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CrucifyTheDead137000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CrucifyTheDead137000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, CrucifyTheDead137000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, CrucifyTheDead137000_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, CrucifyTheDead137000_Act10)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CrucifyTheDead137000_ActAfter_AdjustSpace), local2)
    return 
end

function CrucifyTheDead137000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.6 - arg0:GetMapHitRadius(TARGET_SELF), 4.6 - arg0:GetMapHitRadius(TARGET_SELF), 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 60, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrucifyTheDead137000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.4 - arg0:GetMapHitRadius(TARGET_SELF), 6.4 - arg0:GetMapHitRadius(TARGET_SELF), 6.4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 60, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrucifyTheDead137000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.4 - arg0:GetMapHitRadius(TARGET_SELF), 8.4 - arg0:GetMapHitRadius(TARGET_SELF), 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 70, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrucifyTheDead137000_Act04(arg0, arg1, arg2)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = 5
    local local6 = 5
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 150)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrucifyTheDead137000_Act05(arg0, arg1, arg2)
    local local0 = 6.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 6.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 6.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = 5
    local local6 = 5
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrucifyTheDead137000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 12 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 12 - arg0:GetMapHitRadius(TARGET_SELF), 12 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrucifyTheDead137000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrucifyTheDead137000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrucifyTheDead_137000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_CrucifyTheDead_137000_AfterAttackAct, "GOAL_CrucifyTheDead_137000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrucifyTheDead_137000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    if 10 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
