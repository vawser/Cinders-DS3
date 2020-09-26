RegisterTableGoal(GOAL_NPC_SpecialA, "GOAL_NPC_SpecialA")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_SpecialA, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:GetNpcThinkParamID() == 27720 then
        arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3302855)
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    end
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 102440000)
    
    if arg1:GetEventRequest(1) == 20 then
        local0[43] = 10
    elseif arg1:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        local0[45] = 25
    elseif local5 <= 0.5 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) then
        if 5 <= local4 then
            local0[42] = 100
        else
            local0[1] = 1
            local0[2] = 1
            local0[21] = 20
            local0[22] = 0
            local0[23] = 0
            local0[24] = 40
            local0[41] = 20
            local0[42] = 25
        end
    elseif local5 <= 0.75 and not arg1:HasSpecialEffectId(TARGET_SELF, 102440000) and arg1:GetNumber(0) < 1 and arg1:GetNumber(1) ~= 1 then
        if 5 <= local4 then
            local0[47] = 100
        else
            local0[1] = 1
            local0[2] = 1
            local0[21] = 20
            local0[22] = 0
            local0[23] = 0
            local0[24] = 40
            local0[41] = 20
            local0[47] = 0
        end
    elseif local6 < 40 then
        if 5 <= local4 then
            local0[1] = 1
            local0[2] = 1
            local0[40] = 10
            local0[41] = 0
        else
            local0[1] = 1
            local0[2] = 1
            local0[24] = 10
            local0[40] = 0
            local0[41] = 20
        end
    elseif 7 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 20
        local0[5] = 20
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 40
        local0[41] = 0
        local0[46] = 320
    elseif 3 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[20] = 0
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 40
        local0[41] = 0
        local0[46] = 320
    elseif 1 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[20] = 0
        local0[21] = 20
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 0
        local0[41] = 20
    else
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[20] = 0
        local0[21] = 20
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
        local0[25] = 0
        local0[40] = 0
        local0[41] = 20
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local0[25] = 0
    end
    if arg1:IsFinishTimer(0) == false or 0.75 <= local5 then
        local0[46] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 102440000) then
        local0[21] = 0
        local0[24] = 0
        local0[40] = 0
        local0[41] = 0
    end
    if arg1:GetNumber(1) == 1 then
        local0[46] = 0
        arg1:SetNumber(1, 0)
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) then
        local0[5] = local0[5] + 10
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
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act05)
    local1[19] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act25)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act47)
    local1[48] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act48)
    local1[49] = REGIST_FUNC(arg1, arg2, NPC_SpecialA_Act49)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_SpecialA_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_SpecialA_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 2.2 - 0.4
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2 - 0.4
        local4 = 0
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

function NPC_SpecialA_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 2.2 - 0.4
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2 - 0.4
        local4 = 0
    end
    if 1 <= local1 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 25
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 25
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 2 - 0.4
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 67
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 33
            end
            if local0 <= local5 then
                local4 = 100
                local3 = 2.2 - 0.4
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 50, local4, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local4 and local3 <= local1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 40 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
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

