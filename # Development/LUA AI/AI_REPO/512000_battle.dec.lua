RegisterTableGoal(GOAL_SnakeSoul512000_Battle, "SnakeSoulBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeSoul512000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetEventRequest()
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:GetHpRate(TARGET_SELF) <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 11280) then
        local0[15] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local3 <= 5 then
        local0[8] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local3 <= 5 then
        local0[7] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 8 and 4 <= local3 then
        local0[9] = 45
        local0[11] = 45
        local0[20] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
        local0[20] = 80
        local0[23] = 20
    elseif 25 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 50
        local0[10] = 0
        local0[12] = 0
        local0[23] = 50
    elseif 12 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 30
        local0[5] = 0
        local0[6] = 20
        local0[10] = 0
        local0[12] = 0
        local0[23] = 50
    elseif 8 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[10] = 30
        local0[12] = 10
        local0[23] = 40
    elseif 3 <= local3 then
        local0[1] = 50
        local0[2] = 30
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[10] = 0
        local0[12] = 0
        local0[23] = 0
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 60
        local0[4] = 0
        local0[5] = 20
        local0[6] = 20
        local0[10] = 0
        local0[12] = 0
        local0[23] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 45, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 60, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 20, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3007, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3010, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3011, 10, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3012, 10, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3013, 10, local0[12], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act13)
    local1[15] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, 0, local2)
    return 
end

function SnakeSoulBattle_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act02(arg0, arg1, arg2)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act04(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 1.1)
    arg0:SetStringIndexedNumber("AddDistRun", 2.2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act05(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 1.1)
    arg0:SetStringIndexedNumber("AddDistRun", 2.2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act10(arg0, arg1, arg2)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11280) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 7, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSoulBattle_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11280) == false then
        if 3 <= local0 then
            if local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 3, TARGET_ENE_0, AI_DIR_TYPE_ToF, 2, TARGET_SELF, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_ToF, 2, TARGET_SELF, true)
            end
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 3, TARGET_ENE_0, AI_DIR_TYPE_ToF, 5, TARGET_SELF, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_ToF, 5, TARGET_SELF, true)
        end
    else
        if 15 < local0 then
            local local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_SELF, false, 0)
            local2:SetLifeEndSuccess(true)
        end
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 3, TARGET_ENE_0, AI_DIR_TYPE_ToL, 4, TARGET_SELF, false)
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_ToL, 4, TARGET_SELF, false)
            end
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 3, TARGET_ENE_0, AI_DIR_TYPE_ToR, 4, TARGET_SELF, false)
        else
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_ToR, 4, TARGET_SELF, false)
        end
    end
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
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetHpRate(TARGET_SELF)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and 4 < arg1:GetDist(TARGET_ENE_0) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        return true
    else
        return false
    end
end

return 
