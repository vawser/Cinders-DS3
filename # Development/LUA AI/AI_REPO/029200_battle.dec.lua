RegisterTableGoal(GOAL_NPC_Tarukas, "GOAL_NPC_Tarukas")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Tarukas, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetEventRequest(2)
    if arg1:GetNpcThinkParamID() == 29220 and local0 ~= 99 then
        arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3802835)
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local1 = {}
    local local2 = {}
    local local3 = {}
    Common_Clear_Param(local1, local2, local3)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetDist(TARGET_ENE_0)
    local local6 = arg1:GetHpRate(TARGET_SELF)
    local local7 = arg1:GetMp(TARGET_SELF)
    local local8 = arg1:GetSp(TARGET_SELF)
    if local0 == 99 then
        local1[46] = 100
    elseif local8 < 40 then
        if 5 <= local5 then
            local1[1] = 1
            local1[2] = 1
            local1[40] = 10
            local1[41] = 0
        else
            local1[1] = 1
            local1[2] = 1
            local1[24] = 0
            local1[40] = 0
            local1[41] = 20
        end
    elseif 7 <= local5 then
        local1[1] = 30
        local1[2] = 10
        local1[3] = 10
        local1[15] = 0
        local1[20] = 50
        local1[21] = 0
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[40] = 0
        local1[41] = 0
    elseif 3 <= local5 then
        local1[1] = 40
        local1[2] = 10
        local1[3] = 10
        local1[15] = 0
        local1[20] = 10
        local1[21] = 0
        local1[22] = 10
        local1[23] = 0
        local1[24] = 0
        local1[40] = 20
        local1[41] = 0
    elseif 1 <= local5 then
        local1[1] = 35
        local1[2] = 10
        local1[3] = 15
        local1[15] = 0
        local1[20] = 0
        local1[21] = 10
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[40] = 30
        local1[41] = 0
    else
        local1[1] = 25
        local1[2] = 10
        local1[3] = 15
        local1[15] = 0
        local1[20] = 0
        local1[21] = 5
        local1[22] = 0
        local1[23] = 0
        local1[24] = 5
        local1[40] = 25
        local1[41] = 15
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local1[15] = 100
        end
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        local1[21] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[23] = 0
    end
    if SpaceCheck(arg1, arg2, -135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[24] = 0
    end
    if local8 < 20 then
        local1[20] = 0
        local1[21] = 0
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
    end
    local2[1] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act01)
    local2[2] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act02)
    local2[3] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act03)
    local2[4] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act04)
    local2[5] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act05)
    local2[15] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act15)
    local2[20] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act20)
    local2[21] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act21)
    local2[22] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act22)
    local2[23] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act23)
    local2[24] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act24)
    local2[25] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act25)
    local2[26] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act26)
    local2[40] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act40)
    local2[41] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act41)
    local2[42] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act42)
    local2[43] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act43)
    local2[44] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act44)
    local2[45] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act45)
    local2[46] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act46)
    local2[47] = REGIST_FUNC(arg1, arg2, NPC_Tarukas_Act47)
    Common_Battle_Activate(arg1, arg2, local1, local2, REGIST_FUNC(arg1, arg2, NPC_Tarukas_ActAfter_AdjustSpace), local3)
    return 
end