function NPC_SpecialA_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 2.6 - 0.4
    local local5 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 2 - 0.4
        local5 = 0
    end
    if 1 <= local2 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 25
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 + 25
            end
            if local0 <= local6 then
                local5 = 0
                local4 = 2 - 0.4
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 67
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 - 33
            end
            if local0 <= local6 then
                local5 = 100
                local4 = 2.2 - 0.4
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local3 < 50 then
        local5 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local4, local4 + 0, local4 + 2, 50, local5, 1.8, 2)
    if local1 <= 50 and 0 < local5 and local4 <= local2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 60 <= local3 and 67 < local0 then
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
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 2 - 0.4
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2 - 0.4
        local4 = 0
    end
    if arg0:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 50, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 4.2 - 0.4
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2 - 0.4
        local4 = 0
    end
    if arg0:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 50, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 3.2 - 0.4
    local local5 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 2 - 0.4
        local5 = 0
    end
    if local0 <= 50 then
        local4 = Flamberge_BOTH_ArtR_DIST_MAX
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local6 = local4
    local local7 = local4 + 0
    local local8 = local4 + 2
    local local9 = 50
    local local10 = 1.8
    local local11 = 2
    if local3 < 50 then
        local5 = 0
    end
    if local0 <= 50 then
        if local4 < local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, false, NPC_ATK_L2Hold)
            if local3 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local4, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            elseif local3 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local4, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local4, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, local4, 0, 0)
            if 40 <= local3 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local4, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            elseif 20 <= local3 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local4, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local4, 0, 0)
            end
        end
    elseif local4 < local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, false, NPC_ATK_L2Hold)
        if local3 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, local4, 0, 0)
        if 40 <= local3 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
        end
    end
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 2.6 - 0.4
    local local3 = 4
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 2.6 - 0.4
        local3 = -1
    end
    if 1 <= arg0:GetDist(TARGET_ENE_0) then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local4 = 33
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local4 = local4 + 34
            end
            if local0 <= local4 then
                local3 = 4
                local2 = 2.6 - 0.4
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local4 = 33
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local4 = local4 - 33
            end
            if local0 <= local4 then
                local3 = -1
                local2 = 2.6 - 0.4
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    local local4 = local2
    if arg0:GetSp(TARGET_SELF) < 50 then
        local3 = -1
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 2.6 - 0.4
        local local3 = 1 - 0.4
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 2.6 - 0.4
            local3 = 0.2 - 0.4
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act22(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local0 = 5.4 - 0.4
        local local1 = 6 - 0.4
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 5.6 - 0.4
            local1 = 5.6 - 0.4
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act23(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local1 = 5.4 - 0.4 - 3
        local local2 = 6 - 0.4 - 3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 5.6 - 0.4 - 3
            local2 = 5.6 - 0.4 - 3
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act24(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local0 = 5.4 - 0.4 - 5
        local local1 = 6 - 0.4 - 5
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 5.6 - 0.4 - 5
            local1 = 5.6 - 0.4 - 5
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg0:SetStringIndexedNumber("item_Knife", arg0:GetStringIndexedNumber("item_Knife") - 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 40
    local local3 = 1.8
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 75 then
            local4 = NPC_ATK_L2Hold
        end
    elseif local2 <= local1 and local0 <= 0 then
        local4 = NPC_ATK_L2Hold
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

function NPC_SpecialA_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 1.8
    local local3 = 4
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        if 40 <= local1 and local0 <= 100 then
            local4 = NPC_ATK_L2Hold
        end
    elseif 40 <= local1 and local0 <= 75 then
        local4 = NPC_ATK_L1Hold
    end
    if arg0:GetDist(TARGET_ENE_0) < 3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, local3, TARGET_ENE_0, false, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, local3, TARGET_ENE_0, true, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act46(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(0)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    if arg0:IsBothHandMode(TARGET_SELF) then
        if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        end
    elseif arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local4 = local4:TimingSetTimer(0, arg0:GetRandam_Int(25, 35), UPDATE_SUCCESS)
    local4:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act47(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    if arg0:IsBothHandMode(TARGET_SELF) then
        if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        end
    elseif arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local4:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_Act49(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialA_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local1 < 4 and local2 <= 50 then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) and local2 <= 33 and 20 <= local0 then
        arg2:ClearSubGoal()
        NPC_SpecialA_Act23(arg1, arg2)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) then
        if arg1:IsBothHandMode(TARGET_SELF) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 100150) then
                if local1 < 6 then
                    arg2:ClearSubGoal()
                    if local2 <= 50 then
                        if local0 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, AttDist, 0, 0)
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
                            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
                        elseif local0 <= 20 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, AttDist, 0, 0)
                            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
                        else
                            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, AttDist, 0, 0)
                        end
                    elseif local0 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, AttDist, 0, 0)
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, AttDist, 0, 0)
                    end
                    return true
                end
            elseif local1 < 2 then
                if local2 <= 50 and 20 <= local0 then
                    arg2:ClearSubGoal()
                    NPC_SpecialA_Act22(arg1, arg2)
                    return true
                end
            elseif local1 < 4 and local2 <= 50 and 20 <= local0 then
                arg2:ClearSubGoal()
                NPC_SpecialA_Act41(arg1, arg2)
                return true
            end
        elseif local1 < 3 and local2 <= 50 and 20 <= local0 then
            arg2:ClearSubGoal()
            NPC_SpecialA_Act41(arg1, arg2)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_ParryTiming) then
        if arg1:IsBothHandMode(TARGET_SELF) and arg1:GetEquipWeaponIndex(ARM_L) == WEP_Primary and local1 < 2 and local2 <= 50 and 20 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.05, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_Damaged) and local1 < 4 and local2 <= 33 and 20 <= local0 then
        arg2:ClearSubGoal()
        NPC_SpecialA_Act24(arg1, arg2)
        return true
    end
    if arg1:IsInterupt(INTERUPT_UseItem) then
        if local1 < 3.5 then
            if local2 <= 100 and 40 <= local0 then
                arg2:ClearSubGoal()
                NPC_Anri_Act1(arg1, arg2)
            end
        elseif local2 <= 100 and 50 <= local0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_DashTarget, 5, TARGET_ENE_0, 5, TARGET_SELF, -1)
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, 5, 5, 100)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_SuccessParry) then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 102440000 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        return true
    else
        return false
    end
end

return 
