RegisterTableGoal(GOAL_NPCTest_Sword, "GOAL_NPCTest_Sword")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPCTest_Sword, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
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
    local local5 = arg1:GetSp(TARGET_SELF)
    if local5 <= 50 and local4 <= 2 then
        local0[24] = 20
        local0[40] = 1
        local0[41] = 80
    elseif local5 <= 50 then
        local0[40] = 100
        local0[41] = 1
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
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.5 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) then
        if local4 <= 5 then
            local0[1] = 5
            local0[2] = 5
            local0[21] = 20
            local0[22] = 0
            local0[23] = 0
            local0[24] = 30
            local0[41] = 40
        else
            local0[42] = 100
        end
    elseif 7 <= local4 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 0
        local0[4] = 20
        local0[5] = 30
        local0[15] = 0
        local0[20] = 20
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 0
        local0[41] = 0
    elseif 3 <= local4 then
        local0[1] = 40
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 20
        local0[23] = 0
        local0[24] = 0
        local0[25] = 20
        local0[40] = 10
        local0[41] = 0
    elseif 1 <= local4 then
        local0[1] = 40
        local0[2] = 10
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
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
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 20
        local0[22] = 20
        local0[23] = 0
        local0[24] = 20
        local0[40] = 20
        local0[41] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local0[25] = 0
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
    if local5 < 0 then
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act05)
    local1[15] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPCTest_Sword_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPCTest_Sword_ActAfter_AdjustSpace), local2)
    return 
end

function NPCTest_Sword_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 1.6
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 1.7
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
                local3 = 1.7
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 10
            end
            if local0 <= local5 then
                local4 = 100
                local3 = 1.6
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
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 40 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 20 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 2.2
    local local5 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 2.5
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
                DistToR1 = 2.5
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 30
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 - 10
            end
            if local0 <= local6 then
                local5 = 100
                DistToR1 = 2.2
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
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 35 <= local3 and 60 < local0 then
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

function NPCTest_Sword_Act03(arg0, arg1, arg2)
    local local0 = 2.7
    local local1 = 4.4
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and not arg0:IsBothHandMode(TARGET_SELF) and arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if local0 < local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local0, TARGET_SELF, false, NPC_ATK_L2Hold)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, 999, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 < local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, false, NPC_ATK_L2Hold)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act04(arg0, arg1, arg2)
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, 20, 20 + 2, 20 + 2, 0, 100, 1.8, 2)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local0 = 20
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act05(arg0, arg1, arg2)
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, 20, 20 + 2, 20 + 2, 0, 100, 1.8, 2)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
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

function NPCTest_Sword_Act15(arg0, arg1, arg2)
    NPC_Approach_Act_Flex(arg0, arg1, 2, 2 + 2, 2 + 2, 0, 100, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3
    local local2 = 2.5
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 4
        local2 = 4.5
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

function NPCTest_Sword_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local2 = 3
        local local3 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 4
            local3 = 4.5
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 4
            local3 = 4
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act22(arg0, arg1, arg2)
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
        local local0 = 1.2
        local local1 = 1.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 1.2
            local1 = 1.5
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

function NPCTest_Sword_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 1.2
        local local2 = 1.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 1.2
            local2 = 1.5
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

function NPCTest_Sword_Act24(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 then
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local0 = 1.2
        local local1 = 1.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 1.2
            local1 = 1.5
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

function NPCTest_Sword_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act40(arg0, arg1, arg2)
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

function NPCTest_Sword_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetSp(TARGET_SELF) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, NPC_ATK_L1Hold)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_Sword_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if GuardBreak_Act(arg1, arg2, 3.5, 100) then
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
        local local1 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 0.4, TARGET_SELF, false, 0)
        local1:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) then
        if arg1:GetRandam_Int(1, 100) <= 30 and arg1:GetDist(TARGET_ENE_0) <= 3 and not arg1:IsBothHandMode(TARGET_SELF) and arg1:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary and arg1:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, -1)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_SuccessParry) then
        local local1 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 0, TARGET_SELF, false, 0)
        local1:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
    end
    return false
end

return 
