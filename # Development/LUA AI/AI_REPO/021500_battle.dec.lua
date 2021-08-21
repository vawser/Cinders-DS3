RegisterTableGoal(GOAL_NPC_Maid, "GOAL_NPC_Maid")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Maid, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_LOCALPLAYER)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    if arg1:GetNpcThinkParamID() == 21520 then
        if not arg1:IsInsideTargetRegion(TARGET_SELF, 5102857) then
            arg1:SetStringIndexedNumber("NPC_PointFrontWall", 5102855)
            arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
        elseif arg1:IsSearchTarget(TARGET_ENE_0) then
            arg1:SetStringIndexedNumber("NPC_PointFrontWall", 5102855)
            arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
        end
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local2 = {}
    local local3 = {}
    local local4 = {}
    Common_Clear_Param(local2, local3, local4)
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = arg1:GetHpRate(TARGET_SELF)
    local local7 = arg1:GetMp(TARGET_SELF)
    local local8 = arg1:GetSp(TARGET_SELF)
    if arg1:GetNpcThinkParamID() == 21520 then
        if local6 <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) and not arg1:HasSpecialEffectId(TARGET_SELF, 3150) then
            if 7 <= local1 then
                local2[42] = 1000
            else
                local2[1] = 100
                local2[21] = 100
                local2[22] = 0
                local2[23] = 0
                local2[24] = 300
                local2[40] = 0
                local2[41] = 300
                local2[42] = 200
            end
        elseif local8 <= 20 and local1 <= 5.2 then
            local2[1] = 1
            local2[24] = 200
            local2[40] = 1
            local2[41] = 800
        elseif local8 <= 60 and 5.2 < local1 then
            local2[1] = 1
            local2[40] = 1000
            local2[41] = 1
        elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
            if 7.5 <= local1 then
                local2[1] = 0
                local2[2] = 0
                local2[3] = 0
                local2[5] = 0
                local2[6] = 300
                local2[15] = 0
                local2[20] = 0
                local2[21] = 0
                local2[22] = 0
                local2[23] = 0
                local2[24] = 0
                local2[40] = 200
                local2[41] = 0
            elseif 5 <= local1 then
                local2[1] = 50
                local2[2] = 50
                local2[3] = 0
                local2[5] = 0
                local2[6] = 300
                local2[15] = 0
                local2[20] = 100
                local2[21] = 0
                local2[22] = 0
                local2[23] = 0
                local2[24] = 0
                local2[40] = 350
                local2[41] = 0
            elseif 3 <= local1 then
                local2[1] = 250
                local2[2] = 250
                local2[3] = 150
                local2[5] = 0
                local2[15] = 0
                local2[20] = 50
                local2[21] = 0
                local2[22] = 0
                local2[23] = 0
                local2[24] = 0
                local2[40] = 50
                local2[41] = 0
            elseif 1 <= local1 then
                local2[1] = 50
                local2[2] = 0
                local2[3] = 0
                local2[5] = 0
                local2[15] = 0
                local2[20] = 0
                local2[21] = 0
                local2[22] = 0
                local2[23] = 250
                local2[24] = 200
                local2[40] = 0
                local2[41] = 100
            else
                local2[1] = 50
                local2[2] = 0
                local2[3] = 0
                local2[5] = 0
                local2[15] = 0
                local2[20] = 0
                local2[21] = 0
                local2[22] = 0
                local2[23] = 100
                local2[24] = 350
                local2[40] = 50
                local2[41] = 100
            end
        elseif 7.5 <= local1 then
            local2[1] = 0
            local2[2] = 0
            local2[3] = 0
            local2[5] = 0
            local2[6] = 400
            local2[15] = 0
            local2[20] = 0
            local2[21] = 0
            local2[22] = 0
            local2[23] = 0
            local2[24] = 0
            local2[40] = 100
            local2[41] = 0
        elseif 5 <= local1 then
            local2[1] = 0
            local2[2] = 0
            local2[3] = 0
            local2[5] = 0
            local2[6] = 300
            local2[15] = 0
            local2[20] = 0
            local2[21] = 0
            local2[22] = 0
            local2[23] = 0
            local2[24] = 100
            local2[40] = 150
            local2[41] = 0
        elseif 3 <= local1 then
            local2[1] = 0
            local2[2] = 0
            local2[3] = 0
            local2[5] = 0
            local2[15] = 0
            local2[20] = 0
            local2[21] = 0
            local2[22] = 0
            local2[23] = 0
            local2[24] = 100
            local2[40] = 100
            local2[41] = 250
        elseif 1 <= local1 then
            local2[1] = 0
            local2[2] = 0
            local2[3] = 0
            local2[5] = 0
            local2[15] = 0
            local2[20] = 0
            local2[21] = 0
            local2[22] = 0
            local2[23] = 0
            local2[24] = 300
            local2[40] = 0
            local2[41] = 100
        else
            local2[1] = 0
            local2[2] = 0
            local2[3] = 0
            local2[5] = 0
            local2[15] = 0
            local2[20] = 0
            local2[21] = 0
            local2[22] = 0
            local2[23] = 0
            local2[24] = 300
            local2[40] = 0
            local2[41] = 100
        end
    elseif local6 <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) and not arg1:HasSpecialEffectId(TARGET_SELF, 3150) then
        if 5 <= local1 then
            local2[42] = 1000
        else
            local2[1] = 100
            local2[21] = 100
            local2[22] = 0
            local2[23] = 0
            local2[24] = 300
            local2[40] = 0
            local2[41] = 300
            local2[42] = 200
        end
    elseif local8 <= 50 and local1 <= 3.2 then
        local2[1] = 1
        local2[24] = 650
        local2[40] = 1
        local2[41] = 350
        if local8 <= 20 then
            local2[24] = 1
        end
    elseif local8 <= 70 and 3.2 < local1 then
        local2[1] = 1
        local2[40] = 1000
        local2[41] = 1
    elseif 7.5 <= local1 then
        local2[1] = 0
        local2[2] = 50
        local2[3] = 0
        local2[5] = 0
        local2[6] = 250
        local2[15] = 0
        local2[20] = 0
        local2[21] = 0
        local2[22] = 0
        local2[23] = 0
        local2[24] = 0
        local2[40] = 200
        local2[41] = 0
    elseif 5 <= local1 then
        local2[1] = 0
        local2[2] = 50
        local2[3] = 0
        local2[5] = 0
        local2[6] = 400
        local2[15] = 0
        local2[20] = 0
        local2[21] = 0
        local2[22] = 0
        local2[23] = 0
        local2[24] = 0
        local2[40] = 150
        local2[41] = 0
    elseif 3 <= local1 then
        local2[1] = 50
        local2[2] = 100
        local2[3] = 0
        local2[5] = 50
        local2[6] = 150
        local2[15] = 0
        local2[20] = 0
        local2[21] = 0
        local2[22] = 0
        local2[23] = 0
        local2[24] = 0
        local2[40] = 150
        local2[41] = 0
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local2[40] = 0
        end
        if arg1:GetNpcThinkParamID() ~= 21520 and arg1:HasSpecialEffectId(TARGET_SELF, 130092600) and 60 < local8 then
            local2[5] = local2[5] + 50
        end
    elseif 1 <= local1 then
        local2[1] = 100
        local2[2] = 50
        local2[3] = 0
        local2[5] = 150
        local2[15] = 0
        local2[20] = 0
        local2[21] = 100
        local2[22] = 0
        local2[23] = 50
        local2[24] = 0
        local2[40] = 10
        local2[41] = 50
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local2[21] = 0
            local2[41] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 130092600) and 60 < local8 and arg1:IsFinishTimer(0) then
            local2[5] = local2[5] + 50
        end
    else
        local2[1] = 50
        local2[2] = 50
        local2[3] = 0
        local2[5] = 200
        local2[15] = 0
        local2[20] = 0
        local2[21] = 0
        local2[22] = 0
        local2[23] = 0
        local2[24] = 200
        local2[40] = 0
        local2[41] = 50
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local2[21] = 50
            local2[41] = 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 130092600) and 70 < local8 and arg1:IsFinishTimer(0) then
            local2[5] = local2[5] + 300
        end
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        local2[21] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local2[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local2[23] = 0
    end
    if SpaceCheck(arg1, arg2, -135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local2[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local2[24] = 0
    end
    if local8 <= 0 then
        local2[21] = 0
        local2[22] = 0
        local2[23] = 0
        local2[24] = 0
    end
    if arg1:GetNpcThinkParamID() ~= 21520 and arg1:HasSpecialEffectId(TARGET_SELF, 130092600) then
        local2[22] = local2[23]
        local2[6] = 0
        local2[21] = 0
        local2[23] = 0
        local2[24] = 0
    end
    if arg1:GetNpcThinkParamID() ~= 21520 and arg1:HasSpecialEffectId(TARGET_SELF, 130092600) and 60 < local8 then
        local2[1] = local2[1] + 100
        local2[2] = local2[2] + 150
        local2[3] = local2[3] + 100
        local2[21] = 0
        local2[22] = 0
        local2[23] = 0
        local2[24] = 0
        local2[40] = 0
    end
    local3[1] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act01)
    local3[2] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act02)
    local3[3] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act03)
    local3[5] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act05)
    local3[6] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act06)
    local3[15] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act15)
    local3[20] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act20)
    local3[21] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act21)
    local3[22] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act22)
    local3[23] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act23)
    local3[24] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act24)
    local3[26] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act26)
    local3[40] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act40)
    local3[41] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act41)
    local3[42] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act42)
    local3[43] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act43)
    local3[44] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act44)
    local3[45] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act45)
    local3[46] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act46)
    local3[47] = REGIST_FUNC(arg1, arg2, NPC_Maid_Act47)
    Common_Battle_Activate(arg1, arg2, local2, local3, REGIST_FUNC(arg1, arg2, NPC_Maid_ActAfter_AdjustSpace), local4)
    return 
