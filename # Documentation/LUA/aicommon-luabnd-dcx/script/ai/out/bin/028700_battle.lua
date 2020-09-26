RegisterTableGoal(GOAL_NPC_SnakeShaman_Minion1, "GOAL_NPC_SnakeShaman_Minion1")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_SnakeShaman_Minion1, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_NPC_BlackGhost_Battle, 2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.6)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetDist(TARGET_ENE_0)
    local local5 = arg1:GetSp(TARGET_SELF)
    local local6 = arg1:GetNumber(0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 130201500)
    if arg1:IsBothHandMode(TARGET_SELF) then
        Madmode = 1
    else
        Madmode = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 130201500) and not arg1:IsBothHandMode(TARGET_SELF) then
        local0[48] = 100
    elseif arg1:GetMp(TARGET_SELF) <= 50 then
        if local4 <= 5 then
            local0[2] = 10
            local0[21] = 20
            local0[22] = 0
            local0[23] = 0
            local0[24] = 30
            local0[41] = 40
            local0[43] = 1
        else
            local0[43] = 100
        end
    elseif local5 < 10 then
        if 5 <= local4 then
            local0[1] = 10
            local0[2] = 1
            local0[22] = 20
            local0[40] = 20
        else
            local0[1] = 10
            local0[2] = 1
            local0[22] = 20
            local0[40] = 20
        end
    elseif 5 <= local4 then
        local0[1] = 30
        local0[2] = 10
        local0[3] = 0
        local0[4] = 30
        local0[5] = 0
        local0[20] = 30 * Madmode
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 0
        local0[41] = 0
    elseif 3 <= local4 then
        local0[1] = 30
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 10
        local0[23] = 10
        local0[24] = 0
        local0[25] = 0
        local0[40] = 40
        local0[41] = 0
    elseif 1 <= local4 then
        local0[1] = 40
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[20] = 0
        local0[21] = 20
        local0[22] = 20
        local0[23] = 0
        local0[24] = 10
        local0[25] = 0
        local0[40] = 0
        local0[41] = 0
    else
        local0[1] = 30
        local0[2] = 20
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
        local0[20] = 0
        local0[21] = 20
        local0[22] = 10
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 0
        local0[41] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local0[25] = 0
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) then
        local0[2] = local0[2] + 10
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        local0[21] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, -135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        local0[41] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 1) == false and SpaceCheck(arg1, arg2, 90, 1) == false then
        local0[40] = 0
    end
    if local5 < 20 then
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act06)
    local1[19] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act25)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act47)
    local1[48] = REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_Act48)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_SnakeShaman_Minion1_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_SnakeShaman_Minion1_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 3.4
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2.8
        local4 = 100
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    if arg0:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local5, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local5 + 3, TARGET_ENE_0, false, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 3.4
    local local3 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 2.8
        local3 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2 + 0
    local local5 = 999
    local local6 = 0
    if local1 < 40 then
        local3 = 0
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = local2
        local5 = local2
        local6 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, local2, local4, local5, local6, local3, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local3 and local2 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 100 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 60 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 3.8
    local local3 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 4
        local3 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2 + 0
    local local5 = 999
    local local6 = 0
    if local1 < 40 then
        local3 = 0
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = local2
        local5 = local2
        local6 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, local2, local4, local5, local6, local3, 1.8, 2)
    if local0 <= 50 and 0 < local3 and local2 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 80 <= local1 and 67 < arg0:GetRandam_Int(1, 100) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local0 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 1.4
        local4 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3 + 0
    local local6 = 999
    local local7 = 0
    if arg0:GetSp(TARGET_SELF) < 30 then
        local4 = 0
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        local5 = local3
        local6 = local3
        local7 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local5, local6, local7, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 5.6
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 5.8
        local4 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3 + 0
    local local6 = 999
    local local7 = 0
    if arg0:GetSp(TARGET_SELF) < 40 then
        local4 = 0
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        local5 = local3
        local6 = local3
        local7 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local5, local6, local7, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 0
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    local local6 = local3 + 0
    local local7 = local3 + 2
    local local8 = 100
    local local9 = 1.8
    local local10 = 2
    if arg0:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 0
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    local local6 = local3 + 0
    local local7 = local3 + 2
    local local8 = 100
    local local9 = 1.8
    local local10 = 2
    if arg0:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 3.8
    local local3 = 4
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 3.6
        local3 = -1
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2
    if arg0:GetSp(TARGET_SELF) < 40 then
        local3 = -1
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 60 < arg0:GetSp(TARGET_SELF) then
        local local2 = 3.8
        local local3 = 1.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3.6
            local3 = 1.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act22(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 100 and 70 < arg0:GetSp(TARGET_SELF) then
        local local0 = 4.8
        local local1 = 4.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 3.8
            local1 = 3.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act23(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 100 and 70 < arg0:GetSp(TARGET_SELF) then
        local local1 = 4.8 - 2
        local local2 = 4.8 - 2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 3.8 - 2
            local2 = 3.8 - 2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act24(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 100 and 70 < arg0:GetSp(TARGET_SELF) then
        local local0 = 4.8 - 4
        local local1 = 4.8 - 4
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 3.8 - 4
            local1 = 3.8 - 4
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(3)
    arg0:SetStringIndexedNumber("Firebomb", arg0:GetStringIndexedNumber("Firebomb") - 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 10
    local local3 = 0
    local local4 = 2.5
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 0 then
            Guard = NPC_ATK_L1Hold
        end
        local3 = 999
    elseif local2 <= local1 and local0 <= 100 then
        Guard = NPC_ATK_L1Hold
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
    if arg0:GetDist(TARGET_ENE_0) < local3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), false, true, NPC_ATK_L1Hold)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 30
    local local3 = 0
    local local4 = 1.8
    local local5 = 5
    local local6 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 0 then
            local6 = NPC_ATK_L1Hold
        end
        local3 = 999
    elseif local2 <= local1 and local0 <= 100 then
        local6 = NPC_ATK_L1Hold
    end
    if arg0:GetDist(TARGET_ENE_0) < local3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, local5, TARGET_ENE_0, false, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, local5, TARGET_ENE_0, true, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetDist(TARGET_ENE_0) < 3 and 20 <= arg1:GetSp(TARGET_SELF) and arg1:GetRandam_Int(1, 100) <= 50 then
        arg2:ClearSubGoal()
        NPC_SnakeShaman_Minion1_Act40(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

return 
