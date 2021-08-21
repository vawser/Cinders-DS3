RegisterTableGoal(GOAL_NPC_Lothric_Secret_MessengerA, "GOAL_NPC_Lothric_Secret_MessengerA")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Lothric_Secret_MessengerA, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:GetNpcThinkParamID() == 27920 then
        if arg1:GetEventRequest(0) == 10 then
            arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3002820)
        elseif arg1:GetEventRequest(0) == 11 then
            arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3002870)
        end
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    end
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
    local local6 = arg1:GetSp(TARGET_SELF)
    if arg1:IsBothHandMode(TARGET_SELF) then
        arm = 20
    else
        arm = 0
    end
    if (local5 <= 0.6 or arg1:HasSpecialEffectId(TARGET_SELF, 5110)) and arg1:IsBothHandMode(TARGET_SELF) then
        local0[6] = 100
    elseif 0.6 <= local5 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) and not arg1:IsBothHandMode(TARGET_SELF) then
        local0[6] = 100
    end
    if local6 <= 50 and local4 <= 2 then
        local0[24] = 40 + arm
        local0[40] = 20
        local0[41] = 60 - arm
    elseif local6 <= 50 then
        local0[40] = 100
        local0[41] = 0
    elseif local5 <= 0.4 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) and not arg1:HasSpecialEffectId(TARGET_SELF, 3150) then
        if local4 <= 5 then
            local0[1] = 5
            local0[2] = 5
            local0[21] = 20
            local0[22] = 0
            local0[23] = 0
            local0[24] = 50
            local0[41] = 50
        else
            local0[42] = 100
        end
    elseif 7 <= local4 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 100
        local0[15] = 0
        local0[20] = 20 + arm
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 0
        local0[41] = 0
    elseif 3 <= local4 then
        local0[1] = 50
        local0[2] = 20
        local0[3] = 50
        local0[15] = 10
        local0[20] = 10 + arm
        local0[21] = 20
        local0[22] = 0 + arm
        local0[23] = 0 + arm
        local0[24] = 0
        local0[25] = 0
        local0[40] = 20 - arm
        local0[41] = 20 - arm
    elseif 1 <= local4 then
        local0[1] = 30
        local0[2] = 50
        local0[3] = 30
        local0[15] = 5
        local0[20] = 0
        local0[21] = 20
        local0[22] = 0
        local0[23] = 0 + arm
        local0[24] = 0 + arm
        local0[25] = 0
        local0[40] = 20 - arm
        local0[41] = 20 - arm
    else
        local0[1] = 60 + arm
        local0[2] = 20
        local0[3] = 20
        local0[15] = 5
        local0[20] = 0
        local0[21] = 20
        local0[22] = 0
        local0[23] = 0 + arm
        local0[24] = 0 + arm
        local0[25] = 0
        local0[40] = 20 - arm
        local0[41] = 20 - arm
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local0[25] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 1070501) == true or arg1:HasSpecialEffectId(TARGET_SELF, 1070511) == true then
        local0[3] = 0
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
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act06)
    local1[10] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act10)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_Lothric_Secret_MessengerA_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_Lothric_Secret_MessengerA_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        Odds_Guard = 100
        DistToR1 = 1.6 + 3
    elseif arg0:IsBothHandMode(TARGET_SELF) then
        Odds_Guard = 0
        DistToR1 = 1.7 + 3
    end
    local local2 = 0
    local local3 = arg0:GetSp(TARGET_SELF)
    if 50 < local3 and not arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 100
    end
    if DistToR1 < local1 then
        NPC_Approach_Act_Flex(arg0, arg1, DistToR1, DistToR1 + 2, DistToR1 + 2, 0, local2, 1.8, 2)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 and 50 < local3 and DistToR1 <= local1 and not arg0:IsBothHandMode(TARGET_SELF) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if local3 <= 44 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif local3 <= 22 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        Odds_Guard = 100
        DistToR2 = 2.2 + 3
    elseif arg0:IsBothHandMode(TARGET_SELF) then
        Odds_Guard = 0
        DistToR2 = 2.5 + 3
    end
    local local2 = 0
    local local3 = arg0:GetSp(TARGET_SELF)
    if 50 < local3 and not arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 100
    end
    if DistToR2 < local1 then
        NPC_Approach_Act_Flex(arg0, arg1, DistToR2, DistToR2 + 2, DistToR2 + 2, 0, local2, 1.8, 2)
    end
    if local0 <= 50 and 50 < local3 and DistToR2 <= local1 and not arg0:IsBothHandMode(TARGET_SELF) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 35 <= local3 and 60 < arg0:GetRandam_Int(1, 100) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, DistToR2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local0 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, DistToR2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, DistToR2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, DistToR2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act03(arg0, arg1, arg2)
    local local0 = 2.7
    local local1 = 4.4
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act04(arg0, arg1, arg2)
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