end

function NPC_Maid_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 3
    local local4 = 0
    if 2.5 <= arg0:GetDist(TARGET_ENE_0) and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        local3 = 2.6
    end
    if local2 < 20 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 4, 100, local4, 1.8, 2)
    if 20 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 3.1
    local local4 = 0
    if 2.5 <= local1 and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        local3 = 2.6
    end
    if local2 < 20 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 4, 100, local4, 1.8, 2)
    if arg0:GetNpcThinkParamID() ~= 21520 and (not not arg0:HasSpecialEffectId(TARGET_SELF, 130092600) or 3 < local1) then
        if arg0:GetRandam_Int(1, 100) < 30 then
            if 50 <= local2 and 60 < local0 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local3, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local3, 0, 0)
            end
        elseif 50 <= local2 and 60 < local0 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
        end
    elseif 50 <= local2 and 60 < local0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act03(arg0, arg1, arg2)
    local local0 = 5.1
    local local1 = arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 2, local0 + 4, 0, 0, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 2.2
    local local5 = 0
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local3 < 20 then
        local5 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local4, local4 + 2, local4 + 4, 100, local5, 1.8, 2)
    if 50 <= local3 then
        local local6 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, 3 + 3, 0, 0)
        local6:TimingSetTimer(0, 4, AI_TIMING_SET__ACTIVATE)
        local6 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
        local6:SetTargetAngle(0, 0, 180)
    else
        local local6 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2, TARGET_ENE_0, 3 + 3, 0, 0)
        local6:TimingSetTimer(0, 2, AI_TIMING_SET__ACTIVATE)
    end
    NPC_Approach_Act_Flex(arg0, arg1, 0.5, 999, 999, 0, 0, 1, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 7
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = arg0:GetRandam_Float(1.5, 3)
    local local6 = arg0:GetRandam_Int(0, 1)
    local local7 = arg0:GetRandam_Int(45, 60)
    if local2 < 20 then
        local4 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) < 5 then
        if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        elseif local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    else
        NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 4, 100, local4, 1.8, 2)
    end
    if 60 < local2 then
        if local0 < 50 then
            local local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local6, local7, true, true, NPC_ATK_L1Hold)
            local8:SetTargetRange(0, 1.8, 999)
            local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, local6, local7, true, true, -1)
            local8:SetTargetRange(0, 2.5, 999)
            local8 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
            local8:SetTargetRange(0, 2.5, 999)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, local6, local7, true, true, -1)
        else
            local local8 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
            local8:SetTargetRange(0, 2.5, 999)
            local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, local6, local7, true, true, -1)
            local8:SetTargetRange(0, 2.5, 999)
            local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, local6, local7, true, true, NPC_ATK_L1Hold)
            local8:SetTargetRange(0, 1.8, 999)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, local6, local7, true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act15(arg0, arg1, arg2)
    local local0 = 3
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

