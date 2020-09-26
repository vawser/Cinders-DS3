RegisterTableGoal(GOAL_NPC_Captain_Morrel, "GOAL_NPC_Captain_Morrel")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Captain_Morrel, true)

Goal.Initialize = function (self, ai, goal, num)
    return 
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    
    goal:AddSubGoal(GOAL_NPC_BlackGhost_Battle, 2)
    
    ai:SetStringIndexedNumber("Dist_Rolling", 4.4)
    ai:SetStringIndexedNumber("Dist_BackStep", 2.6)
    ai:SetStringIndexedNumber("AddDistWalk", 0)
    ai:SetStringIndexedNumber("AddDistRun", 0.2)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local randInt = ai:GetRandam_Int(1, 100)
    local curDist = ai:GetDist(TARGET_ENE_0)
    local curStamina = ai:GetSp(TARGET_SELF)
    local getNumber = ai:GetNumber(0)
    
    if ai:IsBothHandMode(TARGET_SELF) then
        Madmode = 1
    else
        Madmode = 0
    end
    
    if ai:GetMp(TARGET_SELF) <= 50 then
        if curDist <= 5 then
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
        if 5 <= curDist then
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
    elseif 5 <= curDist then
        actChanceList[1] = 30
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 30
        actChanceList[5] = 0
        actChanceList[20] = 30 * Madmode
        actChanceList[21] = 0
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 0
        actChanceList[25] = 0
        actChanceList[40] = 0
        actChanceList[41] = 0
    elseif 3 <= curDist then
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
    elseif 1 <= curDist then
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
    
    if SpaceCheck(ai, goal, 180, ai:GetStringIndexedNumber("Dist_BackStep")) == false then
        actChanceList[21] = 0
    end
    
    if SpaceCheck(ai, goal, -45, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 45, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[22] = 0
    end
    
    if SpaceCheck(ai, goal, -90, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 90, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[23] = 0
    end
    
    if SpaceCheck(ai, goal, -135, ai:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(ai, goal, 135, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[24] = 0
    end
    
    if SpaceCheck(ai, goal, 180, ai:GetStringIndexedNumber("Dist_Rolling")) == false then
        actChanceList[24] = 0
    end
    
    if SpaceCheck(ai, goal, 180, 1) == false then
        actChanceList[41] = 0
    end
    
    if SpaceCheck(ai, goal, -90, 1) == false and SpaceCheck(ai, goal, 90, 1) == false then
        actChanceList[40] = 0
    end
    
    if curStamina < 20 then
        actChanceList[20] = 0
        actChanceList[21] = 0
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 0
    end
    
    actFuncList[1] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act06)
    actFuncList[19] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act19)
    actFuncList[20] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act22)
    actFuncList[23] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act23)
    actFuncList[24] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act24)
    actFuncList[25] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act25)
    actFuncList[40] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act40)
    actFuncList[41] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act41)
    actFuncList[42] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act42)
    actFuncList[43] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act43)
    actFuncList[44] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act44)
    actFuncList[45] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act45)
    actFuncList[46] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act46)
    actFuncList[47] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act47)
    actFuncList[48] = REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_Act48)
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, NPC_SnakeShaman_Minion1_ActAfter_AdjustSpace), actTblList)
    return 
end

