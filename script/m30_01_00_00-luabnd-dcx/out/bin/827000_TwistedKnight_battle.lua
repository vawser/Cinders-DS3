RegisterTableGoal(GOAL_TwistedKnight_827000_Battle, "GOAL_TwistedKnight_827000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TwistedKnight_827000_Battle, true)

-------------------------
-- Initialize
-------------------------
Goal.Initialize = function (self, ai, goal, arg3)
    ai:SetTimer(0, 5)
    return 
end

-------------------------
-- Activate
-------------------------
Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 3)
    ai:SetStringIndexedNumber("Dist_BackStep", 3)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    local roll_a = ai:GetRandam_Int(1, 100)
    local do_admirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local event_request = ai:GetEventRequest()
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and distance <= 5 then
        actChanceList[3] = 70
        actChanceList[24] = 30
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and distance <= 4 then
        actChanceList[3] = 10
        actChanceList[6] = 30
        actChanceList[20] = 20
        actChanceList[22] = 40
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and distance <= 4 then
        actChanceList[3] = 10
        actChanceList[7] = 30
        actChanceList[20] = 20
        actChanceList[22] = 40
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        actChanceList[20] = 20
    elseif 10 <= distance then
        actChanceList[1] = 40
        actChanceList[2] = 10
        actChanceList[3] = 0
        actChanceList[4] = 20
        actChanceList[5] = 30
        actChanceList[6] = 0
        actChanceList[7] = 0
        actChanceList[8] = 20
        actChanceList[21] = 0
        actChanceList[22] = 0
        actChanceList[23] = 0
    elseif 3 <= distance then
        actChanceList[1] = 5
        actChanceList[2] = 10
        actChanceList[3] = 10
        actChanceList[4] = 5
        actChanceList[5] = 0
        actChanceList[6] = 5
        actChanceList[7] = 5
        actChanceList[8] = 10
        actChanceList[21] = 30
        actChanceList[22] = 20
        actChanceList[23] = 0
    elseif 1.8 <= distance then
        actChanceList[1] = 30
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 20
        actChanceList[5] = 20
        actChanceList[6] = 0
        actChanceList[7] = 0
        actChanceList[8] = 0
        actChanceList[21] = 0
        actChanceList[22] = 10
        actChanceList[23] = 10
    else
        actChanceList[1] = 30
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 20
        actChanceList[5] = 20
        actChanceList[6] = 0
        actChanceList[7] = 0
        actChanceList[8] = 0
        actChanceList[21] = 0
        actChanceList[22] = 10
        actChanceList[23] = 20
    end
    if SpaceCheck(ai, goal, 90, ai:GetStringIndexedNumber("Dist_SideStep")) then
        actChanceList[6] = 0
    end
    if SpaceCheck(ai, goal, -90, ai:GetStringIndexedNumber("Dist_SideStep")) then
        actChanceList[7] = 0
    end
    
    ----------------------------------
    -- Act Cooldowns
    ----------------------------------
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 5, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 3006, 5, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3008, 15, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(ai, goal, 3011, 15, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(ai, goal, 3012, 5, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3009, 15, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3010, 15, actChanceList[7], 1)
    actChanceList[8] = SetCoolTime(ai, goal, 3005, 15, actChanceList[8], 1)
    actChanceList[22] = SetCoolTime(ai, goal, 6002, 6, actChanceList[22], 1)
    actChanceList[22] = SetCoolTime(ai, goal, 6003, 6, actChanceList[22], 1)
    
    ----------------------------------
    -- Act Modifiers
    ----------------------------------
    if ai:IsFinishTimer(0) == false then
        actChanceList[21] = 0
    end
    
    ----------------------------------
    -- Acts
    ----------------------------------
    actFuncList[1] = REGIST_FUNC(ai, goal, TwistedKnight_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, TwistedKnight_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, TwistedKnight_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, TwistedKnight_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, TwistedKnight_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, TwistedKnight_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, TwistedKnight_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, TwistedKnight_Act08)
    actFuncList[20] = REGIST_FUNC(ai, goal, TwistedKnight_Act20)
    actFuncList[21] = REGIST_FUNC(ai, goal, TwistedKnight_Act21)
    actFuncList[22] = REGIST_FUNC(ai, goal, TwistedKnight_Act22)
    actFuncList[23] = REGIST_FUNC(ai, goal, TwistedKnight_Act23)
    actFuncList[24] = REGIST_FUNC(ai, goal, TwistedKnight_Act24)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, TwistedKnight_Battle_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
function TwistedKnight_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 4 - self:GetMapHitRadius(TARGET_SELF), 4 - self:GetMapHitRadius(TARGET_SELF) + 9, 4 - self:GetMapHitRadius(TARGET_SELF) + 9, 0, 0, 3, 3)
    local local0 = 3000
    local local1 = 3003
    local local2 = 3004
    local local3 = 2.8 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 3.2 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 2 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = self:GetRandam_Int(1, 100)
    local local9 = self:GetRandam_Int(1, 100)
    if local8 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5, local6, local7, 0, 0)
    elseif local8 <= 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, local6, local7, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 7 - self:GetMapHitRadius(TARGET_SELF) + 1, local6, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TwistedKnight_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 7.9 - self:GetMapHitRadius(TARGET_SELF), 7.9 - self:GetMapHitRadius(TARGET_SELF) + 9, 7.9 - self:GetMapHitRadius(TARGET_SELF) + 9, 0, 0, 3, 3)
    local local0 = 3006
    local local1 = 3007
    local local2 = 2.7 - self:GetMapHitRadius(TARGET_SELF)
    local local3 = 2 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    if local6 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TwistedKnight_Act03(self, ai, goal)
    local local0 = 3008
    local local1 = 3004
    local local2 = 2 - self:GetMapHitRadius(TARGET_SELF)
    local local3 = 3.2 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = self:GetRandam_Int(1, 100)
    if local6 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
    elseif local6 <= 90 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 7 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5.7 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TwistedKnight_Act04(self, ai, goal)
    Approach_Act_Flex(self, ai, 3 - self:GetMapHitRadius(TARGET_SELF), 3 - self:GetMapHitRadius(TARGET_SELF) + 9, 3 - self:GetMapHitRadius(TARGET_SELF) + 9, 0, 0, 3, 3)
    local local0 = 3011
    local local1 = 3013
    local local2 = 2.3 - self:GetMapHitRadius(TARGET_SELF)
    local local3 = 5.6 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    if self:GetRandam_Int(1, 100) <= 50 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local3, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 5.7 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 2 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TwistedKnight_Act05(self, ai, goal)
    Approach_Act_Flex(self, ai, 5 - self:GetMapHitRadius(TARGET_SELF), 5 - self:GetMapHitRadius(TARGET_SELF) + 9, 5 - self:GetMapHitRadius(TARGET_SELF) + 9, 0, 0, 3, 3)
    local local0 = 3012
    local local1 = 3017
    local local2 = 3001
    local local3 = 3002
    local local4 = 3.3 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 4.4 - self:GetMapHitRadius(TARGET_SELF) + 1
    local local6 = 2 - self:GetMapHitRadius(TARGET_SELF)
    local local7 = 0
    local local8 = 0
    local local9 = self:GetRandam_Int(1, 100)
    if self:GetDist(TARGET_ENE_0) <= 1.5 then
        if local9 <= 70 then
            ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local6, local7, local8, 0, 0)
        elseif local9 <= 80 then
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
        else
            ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local7, local8, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
            ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
        end
    elseif local9 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local6, local7, local8, 0, 0)
    elseif local9 <= 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local6, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local4, local7, local8, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local5, local7, local8, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TwistedKnight_Act06(self, ai, goal)
    local local0 = 3009
    local local1 = self:GetRandam_Int(1, 100)
    if local1 <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 2 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    elseif local1 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 7 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 4.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TwistedKnight_Act07(self, ai, goal)
    local local0 = 3010
    local local1 = self:GetRandam_Int(1, 100)
    if local1 <= 40 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 2 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    elseif local1 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 7 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, 4.4 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TwistedKnight_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 7 - self:GetMapHitRadius(TARGET_SELF), 7 - self:GetMapHitRadius(TARGET_SELF) + 0, 7 - self:GetMapHitRadius(TARGET_SELF) + 0, 0, 0, 3, 3)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = 3005
    local local3 = 3015
    local local4 = 3004
    local local5 = 3008
    local local6 = 3014
    local local7 = 5.7 - self:GetMapHitRadius(TARGET_SELF)
    local local8 = 3.2 - self:GetMapHitRadius(TARGET_SELF)
    local local9 = 5.6 - self:GetMapHitRadius(TARGET_SELF)
    local local10 = 2 - self:GetMapHitRadius(TARGET_SELF)
    if local1 <= 40 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local10, TurnTime, FrontAngle, 0, 0)
    elseif local1 <= 55 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local10, 0, 0)
    elseif local1 <= 70 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, 11.1 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local10, 0, 0)
    elseif local1 <= 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local4, TARGET_ENE_0, local10, 0, 0)
    elseif local1 <= 90 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local9, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local9, 0, 0)
    elseif local1 <= 95 then
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local8, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, DistToAtt4, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local10, 0, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local2, TARGET_ENE_0, local7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local9, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local6, TARGET_ENE_0, DistToAtt7, 0, 0)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TwistedKnight_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TwistedKnight_Act21(self, ai, goal)
    self:SetTimer(0, 5)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if self:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, self:GetRandam_Int(60, 90), true, true, 0)
    else
        ai:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, self:GetRandam_Int(60, 90), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TwistedKnight_Act22(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = self:GetRandam_Int(1, 100)
    local local2 = 3.2 - self:GetMapHitRadius(TARGET_SELF)
    local local3 = 2.8 - self:GetMapHitRadius(TARGET_SELF)
    local local4 = 5.6 - self:GetMapHitRadius(TARGET_SELF)
    local local5 = 3.2 - self:GetMapHitRadius(TARGET_SELF)
    local local6 = 2 - self:GetMapHitRadius(TARGET_SELF)
    if local1 <= 30 and InsideRange(self, ai, 90, 180, -9999, 3) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 2)
    elseif local1 <= 30 and InsideRange(self, ai, -90, 180, -9999, 3) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 2)
    elseif InsideRange(self, ai, 90, 180, -9999, 9999) then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TwistedKnight_Act23(self, ai, goal)
    local local0 = self:GetDist(TARGET_ENE_0)
    local local1 = self:GetRandam_Int(1, 100)
    if local1 <= 25 then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
        TwistedKnight_Act02(self, ai, goal)
    elseif local1 <= 50 then
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
        TwistedKnight_Act08(self, ai, goal)
    else
        ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TwistedKnight_Act24(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function TwistedKnight_Battle_ActAfter_AdjustSpace(self, ai, goal)
    return 
end

-------------------------
-- Update
-------------------------
Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

-------------------------
-- Terminate
-------------------------
Goal.Terminate = function (self, ai, goal)
    return 
end

-------------------------
-- Interrupt
-------------------------
Goal.Interrupt = function (self, ai, goal)
    local local0 = 2 - ai:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    elseif ai:IsInterupt(INTERUPT_Damaged) and ai:GetDist(TARGET_ENE_0) <= 1.5 and ai:GetRandam_Int(1, 100) <= 15 then
        goal:ClearSubGoal()
        TwistedKnight_Act06(ai, goal, paramTbl)
    end
    return false
end

return 
