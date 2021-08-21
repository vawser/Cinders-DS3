RegisterTableGoal(GOAL_FrostfireColossus_756000_Battle, "FrostfireColossusBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrostfireColossus_756000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if 6 <= f2_local3 then
            f2_local0[14] = 100
        else
            f2_local0[13] = 60
            f2_local0[14] = 40
        end
	elseif arg1:HasSpecialEffectId(TARGET_SELF, 10777) == true then
		f2_local0[21] = 100 -- Play Summon Adds Animation
	elseif arg1:HasSpecialEffectId(TARGET_SELF, 10778) == true then
		f2_local0[22] = 100 -- Play Arena Central Fire Animation
	elseif arg1:HasSpecialEffectId(TARGET_SELF, 10781) == true then
		f2_local0[23] = 100 -- Play Sapping Orb Animation
	elseif arg1:HasSpecialEffectId(TARGET_SELF, 10782) == true then
		f2_local0[24] = 100 -- Play Unleash Frostfire/Summon Outrider Animation
	elseif arg1:HasSpecialEffectId(TARGET_SELF, 10792) == true then
		f2_local0[25] = 100 -- Play Enhance Animation
	elseif arg1:HasSpecialEffectId(TARGET_SELF, 10797) == true then
		f2_local0[26] = 100 -- Play HP Regen Animation
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        if arg1:GetHpRate(TARGET_SELF) <= 0.8 then
            f2_local0[12] = 100
        elseif 12 <= f2_local3 then
            if InsideDir(arg1, arg2, 0, 180) then
                f2_local0[1] = 20
                f2_local0[8] = 20
                f2_local0[2] = 60
            else
                f2_local0[20] = 100
            end
        elseif 9 <= f2_local3 then
            if InsideDir(arg1, arg2, 0, 90) then
                f2_local0[1] = 40
                f2_local0[8] = 60
            else
                f2_local0[1] = 70
                f2_local0[20] = 30
            end
        elseif 5 <= f2_local3 then
            if InsideDir(arg1, arg2, 0, 270) then
                f2_local0[1] = 100
            else
                f2_local0[1] = 70
                f2_local0[20] = 30
            end
        elseif 3.5 <= f2_local3 then
            if InsideDir(arg1, arg2, 0, 270) then
                f2_local0[1] = 60
                f2_local0[7] = 40
            else
                f2_local0[1] = 40
                f2_local0[7] = 40
                f2_local0[20] = 20
            end
        elseif 1.2 <= f2_local3 then
            if InsideDir(arg1, arg2, 0, 70) then
                f2_local0[3] = 20
                f2_local0[6] = 20
                f2_local0[7] = 30
                f2_local0[11] = 30
            elseif InsideDir(arg1, arg2, 62.5, 55) then
                f2_local0[5] = 60
                f2_local0[7] = 20
                f2_local0[11] = 20
            elseif InsideDir(arg1, arg2, 117.5, 55) then
                f2_local0[5] = 80
                f2_local0[20] = 20
            elseif InsideDir(arg1, arg2, -62.5, 55) then
                f2_local0[4] = 60
                f2_local0[7] = 20
                f2_local0[11] = 20
            elseif InsideDir(arg1, arg2, -117.5, 55) then
                f2_local0[4] = 80
                f2_local0[20] = 20
            else
                f2_local0[20] = 20
            end
        elseif InsideDir(arg1, arg2, 0, 70) then
            f2_local0[7] = 50
            f2_local0[11] = 50
        elseif InsideDir(arg1, arg2, 62.5, 55) then
            f2_local0[5] = 60
            f2_local0[7] = 20
            f2_local0[11] = 20
        elseif InsideDir(arg1, arg2, 117.5, 55) then
            f2_local0[5] = 80
            f2_local0[20] = 20
        elseif InsideDir(arg1, arg2, -62.5, 55) then
            f2_local0[4] = 60
            f2_local0[7] = 20
            f2_local0[11] = 20
        elseif InsideDir(arg1, arg2, -117.5, 55) then
            f2_local0[4] = 80
            f2_local0[20] = 20
        else
            f2_local0[20] = 20
        end
    elseif 15 <= f2_local3 then
        if InsideDir(arg1, arg2, 0, 180) then
            f2_local0[2] = 30
            f2_local0[3] = 5
            f2_local0[6] = 5
            f2_local0[17] = 30
            f2_local0[18] = 30
        else
            f2_local0[20] = 100
        end
    elseif 10 <= f2_local3 then
        if InsideDir(arg1, arg2, 0, 180) then
            f2_local0[1] = 10
            f2_local0[8] = 10
            f2_local0[9] = 40
            f2_local0[10] = 20
            f2_local0[16] = 20
        else
            f2_local0[1] = 5
            f2_local0[8] = 5
            f2_local0[9] = 20
            f2_local0[10] = 10
            f2_local0[16] = 10
            f2_local0[20] = 50
        end
    elseif 5 <= f2_local3 then
        if InsideDir(arg1, arg2, 0, 270) then
            f2_local0[1] = 30
            f2_local0[8] = 20
            f2_local0[9] = 25
            f2_local0[10] = 15
            f2_local0[16] = 10
        else
            f2_local0[1] = 15
            f2_local0[8] = 10
            f2_local0[9] = 15
            f2_local0[10] = 5
            f2_local0[16] = 5
            f2_local0[20] = 50
        end
    elseif 3.5 <= f2_local3 then
        if InsideDir(arg1, arg2, 0, 270) then
            f2_local0[1] = 25
            f2_local0[7] = 15
            f2_local0[8] = 25
            f2_local0[9] = 15
            f2_local0[10] = 10
            f2_local0[16] = 10
        else
            f2_local0[1] = 15
            f2_local0[7] = 10
            f2_local0[8] = 10
            f2_local0[9] = 5
            f2_local0[10] = 5
            f2_local0[16] = 5
            f2_local0[20] = 50
        end
    elseif InsideDir(arg1, arg2, 0, 70) then
        f2_local0[3] = 25
        f2_local0[6] = 25
        f2_local0[7] = 10
        f2_local0[9] = 10
        f2_local0[10] = 10
        f2_local0[11] = 10
        f2_local0[16] = 10
    elseif InsideDir(arg1, arg2, 62.5, 55) then
        f2_local0[5] = 50
        f2_local0[7] = 10
        f2_local0[9] = 10
        f2_local0[10] = 10
        f2_local0[16] = 10
        f2_local0[11] = 10
    elseif InsideDir(arg1, arg2, 117.5, 55) then
        f2_local0[5] = 50
        f2_local0[9] = 25
        f2_local0[10] = 15
        f2_local0[16] = 10
    elseif InsideDir(arg1, arg2, -62.5, 55) then
        f2_local0[4] = 50
        f2_local0[7] = 10
        f2_local0[9] = 10
        f2_local0[10] = 10
        f2_local0[16] = 10
        f2_local0[11] = 10
    elseif InsideDir(arg1, arg2, -117.5, 55) then
        f2_local0[4] = 50
        f2_local0[9] = 25
        f2_local0[10] = 15
        f2_local0[16] = 10
    else
        f2_local0[9] = 15
        f2_local0[10] = 20
        f2_local0[16] = 15
        f2_local0[20] = 50
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3021, 20, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3024, 20, f2_local0[10], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3024, 20, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3021, 20, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[18], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act20)
	f2_local1[21] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act21)
	f2_local1[22] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act22)
	f2_local1[23] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act23)
	f2_local1[24] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act24)
	f2_local1[25] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act25)
	f2_local1[26] = REGIST_FUNC(arg1, arg2, FrostfireColossus_Act26)
    local f2_local4 = REGIST_FUNC(arg1, arg2, FrostfireColossus_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, 0, f2_local2)
    return 
