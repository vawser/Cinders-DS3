RegisterTableGoal(GOAL_NPC_FighterWithWolf, "GOAL_NPC_FighterWithWolf")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_FighterWithWolf, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(3, 0)
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
    arg1:SetEventMoveTarget(4502870)
    local local8 = arg1:GetDist(POINT_EVENT)
    if arg1:GetNumber(0) == 0 then
        local0[43] = 100
    elseif local5 <= 0.45 and 0.3 <= local5 and not arg1:HasSpecialEffectId(TARGET_SELF, 13102) and arg1:GetNumber(1) == 0 then
        local0[44] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13102) then
        if local7 <= 30 and local4 <= 3.2 then
            local0[1] = 1
            local0[24] = 20
            local0[40] = 1
            local0[41] = 80
        elseif local7 <= 30 then
            local0[1] = 40
            local0[40] = 60
            local0[41] = 1
        elseif 10 <= local4 then
            local0[1] = 0
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 45
            local0[6] = 0
            local0[7] = 45
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[40] = 0
            local0[41] = 0
        elseif 4 <= local4 then
            local0[1] = 0
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 30
            local0[6] = 0
            local0[7] = 30
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 0
            local0[40] = 30
            local0[41] = 0
        elseif 2.5 <= local4 then
            local0[1] = 40
            local0[2] = 30
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
            local0[24] = 10
            local0[40] = 0
            local0[41] = 20
        elseif 1 <= local4 then
            local0[1] = 50
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[15] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 0
            local0[23] = 20
            local0[24] = 20
            local0[40] = 0
            local0[41] = 0
        else
            local0[1] = 30
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[15] = 20
            local0[20] = 0
            local0[21] = 20
            local0[22] = 0
            local0[23] = 0
            local0[24] = 10
            local0[40] = 10
            local0[41] = 0
        end
    elseif local7 <= 30 and local4 <= 3.2 then
        local0[1] = 1
        local0[24] = 20
        local0[40] = 1
        local0[41] = 80
    elseif local7 <= 30 then
        local0[1] = 40
        local0[40] = 60
        local0[41] = 1
    elseif 6 <= local4 then
        local0[1] = 20
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[15] = 0
        local0[20] = 50
        local0[21] = 0
        local0[22] = 10
        local0[23] = 0
        local0[24] = 0
        local0[40] = 0
        local0[41] = 0
        if 0.9 <= local5 then
            local0[20] = 0
        end
    elseif 2.5 <= local4 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 10
        local0[4] = 10
        local0[5] = 10
        local0[6] = 0
        local0[7] = 10
        local0[15] = 0
        local0[20] = 30
        local0[21] = 0
        local0[22] = 10
        local0[23] = 0
        local0[24] = 0
        local0[40] = 10
        local0[41] = 0
    elseif 1 <= local4 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 15
        local0[4] = 15
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[15] = 0
        local0[20] = 0
        local0[21] = 0
        local0[22] = 20
        local0[23] = 0
        local0[24] = 0
        local0[40] = 20
        local0[41] = 0
    else
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[15] = 20
        local0[20] = 0
        local0[21] = 20
        local0[22] = 0
        local0[23] = 0
        local0[24] = 10
        local0[40] = 10
        local0[41] = 0
    end
    if arg1:IsFinishTimer(1) == false then
        local0[5] = 0
    end
    if arg1:IsFinishTimer(2) == false then
        local0[6] = 0
    end
    if arg1:IsFinishTimer(3) == false then
        local0[7] = 0
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
    if local7 < 5 then
        local0[21] = 0
        local0[22] = 0
        local0[23] = 0
        local0[24] = 0
    end
    if 0.45 <= local5 then
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
    end
    arg1:ChangeEquipMagic(2)
    local1[1] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act07)
    local1[15] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act24)
    local1[40] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_Act4)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, NPC_FighterWithWolf_ActAfter_AdjustSpace), local2)
    return 
end

