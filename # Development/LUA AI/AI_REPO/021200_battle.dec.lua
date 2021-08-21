RegisterTableGoal(GOAL_NPC_Retired_WitchDoctor, "GOAL_NPC_Retired_WitchDoctor")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Retired_WitchDoctor, true)
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
    elseif local6 <= 20 and local4 <= 3.2 then
        local0[1] = 1
        local0[24] = 200
        local0[40] = 1
        local0[41] = 800
    elseif local6 <= 60 and 3.2 < local4 then
        local0[1] = 1
        local0[40] = 1000
        local0[41] = 1
    elseif 7.5 <= local4 then
        local0[1] = 50
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[5] = 400
        local0[6] = 300
        local0[7] = 0
        local0[8] = 0
        local0[15] = 0
        local0[20] = 200
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 0
        local0[41] = 0
    elseif 5 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 400
        local0[6] = 300
        local0[7] = 0
        local0[8] = 0
        local0[15] = 0
        local0[20] = 100
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 100
        local0[41] = 100
    elseif 3 <= local4 then
        local0[1] = 50
        local0[2] = 50
        local0[3] = 50
        local0[4] = 50
        local0[5] = 150
        local0[6] = 200
        local0[7] = 0
        local0[8] = 0
        local0[15] = 0
        local0[20] = 50
        local0[21] = 100
        local0[22] = 50
        local0[23] = 0
        local0[24] = 50
        local0[40] = 50
        local0[41] = 150
    elseif 1 <= local4 then
        local0[1] = 50
        local0[2] = 50
        local0[3] = 50
        local0[4] = 50
        local0[5] = 0
        local0[6] = 0
        local0[7] = 50
        local0[8] = 200
        local0[15] = 50
        local0[20] = 0
        local0[21] = 100
        local0[22] = 0
        local0[23] = 50
        local0[24] = 100
        local0[40] = 50
        local0[41] = 200
    else
        local0[1] = 100
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 50
        local0[8] = 250
        local0[15] = 50
        local0[20] = 0
        local0[21] = 100
        local0[22] = 0
        local0[23] = 0
        local0[24] = 200
        local0[40] = 0
        local0[41] = 200
    end
    if 0 < arg1:GetTimer(1) then
        local0[5] = 0
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) then
        local0[15] = local0[15] + 300
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 100150) then
        local0[4] = 0
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
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act08)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act24)
    local1[26] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_Retired_WitchDoctor_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_Retired_WitchDoctor_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 2.7
    local local3 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 2.6
        local3 = 100
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) and arg0:IsBothHandMode(TARGET_SELF) and arg0:GetRandam_Int(1, 100) <= 100 then
        local3 = 0
        local2 = 2.7
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local1 < 20 then
        local3 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local2, local2 + 2, local2 + 4, 100, local3, 1.8, 2)
    if 20 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 3.1
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2.6
        local4 = 100
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) and arg0:IsBothHandMode(TARGET_SELF) and local0 <= 100 then
        local4 = 0
        DistToR1 = 3.1
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local2 < 20 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, DistToR1, DistToR1 + 2, DistToR1 + 4, 100, local4, 1.8, 2)
    if 35 <= local2 and 60 < local0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act03(arg0, arg1, arg2)
    local local0 = 4.5
    local local1 = arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 3.9
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local3
    local local5 = local3 + 2
    local local6 = local3 + 4
    local local7 = 50
    local local8 = 1.8
    local local9 = 2
    if local3 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local3, TARGET_SELF, false, NPC_ATK_L2Hold)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act05(arg0, arg1, arg2)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg0:ChangeEquipMagic(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    arg0:SetTimer(1, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act06(arg0, arg1, arg2)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg0:ChangeEquipMagic(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act07(arg0, arg1, arg2)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg0:ChangeEquipMagic(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act08(arg0, arg1, arg2)
    local local0 = 1.3 + 0.5
    local local1 = arg0:GetSp(TARGET_SELF)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 2, 70, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act15(arg0, arg1, arg2)
    local local0 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 50
    end
    NPC_Approach_Act_Flex(arg0, arg1, 1.4, 1.4, 1.4 + 2, 70, local0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act20(arg0, arg1, arg2)
    local local0 = 3.8
    local local1 = 4.5
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 3.8
        local1 = 4.5
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

function NPC_Retired_WitchDoctor_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 3.8
        local local3 = 4.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3.8
            local3 = 4.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act22(arg0, arg1, arg2)
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
        local local1 = 2
        local local2 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2
            local2 = 2.2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act23(arg0, arg1, arg2)
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
        local local1 = 2
        local local2 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2
            local2 = 2.2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
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
        local local1 = 2
        local local2 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2
            local2 = 2.2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 2, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(1, 1.5)
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = 1
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= 50 then
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

function NPC_Retired_WitchDoctor_Act41(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local0 = 1
    end
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= 50 then
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

function NPC_Retired_WitchDoctor_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Retired_WitchDoctor_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        if local1 < 5 and 3 <= local1 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 100150) and 20 <= local0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif local1 < 3 and arg1:HasSpecialEffectId(TARGET_SELF, 100150) and 20 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessParry) then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) and local1 < 1.5 then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) then
        if local1 < 1.8 and local2 <= 60 then
            arg2:ClearSubGoal()
            NPC_Retired_WitchDoctor_Act22(arg1, arg2)
            return true
        elseif local1 <= 3 and 20 <= local0 and local2 <= 40 then
            if local2 <= 20 then
                arg2:ClearSubGoal()
                NPC_GenericB_Act21(arg1, arg2, paramTbl)
                return true
            else
                arg2:ClearSubGoal()
                NPC_Retired_WitchDoctor_Act22(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    return false
end

return 
