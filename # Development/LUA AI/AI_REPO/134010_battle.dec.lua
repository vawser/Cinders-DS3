RegisterTableGoal(GOAL_RounoSibito134010_Battle, "GOAL_RounoSibito134010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RounoSibito134010_Battle, true)
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
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if local3 <= 4 then
            local0[3] = 80
            local0[20] = 20
        else
            local0[20] = 20
        end
    else
        if 3.5 <= local3 then
            local0[1] = 40
            local0[2] = 60
            local0[3] = 0
            local0[22] = 0
            local0[23] = 0
        elseif 2 <= local3 then
            local0[1] = 0
            local0[2] = 80
            local0[3] = 0
            local0[22] = 20
            local0[23] = 0
        else
            local0[1] = 80
            local0[2] = 0
            local0[3] = 0
            local0[22] = 20
            local0[23] = 0
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            if local3 <= 4 then
                local0[22] = local0[22] + 20
            elseif local3 <= 1 then
                local0[23] = local0[23] + 20
            end
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3010, 5, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3012, 5, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3013, 5, local0[3], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, RounoSibito134010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, RounoSibito134010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, RounoSibito134010_Act03)
    local1[20] = REGIST_FUNC(arg1, arg2, RounoSibito134010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, RounoSibito134010_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, RounoSibito134010_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, RounoSibito134010_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, RounoSibito134010_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function RounoSibito134010_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 4)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RounoSibito134010_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 4, 4)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RounoSibito134010_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RounoSibito134010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RounoSibito134010_Act22(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 90), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RounoSibito134010_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.3, TARGET_ENE_0, 4, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RounoSibito134010_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