function NPC_FighterWithWolf_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 0.91
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 0.91
        local4 = 100
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 0
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 100
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local2 < 60 then
        local4 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 6, local3 + 6, 100, local4, 1.8, 2)
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and not arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
        elseif not arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
        end
    end
    if 50 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 25 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 1.36
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 1.36
        local4 = 100
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 0
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 100
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if local2 < 60 then
        local4 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 6, local3 + 6, 100, local4, 1.8, 2)
    if 35 <= local2 and 60 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act03(arg0, arg1, arg2)
    local local0 = 4.81
    local local1 = 2.93
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.2, TARGET_ENE_0, 4.5, TARGET_SELF, false, NPC_ATK_L2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.6, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L2)
        local4:SetLifeEndSuccess(true)
    else
        local local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.6, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L2)
        local4:SetLifeEndSuccess(true)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act04(arg0, arg1, arg2)
    local local0 = 4.81
    local local1 = 1.5
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.2, TARGET_ENE_0, 1.5, TARGET_SELF, false, NPC_ATK_L2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L2)
        local4:SetLifeEndSuccess(true)
    else
        local local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L2)
        local4:SetLifeEndSuccess(true)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act05(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(0)
    arg0:SetTimer(1, 8)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local0 = 4
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 10, local0 + 10, 100, 0, 2.5, 4)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local1:SetLifeEndSuccess(true)
    local1 = arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    local1:SetLifeEndSuccess(true)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, 999, true, false, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, 999, true, false, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act06(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(1)
    arg0:SetTimer(2, 30)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local0 = 6
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 4, local0 + 4, 100, 0, 2.5, 4)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local1:SetLifeEndSuccess(true)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.2, TARGET_ENE_0, 0, 999, true, false, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.2, TARGET_ENE_0, 1, 999, true, false, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act07(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(2)
    arg0:SetTimer(3, 12)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local0 = 10
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 10, local0 + 10, 100, 0, 2.5, 4)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local1:SetLifeEndSuccess(true)
    local1 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, NPC_ATK_Down, TARGET_ENE_0, 999, 0, 0)
    local1:SetLifeEndSuccess(true)
    local1 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, NPC_ATK_Down, TARGET_ENE_0, 999, 0, 0)
    local1:SetLifeEndSuccess(true)
    local1 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, NPC_ATK_Down, TARGET_ENE_0, 999, 0, 0)
    local1:SetLifeEndSuccess(true)
    local1 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.3, NPC_ATK_Down, TARGET_ENE_0, 999, 0, 0)
    local1:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act15(arg0, arg1, arg2)
    local local0 = 0
    if arg0:IsBothHandMode(TARGET_SELF) and not arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
        local0 = 100
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 0
    end
    if not arg0:IsBothHandMode(TARGET_SELF) and not arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
        local0 = 100
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:IsBothHandMode(TARGET_SELF) and arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
        local0 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    NPC_Approach_Act_Flex(arg0, arg1, 1.4, 1.4 + 2, 1.4 + 2, 0, local0, 1.8, 2)
    if DistToR1 <= targetDist and not arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if not arg0:IsBothHandMode(TARGET_SELF) and not arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local2 = 3.49
        local local3 = 3.79
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3.49
            local3 = 3.79
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3.49
            local3 = 3.49
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 80)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act22(arg0, arg1, arg2)
    if 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local0 = 1.83
        local local1 = 2.14
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 1.83
            local1 = 2.14
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 20
            local1 = 20
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 80)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act23(arg0, arg1, arg2)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if 4 <= arg0:GetDist(TARGET_ENE_0) then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local0 = 1.83
        local local1 = 2.14
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 1.83
            local1 = 2.14
        end
        if arg0:GetEquipWeaponIndex(ARM_R) ~= WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 20
            local1 = 20
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 80)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if 4 <= local0 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 1.83
        local local2 = 2.14
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 1.83
            local2 = 2.14
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

function NPC_FighterWithWolf_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        if 40 <= local2 and arg0:IsBothHandMode(TARGET_SELF) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, 0)
        end
    elseif 40 <= local2 and arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if not arg0:IsBothHandMode(TARGET_SELF) and not arg0:HasSpecialEffectId(TARGET_SELF, 13102) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if 40 <= arg0:GetSp(TARGET_SELF) and not arg0:HasSpecialEffectId(TARGET_SELF, 13102) and arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 7, TARGET_ENE_0, true, NPC_ATK_L1Hold)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 7, TARGET_ENE_0, true, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act43(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    NPC_Approach_Act_Flex(arg0, arg1, 2, 999, 999, 100, 0, 11, 11)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act44(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.8, NPC_ATK_Gesture18, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.8, NPC_ATK_Gesture18, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.8, NPC_ATK_Gesture18, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act45(arg0, arg1, arg2)
    arg0:SetNumber(2, 1)
    arg0:SetEventMoveTarget(4502870)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_ButtonXmark, POINT_EVENT, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_ButtonXmark, POINT_EVENT, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    NPC_FighterWithWolf_Act07(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_Act46(arg0, arg1, arg2)
    arg0:SetNumber(2, 1)
    arg0:SetEventMoveTarget(4502870)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 3, TARGET_SELF, false, -1)
    NPC_FighterWithWolf_Act07(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_FighterWithWolf_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local1 < 1 then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_Shoot) then
        if local2 <= 65 and 20 <= local0 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
            arg2:ClearSubGoal()
            NPC_FighterWithWolf_Act22(arg1, arg2, paramTbl)
            return true
        elseif not arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) and 4 <= local1 then
            arg2:ClearSubGoal()
            NPC_FighterWithWolf_Act20(arg1, arg2, paramTbl)
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 13102) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 100130) then
                if local1 <= 3 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
                elseif local1 <= 6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
                end
            elseif local1 < 2 and 40 <= local0 and local2 <= 60 and not arg1:HasSpecialEffectId(TARGET_ENE_0, 100130) then
                arg2:ClearSubGoal()
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
                end
                return true
            elseif local1 < 2 and 40 <= local0 and arg1:HasSpecialEffectId(TARGET_ENE_0, 100130) then
                arg2:ClearSubGoal()
                NPC_FighterWithWolf_Act24(arg1, arg2, paramTbl)
            elseif local1 <= 3 and 40 <= local0 and local2 <= 20 then
                arg2:ClearSubGoal()
                NPC_FighterWithWolf_Act21(arg1, arg2, paramTbl)
                return true
            end
        elseif local1 <= 4 and 40 <= local0 and local2 <= 40 then
            arg2:ClearSubGoal()
            NPC_FighterWithWolf_Act22(arg1, arg2, paramTbl)
            return true
        end
    end
    return false
end

return 
