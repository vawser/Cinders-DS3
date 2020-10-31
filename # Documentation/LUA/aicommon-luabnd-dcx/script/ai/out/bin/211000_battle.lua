RegisterTableGoal(GOAL_DogRat_211000_Battle, "GOAL_DogRat_211000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DogRat_211000_Battle, true)
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
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[20] = 60
            local0[22] = 20
            local0[23] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            local0[20] = 30
            local0[23] = 70
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            local0[20] = 30
            local0[22] = 70
        elseif 5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 15
            local0[4] = 10
            local0[5] = 10
            local0[6] = 45
        elseif 3 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 30
            local0[4] = 15
            local0[5] = 15
            local0[6] = 10
        else
            local0[1] = 20
            local0[2] = 20
            local0[3] = 0
            local0[4] = 25
            local0[5] = 25
            local0[6] = 0
            local0[22] = 5
            local0[23] = 5
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 7, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 7, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 7, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 7, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 7, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 7, local0[6], 1)
    local0[21] = SetCoolTime(arg1, arg2, 6001, 7, local0[21], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DogRat211098_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DogRat211098_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DogRat211098_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DogRat211098_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DogRat211098_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DogRat211098_Act06)
    local1[20] = REGIST_FUNC(arg1, arg2, DogRat211098_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, DogRat211098_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, DogRat211098_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, DogRat211098_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DogRat211098_ActAfter_AdjustSpace), local2)
    return 
end

function DogRat211098_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRat211098_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRat211098_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRat211098_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRat211098_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRat211098_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DogRat211098_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DogRat211098_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DogRat211098_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DogRat211098_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DogRat211098_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DogRat_211000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_DogRat_211000_AfterAttackAct, "GOAL_DogRat_211000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DogRat_211000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 45)
    arg1:SetStringIndexedNumber("Odds_Back_AAA", 20)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 35)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 1)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