function NPC_SnakeShaman_Minion1_Act19(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = 3.4
    local local4 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        local3 = 2.8
        local4 = 100
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    if self:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(self, ai, local5, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local5 + 3, TARGET_ENE_0, false, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act01(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetSp(TARGET_SELF)
    local local2 = 3.4
    local local3 = 100
    if self:IsBothHandMode(TARGET_SELF) then
        local2 = 2.8
        local3 = 0
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2 + 0
    local local5 = 999
    local local6 = 0
    if local1 < 40 then
        local3 = 0
    end
    if self:IsBothHandMode(TARGET_SELF) then
        local4 = local2
        local5 = local2
        local6 = 100
    end
    NPC_Approach_Act_Flex(self, ai, local2, local4, local5, local6, local3, 1.8, 2)
    if self:GetRandam_Int(1, 100) <= 50 and 0 < local3 and local2 <= self:GetDist(TARGET_ENE_0) then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 100 <= local1 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 60 <= local1 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act02(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetSp(TARGET_SELF)
    local local2 = 3.8
    local local3 = 100
    if self:IsBothHandMode(TARGET_SELF) then
        local2 = 4
        local3 = 0
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2 + 0
    local local5 = 999
    local local6 = 0
    if local1 < 40 then
        local3 = 0
    end
    if self:IsBothHandMode(TARGET_SELF) then
        local4 = local2
        local5 = local2
        local6 = 100
    end
    NPC_Approach_Act_Flex(self, ai, local2, local4, local5, local6, local3, 1.8, 2)
    if local0 <= 50 and 0 < local3 and local2 <= self:GetDist(TARGET_ENE_0) then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 80 <= local1 and 67 < self:GetRandam_Int(1, 100) then
        if local0 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local0 <= 75 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local0 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local2, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act03(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 100
    if self:IsBothHandMode(TARGET_SELF) then
        local3 = 1.4
        local4 = 0
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3 + 0
    local local6 = 999
    local local7 = 0
    if self:GetSp(TARGET_SELF) < 30 then
        local4 = 0
    end
    if self:IsBothHandMode(TARGET_SELF) then
        local5 = local3
        local6 = local3
        local7 = 100
    end
    NPC_Approach_Act_Flex(self, ai, local3, local5, local6, local7, local4, 1.8, 2)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act04(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = 5.6
    local local4 = 100
    if self:IsBothHandMode(TARGET_SELF) then
        local3 = 5.8
        local4 = 0
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3 + 0
    local local6 = 999
    local local7 = 0
    if self:GetSp(TARGET_SELF) < 40 then
        local4 = 0
    end
    if self:IsBothHandMode(TARGET_SELF) then
        local5 = local3
        local6 = local3
        local7 = 100
    end
    NPC_Approach_Act_Flex(self, ai, local3, local5, local6, local7, local4, 1.8, 2)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act05(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 0
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if not self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    local local6 = local3 + 0
    local local7 = local3 + 2
    local local8 = 100
    local local9 = 1.8
    local local10 = 2
    if self:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act06(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = 1.4
    local local4 = 0
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_BackStep")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    local local6 = local3 + 0
    local local7 = local3 + 2
    local local8 = 100
    local local9 = 1.8
    local local10 = 2
    if self:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act20(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetDist(TARGET_ENE_0)
    local local2 = 3.8
    local local3 = 4
    if self:IsBothHandMode(TARGET_SELF) then
        local2 = 3.6
        local3 = -1
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = local2
    if self:GetSp(TARGET_SELF) < 40 then
        local3 = -1
    end
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act21(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = self:GetRandam_Int(1, 100)
    if SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_BackStep")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if self:GetRandam_Int(1, 100) <= 80 and 60 < self:GetSp(TARGET_SELF) then
        local local2 = 3.8
        local local3 = 1.8
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            local2 = 3.6
            local3 = 1.8
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act22(self, ai, goal)
    if 5 <= self:GetDist(TARGET_ENE_0) and SpaceCheck(self, ai, 0, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(self, ai, -45, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(self, ai, 45, self:GetStringIndexedNumber("Dist_Rolling")) == true then
            if self:GetRandam_Int(1, 100) <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(self, ai, 45, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if self:GetRandam_Int(1, 100) <= 100 and 70 < self:GetSp(TARGET_SELF) then
        local local0 = 4.8
        local local1 = 4.8
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            local0 = 3.8
            local1 = 3.8
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act23(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    if SpaceCheck(self, ai, -90, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(self, ai, 90, self:GetStringIndexedNumber("Dist_Rolling")) == true then
            if self:GetRandam_Int(1, 100) <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(self, ai, 90, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if self:GetRandam_Int(1, 100) <= 100 and 70 < self:GetSp(TARGET_SELF) then
        local local1 = 4.8 - 2
        local local2 = 4.8 - 2
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            local1 = 3.8 - 2
            local2 = 3.8 - 2
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act24(self, ai, goal)
    if self:GetDist(TARGET_ENE_0) <= 1 and SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(self, ai, -135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(self, ai, 135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
            if self:GetRandam_Int(1, 100) <= 50 then
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(self, ai, 135, self:GetStringIndexedNumber("Dist_Rolling")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if self:GetRandam_Int(1, 100) <= 100 and 70 < self:GetSp(TARGET_SELF) then
        local local0 = 4.8 - 4
        local local1 = 4.8 - 4
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            local0 = 3.8 - 4
            local1 = 3.8 - 4
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act25(self, ai, goal)
    self:ChangeEquipItem(3)
    self:SetStringIndexedNumber("Firebomb", self:GetStringIndexedNumber("Firebomb") - 1)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act40(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetSp(TARGET_SELF)
    local local2 = 10
    local local3 = 0
    local local4 = 2.5
    if self:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 0 then
            Guard = NPC_ATK_L1Hold
        end
        local3 = 999
    elseif local2 <= local1 and local0 <= 100 then
        Guard = NPC_ATK_L1Hold
    end
    local local5 = 0
    if SpaceCheck(self, ai, -90, 1) == true then
        if SpaceCheck(self, ai, 90, 1) == true then
            if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local5 = 0
            else
                local5 = 1
            end
        else
            local5 = 0
        end
    elseif SpaceCheck(self, ai, 90, 1) == true then
        local5 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    if self:GetDist(TARGET_ENE_0) < local3 then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, self:GetRandam_Int(75, 90), false, true, NPC_ATK_L1Hold)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local5, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act41(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetSp(TARGET_SELF)
    local local2 = 30
    local local3 = 0
    local local4 = 1.8
    local local5 = 5
    local local6 = 100
    if self:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 0 then
            local6 = NPC_ATK_L1Hold
        end
        local3 = 999
    elseif local2 <= local1 and local0 <= 100 then
        local6 = NPC_ATK_L1Hold
    end
    if self:GetDist(TARGET_ENE_0) < local3 then
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, local5, TARGET_ENE_0, false, local6)
    else
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, local5, TARGET_ENE_0, true, local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act42(self, ai, goal)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    self:ChangeEquipItem(0)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act43(self, ai, goal)
    self:ChangeEquipItem(1)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act44(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act45(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act46(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act47(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_Act48(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SnakeShaman_Minion1_ActAfter_AdjustSpace(self, ai, goal)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_FindAttack) and ai:GetDist(TARGET_ENE_0) < 3 and 20 <= ai:GetSp(TARGET_SELF) and ai:GetRandam_Int(1, 100) <= 50 then
        goal:ClearSubGoal()
        NPC_SnakeShaman_Minion1_Act40(ai, goal, paramTbl)
        return true
    else
        return false
    end
end

return 