function NPC_Tarukas_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 3
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 3
        local4 = 100
    end
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local1 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 30
            end
            if local0 <= local5 then
                local4 = 100
                local3 = 3
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 10
            end
            if local0 <= local5 then
                local4 = 100
                local3 = 3
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 4, 50, local4, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local4 and local3 <= local1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 109 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 55 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 3.7
    local local5 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 3.8
        local5 = 100
    end
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local2 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 + 30
            end
            if local0 <= local6 then
                local5 = 100
                DistToR1 = 3.8
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 - 10
            end
            if local0 <= local6 then
                local5 = 100
                DistToR1 = 3.7
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local3 < 50 then
        local5 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, DistToR1, DistToR1 + 2, DistToR1 + 4, 50, local5, 1.8, 2)
    if local1 <= 50 and 0 < local5 and DistToR1 <= local2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 74 <= local3 and 60 < local0 then
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
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act03(arg0, arg1, arg2)
    local local0 = 4
    local local1 = 4
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg0:SetTimer(0, 4)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if local0 < local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local0, TARGET_SELF, false)
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, 999, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, 999, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 < local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, false)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act15(arg0, arg1, arg2)
    NPC_Approach_Act_Flex(arg0, arg1, 0.9, 0.9 + 2, 0.9 + 2, 0, 100, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3
    local local2 = 3
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 3
        local2 = 3
    end
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, 4)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local2, TARGET_SELF, 4)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local2 = 3
        local local3 = 3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3
            local3 = 3
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3
            local3 = 3
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act22(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 20 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local0 = 2.5
        local local1 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 2.5
            local1 = 2.5
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

function NPC_Tarukas_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 20 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 2.5
        local local2 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2.5
            local2 = 2.5
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

function NPC_Tarukas_Act24(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 20 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local0 = 2.5
        local local1 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 2.5
            local1 = 2.5
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

function NPC_Tarukas_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetSp(TARGET_SELF) <= 40 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.7, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.7, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.7, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.7, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetSp(TARGET_SELF) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, NPC_ATK_L1Hold)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act46(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_Gesture15, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Tarukas_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local1 < 1.5 then
        arg2:ClearSubGoal()
        local local4 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.15, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local4:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    end
    local local4 = 2.5
    local local5 = 4
    if local1 < local4 and 1 <= local0 and local2 <= 10 and arg1:IsBothHandMode(TARGET_SELF) and arg1:IsInterupt(INTERUPT_ParryTiming) and arg1:IsFinishTimer(0) then
        if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == true and SpaceCheck(arg1, arg2, 270, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
            if local3 <= 30 and SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                arg2:ClearSubGoal()
                NPC_Tarukas_Act24(arg1, arg2)
            elseif local3 <= 70 then
                arg2:ClearSubGoal()
                NPC_Tarukas_Act23(arg1, arg2)
            else
                arg2:ClearSubGoal()
                NPC_Tarukas_Act22(arg1, arg2)
            end
        elseif SpaceCheck(arg1, arg2, -180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
            arg2:ClearSubGoal()
            NPC_Tarukas_Act24(arg1, arg2)
        elseif SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == true or SpaceCheck(arg1, arg2, 270, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
            arg2:ClearSubGoal()
            NPC_Tarukas_Act23(arg1, arg2)
        else
            arg2:ClearSubGoal()
            NPC_Tarukas_Act22(arg1, arg2)
        end
        arg1:SetTimer(0, 2)
        return true
    elseif local1 < local5 and local4 < local1 and local2 <= 30 and arg1:IsInterupt(INTERUPT_FindAttack) and SpaceCheck(arg1, arg2, -180, arg1:GetStringIndexedNumber("Dist_BackStep")) == true and arg1:IsFinishTimer(0) then
        if 12 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        elseif 1 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
        arg1:SetTimer(0, 2)
        return true
    elseif local1 < local5 and local2 <= 80 and 26 <= local0 and 0.25 <= arg1:GetHpRate(TARGET_SELF) and arg1:IsInterupt(INTERUPT_FindAttack) and arg1:IsFinishTimer(0) then
        if not arg1:IsBothHandMode(TARGET_SELF) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
            arg1:SetTimer(0, 2)
        elseif arg1:IsBothHandMode(TARGET_SELF) then
            arg2:ClearSubGoal()
            NPC_Tarukas_Act03(arg1, arg2)
            arg1:SetTimer(0, 4)
            return true
        end
    elseif local1 < local5 and 25 <= local0 and local2 <= 100 and arg1:IsInterupt(INTERUPT_ParryTiming) and arg1:IsFinishTimer(0) then
        if local3 <= 70 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, NPC_ATK_L1Hold)
            local local6 = arg1
            local local7 = arg1["SetTimer"]
            local local8 = 0
            local local9 = 2
            arg1:SetTimer(0, 2)
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, NPC_ATK_L1Hold)
            return true
        end
    end
    return false
end

return 
