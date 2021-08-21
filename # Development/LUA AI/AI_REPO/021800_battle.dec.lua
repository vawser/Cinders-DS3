local local0 = false
RegisterTableGoal(GOAL_NPC_Yellow_Substitute, "GOAL_NPC_Yellow_Substitute")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Yellow_Substitute, true)
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
    if local7 <= 40 and local4 <= 3.2 then
        local0[1] = 1
        local0[24] = 200
        local0[40] = 1
        local0[41] = 800
    elseif local7 <= 60 and 3.2 < local4 then
        local0[1] = 1
        local0[40] = 1000
        local0[41] = 1
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki and arg1:IsFinishTimer(2) then
        if arg1:IsBothHandMode(TARGET_SELF) then
            if 6 <= local4 then
                local0[1] = 100
                local0[2] = 0
                local0[3] = 0
                local0[4] = 1000
                local0[15] = 0
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
                local0[24] = 0
                local0[40] = 0
                local0[41] = 0
                local0[25] = 1000
            elseif 4.5 <= local4 then
                local0[1] = 0
                local0[2] = 100
                local0[3] = 0
                local0[4] = 400
                local0[15] = 0
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
                local0[24] = 0
                local0[40] = 0
                local0[41] = 0
                local0[50] = 200
                local0[25] = 500
            elseif 2.7 + 0 <= local4 then
                local0[1] = 100
                local0[2] = 100
                local0[3] = 0
                local0[4] = 200
                local0[15] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
                local0[24] = 0
                local0[41] = 0
                local0[50] = 400
                local0[25] = 500
            elseif 1 <= local4 then
                local0[1] = 50
                local0[2] = 200
                local0[3] = 0
                local0[4] = 0
                local0[15] = 0
                local0[20] = 0
                local0[21] = 150
                local0[22] = 0
                local0[23] = 250
                local0[24] = 200
                local0[40] = 0
                local0[41] = 0
                local0[25] = 500
            else
                local0[1] = 100
                local0[2] = 100
                local0[3] = 0
                local0[4] = 0
                local0[15] = 50
                local0[20] = 0
                local0[21] = 200
                local0[22] = 0
                local0[23] = 100
                local0[24] = 350
                local0[40] = 0
                local0[41] = 0
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    local0[15] = local0[15] + 300
                end
            end
        elseif 8 <= local4 then
            local0[1] = 1
            local0[2] = 1
            local0[3] = 0
            local0[4] = 1000
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[40] = 1
            local0[41] = 0
            local0[25] = 1000
        elseif 6 <= local4 then
            local0[1] = 1
            local0[2] = 1
            local0[3] = 0
            local0[4] = 1000
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[40] = 1
            local0[41] = 0
            local0[50] = 100
            local0[25] = 1000
        elseif 4 <= local4 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 100
            local0[4] = 200
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[40] = 300
            local0[41] = 100
            local0[50] = 0
            local0[25] = 1000
        elseif 1 <= local4 then
            local0[1] = 50
            local0[2] = 50
            local0[3] = 0
            local0[4] = 0
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 200
            local0[40] = 200
            local0[41] = 0
            local0[25] = 0
        else
            local0[1] = 150
            local0[2] = 100
            local0[3] = 0
            local0[4] = 0
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 100
            local0[24] = 250
            local0[40] = 300
            local0[41] = 0
        end
    elseif 8 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[6] = 600
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 400
        local0[41] = 0
        local0[25] = 1000
    elseif 6 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[6] = 600
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[40] = 400
        local0[41] = 0
        local0[50] = 0
        local0[25] = 500
    elseif 4 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 300
        local0[40] = 200
        local0[41] = 300
        local0[50] = 0
        local0[25] = 500
    elseif 1 <= local4 then
        local0[1] = 150
        local0[2] = 100
        local0[3] = 0
        local0[4] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 100
        local0[40] = 500
        local0[41] = 0
        local0[25] = 0
    else
        local0[1] = 100
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 50
        local0[22] = 0
        local0[23] = 0
        local0[24] = 350
        local0[40] = 0
        local0[41] = 0
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 9133) then
        local0[25] = 0
    end
    if arg1:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        local0[4] = 0
        local0[5] = 0
        local0[50] = 0
    end
    if not arg1:IsFinishTimer(3) then
        local0[21] = 0
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
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act06)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act26)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act47)
    local1[50] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act50)
    local1[80] = REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_Act80)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_Yellow_Substitute_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_Yellow_Substitute_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 2.5
    local local5 = 100
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 2.5
        local5 = 0
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if local3 < 20 then
        local5 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local4, local4 + 1.3, local4 + 1.3, 100, local5, 1.8, 2)
    if 20 <= local3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 3.1
    local local4 = 100
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2.6
        local4 = 0
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if local2 < 20 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 1.3, local3 + 1.3, 100, local4, 1.8, 2)
    if 35 <= local2 and 60 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act03(arg0, arg1, arg2)
    local local0 = 3.8 + 1
    local local1 = arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 2, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act04(arg0, arg1, arg2)
    local local0 = 2.7
    local local1 = 1.5
    local local2 = arg0:GetSp(TARGET_SELF)
    if arg0:GetDist(TARGET_ENE_0) < 5 then
        if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            if arg0:GetRandam_Int(1, 100) <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    elseif not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_ENE_0, local0, TARGET_SELF, true, NPC_ATK_L2)
    local3:SetLifeEndSuccess(true)
    local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local0, TARGET_SELF, true, NPC_ATK_L2)
    local3:SetTargetRange(0, 2.7, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act05(arg0, arg1, arg2)
    local local0 = 6 + 2
    local local1 = 7
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    elseif not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local0 + 1 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local0 + 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.8, TARGET_ENE_0, local0, TARGET_SELF, true, NPC_ATK_L2)
    if 40 < arg0:GetSp(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, local1, 0, 0)
        NPC_Yellow_Substitute_Act22(arg0, arg1, arg2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act06(arg0, arg1, arg2)
    local local0 = 10
    local local1 = 1.5
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if local2 < local0 then
        local local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 999, TARGET_ENE_0, true, NPC_ATK_L2)
        local4:SetLifeEndSuccess(true)
    elseif local0 + 2 < local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local0, TARGET_SELF, true, NPC_ATK_L2)
    else
        local local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 90, true, true, NPC_ATK_L2)
        local4:SetLifeEndSuccess(true)
    end
    if local2 < 8 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) < 35 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act15(arg0, arg1, arg2)
    local local0 = 2.5
    local local1 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 50
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 2, 70, local1, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act20(arg0, arg1, arg2)
    local local0 = 3.8 + 1
    local local1 = 3.1
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 3.8 + 1
        local1 = 2.6
    end
    if arg0:GetDist(TARGET_ENE_0) <= local0 + 1 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local0, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    local2:TimingSetTimer(3, 5, AI_TIMING_SET__ACTIVATE)
    if arg0:GetRandam_Int(1, 100) <= 70 and 0 < arg0:GetSp(TARGET_SELF) then
        local2 = 3.8 + 1
        local local3 = 3.1
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3.8 + 1
            local3 = 2.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 100)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = arg0:GetMp(TARGET_SELF)
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
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act23(arg0, arg1, arg2)
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
        local local1 = 2.5
        local local2 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2.5
            local2 = 2.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act24(arg0, arg1, arg2)
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
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.5, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        local local1 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, NPC_ATK_L1Hold)
        local1:TimingSetTimer(10, 0.5, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 2.5
        local local2 = 2.5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2.5
            local2 = 2.5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 2, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act25(arg0, arg1, arg2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 18010) then
        arg0:ChangeEquipItem(2)
    else
        arg0:ChangeEquipItem(3)
    end
    if arg0:GetDist(TARGET_ENE_0) < 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    local local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    local0:TimingSetTimer(2, 10, AI_TIMING_SET__ACTIVATE)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(2, 2)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetRandam_Int(45, 60)
    local local3 = 30
    local local4 = 50
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = 70
    local local10 = -1
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, local1, local2, true, true, NPC_ATK_L2Hold)
    elseif arg0:IsBothHandMode(TARGET_SELF) then
        local local11 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, local1, local2, true, true, local10)
        local11:SetTargetRange(1, 4, 8)
    elseif arg0:GetDist(TARGET_ENE_0) < 5 and 30 < arg0:GetSp(TARGET_SELF) then
        local local11 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, local1, local2, true, true, NPC_ATK_L1Hold)
        local11:TimingSetTimer(10, 0.6, AI_TIMING_SET__ACTIVATE)
    else
        local local11 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, local1, local2, true, true, local10)
        local11:SetTargetRange(1, 4, 8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0) + 2
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetSp(TARGET_SELF)
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 6.5
        else
            local0 = 6.5
        end
    end
    local local4 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local4 = 1
    end
    local local5 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local5 = 9910
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        local4 = false
        local5 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, local0, TARGET_ENE_0, local4, local5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Float(2, 2.5)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Int(45, 60)
    local local4 = 30
    local local5 = 50
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg0:GetSp(TARGET_SELF)
    local local10 = 50
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    elseif not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local0 < 2 and local10 < local9 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, local2, local3, true, true, NPC_ATK_L1Hold)
    elseif local0 < 7 and local10 < local9 then
        if 2.7 + 0 + 1 < local0 then
            local local11 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 2.7 + 0 + 0.5, TARGET_SELF, true, NPC_ATK_L2)
            local11:SetTargetRange(0, 2.7, 6)
        end
        local local11 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, local2, local3, true, true, NPC_ATK_L2Hold)
        local11:SetTargetRange(0, 2.7, 6)
        if arg0:GetRandam_Int(1, 100) <= 15 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, local2, local3, true, true, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_Act80(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Float(1, 1.5)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Int(45, 60)
    local local4 = 30
    local local5 = 50
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg0:GetSp(TARGET_SELF)
    local local11 = 70
    local local12 = -1
    arg1:AddSubGoal(GOAL_COMMON_Guard, WaitTime, NPC_ATK_L1Hold, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yellow_Substitute_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if arg1:IsTargetOutOfRangeInterruptSlot(0) and arg1:GetEquipWeaponIndex(ARM_L) == WEP_Primary and arg1:IsBothHandMode(TARGET_SELF) then
            if local1 < 4 then
                arg2:ClearSubGoal()
                if local2 <= 50 or UPVAL0 == false then
                    local local3 = true
                    SETUPVAL 7 0 0
                    if 30 < local0 then
                        local3 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
                        local3:SetTargetRange(3, -1, 2.5 + 0.5)
                    else
                        local3 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
                        local3:SetTargetRange(3, -1, 2.7 - 1)
                    end
                elseif local2 <= 75 then
                    if 30 < local0 then
                        local local3 = arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                        local3:TimingSetTimer(3, 5, AI_TIMING_SET__ACTIVATE)
                        arg2:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, 3.8 + 1, 2.6, 100)
                    else
                        local local3 = arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                        local3:TimingSetTimer(3, 5, AI_TIMING_SET__ACTIVATE)
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, 3.8 + 1, 2.6, 100)
                end
                return true
            elseif arg1:IsFinishTimer(4) then
                arg2:ClearSubGoal()
                local local3 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
                local3:SetTargetRange(2, 2.7 + 0, 999)
                arg1:SetTimer(4, arg1:GetRandam_Float(0.5, 3))
                return true
            end
        end
        if arg1:IsTargetOutOfRangeInterruptSlot(2) and arg1:GetEquipWeaponIndex(ARM_L) == WEP_Primary and arg1:IsBothHandMode(TARGET_SELF) then
            if 30 < local0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif 0 < local0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
        if arg1:IsTargetOutOfRangeInterruptSlot(3) and arg1:GetEquipWeaponIndex(ARM_L) == WEP_Primary and arg1:IsBothHandMode(TARGET_SELF) then
            if 30 < local0 and 6 < local1 and arg1:IsFinishTimer(4) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
                arg1:SetTimer(4, arg1:GetRandam_Float(0.5, 3))
                return true
            elseif 20 < local0 and 2.7 + 0 <= local1 then
                arg2:ClearSubGoal()
                NPC_Yellow_Substitute_Act50(arg1, arg2, paramTbl)
                return true
            end
        end
        if arg1:IsTargetOutOfRangeInterruptSlot(1) then
            arg2:ClearSubGoal()
            arg1:Replaning()
        end
    end
    if not arg1:IsBothHandMode(TARGET_SELF) and arg1:IsInterupt(INTERUPT_ParryTiming) and arg1:IsTargetGuard(TARGET_SELF) and arg1:IsFinishTimer(10) and local1 <= 2 then
        arg1:SetTimer(10, 3)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_SuccessParry) then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 100250) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local1 < 1.5 then
            local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
            local3:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and local1 < 1.8 and local2 <= 60 and 60 < local0 then
        arg2:ClearSubGoal()
        NPC_Yellow_Substitute_Act23(arg1, arg2)
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        if local2 <= 70 and 20 <= local0 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) < 65 then
                NPC_Yellow_Substitute_Act22(arg1, arg2, paramTbl)
            else
                NPC_Yellow_Substitute_Act23(arg1, arg2, paramTbl)
            end
            return true
        elseif not arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) and 4 <= local1 then
            arg2:ClearSubGoal()
            NPC_Yellow_Substitute_Act20(arg1, arg2, paramTbl)
        end
    end
    return false
end

return 