function NPC_Lothric_Secret_MessengerA_Act05(arg0, arg1, arg2)
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

function NPC_Lothric_Secret_MessengerA_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local2 = 0
    local local3 = arg0:GetSp(TARGET_SELF)
    if 50 < local3 and not arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 100
    end
    if DistToR2 < local1 then
        NPC_Approach_Act_Flex(arg0, arg1, DistToR2, DistToR2 + 1, DistToR2 + 1, 0, local2, 1.8, 2)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 and 50 < local3 and DistToR2 <= local1 and not arg0:IsBothHandMode(TARGET_SELF) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, DistToR2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act15(arg0, arg1, arg2)
    NPC_Approach_Act_Flex(arg0, arg1, 2, 2 + 2, 2 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act20(arg0, arg1, arg2)
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
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local2, TARGET_SELF, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
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

function NPC_Lothric_Secret_MessengerA_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetSp(TARGET_SELF)
    if local0 <= 0 then
        return false
    elseif 3.5 <= arg0:GetDist(TARGET_ENE_0) then
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < local0 then
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

function NPC_Lothric_Secret_MessengerA_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetSp(TARGET_SELF)
    if local1 <= 0 then
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < local1 then
        local local2 = 1.2
        local local3 = 1.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 1.2
            local3 = 1.5
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 20
            local3 = 20
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetSp(TARGET_SELF)
    if local0 <= 0 then
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < local0 then
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

function NPC_Lothric_Secret_MessengerA_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg0:SetStringIndexedNumber("item_Knife", arg0:GetStringIndexedNumber("item_Knife") - 1)
    local local0 = 1
    for local1 = 1 - local0, arg0:GetRandam_Int(1, 3), local0 do
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 20
    local local3 = 1.8
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 50 then
            local4 = NPC_ATK_L1Hold
        end
    elseif local2 <= local1 and local0 <= 100 then
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
    if arg0:GetDist(TARGET_ENE_0) < 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), false, true, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), true, true, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 20
    local local3 = 1.8
    local local4 = 4
    local local5 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 50 then
            local5 = NPC_ATK_L1Hold
        end
    elseif local2 <= local1 and local0 <= 100 then
        local5 = NPC_ATK_L1Hold
    end
    if arg0:GetDist(TARGET_ENE_0) < 3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, local4, TARGET_ENE_0, false, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, local4, TARGET_ENE_0, true, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Lothric_Secret_MessengerA_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsTargetGuard(TARGET_SELF) and 20 <= local0 then
        spg = 50
    else
        spg = 0
    end
    if GuardBreak_Act(arg1, arg2, 3.5, 100) then
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
        local local4 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 0.4, TARGET_SELF, false, 0)
        local4:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    else
        local local5 = 70 - spg
        if local1 < 2.5 and 1 <= local0 and local2 <= local5 and arg1:IsInterupt(INTERUPT_FindAttack) and arg1:IsFinishTimer(0) then
            if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == true and SpaceCheck(arg1, arg2, 270, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                if local3 <= 50 and SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                elseif local3 <= 70 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    if 0 < local0 and local1 <= 2.5 then
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                    end
                elseif local3 <= 90 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    if 0 < local0 and local1 <= 2.5 then
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                    end
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    if 0 < local0 and local1 <= 2.5 then
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                    end
                end
            elseif SpaceCheck(arg1, arg2, -180, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                if 0 < local0 and local1 <= 2.5 then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                end
            elseif SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                if 0 < local0 and local1 <= 2.5 then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                end
            elseif SpaceCheck(arg1, arg2, 270, arg1:GetStringIndexedNumber("Dist_Rolling")) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                if 0 < local0 and local1 <= 2.5 then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                end
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                if 0 < local0 and local1 <= 2.5 then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, DistToR1, 0, 0)
                end
            end
            arg1:SetTimer(0, 2)
            return true
        elseif local1 < 6.5 and local2 <= local5 and arg1:IsInterupt(INTERUPT_FindAttack) and SpaceCheck(arg1, arg2, -180, arg1:GetStringIndexedNumber("Dist_BackStep")) == true and arg1:IsFinishTimer(0) then
            if 12 <= local0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            elseif 1 <= local0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
            arg1:SetTimer(0, 2)
            return true
        elseif arg1:IsInterupt(INTERUPT_UseItem) and 20 <= local0 then
            if 7.5 <= local1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_DashTarget, 5, TARGET_ENE_0, 5, TARGET_SELF, -1)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_DashTarget, 2, TARGET_ENE_0, 2, TARGET_SELF, -1)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        else
            return false
        end
    end
end

return 
