RegisterTableGoal(GOAL_DwarfishHuman_120002_Battle, "DwarfishHuman_120002_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DwarfishHuman_120002_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 30, 10)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    if local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 10
        local0[2] = 10
        local0[10] = 40
        local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 50
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and arg1:GetRandam_Int(1, 100) <= 40 then
        local0[14] = 40
        local0[7] = 60
    elseif 10 <= local3 then
        local0[9] = 100
    elseif 4 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 90
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[11] = 10
    elseif 2.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 0
        local0[12] = 0
        local0[13] = 10
        local0[14] = 30
    elseif 1 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 0
        local0[12] = 0
        local0[13] = 10
        local0[14] = 10
    else
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 0
        local0[12] = 0
        local0[13] = 10
        local0[14] = 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3003, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3005, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3007, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3008, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3009, 10, local0[9], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3011, 0, local0[12], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, DwarfishHuman_120002_ActAfter_AdjustSpace), local2)
    return 
end

function DwarfishHuman_120002_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    local local0 = 3000
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 2.4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    local local0 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 6.8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 5.4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.8 - arg0:GetMapHitRadius(TARGET_SELF), 7.8 - arg0:GetMapHitRadius(TARGET_SELF), 7.8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 5, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 50 - arg0:GetMapHitRadius(TARGET_SELF), 50 - arg0:GetMapHitRadius(TARGET_SELF), 50 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 5, 8)
    local local0 = 3009
    local local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 20
    if arg0:GetRandam_Int(1, 100) <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 50 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function DwarfishHuman_120002_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function DwarfishHuman_120002_Act12(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2 - arg0:GetMapHitRadius(TARGET_SELF), 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, 5)
    return 
end

function DwarfishHuman_120002_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    return 
end

function DwarfishHuman_120002_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DwarfishHuman_120002_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DwarfishHuman_120002_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif Damaged_Act(arg1, arg2, 4.5, 100) then
        DwarfishHuman_120002_Act14(arg1, arg2, paramTbl)
        return true
    else
        local local0 = arg1:GetDist(TARGET_ENE_0)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            DwarfishHuman_120002_Act07(arg1, arg2, paramTbl)
            return true
        else
            return false
        end
    end
end

RegisterTableGoal(GOAL_DwarfishHuman_120002_AfterAttackAct, "DwarfishHuman_120002_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DwarfishHuman_120002_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
