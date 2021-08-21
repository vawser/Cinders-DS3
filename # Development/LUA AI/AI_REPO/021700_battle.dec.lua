RegisterTableGoal(GOAL_NPC_Yellow_Herald, "GOAL_NPC_Yellow_Herald")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Yellow_Herald, true)
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
    local local7 = arg1:GetHpRate(TARGET_EVENT)
    if arg1:GetHpRate(TARGET_SELF) <= 0.6 and arg1:IsFinishTimer(0) and (not arg1:HasSpecialEffectId(TARGET_SELF, 103581000) or local3 <= 25) then
        if 6 <= local4 then
            local0[7] = 1000
        else
            local0[1] = 100
            local0[21] = 100
            local0[22] = 0
            local0[23] = 0
            local0[24] = 300
            local0[40] = 0
            local0[41] = 300
            local0[7] = 200
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
    elseif 0 < local7 and local7 < 0.5 and 3.5 <= local4 and arg1:IsFinishTimer(0) and (not arg1:HasSpecialEffectId(TARGET_SELF, 103581000) or local3 <= 25) then
        local0[1] = 1
        local0[6] = 1000
        local0[41] = 1
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 150001051) and 5 <= local4 and arg1:IsFinishTimer(1) and not arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local0[1] = 1
        local0[5] = 1000
        local0[41] = 1
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki then
        if 7.5 <= local4 then
            local0[1] = 150
            local0[2] = 50
            local0[3] = 0
            local0[4] = 100
            local0[15] = 0
            local0[20] = 400
            local0[25] = 300
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[40] = 0
            local0[41] = 0
        elseif 5 <= local4 then
            local0[1] = 150
            local0[2] = 50
            local0[3] = 0
            local0[4] = 100
            local0[15] = 0
            local0[20] = 200
            local0[25] = 500
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[40] = 0
            local0[41] = 0
        elseif 3 <= local4 then
            local0[1] = 100
            local0[2] = 50
            local0[3] = 50
            local0[4] = 100
            local0[15] = 0
            local0[20] = 100
            local0[25] = 200
            local0[21] = 0
            local0[22] = 50
            local0[23] = 0
            local0[24] = 0
            local0[40] = 150
            local0[41] = 0
            if 0 < local7 and local7 < 0.5 and arg1:IsFinishTimer(0) then
                local0[24] = local0[24] + 300
            end
        elseif 1 <= local4 then
            local0[1] = 300
            local0[2] = 50
            local0[3] = 50
            local0[4] = 150
            local0[15] = 50
            local0[20] = 0
            local0[21] = 50
            local0[22] = 50
            local0[23] = 100
            local0[24] = 50
            local0[40] = 100
            local0[41] = 50
            if 0 < local7 and local7 < 0.5 and arg1:IsFinishTimer(0) then
                local0[24] = local0[24] + 300
            end
        else
            local0[1] = 250
            local0[2] = 50
            local0[3] = 0
            local0[4] = 150
            local0[15] = 450
            local0[20] = 0
            local0[21] = 50
            local0[22] = 0
            local0[23] = 0
            local0[24] = 200
            local0[40] = 0
            local0[41] = 200
            if 0 < local7 and local7 < 0.5 and arg1:IsFinishTimer(0) then
                local0[24] = local0[24] + 300
            end
        end
    elseif 7.5 <= local4 then
        local0[1] = 150
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[15] = 0
        local0[20] = 0
        local0[25] = 400
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 350
        local0[41] = 0
    elseif 5 <= local4 then
        local0[1] = 150
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[15] = 0
        local0[20] = 0
        local0[25] = 400
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 350
        local0[41] = 0
    elseif 3 <= local4 then
        local0[1] = 50
        local0[2] = 50
        local0[3] = 0
        local0[4] = 100
        local0[15] = 0
        local0[20] = 50
        local0[25] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 50
        local0[24] = 50
        local0[40] = 500
        local0[41] = 0
        if 0 < local7 and local7 < 0.5 and arg1:IsFinishTimer(0) then
            local0[24] = local0[24] + 300
        end
    elseif 1 <= local4 then
        local0[1] = 200
        local0[2] = 50
        local0[3] = 50
        local0[4] = 150
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 50
        local0[23] = 100
        local0[24] = 100
        local0[40] = 100
        local0[41] = 100
        if 0 < local7 and local7 < 0.5 and arg1:IsFinishTimer(0) then
            local0[24] = local0[24] + 300
        end
    else
        local0[1] = 100
        local0[2] = 50
        local0[3] = 0
        local0[4] = 50
        local0[15] = 450
        local0[20] = 0
        local0[21] = 50
        local0[22] = 0
        local0[23] = 0
        local0[24] = 300
        local0[40] = 0
        local0[41] = 250
        if 0 < local7 and local7 < 0.5 and arg1:IsFinishTimer(0) then
            local0[24] = local0[24] + 300
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local0[25] = 0
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 103503009)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 103503209)
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act07)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act41)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_Yellow_Herald_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_Yellow_Herald_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = MUSOU_SINGLE_R1_DIST_MAX
    local local3 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 1.9
        local3 = 0
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) and arg0:IsBothHandMode(TARGET_SELF) and arg0:GetRandam_Int(1, 100) <= 100 then
        local3 = 0
        local2 = 1.8
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

