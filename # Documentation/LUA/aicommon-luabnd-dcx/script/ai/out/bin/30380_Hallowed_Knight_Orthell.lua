RegisterTableGoal(GOAL_NPC_Hallowed_Knight_Orthell, "GOAL_NPC_Hallowed_Knight_Orthell")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Hallowed_Knight_Orthell, true)

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
    
    if ai:GetHpRate(TARGET_SELF) <= 0.5 and not ai:HasSpecialEffectId(TARGET_SELF, 5110) then
        actChanceList[1] = 1
        actChanceList[2] = 1
        actChanceList[21] = 20
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 40
        actChanceList[41] = 40
        actChanceList[42] = 25
    elseif curStamina < 40 then
        if 5 <= curDist then
            actChanceList[1] = 5
            actChanceList[2] = 5
            actChanceList[40] = 5
            actChanceList[41] = 5
        else
            actChanceList[1] = 5
            actChanceList[2] = 5
            actChanceList[24] = 5
            actChanceList[40] = 5
            actChanceList[41] = 5
        end
    elseif 7 <= curDist then
        actChanceList[1] = 10
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 20
        actChanceList[5] = 20
        actChanceList[20] = 0
        actChanceList[21] = 0
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 0
        actChanceList[25] = 0
        actChanceList[40] = 40
        actChanceList[41] = 0
    elseif 3 <= curDist then
        actChanceList[1] = 10
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 20
        actChanceList[20] = 0
        actChanceList[21] = 0
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 0
        actChanceList[25] = 0
        actChanceList[40] = 40
        actChanceList[41] = 0
    elseif 1 <= curDist then
        actChanceList[1] = 10
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 20
        actChanceList[20] = 0
        actChanceList[21] = 20
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 0
        actChanceList[25] = 0
        actChanceList[40] = 0
        actChanceList[41] = 20
    else
        actChanceList[1] = 10
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 20
        actChanceList[20] = 0
        actChanceList[21] = 20
        actChanceList[22] = 0
        actChanceList[23] = 0
        actChanceList[24] = 0
        actChanceList[25] = 0
        actChanceList[40] = 0
        actChanceList[41] = 20
    end
    
    if ai:HasSpecialEffectId(TARGET_SELF, 5111) then
        actChanceList[25] = 0
    end
    
    if ai:IsTargetGuard(TARGET_ENE_0) then
        actChanceList[5] = actChanceList[5] + 10
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
    
    actFuncList[1] = REGIST_FUNC(ai, goal, NPC_GenericA_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, NPC_GenericA_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, NPC_GenericA_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, NPC_GenericA_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, NPC_GenericA_Act05)
    actFuncList[19] = REGIST_FUNC(ai, goal, NPC_GenericA_Act19)
    actFuncList[20] = REGIST_FUNC(ai, goal, NPC_GenericA_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, NPC_GenericA_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, NPC_GenericA_Act22)
    actFuncList[23] = REGIST_FUNC(ai, goal, NPC_GenericA_Act23)
    actFuncList[24] = REGIST_FUNC(ai, goal, NPC_GenericA_Act24)
    actFuncList[25] = REGIST_FUNC(ai, goal, NPC_GenericA_Act25)
    actFuncList[40] = REGIST_FUNC(ai, goal, NPC_GenericA_Act40)
    actFuncList[41] = REGIST_FUNC(ai, goal, NPC_GenericA_Act41)
    actFuncList[42] = REGIST_FUNC(ai, goal, NPC_GenericA_Act42)
    actFuncList[43] = REGIST_FUNC(ai, goal, NPC_GenericA_Act43)
    actFuncList[44] = REGIST_FUNC(ai, goal, NPC_GenericA_Act44)
    actFuncList[45] = REGIST_FUNC(ai, goal, NPC_GenericA_Act45)
    actFuncList[46] = REGIST_FUNC(ai, goal, NPC_GenericA_Act46)
    actFuncList[47] = REGIST_FUNC(ai, goal, NPC_GenericA_Act47)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, NPC_GenericA_ActAfter_AdjustSpace), actTblList)
    return 
end

