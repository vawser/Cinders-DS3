RegisterTableGoal(GOAL_NPC_Lothric_Secret_MessengerC_2, "GOAL_NPC_Lothric_Secret_MessengerC_2")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Lothric_Secret_MessengerC_2, true)
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
    if arg1:IsFinishTimer(0) then
        float = 1
    else
        float = 0
    end
    if local5 <= 50 and local4 <= 2 then
        local0[24] = 20
        local0[40] = 20
        local0[41] = 60
    elseif local5 <= 50 then
        local0[40] = 100
        local0[41] = 0
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.5 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) and not arg1:HasSpecialEffectId(TARGET_SELF, 3150) then
        if local4 <= 5 then
            local0[1] = 5
            local0[2] = 5
            local0[21] = 10
            local0[22] = 0
            local0[23] = 5
            local0[24] = 20
            local0[40] = 15
            local0[41] = 40
        else
            local0[42] = 100
        end
    elseif 6 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[10] = 30
        local0[11] = 150 * float
        local0[12] = 0
        local0[13] = 40
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 30
        local0[41] = 0
    elseif 3 <= local4 then
        local0[1] = 15
        local0[2] = 5
        local0[3] = 5
        local0[10] = 5
        local0[11] = 50 * float
        local0[12] = 0
        local0[13] = 5
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 10
        local0[24] = 10
        local0[40] = 5
        local0[41] = 40
    elseif 1 <= local4 then
        local0[1] = 25
        local0[2] = 10
        local0[3] = 10
        local0[10] = 0
        local0[11] = 5
        local0[12] = 0
        local0[13] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 10
        local0[22] = 0
        local0[23] = 5
        local0[24] = 5
        local0[40] = 0
        local0[41] = 20
    else
        local0[1] = 30
        local0[2] = 15
        local0[3] = 10
        local0[10] = 0
        local0[11] = 0
        local0[10] = 0
        local0[13] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 5
        local0[22] = 5
        local0[23] = 5
        local0[24] = 10
        local0[40] = 0
        local0[41] = 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local0[25] = 0
    end
    if arg1:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        local0[3] = 0
    elseif arg1:IsTargetGuard(TARGET_ENE_0) then
        local0[3] = local0[3] + 10
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 130131601) == true then
        local0[12] = 0
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
    local0[4] = 0
    local0[5] = 0
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act13)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerC_2_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_Lothric_Secret_MessengerC_2_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:IsTargetGuard(TARGET_ENE_0) and arg0:GetRandam_Int(1, 100) < 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local1 = 2.4
    if not arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 2.2
    end
    local local2 = arg0:GetSp(TARGET_SELF)
    if local1 < arg0:GetDist(TARGET_ENE_0) then
        NPC_Approach_Act_Flex(arg0, arg1, local1, local1 + 2, local1 + 2, 0, 0, 1.8, 2)
    end
    if local2 <= 44 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif local2 <= 22 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:IsTargetGuard(TARGET_ENE_0) and local0 < 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local2 = 2.8
    if not arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 2.8
    end
    if local2 < arg0:GetDist(TARGET_ENE_0) then
        NPC_Approach_Act_Flex(arg0, arg1, local2, local2 + 2, local2 + 2, 0, 0, 1.8, 2)
    end
    if 35 <= arg0:GetSp(TARGET_SELF) and 60 < local0 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 2.6
    local local3 = 4.4
    local local4 = arg0:GetRandam_Float(1.5, 4.5)
    local local5 = arg0:GetRandam_Float(3, 4.5)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L2Hold)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L2Hold)
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        if local2 < local0 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local5, TARGET_ENE_0, local2, TARGET_SELF, false, NPC_ATK_L2Hold)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local3 < local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local5, TARGET_ENE_0, local3, TARGET_SELF, false, NPC_ATK_L2Hold)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local3 = arg0:GetSp(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local2 = arg0:GetSp(TARGET_SELF)
    if 18 < arg0:GetDist(TARGET_ENE_0) then
        NPC_Approach_Act_Flex(arg0, arg1, 15, 18, 999, 0, 0, 1.8, 2)
    end
    arg0:ChangeEquipMagic(0)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    local3:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    if SpaceCheck(arg0, arg1, 90, 2) == true and SpaceCheck(arg0, arg1, 270, 2) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 0)
        end
    elseif SpaceCheck(arg0, arg1, 270, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 0)
    elseif SpaceCheck(arg0, arg1, 90, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 0)
    elseif SpaceCheck(arg0, arg1, 180, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 999, TARGET_ENE_0, false, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local2 = arg0:GetSp(TARGET_SELF)
    if 11.5 < arg0:GetDist(TARGET_ENE_0) then
        NPC_Approach_Act_Flex(arg0, arg1, 10, 14, 999, 0, 0, 1.8, 2)
    end
    arg0:ChangeEquipMagic(1)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    local3:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    if SpaceCheck(arg0, arg1, 90, 2) == true and SpaceCheck(arg0, arg1, 270, 2) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 0)
        end
    elseif SpaceCheck(arg0, arg1, 270, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 0)
    elseif SpaceCheck(arg0, arg1, 90, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 0)
    elseif SpaceCheck(arg0, arg1, 180, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 999, TARGET_ENE_0, false, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    end
    arg0:SetTimer(0, 12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local3 = arg0:GetSp(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local2 = arg0:GetSp(TARGET_SELF)
    if 14 < arg0:GetDist(TARGET_ENE_0) then
        NPC_Approach_Act_Flex(arg0, arg1, 7, 12, 999, 0, 0, 1.8, 2)
    end
    arg0:ChangeEquipMagic(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    if SpaceCheck(arg0, arg1, 90, 2) == true and SpaceCheck(arg0, arg1, 270, 2) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 0)
        end
    elseif SpaceCheck(arg0, arg1, 270, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 0)
    elseif SpaceCheck(arg0, arg1, 90, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 0)
    elseif SpaceCheck(arg0, arg1, 180, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 999, TARGET_ENE_0, false, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act15(arg0, arg1, arg2)
    NPC_Approach_Act_Flex(arg0, arg1, 2.2, 2.2 + 2, 2.2 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3
    local local2 = 2.4
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 4
        local2 = 4.4
    end
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local2, TARGET_SELF, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetSp(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetSp(TARGET_SELF) <= 0 then
        return false
    elseif 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetSp(TARGET_SELF) <= 0 then
        return false
    elseif SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetSp(TARGET_SELF) <= 0 then
        return false
    elseif arg0:GetDist(TARGET_ENE_0) <= 1 then
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
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.7, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.7, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetSp(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, false, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerC_2_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 100150) == true then
        local5 = 30
    end
    if GuardBreak_Act(arg1, arg2, 3.5, 100) then
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
        local local6 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 0.4, TARGET_SELF, false, 0)
        local6:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    else
        local local7 = 60 + local5
        if local1 < 2.5 and 1 <= local0 and local2 <= local7 and arg1:IsInterupt(INTERUPT_FindAttack) and arg1:IsFinishTimer(0) then
            if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == true and SpaceCheck(arg1, arg2, 270, arg1:GetStringIndexedNumber("Dist_Rolling")) == true and SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == true and SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                if local3 <= 30 and SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                elseif local3 <= 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                    end
                elseif local3 <= 90 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                    end
                else
                    arg2:ClearSubGoal()
                    if local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                        if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                        end
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                        if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                        end
                    end
                end
            elseif SpaceCheck(arg1, arg2, -180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                end
            elseif SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                end
            elseif SpaceCheck(arg1, arg2, 270, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                end
            else
                arg2:ClearSubGoal()
                if local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    if 20 < local0 and local1 <= 2.5 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                    end
                end
            end
            arg1:SetTimer(0, 2)
            return true
        elseif local1 < 4.3 and local2 <= local7 and arg1:IsInterupt(INTERUPT_FindAttack) and SpaceCheck(arg1, arg2, -180, arg1:GetStringIndexedNumber("Dist_BackStep")) == true and arg1:IsFinishTimer(0) then
            if 1 <= local0 and arg1:HasSpecialEffectId(TARGET_SELF, 100150) == true then
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
            elseif 15 <= local0 and arg1:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            elseif 1 <= local0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
            arg1:SetTimer(0, 2)
            return true
        elseif arg1:IsInterupt(INTERUPT_ParryTiming) and local1 < 3 and local2 <= 20 and 16 <= local0 and not arg1:IsBothHandMode(TARGET_SELF) and arg1:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInterupt(INTERUPT_SuccessParry) then
            arg2:ClearSubGoal()
            if arg1:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
            end
            local local8 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
            local8:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
            return true
        else
            return false
        end
    end
end

return 
