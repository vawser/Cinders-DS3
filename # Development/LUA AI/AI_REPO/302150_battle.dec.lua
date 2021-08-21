RegisterTableGoal(GOAL_GiantGolem_302150_Battle, "GOAL_GiantGolem_302150_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantGolem_302150_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    arg1:SetEventMoveTarget(3902381)
    local local6 = arg1:GetDist(POINT_EVENT)
    if arg1:HasSpecialEffectId(TARGET_SELF, 12340) then
        local0[15] = 100
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904380) == true then
        if -5.6 <= local6 then
            local0[13] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[1] = 25
            local0[2] = 25
            local0[3] = 25
            local0[5] = 25
        else
            local0[12] = 100
        end
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904381) == true then
        if -5.6 <= local6 then
            local0[13] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[1] = 25
            local0[2] = 25
            local0[3] = 25
            local0[5] = 25
        else
            local0[12] = 100
        end
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904382) == true then
        if -5.6 <= local6 then
            local0[13] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[4] = 50
            local0[5] = 50
        else
            local0[12] = 100
        end
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904383) == true then
        if -5.6 <= local6 then
            local0[13] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[7] = 50
            local0[9] = 50
        else
            local0[12] = 100
        end
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904384) == true then
        if -5.6 <= local6 then
            local0[13] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[8] = 100
        else
            local0[12] = 100
        end
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904390) == true and not arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904391) and not arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904392) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[17] = 33
            local0[18] = 33
            local0[21] = 33
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[22] = 80
            local0[12] = 20
        else
            local0[12] = 100
        end
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904386) == true then
        if -5.6 <= local6 then
            local0[13] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[6] = 100
        else
            local0[12] = 100
        end
    elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904387) == true then
        if -5.6 <= local6 then
            local0[13] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[11] = 100
        else
            local0[12] = 100
        end
    elseif -5.8 <= local6 then
        local0[13] = 100
    else
        local0[14] = 100
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3007, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3009, 10, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3010, 10, local0[11], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3026, 10, local0[17], 1)
    local0[18] = SetCoolTime(arg1, arg2, 3027, 10, local0[18], 1)
    local0[19] = SetCoolTime(arg1, arg2, 3028, 10, local0[19], 1)
    local0[20] = SetCoolTime(arg1, arg2, 3029, 10, local0[20], 1)
    local0[21] = SetCoolTime(arg1, arg2, 3030, 10, local0[21], 1)
    local0[22] = SetCoolTime(arg1, arg2, 3031, 10, local0[22], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act23)
    local1[30] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, GiantGolem_302150_Act32)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GiantGolem_302150_ActAfter_AdjustSpace), local2)
    return 
end

function GiantGolem_302150_Act01(arg0, arg1, arg2)
    local local0 = 999
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act02(arg0, arg1, arg2)
    local local0 = 999
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act13(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3902381)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    local0:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_EVENT, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, -5.9, TARGET_SELF, true, -1)
    return 
end

function GiantGolem_302150_Act14(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3904395)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_EVENT, 1)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    local0:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 20001, POINT_EVENT, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act15(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3904395)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 30000, POINT_EVENT, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 20000, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.26, 999, 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act18(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.46, 999, 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act19(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.74, 999, 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act20(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.52, 999, 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act21(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.92, 999, 999, 0, 0, 3, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act23(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3904395)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_EVENT, 1)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act30(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_302150_Act32(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_302150_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 12340) and (arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904380) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904381) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904382) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904383) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904384) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904385) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904386) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904387) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904390) == true) then
        arg2:ClearSubGoal()
        GiantGolem_302150_Act16(arg1, arg2, paramTbl)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and (arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904380) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904381) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904382) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904383) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904384) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904385) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904386) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904387) == true or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904390) == true) and not arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904391) and not arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3904392) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    return 
end

return 