function NPC_Yellow_Herald_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 3
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2.8
        local4 = 0
    end
    if 3 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) and arg0:IsBothHandMode(TARGET_SELF) and local0 <= 100 then
        local4 = 0
        DistToR1 = 3
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

function NPC_Yellow_Herald_Act03(arg0, arg1, arg2)
    local local0 = 3.2
    local local1 = arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act04(arg0, arg1, arg2)
    local local0 = 2.1
    local local1 = arg0:GetSp(TARGET_SELF)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L2, TARGET_ENE_0, DistToR2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act05(arg0, arg1, arg2)
    local local0 = 999
    local local1 = local0 + 2
    local local2 = local0 + 2
    local local3 = 0
    local local4 = 0
    local local5 = 1.8
    local local6 = 2
    local local7 = arg0:GetSp(TARGET_SELF)
    arg0:SetTimer(1, 8)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act06(arg0, arg1, arg2)
    local local0 = 13 - 7
    local local1 = local0 + 2
    local local2 = local0 + 2
    local local3 = 0
    local local4 = 0
    local local5 = 1.8
    local local6 = arg0:GetSp(TARGET_SELF)
    local local7 = 8
    if arg0:HasSpecialEffectId(TARGET_EVENT, 9150) then
        local7 = 12
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_EVENT, local0, TARGET_SELF, false, -1)
    local local8 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L1, TARGET_EVENT, 999, 0, 0)
    local8:TimingSetTimer(0, local7, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act07(arg0, arg1, arg2)
    local local0 = 13 - 7
    local local1 = local0 + 2
    local local2 = local0 + 2
    local local3 = 0
    local local4 = 0
    local local5 = 1.8
    local local6 = 4
    local local7 = arg0:GetSp(TARGET_SELF)
    local local8 = 8
    if arg0:HasSpecialEffectId(TARGET_EVENT, 9150) then
        local8 = 12
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local9:TimingSetTimer(0, local8, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act15(arg0, arg1, arg2)
    local local0 = 1.3
    local local1 = 0
    arg0:ChangeEquipItem(2)
    if arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 2, 70, local1, 1.8, 2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5111) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act20(arg0, arg1, arg2)
    local local0 = 2.5
    local local1 = 3.2
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 2.3
        local1 = 3.2
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

function NPC_Yellow_Herald_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 2.5
        local local3 = 3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 2.3
            local3 = 2.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act22(arg0, arg1, arg2)
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
        local local1 = 1.5
        local local2 = 2.1
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 1.2
            local2 = 1.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act23(arg0, arg1, arg2)
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
        local local1 = 1.5
        local local2 = 2.1
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 1.2
            local2 = 1.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act24(arg0, arg1, arg2)
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
        local local1 = 1.5
        local local2 = 2.1
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 1.2
            local2 = 1.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 2, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 10
    if 10 < local1 then
        NPC_Approach_Act_Flex(arg0, arg1, local2, local2, local2 + 2, 100, 0, 1.8, 2)
    elseif local1 < 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5111)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(1, 1.5)
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= 30 then
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

function NPC_Yellow_Herald_Act41(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 30 then
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

function NPC_Yellow_Herald_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Herald_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_SuccessParry) then
        arg2:ClearSubGoal()
        local local2 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local2:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) and local0 < 1.5 then
        arg2:ClearSubGoal()
        local local2 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local2:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) then
        if local0 < 1.8 and local1 <= 40 then
            arg2:ClearSubGoal()
            NPC_Yellow_Herald_Act22(arg1, arg2)
            return true
        elseif local0 <= 3 and 20 <= arg1:GetSp(TARGET_SELF) and local1 <= 20 then
            if arg1:GetRandam_Int(1, 100) <= 35 then
                arg2:ClearSubGoal()
                NPC_GenericB_Act21(arg1, arg2, paramTbl)
                return true
            else
                arg2:ClearSubGoal()
                NPC_Yellow_Herald_Act22(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 103503009 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if arg1:GetNumber(0) < 2 then
                arg1:SetTimer(0, 25)
            else
                arg1:SetTimer(0, 90)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 103503209 then
            if arg1:GetNumber(0) < 2 then
                arg1:SetTimer(0, 25 + 10)
            else
                arg1:SetTimer(0, 90 + 10)
            end
            local local2 = al
            local2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5111 then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if local1 <= 15 then
            NPC_Sand_Witch_Act22(arg1, arg2, paramTbl)
        elseif local1 <= 25 then
            NPC_Sand_Witch_Act23(arg1, arg2, paramTbl)
        end
        return true
    else
        return false
    end
end

return 
