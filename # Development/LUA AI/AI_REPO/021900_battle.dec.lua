RegisterTableGoal(GOAL_NPC_Sand_Witch, "GOAL_NPC_Sand_Witch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Sand_Witch, true)
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
    local local5 = arg1:GetMp(TARGET_SELF)
    local local6 = arg1:GetSp(TARGET_SELF)
    if arg1:GetHpRate(TARGET_SELF) <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) and not arg1:HasSpecialEffectId(TARGET_SELF, 3150) then
        if 5 <= local4 then
            local0[42] = 1000
        else
            local0[1] = 100
            local0[21] = 100
            local0[22] = 0
            local0[23] = 0
            local0[24] = 300
            local0[40] = 0
            local0[41] = 300
            local0[42] = 200
        end
    elseif local6 <= 45 and local4 <= 3.2 then
        local0[1] = 1
        local0[24] = 200
        local0[40] = 1
        local0[41] = 800
    elseif local6 <= 75 and 3.2 < local4 then
        local0[1] = 1
        local0[40] = 1000
        local0[41] = 1
    elseif 8 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[8] = 0
        local0[9] = 800
        local0[10] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 200
        local0[41] = 0
    elseif 6 <= local4 then
        local0[1] = 50
        local0[2] = 50
        local0[3] = 0
        local0[8] = 0
        local0[9] = 600
        local0[10] = 50
        local0[15] = 0
        local0[20] = 100
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 250
        local0[41] = 0
    elseif 3 <= local4 then
        local0[1] = 150
        local0[2] = 100
        local0[3] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 500
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 150
        local0[40] = 100
        local0[41] = 0
    elseif 1.5 <= local4 then
        local0[1] = 50
        local0[2] = 0
        local0[3] = 0
        local0[8] = 50
        local0[9] = 0
        local0[10] = 300
        local0[15] = 0
        local0[20] = 0
        local0[21] = 100
        local0[22] = 0
        local0[23] = 50
        local0[24] = 200
        local0[40] = 0
        local0[41] = 100
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[15] = local0[15] + 300
        end
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[8] = 150
        local0[9] = 0
        local0[10] = 300
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 50
        local0[40] = 0
        local0[41] = 50
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local0[15] = local0[15] + 300
        end
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
    if local6 <= 0 then
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act03)
    local1[8] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act10)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act24)
    local1[26] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act47)
    local1[50] = REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_Act50)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_Sand_Witch_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_Sand_Witch_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 4.5
    local local3 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 4.2
        local3 = 0
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) and arg0:IsBothHandMode(TARGET_SELF) and arg0:GetRandam_Int(1, 100) <= 100 then
        local3 = 0
        local2 = 4.5
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local1 < 20 then
        local3 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local2, local2 + 2, local2 + 4, 100, local3, 1.8, 2)
    if 50 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 4.5
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 5.8
        local4 = 0
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) and arg0:IsBothHandMode(TARGET_SELF) and local0 <= 100 then
        local4 = 0
        DistToR1 = 4.5
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local2 < 20 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, DistToR1, DistToR1 + 2, DistToR1 + 4, 100, local4, 1.8, 2)
    if 35 <= local2 and 50 < local0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act03(arg0, arg1, arg2)
    local local0 = 5.2
    local local1 = arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act08(arg0, arg1, arg2)
    local local0 = 1.2 + 0
    local local1 = arg0:GetSp(TARGET_SELF)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 2, 70, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act09(arg0, arg1, arg2)
    local local0 = 12 + 0.5
    local local1 = arg0:GetSp(TARGET_SELF)
    arg0:ChangeEquipMagic(0)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 999, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act10(arg0, arg1, arg2)
    local local0 = 3 + 0.5
    arg0:ChangeEquipMagic(1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetDist(TARGET_ENE_0) < 2.5 then
        local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        local1:SetTargetRange(0, 0, 3 + 1.7)
    else
        NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 4, 70, 0, 1.8, 2)
    end
    if 40 < arg0:GetSp(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 3 + 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 3 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 3 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act15(arg0, arg1, arg2)
    local local0 = 1.4
    local local1 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 2, 70, local1, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act20(arg0, arg1, arg2)
    local local0 = 5.2
    local local1 = 5.2
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 5.3
        local1 = 5.2
    end
    if arg0:GetDist(TARGET_ENE_0) <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, 0)
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

function NPC_Sand_Witch_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 5.2
        local local3 = 4.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 5.3
            local3 = 5.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetMp(TARGET_SELF)
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
        local local1 = 4.7
        local local2 = 3.3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 4.9
            local2 = 4.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetMp(TARGET_SELF)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 4.7
        local local3 = 3.3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 4.9
            local3 = 4.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetMp(TARGET_SELF)
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 4.7
        local local3 = 3.3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 4.9
            local3 = 4.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 2, TARGET_ENE_0, local2, local3, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(1, 1.5)
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local1 = 1
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local2 = 9910
    end
    if arg0:GetRandam_Int(1, 100) <= 0 and 0 < arg0:GetSp(TARGET_SELF) then
        local2 = NPC_ATK_L2Hold
        local0 = local0 + 0.5
        if not arg0:IsBothHandMode(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), local1, true, local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act41(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 1
    end
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local1 = 9910
    end
    if arg0:GetRandam_Int(1, 100) <= 0 and 0 < arg0:GetSp(TARGET_SELF) then
        local1 = NPC_ATK_L2Hold
        if not arg0:IsBothHandMode(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 2, TARGET_ENE_0, local0, local1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_Act50(arg0, arg1, arg2)
    local local0 = 1.4
    local local1 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 2, 70, local1, 1.8, 2)
    arg0:ChangeEquipMagic(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 131, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Sand_Witch_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local0 < 1.5 then
        arg2:ClearSubGoal()
        NPC_Sand_Witch_Act10(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) and local0 < 1.8 and 80 <= arg1:GetSp(TARGET_SELF) then
        arg2:ClearSubGoal()
        if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) then
            if local1 <= 70 then
                NPC_Sand_Witch_Act10(arg1, arg2)
            else
                NPC_Sand_Witch_Act24(arg1, arg2)
            end
        else
            NPC_Sand_Witch_Act23(arg1, arg2)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if local1 <= 50 then
            NPC_Sand_Witch_Act23(arg1, arg2, paramTbl)
        elseif local1 <= 75 then
            NPC_Sand_Witch_Act22(arg1, arg2, paramTbl)
        end
        return true
    else
        return false
    end
end

return 
