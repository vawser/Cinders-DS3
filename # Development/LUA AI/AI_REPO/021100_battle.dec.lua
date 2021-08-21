RegisterTableGoal(GOAL_NPC_Funeral_Knight, "GOAL_NPC_Funeral_Knight")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Funeral_Knight, true)
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
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetMp(TARGET_SELF)
    local local7 = arg1:GetSp(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 103502000)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and 10 <= local4 and 0.99 <= local5 then
        local0[10] = 1000
    elseif local5 <= 0.6 and arg1:GetNumber(0) < 2 and not arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        if 6 <= local4 then
            local0[17] = 1000
        else
            local0[1] = 125
            local0[2] = 125
            local0[21] = 100
            local0[22] = 0
            local0[23] = 0
            local0[24] = 250
            local0[40] = 0
            local0[41] = 250
            local0[17] = 150
        end
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 130022401) and 6 <= local4 then
        local0[4] = 1000
    elseif local7 <= 40 and local4 <= 3.2 then
        local0[1] = 1
        local0[24] = 200
        local0[40] = 1
        local0[41] = 800
    elseif local7 <= 60 and 3.2 < local4 then
        local0[1] = 1
        local0[40] = 1000
        local0[41] = 1
    elseif 4 <= local4 then
        local0[1] = 250
        local0[2] = 250
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[15] = 0
        local0[20] = 500
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 0
        local0[41] = 0
    elseif 2.5 <= local4 then
        local0[1] = 200
        local0[2] = 200
        local0[3] = 100
        local0[4] = 0
        local0[5] = 0
        local0[15] = 0
        local0[20] = 200
        local0[21] = 0
        local0[22] = 200
        local0[23] = 0
        local0[24] = 0
        local0[40] = 100
        local0[41] = 0
    elseif 1 <= local4 then
        local0[1] = 200
        local0[2] = 150
        local0[3] = 100
        local0[4] = 0
        local0[5] = 200
        local0[15] = 100
        local0[20] = 0
        local0[21] = 100
        local0[22] = 0
        local0[23] = 150
        local0[24] = 0
        local0[40] = 0
        local0[41] = 0
    else
        local0[1] = 150
        local0[2] = 150
        local0[3] = 0
        local0[4] = 0
        local0[5] = 200
        local0[15] = 100
        local0[20] = 0
        local0[21] = 200
        local0[22] = 0
        local0[23] = 100
        local0[24] = 100
        local0[40] = 0
        local0[41] = 0
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 130022401) then
        local0[4] = local0[4] + 300
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) and local4 <= 3 then
        local0[15] = local0[15] + 500
    end
    if (arg1:GetWepCateRight(TARGET_ENE_0) == WEP_CATE_Wand or arg1:GetWepCateLeft(TARGET_ENE_0) == WEP_CATE_Wand) and not arg1:HasSpecialEffectId(TARGET_SELF, 103581000) and 3 <= local4 and 0.4 <= local5 then
        local0[16] = local0[16] + 500
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
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act05)
    local1[10] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act10)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act17)
    local1[19] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act24)
    local1[26] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_Funeral_Knight_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_Aruba_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_Funeral_Knight_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 3
    local local4 = 70
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 3.3
        local4 = 30
    end
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 10
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 10
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 3.3
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 100
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 0
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 3
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 30 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 4, 100, local4, 2, 4)
    if 20 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 4
    local local4 = 70
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 3.6
        local4 = 30
    end
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 10
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 10
            end
            if local0 <= local5 then
                local4 = 0
                DistToR1 = 3.6
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 100
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 0
            end
            if local0 <= local5 then
                local4 = 0
                DistToR1 = 4
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 30 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, DistToR1, DistToR1 + 2, DistToR1 + 4, 100, local4, 1.8, 2)
    if 35 <= local2 and 60 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act03(arg0, arg1, arg2)
    local local0 = 4.5
    local local1 = arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L2, TARGET_ENE_0, 3.3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L2, TARGET_ENE_0, 3.6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act05(arg0, arg1, arg2)
    local local0 = 1 + 1.5
    local local1 = arg0:GetSp(TARGET_SELF)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act10(arg0, arg1, arg2)
    NPC_Approach_Act_Flex(arg0, arg1, 5, 999, 999, 0, 0, 15, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act15(arg0, arg1, arg2)
    local local0 = 50
    if arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 50
    end
    NPC_Approach_Act_Flex(arg0, arg1, 1.4, 1.4 + 2, 1.4 + 2, 0, local0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act16(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(0)
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act17(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(1)
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act19(arg0, arg1, arg2)
    local local0 = 3
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 4, 75, 0, 2, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act20(arg0, arg1, arg2)
    local local0 = 3.5
    local local1 = 4.5
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 3.5
        local1 = 4.5
    end
    if arg0:GetDist(TARGET_ENE_0) <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, 1.5, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local0, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 3.5 + 1.5
        local local3 = 4.5 + 1.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3.5 + 1.5
            local3 = 4.5 + 1.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 75)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act22(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local0 = 3
        local local1 = 2.7
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 4
            local1 = 3.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act23(arg0, arg1, arg2)
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
        local local1 = 3
        local local2 = 2.7
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 4
            local2 = 3.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act24(arg0, arg1, arg2)
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
        local local0 = 3
        local local1 = 2.7
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 4
            local1 = 3.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 2, TARGET_ENE_0, local0, local1, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act40(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 50 then
        local0 = 1
    end
    local local1 = 75
    if arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 20
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= local1 and 30 <= arg0:GetSp(TARGET_SELF) then
        local2 = NPC_ATK_L1Hold
    end
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), local0, true, local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act41(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 50 then
        local0 = 1
    end
    local local1 = 75
    if arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 10
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= local1 and 30 <= arg0:GetSp(TARGET_SELF) then
        local2 = NPC_ATK_L1Hold
    end
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 2, TARGET_ENE_0, local0, local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Funeral_Knight_Act47(arg0, arg1, arg2)
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
    local local0 = arg1:GetSp(TARGET_SELF)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) and local1 < 1 then
        arg2:ClearSubGoal()
        local local4 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local4:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) and 20 <= local0 then
        NPC_Funeral_Knight_Act23(arg1, arg2, paramTbl)
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and local1 <= 6 and arg1:GetRandam_Int(1, 100) <= 60 then
        arg2:ClearSubGoal()
        if 3 <= local1 then
            if local2 <= 70 then
                NPC_Funeral_Knight_Act21(arg1, arg2, paramTbl)
            else
                NPC_Funeral_Knight_Act22(arg1, arg2, paramTbl)
            end
        else
            NPC_Funeral_Knight_Act22(arg1, arg2, paramTbl)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) then
        if local1 < 1.8 and local2 <= 60 then
            arg2:ClearSubGoal()
            NPC_Funeral_Knight_Act22(arg1, arg2)
            return true
        elseif local1 <= 3 and 20 <= local0 and local2 <= 40 then
            if local2 <= 20 then
                arg2:ClearSubGoal()
                NPC_Funeral_Knight_Act21(arg1, arg2, paramTbl)
                return true
            else
                arg2:ClearSubGoal()
                NPC_Funeral_Knight_Act22(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 103502000 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        return true
    else
        return false
    end
end

return 