function NPC_Maid_Act20(arg0, arg1, arg2)
    local local0 = 3
    local local1 = 3
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 3
        local1 = 3
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

function NPC_Maid_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 30 < arg0:GetSp(TARGET_SELF) then
        local local2 = 3
        local local3 = 3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3
            local3 = 3
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act22(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 30 < arg0:GetSp(TARGET_SELF) then
        local local1 = 3
        local local2 = 3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 3
            local2 = 3
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act23(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 80 and 30 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 3
        local local2 = 3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 3
            local2 = 3
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 30 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 3
        local local2 = 3
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 3
            local2 = 3
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 2, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(1, 1.5)
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local1 = 1
    end
    if arg0:GetNpcThinkParamID() == 21520 then
        local1 = 0
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

function NPC_Maid_Act41(arg0, arg1, arg2)
    local local0 = 100
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local3 = 1
    end
    if arg0:GetNpcThinkParamID() == 21520 then
        local3 = 0
    end
    local local4 = -1
    if arg0:GetDist(TARGET_ENE_0) < 2 and arg0:IsBothHandMode(TARGET_SELF) and 60 < local2 then
        local4 = NPC_ATK_L1Hold
    end
    if arg0:GetRandam_Int(1, 100) <= 0 and 0 < local2 then
        local4 = NPC_ATK_L2Hold
        if not arg0:IsBothHandMode(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 2, TARGET_ENE_0, local3, local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Maid_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local1 < 1.5 then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) and local1 < 1.6 and 90 < local0 then
        if arg1:IsFinishTimer(0) and not arg1:HasSpecialEffectId(TARGET_SELF, 130092600) then
            if arg1:IsBothHandMode(TARGET_SELF) and local2 < 40 then
                arg2:ClearSubGoal()
                NPC_Maid_Act05(arg1, arg2)
                arg1:SetTimer(0, 2)
                return true
            elseif local2 < 80 then
                arg2:ClearSubGoal()
                NPC_Maid_Act24(arg1, arg2)
                return true
            else
                arg2:ClearSubGoal()
                NPC_Maid_Act23(arg1, arg2)
                return true
            end
        elseif local2 < 50 then
            arg2:ClearSubGoal()
            NPC_Maid_Act24(arg1, arg2)
            return true
        else
            arg2:ClearSubGoal()
            NPC_Maid_Act23(arg1, arg2)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        if local2 < 60 and 0 < local0 then
            NPC_Maid_Act23(arg1, arg2, paramTbl)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), 0, true, true, -1)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfAngle) and arg1:IsTargetOutOfAngleInterruptSlot(0) and 0 < local0 then
        arg2:ClearSubGoal()
        NPC_Maid_Act23(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) and 0 < local0 and not arg1:HasSpecialEffectId(TARGET_SELF, 130092600) and arg1:GetNpcThinkParamID() ~= 21520 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 100130) then
            if 5 < local1 then
                arg2:ClearSubGoal()
                NPC_Maid_Act22(arg1, arg2, paramTbl)
                return true
            elseif local2 <= 20 then
                arg2:ClearSubGoal()
                NPC_Maid_Act23(arg1, arg2, paramTbl)
                return true
            elseif local2 <= 50 then
                arg2:ClearSubGoal()
                NPC_Maid_Act22(arg1, arg2, paramTbl)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), 0, true, true, -1)
            return true
        end
    end
    return false
end

return 
