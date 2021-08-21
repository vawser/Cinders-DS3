RegisterTableGoal(GOAL_SyokunoKumo_311000_Battle, "GOAL_SyokunoKumo_311000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SyokunoKumo_311000_Battle, true)
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
    if InsideRange(arg1, arg2, 180, 90, 2.5 + 1.9 - arg1:GetMapHitRadius(TARGET_SELF), 12) and local4 < 40 then
        local0[6] = 80
        local0[20] = 20
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3702371) then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[9] = 50
        local0[11] = 10
        local0[12] = 0
        local0[21] = 20
        local0[22] = 20
    elseif InsideRange(arg1, arg2, 180, 60, -999, 2.5 + 1.9 - arg1:GetMapHitRadius(TARGET_SELF)) and local4 < 80 then
        local0[10] = 80
        local0[20] = 20
    elseif InsideRange(arg1, arg2, -90, 40, -999, 4 + 1.9 - arg1:GetMapHitRadius(TARGET_SELF)) and local4 < 80 then
        local0[8] = 80
        local0[20] = 20
    elseif InsideRange(arg1, arg2, 90, 40, -999, 4 + 1.9 - arg1:GetMapHitRadius(TARGET_SELF)) and local4 < 80 then
        local0[7] = 80
        local0[20] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 20
        local0[21] = 80
    else
        if 8 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 30
            local0[4] = 0
            local0[5] = 40
            local0[9] = 0
            local0[11] = 0
            local0[12] = 30
            local0[21] = 0
            local0[22] = 0
        elseif 5 <= local3 then
            local0[1] = 0
            local0[2] = 10
            local0[3] = 20
            local0[4] = 0
            local0[5] = 10
            local0[9] = 0
            local0[11] = 20
            local0[12] = 30
            local0[21] = 0
            local0[22] = 10
        elseif 2 <= local3 then
            local0[1] = 0
            local0[2] = 25
            local0[3] = 25
            local0[4] = 0
            local0[5] = 10
            local0[9] = 10
            local0[11] = 0
            local0[12] = 0
            local0[21] = 20
            local0[22] = 10
        else
            local0[1] = 30
            local0[2] = 20
            local0[3] = 0
            local0[4] = 20
            local0[5] = 0
            local0[9] = 10
            local0[11] = 0
            local0[12] = 0
            local0[21] = 15
            local0[22] = 5
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
            local0[1] = local0[1] * 1
            local0[2] = local0[2] * 1
            local0[3] = local0[3] * 1
            local0[4] = local0[4] * 1
            local0[5] = local0[5] * 1
            local0[6] = local0[6] * 1
            local0[9] = local0[9] * 1
            local0[11] = local0[11] * 10
            local0[12] = local0[12] * 1
            local0[21] = local0[21] * 10
            local0[22] = local0[22] * 10
        elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
            local0[1] = local0[1] * 10
            local0[2] = local0[2] * 10
            local0[3] = local0[3] * 10
            local0[4] = local0[4] * 10
            local0[5] = local0[5] * 10
            local0[6] = local0[6] * 10
            local0[9] = local0[9] * 10
            local0[11] = local0[11] * 10
            local0[12] = local0[12] * 1
            local0[21] = local0[21] * 1
            local0[22] = local0[22] * 1
        end
        local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
        local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
        local0[3] = SetCoolTime(arg1, arg2, 3002, 8, local0[3], 1)
        local0[4] = SetCoolTime(arg1, arg2, 3003, 8, local0[4], 1)
        local0[5] = SetCoolTime(arg1, arg2, 3005, 15, local0[5], 1)
        local0[6] = SetCoolTime(arg1, arg2, 3006, 20, local0[6], 1)
        local0[7] = SetCoolTime(arg1, arg2, 3007, 5, local0[7], 1)
        local0[8] = SetCoolTime(arg1, arg2, 3008, 5, local0[8], 1)
        local0[9] = SetCoolTime(arg1, arg2, 3009, 30, local0[9], 1)
        local0[10] = SetCoolTime(arg1, arg2, 3011, 30, local0[10], 1)
        local0[11] = SetCoolTime(arg1, arg2, 3012, 30, local0[11], 1)
        local0[12] = SetCoolTime(arg1, arg2, 3014, 15, local0[12], 1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act12)
    local1[20] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SyokunoKumo_311000_ActAfter_AdjustSpace), local2)
    return 
end

function SyokunoKumo_311000_Act01(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0.5)
    arg0:SetStringIndexedNumber("AddDistRun", 1)
    Approach_Act_Flex(arg0, arg1, 1.5 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF), 1.5 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 1.5 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 0, 0, 2.5, 2.5)
    local local0 = 3000
    local local1 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 3 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, local2, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0.5)
    arg0:SetStringIndexedNumber("AddDistRun", 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 3.5 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF), 3.5 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 3.5 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 2.5, 2.5)
    local local1 = 3001
    local local2 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, 3 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local2, local3, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act03(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0.5)
    arg0:SetStringIndexedNumber("AddDistRun", 1)
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 2.5, 2.5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.2 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF), 8.2 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 8.2 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 2.5, 2.5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.9 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act12(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0.5)
    arg0:SetStringIndexedNumber("AddDistRun", 1)
    Approach_Act_Flex(arg0, arg1, 5.2 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF), 5.2 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 5.2 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 0, 0, 2.5, 2.5)
    local local0 = 3014
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) < 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 5.2 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3 + 1.9 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, SuccessDist, local1, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, SuccessDist, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_Act22(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SyokunoKumo_311000_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        arg2:ClearSubGoal()
        local local2 = 3003
        local local3 = 3000
        local local4 = 3002
        local local5 = 3009
        local local6 = 3005
        local local7 = 3.9 - arg1:GetMapHitRadius(TARGET_SELF)
        local local8 = 0
        local local9 = 0
        if local0 <= 1 then
            if local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 3 + 1.9 - arg1:GetMapHitRadius(TARGET_SELF), local8, local9, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local7, local8, local9)
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local7, local8, local9, 0, 0)
            end
        elseif local0 <= 2 then
            if local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 3 + 1.9 - arg1:GetMapHitRadius(TARGET_SELF), local8, local9, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local7, local8, local9)
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local7, local8, local9, 0, 0)
            end
        elseif local0 <= 5 then
            if local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local7, local8, local9, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local7, local8, local9, 0, 0)
            end
        else
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_SELF, true, 0)
        end
    end
    return false
end

return 