end

function FrostfireColossus_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14 - arg0:GetMapHitRadius(TARGET_SELF), 14 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    local f3_local0 = 3000
    local f3_local1 = 3001
    local f3_local2 = 3010
    local f3_local3 = 16 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local4 = 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local5 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local6 = 0
    local f3_local7 = 0
    local f3_local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f3_local8 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local5, f3_local6, f3_local7)
    elseif f3_local8 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local1, TARGET_ENE_0, f3_local5)
    elseif f3_local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local1, TARGET_ENE_0, f3_local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local2, TARGET_ENE_0, f3_local5)
    elseif f3_local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local1, TARGET_ENE_0, f3_local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local2, TARGET_ENE_0, f3_local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local2, TARGET_ENE_0, f3_local5)
    elseif f3_local8 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local1, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f3_local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, 10.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, f3_local6, f3_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f3_local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 22.2 - arg0:GetMapHitRadius(TARGET_SELF), 22.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 22.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act04(arg0, arg1, arg2)
    local f6_local0 = 3005
    local f6_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f6_local2, f6_local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f6_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act05(arg0, arg1, arg2)
    local f7_local0 = 3006
    local f7_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f7_local2, f7_local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f7_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act06(arg0, arg1, arg2)
    local f8_local0 = 3007
    local f8_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f8_local2, f8_local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f8_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    local f10_local0 = 3009
    local f10_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f10_local2, f10_local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f10_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(0.5, 1.5), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act15(arg0, arg1, arg2)
    local f17_local0 = 0
    local f17_local1 = 0
    local f17_local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FrostfireColossus_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14 - arg0:GetMapHitRadius(TARGET_SELF) - 5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 10)
    local f19_local0 = 3000
    local f19_local1 = 3001
    local f19_local2 = 3010
    local f19_local3 = 16 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f19_local4 = 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f19_local5 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local6 = 0
    local f19_local7 = 0
    local f19_local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f19_local8 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local5, f19_local6, f19_local7)
    elseif f19_local8 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local3, f19_local6, f19_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local1, TARGET_ENE_0, f19_local5)
    elseif f19_local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local3, f19_local6, f19_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local1, TARGET_ENE_0, f19_local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local2, TARGET_ENE_0, f19_local5)
    elseif f19_local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local3, f19_local6, f19_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local1, TARGET_ENE_0, f19_local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local2, TARGET_ENE_0, f19_local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local2, TARGET_ENE_0, f19_local5)
    elseif f19_local8 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local3, f19_local6, f19_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local1, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f19_local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, 10.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, f19_local6, f19_local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f19_local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act18(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) - 5, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 10)
    local f20_local0 = 3009
    local f20_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f20_local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f20_local2, f20_local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f20_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(20, 40))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FrostfireColossus_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not (arg1:GetSpecialEffectActivateInterruptType(0) ~= 5025 or arg1:GetDist(TARGET_ENE_0) > 7 or not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90)) or not not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90)) then
        arg2:ClearSubGoal()
        FrostfireColossus_Act15(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
