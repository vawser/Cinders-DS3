RegisterTableGoal(GOAL_NPC_Lothric_Secret_MessengerB_Sword, "GOAL_NPC_Lothric_Secret_MessengerB_Sword")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Lothric_Secret_MessengerB_Sword, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetEventRequest(2)
    if arg1:GetNpcThinkParamID() == 27520 and local0 ~= 99 then
        arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3302805)
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    elseif arg1:GetNpcThinkParamID() == 27521 and local0 ~= 99 then
        arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3702852)
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.6)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local1 = {}
    local local2 = {}
    local local3 = {}
    Common_Clear_Param(local1, local2, local3)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetDist(TARGET_ENE_0)
    local local6 = arg1:GetSp(TARGET_SELF)
    local local7 = arg1:GetNumber(0)
    if local0 == 99 then
        local1[46] = 100
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.5 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) then
        if 5 <= local5 then
            local1[42] = 100
        else
            local1[1] = 1
            local1[2] = 1
            local1[21] = 20
            local1[22] = 0
            local1[23] = 0
            local1[24] = 40
            local1[41] = 40
            local1[42] = 25
        end
    elseif local6 < 40 then
        if 5 <= local5 then
            local1[1] = 1
            local1[2] = 1
            local1[40] = 10
            local1[41] = 0
        else
            local1[1] = 1
            local1[2] = 1
            local1[24] = 10
            local1[40] = 0
            local1[41] = 20
        end
    elseif 7 <= local5 then
        local1[1] = 0
        local1[2] = 0
        local1[3] = 0
        local1[4] = 20
        local1[5] = 80
        local1[6] = 60
        local1[7] = 10
        local1[20] = 20
        local1[21] = 0
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 20
        local1[41] = 0
    elseif 5 <= local5 then
        local1[1] = 10
        local1[2] = 10
        local1[3] = 0
        local1[4] = 20
        local1[5] = 10
        local1[6] = 70
        local1[7] = 50
        local1[20] = 0
        local1[21] = 0
        local1[22] = 10
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 20
        local1[41] = 0
    elseif 3 <= local5 then
        local1[1] = 20
        local1[2] = 40
        local1[3] = 0
        local1[4] = 0
        local1[5] = 40
        local1[6] = 0
        local1[7] = 0
        local1[20] = 0
        local1[21] = 0
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 0
        local1[41] = 10
    elseif 1 <= local5 then
        local1[1] = 40
        local1[2] = 20
        local1[3] = 0
        local1[4] = 0
        local1[5] = 40
        local1[6] = 0
        local1[7] = 0
        local1[20] = 0
        local1[21] = 20
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 0
        local1[41] = 10
    else
        local1[1] = 40
        local1[2] = 20
        local1[3] = 0
        local1[4] = 0
        local1[5] = 40
        local1[6] = 0
        local1[7] = 0
        local1[20] = 0
        local1[21] = 20
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 0
        local1[41] = 10
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local1[25] = 0
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) then
        local1[5] = local1[5] + 10
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        local1[21] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[23] = 0
    end
    if SpaceCheck(arg1, arg2, -135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        local1[41] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 1) == false and SpaceCheck(arg1, arg2, 90, 1) == false then
        local1[40] = 0
    end
    if local6 < 20 then
        local1[20] = 0
        local1[21] = 0
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
    end
    local2[1] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act01)
    local2[2] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act02)
    local2[3] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act03)
    local2[4] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act04)
    local2[5] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act05)
    local2[6] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act06)
    local2[7] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act07)
    local2[20] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act20)
    local2[21] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act21)
    local2[22] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act22)
    local2[23] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act23)
    local2[24] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act24)
    local2[25] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act25)
    local2[40] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act40)
    local2[41] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act41)
    local2[42] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act42)
    local2[43] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act43)
    local2[44] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act44)
    local2[45] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act45)
    local2[46] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act46)
    local2[47] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_Act47)
    Common_Battle_Activate(arg1, arg2, local1, local2, REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerB_Sword_ActAfter_AdjustSpace), local3)
    return 
end

function NPC_Lothric_Secret_MessengerB_Sword_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    if arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local3 = 2.8
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2.8
        local4 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local1 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 50
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 2.8
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 25
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 2.8
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 60 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local4 and local3 <= local1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 120 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 60 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    if arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = 3
    local local5 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 3
        local5 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local2 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 + 50
            end
            if local0 <= local6 then
                local5 = 0
                local4 = 3
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 - 25
            end
            if local0 <= local6 then
                local5 = 0
                local4 = 3
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local3 < 60 then
        local5 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local4, local4 + 0, local4 + 2, 100, local5, 1.8, 2)
    if local1 <= 50 and 0 < local5 and local4 <= local2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 60 <= local3 and 67 < local0 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local3 = 2
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2
        local4 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local3 = 5.4
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 5.4
        local4 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 0
    local local5 = 2.2
    if 50 < local0 then
        local5 = 2.6
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local3 < 60 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local5, local5 + 0, local5 + 2, 100, local4, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local4 and local5 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if local0 <= 50 then
        if 60 <= local3 and 67 < local1 then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, local5, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, local5, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, local5, 0, 0)
        end
    elseif 60 <= local3 and 67 < local1 then
        if local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act06(arg0, arg1, arg2)
    NPC_Approach_Act_Flex(arg0, arg1, 20, 20 + 2, 20 + 4, 0, 100, 1.8, 2)
    if arg0:IsBothHandMode(TARGET_SELF) and not arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    elseif not arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    end
    local local0 = 20
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.5, TARGET_ENE_0, local2, arg0:GetRandam_Int(75, 90), false, true, NPC_ATK_R1_Hold)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.5, TARGET_ENE_0, local2, arg0:GetRandam_Int(75, 90), false, true, 0)
    return 
