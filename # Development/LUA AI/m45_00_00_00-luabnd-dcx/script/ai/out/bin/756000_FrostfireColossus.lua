RegisterTableGoal(GOAL_FrostfireColossus_756000_Battle, "GOAL_FrostfireColossus_756000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrostfireColossus_756000_Battle, true)

-------------------------
-- Initialize
-------------------------
Goal.Initialize = function (self, ai, goal, arg3)
    return 
end

-------------------------
-- Activate
-------------------------
Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 0)
    ai:SetStringIndexedNumber("Dist_BackStep", 0)
    
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    
    local distance = ai:GetDist(TARGET_ENE_0)
    
    ----------------------------------
    -- Act Distribution
    ----------------------------------
    if ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if 6 <= distance then
            actChanceList[14] = 100
        else
            actChanceList[13] = 60
            actChanceList[14] = 40
        end
	elseif ai:HasSpecialEffectId(TARGET_SELF, 10777) == true then
		actChanceList[21] = 100 -- Play Summon Adds Animation
	elseif ai:HasSpecialEffectId(TARGET_SELF, 10778) == true then
		actChanceList[22] = 100 -- Play Arena Central Fire Animation
	elseif ai:HasSpecialEffectId(TARGET_SELF, 10781) == true then
		actChanceList[23] = 100 -- Play Sapping Orb Animation
	elseif ai:HasSpecialEffectId(TARGET_SELF, 10782) == true then
		actChanceList[24] = 100 -- Play Unleash Frostfire/Summon Outrider Animation
	elseif ai:HasSpecialEffectId(TARGET_SELF, 10792) == true then
		actChanceList[25] = 100 -- Play Enhance Animation
	elseif ai:HasSpecialEffectId(TARGET_SELF, 10797) == true then
		actChanceList[26] = 100 -- Play HP Regen Animation
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        if ai:GetHpRate(TARGET_SELF) <= 0.8 then
            actChanceList[12] = 100
        elseif 12 <= distance then
            if InsideDir(ai, goal, 0, 180) then
                actChanceList[1] = 20
                actChanceList[8] = 20
                actChanceList[2] = 60
            else
                actChanceList[20] = 100
            end
        elseif 9 <= distance then
            if InsideDir(ai, goal, 0, 90) then
                actChanceList[1] = 40
                actChanceList[8] = 60
            else
                actChanceList[1] = 70
                actChanceList[20] = 30
            end
        elseif 5 <= distance then
            if InsideDir(ai, goal, 0, 270) then
                actChanceList[1] = 100
            else
                actChanceList[1] = 70
                actChanceList[20] = 30
            end
        elseif 3.5 <= distance then
            if InsideDir(ai, goal, 0, 270) then
                actChanceList[1] = 60
                actChanceList[7] = 40
            else
                actChanceList[1] = 40
                actChanceList[7] = 40
                actChanceList[20] = 20
            end
        elseif 1.2 <= distance then
            if InsideDir(ai, goal, 0, 70) then
                actChanceList[3] = 20
                actChanceList[6] = 20
                actChanceList[7] = 30
                actChanceList[11] = 30
            elseif InsideDir(ai, goal, 62.5, 55) then
                actChanceList[5] = 60
                actChanceList[7] = 20
                actChanceList[11] = 20
            elseif InsideDir(ai, goal, 117.5, 55) then
                actChanceList[5] = 80
                actChanceList[20] = 20
            elseif InsideDir(ai, goal, -62.5, 55) then
                actChanceList[4] = 60
                actChanceList[7] = 20
                actChanceList[11] = 20
            elseif InsideDir(ai, goal, -117.5, 55) then
                actChanceList[4] = 80
                actChanceList[20] = 20
            else
                actChanceList[20] = 20
            end
        elseif InsideDir(ai, goal, 0, 70) then
            actChanceList[7] = 50
            actChanceList[11] = 50
        elseif InsideDir(ai, goal, 62.5, 55) then
            actChanceList[5] = 60
            actChanceList[7] = 20
            actChanceList[11] = 20
        elseif InsideDir(ai, goal, 117.5, 55) then
            actChanceList[5] = 80
            actChanceList[20] = 20
        elseif InsideDir(ai, goal, -62.5, 55) then
            actChanceList[4] = 60
            actChanceList[7] = 20
            actChanceList[11] = 20
        elseif InsideDir(ai, goal, -117.5, 55) then
            actChanceList[4] = 80
            actChanceList[20] = 20
        else
            actChanceList[20] = 20
        end
    elseif 15 <= distance then
        if InsideDir(ai, goal, 0, 180) then
            actChanceList[2] = 30
            actChanceList[3] = 5
            actChanceList[6] = 5
            actChanceList[17] = 30
            actChanceList[18] = 30
        else
            actChanceList[20] = 100
        end
    elseif 10 <= distance then
        if InsideDir(ai, goal, 0, 180) then
            actChanceList[1] = 10
            actChanceList[8] = 10
            actChanceList[9] = 40
            actChanceList[10] = 20
            actChanceList[16] = 20
        else
            actChanceList[1] = 5
            actChanceList[8] = 5
            actChanceList[9] = 20
            actChanceList[10] = 10
            actChanceList[16] = 10
            actChanceList[20] = 50
        end
    elseif 5 <= distance then
        if InsideDir(ai, goal, 0, 270) then
            actChanceList[1] = 30
            actChanceList[8] = 20
            actChanceList[9] = 25
            actChanceList[10] = 15
            actChanceList[16] = 10
        else
            actChanceList[1] = 15
            actChanceList[8] = 10
            actChanceList[9] = 15
            actChanceList[10] = 5
            actChanceList[16] = 5
            actChanceList[20] = 50
        end
    elseif 3.5 <= distance then
        if InsideDir(ai, goal, 0, 270) then
            actChanceList[1] = 25
            actChanceList[7] = 15
            actChanceList[8] = 25
            actChanceList[9] = 15
            actChanceList[10] = 10
            actChanceList[16] = 10
        else
            actChanceList[1] = 15
            actChanceList[7] = 10
            actChanceList[8] = 10
            actChanceList[9] = 5
            actChanceList[10] = 5
            actChanceList[16] = 5
            actChanceList[20] = 50
        end
    elseif InsideDir(ai, goal, 0, 70) then
        actChanceList[3] = 25
        actChanceList[6] = 25
        actChanceList[7] = 10
        actChanceList[9] = 10
        actChanceList[10] = 10
        actChanceList[11] = 10
        actChanceList[16] = 10
    elseif InsideDir(ai, goal, 62.5, 55) then
        actChanceList[5] = 50
        actChanceList[7] = 10
        actChanceList[9] = 10
        actChanceList[10] = 10
        actChanceList[16] = 10
        actChanceList[11] = 10
    elseif InsideDir(ai, goal, 117.5, 55) then
        actChanceList[5] = 50
        actChanceList[9] = 25
        actChanceList[10] = 15
        actChanceList[16] = 10
    elseif InsideDir(ai, goal, -62.5, 55) then
        actChanceList[4] = 50
        actChanceList[7] = 10
        actChanceList[9] = 10
        actChanceList[10] = 10
        actChanceList[16] = 10
        actChanceList[11] = 10
    elseif InsideDir(ai, goal, -117.5, 55) then
        actChanceList[4] = 50
        actChanceList[9] = 25
        actChanceList[10] = 15
        actChanceList[16] = 10
    else
        actChanceList[9] = 15
        actChanceList[10] = 20
        actChanceList[16] = 15
        actChanceList[20] = 50
    end
    
    ----------------------------------
    -- Act Cooldowns
    ----------------------------------
    actChanceList[1] = SetCoolTime(ai, goal, 3000, 15, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(ai, goal, 3003, 15, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(ai, goal, 3004, 10, actChanceList[3], 1)
    actChanceList[6] = SetCoolTime(ai, goal, 3007, 10, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(ai, goal, 3008, 10, actChanceList[7], 1)
    actChanceList[8] = SetCoolTime(ai, goal, 3009, 15, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(ai, goal, 3020, 20, actChanceList[9], 1)
    actChanceList[10] = SetCoolTime(ai, goal, 3021, 20, actChanceList[10], 1)
    actChanceList[10] = SetCoolTime(ai, goal, 3024, 20, actChanceList[10], 1)
    actChanceList[16] = SetCoolTime(ai, goal, 3024, 20, actChanceList[16], 1)
    actChanceList[16] = SetCoolTime(ai, goal, 3021, 20, actChanceList[16], 1)
    actChanceList[17] = SetCoolTime(ai, goal, 3000, 15, actChanceList[17], 1)
    actChanceList[18] = SetCoolTime(ai, goal, 3009, 15, actChanceList[18], 1)
    
    ----------------------------------
    -- Acts
    ----------------------------------
    actFuncList[1] = REGIST_FUNC(ai, goal, FrostfireColossus_Act01)
    actFuncList[2] = REGIST_FUNC(ai, goal, FrostfireColossus_Act02)
    actFuncList[3] = REGIST_FUNC(ai, goal, FrostfireColossus_Act03)
    actFuncList[4] = REGIST_FUNC(ai, goal, FrostfireColossus_Act04)
    actFuncList[5] = REGIST_FUNC(ai, goal, FrostfireColossus_Act05)
    actFuncList[6] = REGIST_FUNC(ai, goal, FrostfireColossus_Act06)
    actFuncList[7] = REGIST_FUNC(ai, goal, FrostfireColossus_Act07)
    actFuncList[8] = REGIST_FUNC(ai, goal, FrostfireColossus_Act08)
    actFuncList[9] = REGIST_FUNC(ai, goal, FrostfireColossus_Act09)
    actFuncList[10] = REGIST_FUNC(ai, goal, FrostfireColossus_Act10)
    actFuncList[11] = REGIST_FUNC(ai, goal, FrostfireColossus_Act11)
    actFuncList[12] = REGIST_FUNC(ai, goal, FrostfireColossus_Act12)
    actFuncList[13] = REGIST_FUNC(ai, goal, FrostfireColossus_Act13)
    actFuncList[14] = REGIST_FUNC(ai, goal, FrostfireColossus_Act14)
    actFuncList[15] = REGIST_FUNC(ai, goal, FrostfireColossus_Act15)
    actFuncList[16] = REGIST_FUNC(ai, goal, FrostfireColossus_Act16)
    actFuncList[17] = REGIST_FUNC(ai, goal, FrostfireColossus_Act17)
    actFuncList[18] = REGIST_FUNC(ai, goal, FrostfireColossus_Act18)
    actFuncList[20] = REGIST_FUNC(ai, goal, FrostfireColossus_Act20)
	actFuncList[21] = REGIST_FUNC(ai, goal, FrostfireColossus_Act21)
	actFuncList[22] = REGIST_FUNC(ai, goal, FrostfireColossus_Act22)
	actFuncList[23] = REGIST_FUNC(ai, goal, FrostfireColossus_Act23)
	actFuncList[24] = REGIST_FUNC(ai, goal, FrostfireColossus_Act24)
	actFuncList[25] = REGIST_FUNC(ai, goal, FrostfireColossus_Act25)
	actFuncList[26] = REGIST_FUNC(ai, goal, FrostfireColossus_Act26)
    
    Common_Battle_Activate(ai, goal, actChanceList, actFuncList, REGIST_FUNC(ai, goal, FrostfireColossus_ActAfter_AdjustSpace), actTblList)
    return 
end

-------------------------
-- Functions
-------------------------
function FrostfireColossus_Act01(self, ai, goal)
    Approach_Act_Flex(self, ai, 14 - self:GetMapHitRadius(TARGET_SELF), 14 - self:GetMapHitRadius(TARGET_SELF) + 1.5, 14 - self:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    local f3_local0 = 3000
    local f3_local1 = 3001
    local f3_local2 = 3010
    local f3_local3 = 16 - self:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local4 = 13.7 - self:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local5 = 15 - self:GetMapHitRadius(TARGET_SELF)
    local f3_local6 = 0
    local f3_local7 = 0
    local f3_local8 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f3_local8 <= 0 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local5, f3_local6, f3_local7)
    elseif f3_local8 <= 15 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local1, TARGET_ENE_0, f3_local5)
    elseif f3_local8 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local1, TARGET_ENE_0, f3_local4)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local2, TARGET_ENE_0, f3_local5)
    elseif f3_local8 <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local1, TARGET_ENE_0, f3_local4)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local2, TARGET_ENE_0, f3_local4)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local2, TARGET_ENE_0, f3_local5)
    elseif f3_local8 <= 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local1, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f3_local5)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, 10.2 - self:GetMapHitRadius(TARGET_SELF) + 1, f3_local6, f3_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f3_local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act02(self, ai, goal)
    Approach_Act_Flex(self, ai, 22.2 - self:GetMapHitRadius(TARGET_SELF), 22.2 - self:GetMapHitRadius(TARGET_SELF) + 1.5, 22.2 - self:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 1.5, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act03(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act04(self, ai, goal)
    local f6_local0 = 3005
    local f6_local1 = 15 - self:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    if self:GetRandam_Int(1, 100) <= 25 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF), f6_local2, f6_local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f6_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act05(self, ai, goal)
    local f7_local0 = 3006
    local f7_local1 = 15 - self:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    if self:GetRandam_Int(1, 100) <= 25 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF), f7_local2, f7_local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f7_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act06(self, ai, goal)
    local f8_local0 = 3007
    local f8_local1 = 15 - self:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    if self:GetRandam_Int(1, 100) <= 25 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local0, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF), f8_local2, f8_local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f8_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act07(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act08(self, ai, goal)
    Approach_Act_Flex(self, ai, 13.7 - self:GetMapHitRadius(TARGET_SELF) - 2, 13.7 - self:GetMapHitRadius(TARGET_SELF) + 1.5, 13.7 - self:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    local f10_local0 = 3009
    local f10_local1 = 15 - self:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    if self:GetRandam_Int(1, 100) <= 25 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF), f10_local2, f10_local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f10_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act09(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act10(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act11(self, ai, goal)
    Approach_Act_Flex(self, ai, 4.5 - self:GetMapHitRadius(TARGET_SELF), 4.5 - self:GetMapHitRadius(TARGET_SELF) + 1.5, 4.5 - self:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act12(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act13(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act14(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Wait, self:GetRandam_Int(0.5, 1.5), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act15(self, ai, goal)
    local f17_local0 = 0
    local f17_local1 = 0
    local f17_local2 = self:GetRandam_Int(1, 100)
    ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireColossus_Act16(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act17(self, ai, goal)
    Approach_Act_Flex(self, ai, 14 - self:GetMapHitRadius(TARGET_SELF) - 5, 14 - self:GetMapHitRadius(TARGET_SELF) + 1.5, 14 - self:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 10)
    local f19_local0 = 3000
    local f19_local1 = 3001
    local f19_local2 = 3010
    local f19_local3 = 16 - self:GetMapHitRadius(TARGET_SELF) + 1
    local f19_local4 = 13.7 - self:GetMapHitRadius(TARGET_SELF) + 1
    local f19_local5 = 15 - self:GetMapHitRadius(TARGET_SELF)
    local f19_local6 = 0
    local f19_local7 = 0
    local f19_local8 = self:GetRandam_Int(1, 100)
    self:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f19_local8 <= 0 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local5, f19_local6, f19_local7)
    elseif f19_local8 <= 15 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local3, f19_local6, f19_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local1, TARGET_ENE_0, f19_local5)
    elseif f19_local8 <= 30 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local3, f19_local6, f19_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local1, TARGET_ENE_0, f19_local4)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local2, TARGET_ENE_0, f19_local5)
    elseif f19_local8 <= 60 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local3, f19_local6, f19_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local1, TARGET_ENE_0, f19_local4)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local2, TARGET_ENE_0, f19_local4)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local2, TARGET_ENE_0, f19_local5)
    elseif f19_local8 <= 80 then
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local3, f19_local6, f19_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local1, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF))
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f19_local5)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, 10.2 - self:GetMapHitRadius(TARGET_SELF) + 1, f19_local6, f19_local7)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f19_local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act18(self, ai, goal)
    Approach_Act_Flex(self, ai, 13.7 - self:GetMapHitRadius(TARGET_SELF) - 5, 13.7 - self:GetMapHitRadius(TARGET_SELF) + 1.5, 13.7 - self:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 10)
    local f20_local0 = 3009
    local f20_local1 = 15 - self:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    if self:GetRandam_Int(1, 100) <= 25 then
        ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3)
    else
        ai:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f20_local0, TARGET_ENE_0, 4.5 - self:GetMapHitRadius(TARGET_SELF), f20_local2, f20_local3)
        ai:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f20_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act20(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, self:GetRandam_Int(20, 40))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act21(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act22(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act23(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act24(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act25(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act26(self, ai, goal)
    ai:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 15 - self:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-------------------------
-- Act After
-------------------------
function FrostfireColossus_ActAfter_AdjustSpace(self, ai, goal)
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
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not (ai:GetSpecialEffectActivateInterruptType(0) ~= 5025 or ai:GetDist(TARGET_ENE_0) > 7 or not ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90)) or not not ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) or ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90)) then
        goal:ClearSubGoal()
        FrostfireColossus_Act15(ai, goal, paramTbl)
    end
    return 
end

-------------------------
-- End
-------------------------
return 
