RegisterTableGoal(GOAL_PotKingGreg_820000_Battle, "GOAL_PotKingGreg_820000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PotKingGreg_820000_Battle, true)

-----------------------------------------------------------------------
-- Initialize
-----------------------------------------------------------------------
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

-----------------------------------------------------------------------
-- Activate
-----------------------------------------------------------------------
Goal.Activate = function (goal, ai, arg2)
    arg2:AddSubGoal(GOAL_NPC_BlackGhost_Battle, 2)
    
    Init_Pseudo_Global(ai, arg2)
    
    ai:SetStringIndexedNumber("Dist_Rolling", 4.4)
    ai:SetStringIndexedNumber("Dist_BackStep", 2.6)
    ai:SetStringIndexedNumber("AddDistWalk", 0)
    ai:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local randomInt = ai:GetRandam_Int(1, 100)
    local curEnemyDist = ai:GetDist(TARGET_ENE_0)
    local curStamina = ai:GetSp(TARGET_SELF)
    local curNumber = ai:GetNumber(0)
    
    -- Force 2H mode
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 160770000)

    -- If not in 2H mode, switch to it
    if ai:HasSpecialEffectId(TARGET_SELF, 160770000) and not ai:IsBothHandMode(TARGET_SELF) then
        actChanceList[48] = 100 -- Switch Hand Mode
    -- If FP below 50
    elseif ai:GetMp(TARGET_SELF) <= 50 then
        if curEnemyDist <= 5 then
            actChanceList[2] = 10
            actChanceList[21] = 20
            actChanceList[22] = 0
            actChanceList[23] = 0
            actChanceList[24] = 30
            actChanceList[41] = 40
            actChanceList[43] = 1
        else
            actChanceList[43] = 100
        end
    elseif curStamina < 10 then
        if 5 <= curEnemyDist then
            actChanceList[1] = 10
            actChanceList[2] = 1
            actChanceList[22] = 20
            actChanceList[40] = 20
        else
            actChanceList[1] = 10
            actChanceList[2] = 1
            actChanceList[22] = 20
            actChanceList[40] = 20
        end
    elseif 5 <= curEnemyDist then
        actChanceList[1] = 30
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 30
        actChanceList[5] = 0
        actChanceList[20] = 30
        actChanceList[21] = 0
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 0
        actChanceList[25] = 0
        actChanceList[40] = 0
        actChanceList[41] = 0
    elseif 3 <= curEnemyDist then
        actChanceList[1] = 30
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 0
        actChanceList[20] = 0
        actChanceList[21] = 0
        actChanceList[22] = 10
        actChanceList[23] = 10
        actChanceList[24] = 0
        actChanceList[25] = 0
        actChanceList[40] = 40
        actChanceList[41] = 0
    elseif 1 <= curEnemyDist then
        actChanceList[1] = 40
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 0
        actChanceList[20] = 0
        actChanceList[21] = 20
        actChanceList[22] = 20
        actChanceList[23] = 0
        actChanceList[24] = 10
        actChanceList[25] = 0
        actChanceList[40] = 0
        actChanceList[41] = 0
    else
        actChanceList[1] = 30
        actChanceList[2] = 20
        actChanceList[3] = 20
        actChanceList[4] = 0
        actChanceList[5] = 0
        actChanceList[20] = 0
        actChanceList[21] = 20
        actChanceList[22] = 10
        actChanceList[23] = 0
        actChanceList[24] = 0
        actChanceList[25] = 0
        actChanceList[40] = 0
        actChanceList[41] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5111) then
        actChanceList[25] = 0
    end
    if ai:IsTargetGuard(TARGET_ENE_0) then
        actChanceList[2] = actChanceList[2] + 10
    end
    if SpaceCheck(ai, arg2, 180, ai:GetStringIndexedNumber("Dist_BackStep")) == false then
        actChanceList[21] = 0
    end
    if SpaceCheck(ai, arg2, -45, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, arg2, 45, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[22] = 0
    end
    if SpaceCheck(ai, arg2, -90, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, arg2, 90, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[23] = 0
    end
    if SpaceCheck(ai, arg2, -135, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, arg2, 135, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[24] = 0
    end
    if SpaceCheck(ai, arg2, 180, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[24] = 0
    end
    if SpaceCheck(ai, arg2, 180, 1) == false then
        actChanceList[41] = 0
    end
    if SpaceCheck(ai, arg2, -90, 1) == false and SpaceCheck(ai, arg2, 90, 1) == false then
        actChanceList[40] = 0
    end
    
    if curStamina < 20 then
        actChanceList[20] = 0
        actChanceList[21] = 0
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 0
    end
    
    actFuncList[1] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act01)
    actFuncList[2] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act02)
    actFuncList[3] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act03)
    actFuncList[4] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act04)
    actFuncList[5] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act05)
    actFuncList[6] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act06)
    actFuncList[19] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act19)
    actFuncList[20] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act20)
    actFuncList[21] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act21)
    actFuncList[22] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act22)
    actFuncList[23] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act23)
    actFuncList[24] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act24)
    actFuncList[25] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act25)
    actFuncList[40] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act40)
    actFuncList[41] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act41)
    actFuncList[42] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act42)
    actFuncList[43] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act43)
    actFuncList[44] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act44)
    actFuncList[45] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act45)
    actFuncList[46] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act46)
    actFuncList[47] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act47)
    actFuncList[48] = REGIST_FUNC(ai, arg2, NPC_PotKingGreg_Act48) -- Switch Hand Mode
    
    Common_Battle_Activate(ai, arg2, actChanceList, actFuncList, REGIST_FUNC(ai, arg2, NPC_PotKingGreg_ActAfter_AdjustSpace), actTblList)
    return 
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act19(arg0, arg1, arg2)
    local randomIntA = arg0:GetRandam_Int(1, 100)
    local randomIntB = arg0:GetRandam_Int(1, 100)
    local curEnemyDist = arg0:GetDist(TARGET_ENE_0)
    
    local constA = 3.4
    local constB = 0
    
    if arg0:IsBothHandMode(TARGET_SELF) then
        constA = 2.8
        constB = 100
    end
    
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    
    local constC = constA
    
    if arg0:GetSp(TARGET_SELF) < 50 then
        constB = 0
    end
    
    NPC_Approach_Act_Flex(arg0, arg1, constC, constA + 0, constA + 2, 100, constB, 1.8, 2)
    
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, constA, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, constC + 3, TARGET_ENE_0, false, 0)
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 3.4
    local local3 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 2.8
        local3 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2 + 0
    local local5 = 999
    local local6 = 0
    if local1 < 40 then
        local3 = 0
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = local2
        local5 = local2
        local6 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, local2, local4, local5, local6, local3, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local3 and local2 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 100 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 60 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 3.8
    local local3 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 4
        local3 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2 + 0
    local local5 = 999
    local local6 = 0
    if local1 < 40 then
        local3 = 0
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = local2
        local5 = local2
        local6 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, local2, local4, local5, local6, local3, 1.8, 2)
    if local0 <= 50 and 0 < local3 and local2 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 80 <= local1 and 67 < arg0:GetRandam_Int(1, 100) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local0 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 1.4
        local4 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3 + 0
    local local6 = 999
    local local7 = 0
    if arg0:GetSp(TARGET_SELF) < 30 then
        local4 = 0
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        local5 = local3
        local6 = local3
        local7 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local5, local6, local7, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 5.6
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 5.8
        local4 = 0
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3 + 0
    local local6 = 999
    local local7 = 0
    if arg0:GetSp(TARGET_SELF) < 40 then
        local4 = 0
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        local5 = local3
        local6 = local3
        local7 = 100
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local5, local6, local7, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 0
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    local local6 = local3 + 0
    local local7 = local3 + 2
    local local8 = 100
    local local9 = 1.8
    local local10 = 2
    if arg0:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 0
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    local local6 = local3 + 0
    local local7 = local3 + 2
    local local8 = 100
    local local9 = 1.8
    local local10 = 2
    if arg0:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 3.8
    local local3 = 4
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 3.6
        local3 = -1
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2
    if arg0:GetSp(TARGET_SELF) < 40 then
        local3 = -1
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 60 < arg0:GetSp(TARGET_SELF) then
        local local2 = 3.8
        local local3 = 1.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3.6
            local3 = 1.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act22(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 100 and 70 < arg0:GetSp(TARGET_SELF) then
        local local0 = 4.8
        local local1 = 4.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 3.8
            local1 = 3.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act23(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 100 and 70 < arg0:GetSp(TARGET_SELF) then
        local local1 = 4.8 - 2
        local local2 = 4.8 - 2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 3.8 - 2
            local2 = 3.8 - 2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act24(arg0, arg1, arg2)
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
    if arg0:GetRandam_Int(1, 100) <= 100 and 70 < arg0:GetSp(TARGET_SELF) then
        local local0 = 4.8 - 4
        local local1 = 4.8 - 4
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 3.8 - 4
            local1 = 3.8 - 4
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(3)
    arg0:SetStringIndexedNumber("Firebomb", arg0:GetStringIndexedNumber("Firebomb") - 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 10
    local local3 = 0
    local local4 = 2.5
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 0 then
            Guard = NPC_ATK_L1Hold
        end
        local3 = 999
    elseif local2 <= local1 and local0 <= 100 then
        Guard = NPC_ATK_L1Hold
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
    if arg0:GetDist(TARGET_ENE_0) < local3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), false, true, NPC_ATK_L1Hold)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 30
    local local3 = 0
    local local4 = 1.8
    local local5 = 5
    local local6 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 0 then
            local6 = NPC_ATK_L1Hold
        end
        local3 = 999
    elseif local2 <= local1 and local0 <= 100 then
        local6 = NPC_ATK_L1Hold
    end
    if arg0:GetDist(TARGET_ENE_0) < local3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, local5, TARGET_ENE_0, false, local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, local5, TARGET_ENE_0, true, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
function NPC_PotKingGreg_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

-----------------------------------------------------------------------
--
-----------------------------------------------------------------------
Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetDist(TARGET_ENE_0) < 3 and 20 <= arg1:GetSp(TARGET_SELF) and arg1:GetRandam_Int(1, 100) <= 50 then
        arg2:ClearSubGoal()
        NPC_PotKingGreg_Act40(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

return 