end

function NPC_Lothric_Secret_MessengerB_Sword_Act07(arg0, arg1, arg2)
    NPC_Approach_Act_Flex(arg0, arg1, 20, 20 + 2, 20 + 4, 0, 100, 1.8, 2)
    if arg0:IsBothHandMode(TARGET_SELF) and not arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    elseif not arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 100130) then
        local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, 1.3, TARGET_ENE_0, 0, 0, 0)
        local0:SetLifeEndSuccess(true)
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
        local0:SetLifeEndSuccess(true)
    end
    local local0 = 20
    local local1 = arg0:GetRandam_Int(1, 100)
    if 60 < arg0:GetSp(TARGET_SELF) then
        local local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        local2:SetLifeEndSuccess(true)
        local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        local2:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 139995) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local2 = 3
    local local3 = -1
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 3
        local3 = -1
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= arg0:GetDist(TARGET_ENE_0) then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local4 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local4 = local4 + 50
            end
            if local0 <= local4 then
                local3 = -1
                local2 = 3
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local4 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local4 = local4 - 25
            end
            if local0 <= local4 then
                local3 = -1
                local2 = 3
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    local local4 = local2
    if arg0:GetSp(TARGET_SELF) < 60 then
        local3 = -1
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 60 < arg0:GetSp(TARGET_SELF) then
        local local2 = 3
        local local3 = 0.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3
            local3 = 0.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act22(arg0, arg1, arg2)
    if 5 <= arg0:GetDist(TARGET_ENE_0) and SpaceCheck(arg0, arg1, 0, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 100 and 60 < arg0:GetSp(TARGET_SELF) then
        local local0 = 6.4
        local local1 = 6.2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 6.4
            local1 = 6.2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 100 and 60 < arg0:GetSp(TARGET_SELF) then
        local local1 = 6.4 - 2
        local local2 = 6.2 - 2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 6.4 - 2
            local2 = 6.2 - 2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act24(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 and SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 100 and 60 < arg0:GetSp(TARGET_SELF) then
        local local0 = 6.4 - 4
        local local1 = 6.2 - 4
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 6.4 - 4
            local1 = 6.2 - 4
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(3)
    arg0:SetStringIndexedNumber("Firebomb", arg0:GetStringIndexedNumber("Firebomb") - 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 40
    local local3 = 1.8
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 0 then
            local4 = NPC_ATK_L1Hold
        end
    elseif local2 <= local1 and local0 <= 0 then
        local4 = NPC_ATK_L1Hold
    end
    local local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local5 = 0
            else
                local5 = 1
            end
        else
            local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local5 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    if arg0:GetDist(TARGET_ENE_0) < 5 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), false, true, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), true, true, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 40
    local local3 = 1.8
    local local4 = 5
    local local5 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 0 then
            local5 = NPC_ATK_L1Hold
        end
    elseif local2 <= local1 and local0 <= 0 then
        local5 = NPC_ATK_L1Hold
    end
    if arg0:GetDist(TARGET_ENE_0) < 5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, local4, TARGET_ENE_0, false, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, local4, TARGET_ENE_0, true, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act46(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_Gesture18, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerB_Sword_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetSp(TARGET_SELF)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) and 20 <= local0 then
        if arg1:IsBothHandMode(TARGET_SELF) then
            if local1 <= 50 then
                arg2:ClearSubGoal()
                NPC_Lothric_Secret_MessengerB_Sword_Act23(arg1, arg2)
                return true
            end
        elseif local1 <= 50 then
            arg2:ClearSubGoal()
            NPC_Lothric_Secret_MessengerB_Sword_Act23(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetDist(TARGET_ENE_0) < 1.4 and 40 <= local0 then
        if arg1:IsBothHandMode(TARGET_SELF) then
            if local1 <= 50 then
                arg2:ClearSubGoal()
                NPC_Lothric_Secret_MessengerB_Sword_Act23(arg1, arg2)
                return true
            end
        elseif local1 <= 50 then
            arg2:ClearSubGoal()
            NPC_Lothric_Secret_MessengerB_Sword_Act23(arg1, arg2)
            return true
        end
    end
    return false
end

return 
