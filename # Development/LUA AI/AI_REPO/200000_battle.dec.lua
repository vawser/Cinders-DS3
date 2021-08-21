RegisterTableGoal(GOAL_BlackWolf_200000_Battle, "GOAL_BlackWolfTE_200000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackWolf_200000_Battle, true)
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
    if arg1:GetEventRequest(0) == 10 and arg1:GetNumber(2) ~= 5 then
        arg1:SetNumber(2, 5)
    end
    if InsideRange(arg1, arg2, 90, 90, -999, 2.5) then
        local0[8] = 30
        local0[9] = 30
    elseif InsideRange(arg1, arg2, -90, 90, -999, 2.5) then
        local0[8] = 30
        local0[9] = 30
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 60, 12) then
        local0[1] = 10
        local0[3] = 10
    elseif InsideRange(arg1, arg2, 180, 60, -999, 999) then
        local0[6] = 100
        local0[7] = 100
    elseif 15 <= local3 and arg1:GetNumber(2) ~= 5 then
        local0[15] = 100
    elseif arg1:GetNumber(2) == 0 and arg1:IsFinishTimer(0) == true then
        if 10 <= local3 then
            local0[15] = 100
        elseif 4 <= local3 then
            local0[15] = 100
        else
            local0[4] = 999
            local0[5] = 25
            local0[8] = 25
            local0[9] = 20
            local0[18] = 15
        end
    elseif arg1:GetNumber(2) == 0 and arg1:GetTimer(0) ~= 0 then
        if 10 <= local3 then
            local0[15] = 10
            local0[19] = 90
        elseif 4 <= local3 then
            local0[15] = 20
            local0[19] = 80
        else
            local0[4] = 20
            local0[5] = 15
            local0[8] = 25
            local0[9] = 20
            local0[18] = 20
        end
    elseif arg1:GetNumber(2) == 1 then
        if 10 <= local3 then
            local0[1] = 50
            local0[2] = 50
        elseif 2.5 <= local3 then
            local0[1] = 50
            local0[3] = 50
        else
            local0[4] = 30
            local0[5] = 10
            local0[8] = 30
            local0[9] = 30
        end
    elseif arg1:GetNumber(2) == 5 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 40) then
            if 2.5 <= local3 then
                local0[1] = 45
                local0[2] = 20
                local0[3] = 35
            else
                local0[8] = 5
                local0[9] = 5
                local0[4] = 50
                local0[5] = 40
            end
        elseif local3 <= 10 then
            if 2.5 <= local3 then
                local0[1] = 45
                local0[2] = 20
                local0[3] = 35
            else
                local0[8] = 5
                local0[9] = 5
                local0[4] = 50
                local0[5] = 40
            end
        elseif arg1:IsFinishTimer(1) == true then
            if 2.5 <= local3 then
                local0[1] = 45
                local0[2] = 20
                local0[3] = 35
            else
                local0[8] = 5
                local0[9] = 5
                local0[4] = 50
                local0[5] = 40
            end
        elseif arg1:GetTimer(1) ~= 0 then
            local0[15] = 100
        else
            local0[15] = 100
        end
    else
        arg1:SetNumber(2, 1)
        arg2:ClearSubGoal()
    end
    local0[8] = SetCoolTime(arg1, arg2, 3007, 4, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 4, local0[9], 0)
    local0[18] = SetCoolTime(arg1, arg2, 6001, 4, local0[18], 0)
    local0[1] = SetCoolTime(arg1, arg2, 3000, 4, local0[1], 0)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 4, local0[2], 0)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 4, local0[3], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act10)
    local1[15] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act15)
    local1[18] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, BlackWolf200000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlackWolf200000_ActAfter_AdjustSpace), local2)
    return 
end

function BlackWolf200000_Act01(arg0, arg1, arg2)
    if arg0:GetNumber(2) == 5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 50) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1, AI_DIR_TYPE_CENTER, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if arg0:GetNumber(2) == 1 then
        arg0:SetNumber(2, 0)
    end
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act02(arg0, arg1, arg2)
    if arg0:GetNumber(2) == 5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 50) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1, AI_DIR_TYPE_CENTER, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if arg0:GetNumber(2) == 1 then
        arg0:SetNumber(2, 0)
    end
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act03(arg0, arg1, arg2)
    if arg0:GetNumber(2) == 5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 50) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1, AI_DIR_TYPE_CENTER, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if arg0:GetNumber(2) == 1 then
        arg0:SetNumber(2, 0)
    end
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, -1, 60, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    if arg0:GetNumber(2) == 1 then
        arg0:SetNumber(2, 0)
    end
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    arg0:SetTimer(0, 11)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BlackWolf200000_Act15(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 15 and arg0:GetNumber(2) ~= 5 then
        arg0:SetNumber(2, 1)
    end
    if arg0:GetNumber(2) == 5 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, -1, AI_DIR_TYPE_CENTER, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, -1, AI_DIR_TYPE_CENTER, 2)
    end
    if arg0:IsFinishTimer(1) == true and arg0:GetNumber(2) == 5 then
        arg0:SetTimer(1, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackWolf200000_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackWolf200000_Act19(arg0, arg1, arg2)
    local local0 = SpaceCheck(arg0, arg1, 90, 7)
    local local1 = SpaceCheck(arg0, arg1, -90, 7)
    if SpaceCheck(arg0, arg1, 0, 12) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 2.5, TARGET_ENE_0, true, -1, AI_DIR_TYPE_CENTER, 2)
    elseif local0 == false and local1 == true then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1, AI_DIR_TYPE_ToL, 400)
        local2:SetTargetRange(0, 2.5, 999)
    elseif local0 == true and local1 == false then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1, AI_DIR_TYPE_ToR, 400)
        local2:SetTargetRange(0, 2.5, 999)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1, AI_DIR_TYPE_ToL, 400)
        local2:SetTargetRange(0, 2.5, 999)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1, AI_DIR_TYPE_ToR, 400)
        local2:SetTargetRange(0, 2.5, 999)
    end
    if arg0:IsFinishTimer(0) == true and arg0:GetNumber(2) == 1 then
        arg0:SetTimer(0, 11)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackWolf200000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackWolf200000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BlackWolf_200000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:GetNumber(2) == 0 and arg1:IsTargetOutOfRangeInterruptSlot(0) and arg1:GetRandam_Int(1, 100) < 100 then
        arg2:ClearSubGoal()
        return true
    elseif GuardBreak_Act(arg1, arg2, 12, 75) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 0, -1)
        return true
    else
        return 
    end
end

RegisterTableGoal(GOAL_BlackWolf_200000_AfterAttackAct, "GOAL_BlackWolf_200000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackWolf_200000_AfterAttackAct, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 12)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    if GetNumber(2) == 0 then
        if 10 <= local0 then
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
            arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 30)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        elseif 4 <= local0 then
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 30)
            arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 50)
        else
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 60)
            arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 30)
            arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
        end
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
