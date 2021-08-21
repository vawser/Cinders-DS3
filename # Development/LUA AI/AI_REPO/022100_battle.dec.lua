RegisterTableGoal(GOAL_NPC_BlackBigHummer, "GOAL_NPC_BlackBigHummer")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_BlackBigHummer, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    NPC_BlackBigHummer_Act50(arg1, arg2, paramTbl)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
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
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetSp(TARGET_SELF)
    local local7 = arg1:GetNumber(0)
    if local6 < 65 then
        if 5 <= local4 then
            local0[1] = 1
            local0[2] = 1
            local0[40] = 1000
            local0[41] = 0
        else
            local0[1] = 1
            local0[2] = 1
            local0[24] = 300
            local0[40] = 0
            local0[41] = 50
        end
    elseif 7 <= local4 then
        local0[1] = 30
        local0[2] = 5
        local0[3] = 0
        local0[4] = 5
        local0[5] = 0
        local0[20] = 30
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 0
        local0[41] = 0
    elseif 5 <= local4 then
        local0[1] = 20
        local0[2] = 5
        local0[3] = 0
        local0[4] = 5
        local0[5] = 0
        local0[20] = 15
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 20
        local0[41] = 0
    elseif 3 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 5
        local0[5] = 15
        local0[20] = 0
        local0[21] = 0
        local0[22] = 10
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 20
        local0[41] = 0
    elseif 1 <= local4 then
        local0[1] = 15
        local0[2] = 5
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[20] = 0
        local0[21] = 10
        local0[22] = 10
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 0
        local0[41] = 0
    else
        local0[1] = 25
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 35
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 15
        local0[24] = 10
        local0[25] = 0
        local0[40] = 0
        local0[41] = 0
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
    if local6 < 20 then
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act05)
    local1[19] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act25)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act47)
    local1[50] = REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_Act50)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_BlackBigHummer_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_BlackBigHummer_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 2.8
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = DBlackBigHummer_BOTH_R1_DIST_MAX
        local4 = 0
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
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

function NPC_BlackBigHummer_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 2.8
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2.4
        local4 = 0
    end
    if 1 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 0
        local3 = 2.4
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local2 < 60 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 4, 0, local4, 1.8, 2)
    if 60 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 4.9
    local local3 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 4.9
        local3 = 0
    end
    if 1 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 0
        local2 = 4.9
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local1 < 60 then
        local3 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local2, local2 + 0, local2 + 4, 0, local3, 1.8, 2)
    if 70 <= local1 and 67 < arg0:GetRandam_Int(1, 100) then
        if local0 <= 20 then
            local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            local4:SetTargetAngle(0, 0, 180)
            local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
            local4:SetTargetAngle(0, 0, 180)
        elseif local0 <= 60 then
            local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            local4:SetTargetAngle(0, 0, 180)
            local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
            local4:SetTargetAngle(0, 0, 180)
        else
            local local4 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
            local4:SetTargetAngle(0, 0, 180)
            local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
            local4:SetTargetAngle(0, 0, 180)
        end
    elseif local0 <= 50 then
        local local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
        local4:SetTargetAngle(0, 0, 180)
    else
        local local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
        local4:SetTargetAngle(0, 0, 180)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 1.4
        local4 = 0
    end
    if arg0:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 4, 0, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 4.8
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 4.8
        local4 = 0
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 4, 0, local4, 1.8, 2)
    local local5 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    local5:SetTargetAngle(0, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 2.3 + 0.5
    local local4 = 0
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local2 < 60 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 4, 0, local4, 1.8, 2)
    if 60 < local2 and arg0:GetRandam_Int(1, 100) <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
        local local5 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        local5:SetTargetAngle(0, 0, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 3
    local local3 = -1
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 3
        local3 = -1
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2
    if arg0:GetSp(TARGET_SELF) < 60 then
        local3 = -1
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 40 < arg0:GetSp(TARGET_SELF) then
        local local2 = 3
        local local3 = 1.4
        if arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3
            local3 = 4.9
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2 + 1.3, local3 + 1.3, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act22(arg0, arg1, arg2)
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
        local local0 = 2.5
        local local1 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 2.5 + 1
            local1 = 2.5 + 1
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act23(arg0, arg1, arg2)
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
        local local1 = 2.5 - 0.5
        local local2 = 2.5 - 0.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2.5 - 0.5
            local2 = 2.5 - 0.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act24(arg0, arg1, arg2)
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
        local local0 = 2.5 - 1.5
        local local1 = 2.5 - 1.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 2.5 - 1.5
            local1 = 2.5 - 1.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(3)
    arg0:SetStringIndexedNumber("Firebomb", arg0:GetStringIndexedNumber("Firebomb") - 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 40
    local local4 = 0
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
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), true, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 40
    local local2 = 0
    local local3 = -1
    if arg0:GetDist(TARGET_ENE_0) < 2 and 40 < arg0:GetSp(TARGET_SELF) then
        local3 = NPC_ATK_L1Hold
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 5, TARGET_ENE_0, true, local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 1.4
    local local3 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 1.4
        local3 = 0
    end
    if arg0:GetSp(TARGET_SELF) < 50 then
        local3 = 0
    end
    if 1 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 0
        local2 = 4.9
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, 6, local2 + 999, local2 + 999, 0, local3, 6, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_BlackBigHummer_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local1 < 2.5 and 20 < local0 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfAngle) and arg1:IsTargetOutOfAngleInterruptSlot(0) and 0 < local0 then
        arg2:ClearSubGoal()
        NPC_BlackBigHummer_Act23(arg1, arg2)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) and local1 < 1.8 and 80 <= local0 then
        arg2:ClearSubGoal()
        if local2 < 55 then
            NPC_BlackBigHummer_Act01(arg1, arg2)
        else
            NPC_BlackBigHummer_Act24(arg1, arg2)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if 5 < local1 then
            if local2 <= 70 then
                NPC_BlackBigHummer_Act22(arg1, arg2, paramTbl)
            else
                NPC_BlackBigHummer_Act23(arg1, arg2, paramTbl)
            end
        elseif local2 <= 30 then
            NPC_BlackBigHummer_Act22(arg1, arg2, paramTbl)
        elseif local2 <= 55 then
            NPC_BlackBigHummer_Act23(arg1, arg2, paramTbl)
        end
        return true
    else
        return false
    end
end

return 
