RegisterTableGoal(GOAL_morinobannnin_nagaono_133000_Battle, "GOAL_morinobannnin_nagaono_133000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_morinobannnin_nagaono_133000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) and (local5 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki) then
        arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90)
        if 7.8 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 then
            local0[1] = 10
            local0[2] = 5
            local0[4] = 10
            local0[5] = 20
        elseif 4.4 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 then
            local0[1] = 15
            local0[2] = 5
            local0[4] = 20
        elseif 1.5 - arg1:GetMapHitRadius(TARGET_SELF) <= local3 then
            local0[1] = 15
            local0[2] = 5
            local0[3] = 15
            local0[4] = 15
        else
            local0[1] = 5
            local0[2] = 8
            local0[3] = 8
            local0[4] = 5
            local0[6] = 12
        end
    end
    local1[1] = REGIST_FUNC(arg1, arg2, TheForestGuardian133000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, TheForestGuardian133000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, TheForestGuardian133000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, TheForestGuardian133000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, TheForestGuardian133000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, TheForestGuardian133000_Act06)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, TheForestGuardian133000_ActAfter_AdjustSpace), local2)
    return 
end

function TheForestGuardian133000_Act01(arg0, arg1, arg2)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 1, 30, 0, 0, 120)
    if arg0:GetRandam_Int(0, 99) < 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TheForestGuardian133000_Act02(arg0, arg1, arg2)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TheForestGuardian133000_Act03(arg0, arg1, arg2)
    local local0 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TheForestGuardian133000_Act04(arg0, arg1, arg2)
    local local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.4, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TheForestGuardian133000_Act05(arg0, arg1, arg2)
    local local0 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 7.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 7.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TheForestGuardian133000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if arg0:GetRandam_Int(0, 99) < 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TheForestGuardian133000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_morinobannnin_nagaono_133000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_morinobannnin_nagaono_133000_AfterAttackAct, "GOAL_morinobannnin_nagaono_133000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_morinobannnin_nagaono_133000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 15)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
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
