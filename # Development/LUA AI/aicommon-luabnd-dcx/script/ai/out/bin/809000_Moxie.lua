RegisterTableGoal(GOAL_Moxie_809000_Battle, "GOAL_Moxie_809000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Moxie_809000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
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
            local0[20] = 60 -- Turn
            local0[22] = 20 -- Right
            local0[23] = 20 -- Left
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            local0[20] = 30 -- Turn
            local0[23] = 70 -- Left
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            local0[20] = 30 -- Turn
            local0[22] = 70 -- Right
        elseif 5 <= local3 then
            local0[1] = 10 -- Right Swipe
            local0[2] = 10 -- Headbutt
            local0[3] = 15 -- Shove
            local0[4] = 10 -- Left Swipe
            local0[5] = 10 -- Bite
            local0[6] = 45 -- Leap Swipe
        elseif 3 <= local3 then
            local0[1] = 15 -- Right Swipe
            local0[2] = 15 -- Headbutt
            local0[3] = 30 -- Shove
            local0[4] = 15 -- Left Swipe
            local0[5] = 15 -- Bite
            local0[6] = 10 -- Leap Swipe
        else
            local0[1] = 20 -- Right Swipe
            local0[2] = 20 -- Headbutt
            local0[3] = 0 -- Shove
            local0[4] = 25 -- Left Swipe
            local0[5] = 25 -- Bite
            local0[6] = 0 -- Leap Swipe
            local0[22] = 5 -- Right
            local0[23] = 5 -- Left
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 7, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 7, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 7, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 7, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 7, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 7, local0[6], 1)
    local0[21] = SetCoolTime(arg1, arg2, 6001, 7, local0[21], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act01) -- Right Swipe
    local1[2] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act02) -- Headbutt
    local1[3] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act03) -- Shove
    local1[4] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act04) -- Left Swipe
    local1[5] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act05) -- Bite
    local1[6] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act06) -- Leap Swipe
    local1[20] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act20) -- Turn
    local1[21] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act21) -- Back
    local1[22] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act22) -- Right
    local1[23] = REGIST_FUNC(arg1, arg2, Moxie_809000_Act23) -- Left
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Moxie_809000_ActAfter_AdjustSpace), local2)
    return 
end

function Moxie_809000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moxie_809000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moxie_809000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.5 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moxie_809000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2 - arg0:GetMapHitRadius(TARGET_SELF), 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moxie_809000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.6 - arg0:GetMapHitRadius(TARGET_SELF), 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moxie_809000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 1.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moxie_809000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moxie_809000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moxie_809000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moxie_809000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 2, TARGET_ENE_0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moxie_809000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Moxie_809000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_Moxie_809000_AfterAttackAct, "GOAL_Moxie_809000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Moxie_809000_AfterAttackAct, true)
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