function NPC_GenericA_Act19(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = 2.2
    local local4 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        local3 = 2
        local4 = 100
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local curStamina = local3
    if self:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(self, ai, curStamina, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    ai:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, curStamina + 3, TARGET_ENE_0, false, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act01(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetDist(TARGET_ENE_0)
    local local2 = self:GetSp(TARGET_SELF)
    local local3 = 2.2
    local local4 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        local3 = 2
        local4 = 100
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local1 then
        if not self:IsBothHandMode(TARGET_SELF) then
            local local5 = 67
            if self:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 33
            end
            if local0 <= local5 then
                local4 = 100
                local3 = 2
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif self:IsBothHandMode(TARGET_SELF) then
            local local5 = 25
            if self:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 25
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 2.2
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(self, ai, local3, local3 + 2, local3 + 8, 50, local4, 1.8, 2)
    if self:GetRandam_Int(1, 100) <= 50 and 0 < local4 and local3 <= local1 then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 40 <= local2 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 20 <= local2 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act02(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = self:GetSp(TARGET_SELF)
    local local4 = 2.6
    local local5 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        local4 = 2
        local5 = 100
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local2 then
        if not self:IsBothHandMode(TARGET_SELF) then
            local local6 = 67
            if self:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 + 33
            end
            if local0 <= local6 then
                local5 = 100
                local4 = 2
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif self:IsBothHandMode(TARGET_SELF) then
            local local6 = 25
            if self:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 - 25
            end
            if local0 <= local6 then
                local5 = 0
                local4 = 2.6
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local3 < 50 then
        local5 = 0
    end
    NPC_Approach_Act_Flex(self, ai, local4, local4 + 2, local4 + 8, 50, local5, 1.8, 2)
    if local1 <= 50 and 0 < local5 and local4 <= local2 then
        if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            ai:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, self:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 60 <= local3 and 67 < local0 then
        if local1 <= 50 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local1 <= 75 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act03(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = 2
    local local4 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        local3 = 2
        local4 = 100
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if self:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(self, ai, local3, local3 + 2, local3 + 4, 50, local4, 1.8, 2)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act04(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetDist(TARGET_ENE_0)
    local local3 = 4.2
    local local4 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        local3 = 4.6
        local4 = 100
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if self:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(self, ai, local3, local3 + 2, local3 + 4, 50, local4, 1.8, 2)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act05(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = self:GetSp(TARGET_SELF)
    local local3 = 3.2
    local local4 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        local4 = 100
    end
    if not self:IsBothHandMode(TARGET_SELF) then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local3
    local local6 = local3 + 2
    local local7 = local3 + 4
    local local8 = 50
    local local9 = 1.8
    local local10 = 2
    if local2 < 50 then
        local4 = 0
    end
    if local3 < self:GetDist(TARGET_ENE_0) then
        ai:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local3, TARGET_SELF, false, NPC_ATK_L2Hold)
        if local2 <= 40 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        elseif local2 <= 20 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        end
    else
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, local3, 0, 0)
        if 40 <= local2 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        elseif 20 <= local2 then
            ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act20(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = 2.6
    local local3 = -1
    if self:IsBothHandMode(TARGET_SELF) then
        local2 = 2.6
        local3 = 4
    end
    if not self:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= self:GetDist(TARGET_ENE_0) then
        if not self:IsBothHandMode(TARGET_SELF) then
            local local4 = 33
            if self:IsTargetGuard(TARGET_ENE_0) then
                local4 = local4 + 34
            end
            if local0 <= local4 then
                local3 = 4
                local2 = 2.6
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif self:IsBothHandMode(TARGET_SELF) then
            local local4 = 33
            if self:IsTargetGuard(TARGET_ENE_0) then
                local4 = local4 - 33
            end
            if local0 <= local4 then
                local3 = -1
                local2 = 2.6
                ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    local local4 = local2
    if self:GetSp(TARGET_SELF) < 50 then
        local3 = -1
    end
    if local0 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act21(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = self:GetRandam_Int(1, 100)
    if SpaceCheck(self, ai, 180, self:GetStringIndexedNumber("Dist_BackStep")) == true then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if self:GetRandam_Int(1, 100) <= 80 and 0 < self:GetSp(TARGET_SELF) then
        local local2 = 2.6
        local local3 = 1
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            local2 = 2.6
            local3 = 0.2
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act22(self, ai, goal)
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
    if self:GetRandam_Int(1, 100) <= 80 and 0 < self:GetSp(TARGET_SELF) then
        local local0 = 5.4
        local local1 = 6
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            local0 = 5.6
            local1 = 5.6
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act23(self, ai, goal)
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
    if self:GetRandam_Int(1, 100) <= 80 and 0 < self:GetSp(TARGET_SELF) then
        local local1 = 5.4 - 2
        local local2 = 6 - 2
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            local1 = 5.6 - 2
            local2 = 5.6 - 2
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act24(self, ai, goal)
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
    if self:GetRandam_Int(1, 100) <= 80 and 0 < self:GetSp(TARGET_SELF) then
        local local0 = 5.4 - 4
        local local1 = 6 - 4
        if self:GetEquipWeaponIndex(ARM_R) == WEP_Primary and self:IsBothHandMode(TARGET_SELF) then
            local0 = 5.6 - 4
            local1 = 5.6 - 4
        end
        ai:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act25(self, ai, goal)
    self:ChangeEquipItem(2)
    self:SetStringIndexedNumber("item_Knife", self:GetStringIndexedNumber("item_Knife") - 1)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act40(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetSp(TARGET_SELF)
    local local2 = 40
    local local3 = 1.8
    local local4 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        if local2 <= local1 and local0 <= 75 then
            local4 = NPC_ATK_L2Hold
        end
    elseif local2 <= local1 and local0 <= 0 then
        local4 = NPC_ATK_L2Hold
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
    if self:GetDist(TARGET_ENE_0) < 3 then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local5, self:GetRandam_Int(75, 90), false, true, local4)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local5, self:GetRandam_Int(75, 90), true, true, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act41(self, ai, goal)
    local local0 = self:GetRandam_Int(1, 100)
    local local1 = self:GetSp(TARGET_SELF)
    local local2 = 1.8
    local local3 = 4
    local local4 = 0
    if self:IsBothHandMode(TARGET_SELF) then
        if 40 <= local1 and local0 <= 75 then
            local4 = NPC_ATK_L2Hold
        end
    elseif guardsp <= local1 and local0 <= 0 then
        local4 = NPC_ATK_L2Hold
    end
    if self:GetDist(TARGET_ENE_0) < 3 then
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, local3, TARGET_ENE_0, false, local4)
    else
        ai:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, local3, TARGET_ENE_0, true, local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act42(self, ai, goal)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    self:ChangeEquipItem(0)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act43(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act44(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act45(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act46(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_Act47(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_GenericA_ActAfter_AdjustSpace(self, ai, goal)
    return 
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
    return 
end

Goal.Interrupt = function (self, ai, goal)
    local local0 = ai:GetSp(TARGET_SELF)
    local local1 = ai:GetDist(TARGET_ENE_0)
    local local2 = ai:GetRandam_Int(1, 100)
    if ai:IsInterupt(INTERUPT_Damaged) and local2 <= 25 and local1 <= 4 and 20 <= local0 then
        goal:ClearSubGoal()
        NPC_GenericA_Act24(ai, goal)
        return true
    elseif ai:IsInterupt(INTERUPT_Shoot) and local2 <= 33 and 20 <= local0 and ai:GetEventRequest(3) ~= 50 then
        goal:ClearSubGoal()
        NPC_GenericA_Act23(ai, goal)
        return true
    elseif ai:IsInterupt(INTERUPT_ParryTiming) then
        if local1 < 4 and 2 <= local1 then
            if ai:HasSpecialEffectId(TARGET_SELF, 100150) and 20 <= local0 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif local1 < 2 and ai:HasSpecialEffectId(TARGET_SELF, 100150) and 20 <= local0 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_SuccessParry) then
        goal:ClearSubGoal()
        local local3 = goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    else
        return false
    end
end

return 
