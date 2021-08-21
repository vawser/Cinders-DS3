RegisterTableGoal(GOAL_NPC_Aruba, "GOAL_NPC_Aruba")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Aruba, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_NPC_BlackGhost_Battle, 2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetDist(TARGET_ENE_0)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetMp(TARGET_SELF)
    local local7 = arg1:GetSp(TARGET_SELF)
    if local7 <= 20 and local4 <= 3.2 then
        local0[1] = 1
        local0[24] = 20
        local0[40] = 1
        local0[41] = 80
    elseif local7 <= 20 then
        local0[1] = 1
        local0[4] = 60
        local0[40] = 40
        local0[41] = 1
    elseif 4 <= local4 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 0
        local0[4] = 40
        local0[15] = 0
        local0[20] = 20
        local0[21] = 0
        local0[22] = 0
        local0[23] = 20
        local0[24] = 0
        local0[40] = 0
        local0[41] = 0
    elseif 2.5 <= local4 then
        local0[1] = 0
        local0[2] = 40
        local0[3] = 20
        local0[4] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 20
        local0[23] = 0
        local0[24] = 0
        local0[40] = 20
        local0[41] = 0
    elseif 1 <= local4 then
        local0[1] = 40
        local0[2] = 10
        local0[3] = 20
        local0[4] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 20
        local0[23] = 10
        local0[24] = 0
        local0[40] = 0
        local0[41] = 0
    else
        local0[1] = 10
        local0[2] = 0
        local0[3] = 40
        local0[4] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 20
        local0[23] = 0
        local0[24] = 30
        local0[40] = 0
        local0[41] = 0
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) then
        local0[3] = local0[3] + 10
        local0[15] = local0[15] + 10
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        local0[21] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, -135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local0[24] = 0
    end
    if local7 <= 0 then
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act04)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act24)
    local1[26] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_Aruba_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_Aruba_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_Aruba_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 1.93
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 1.2
        local4 = 100
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 30
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 1.2
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 70
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 10
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 1.93
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 20 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 4, 100, local4, 1.8, 2)
    if 20 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 1.86
    local local5 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 1.5
        local5 = 100
    end
    if 3 <= local2 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 + 30
            end
            if local0 <= local6 then
                local5 = 0
                DistToR1 = 1.5
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 - 10
            end
            if local0 <= local6 then
                local5 = 0
                DistToR1 = 1.86
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local3 < 20 then
        local5 = 0
    end
    if 2.5 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 11, TARGET_ENE_0, local4, 0, 0)
    else
        NPC_Approach_Act_Flex(arg0, arg1, DistToR1, DistToR1 + 2, DistToR1 + 4, 100, local5, 1.8, 2)
        if 35 <= local3 and 60 < local0 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act03(arg0, arg1, arg2)
    local local0 = 4.3
    local local1 = 5.9
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1.5, TARGET_SELF, false, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(arg0, arg1, 20, 20 + 2, 20 + 2, 0, 0, 1.8, 2)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local1 = 20
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    if 1 <= local0 and SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif 1 <= local0 and SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif 1 <= local0 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act15(arg0, arg1, arg2)
    local local0 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, 1.4, 1.4 + 2, 1.4 + 2, 0, local0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3.5
    local local2 = 3.1
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 2.18
        local2 = 3.67
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local2, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local2 = 3.5
        local local3 = 3.1
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 2.18
            local3 = 3.67
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 2.18
            local3 = 2.18
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act22(arg0, arg1, arg2)
    if 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local0 = 1.7
        local local1 = 2.2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 1.4
            local1 = 1.6
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 20
            local1 = 20
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 100)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act23(arg0, arg1, arg2)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if 4 <= arg0:GetDist(TARGET_ENE_0) then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local0 = 1.7
        local local1 = 2.2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 1.4
            local1 = 1.6
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 20
            local1 = 20
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if 4 <= local0 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 1.7
        local local2 = 2.2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 1.4
            local2 = 1.6
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 20
            local2 = 20
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, false, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetSp(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Aruba_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local0 < 1 then
        arg2:ClearSubGoal()
        local local2 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local2:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) then
        if local0 < 1.8 and local1 <= 60 then
            arg2:ClearSubGoal()
            NPC_Aruba_Act22(arg1, arg2)
            return true
        elseif local0 <= 3 and 20 <= arg1:GetSp(TARGET_SELF) and local1 <= 40 then
            if local1 <= 20 then
                arg2:ClearSubGoal()
                NPC_GenericB_Act21(arg1, arg2, paramTbl)
                return true
            else
                arg2:ClearSubGoal()
                NPC_Aruba_Act22(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    return false
end

return 
