RegisterTableGoal(GOAL_Thindarosu225000_Battle, "ThindarosuBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Thindarosu225000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10652) then
        Thindarosu_Act13(arg1, arg2, paramTbl)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3704311) then
        if arg1:IsInsideTargetRegion(TARGET_SELF, 3704312) then
            Thindarosu_TurnToEntity(arg1, arg2, 3704313, 1)
        else
            Thindarosu_ApproachToEntity(arg1, arg2, 3704312, -1)
        end
    elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3704320) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3704340) then
        Thindarosu_Act08(arg1, arg2, paramTbl)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3704361) then
        Thindarosu_Act13(arg1, arg2, paramTbl)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3704300) then
        Thindarosu_NormalBattle(arg1, arg2)
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3704350) then
        if arg1:IsInsideTargetRegion(TARGET_SELF, 3704352) then
            local local0 = 20
            if arg1:IsLookToTarget(TARGET_ENE_0, local0) then
                arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
            else
                arg2:AddSubGoal(GOAL_COMMON_Turn, 5, TARGET_ENE_0, local0)
            end
        else
            Thindarosu_ApproachToEntity2(arg1, arg2, 3704352, -3)
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3704330) then
        Thindarosu_NormalBattle(arg1, arg2)
    else
        Thindarosu_NormalBattle(arg1, arg2)
    end
    return 
end

function Thindarosu_NormalBattle(arg0, arg1)
    Init_Pseudo_Global(arg0, arg1)
    arg0:SetStringIndexedNumber("Dist_SideStep", 5)
    arg0:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg0:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetNumber(10, local3)
    local local4 = 0
    if arg0:IsInsideTargetRegion(TARGET_SELF, 3704300) then
        local4 = 1
    end
    if arg0:GetNumber(0) == 0 then
        local0[15] = 100
    elseif InsideDir(arg0, arg1, 70, 25) and local3 <= 3.5 then
        local0[6] = 70
        local0[17] = 25
        local0[20] = 5
    elseif InsideDir(arg0, arg1, 137.5, 85) and local3 <= 3.5 then
        local0[11] = 95
        local0[20] = 5
    elseif InsideDir(arg0, arg1, -70, 25) and local3 <= 3.5 then
        local0[7] = 70
        local0[18] = 25
        local0[20] = 5
    elseif InsideDir(arg0, arg1, -157.5, 45) then
        local0[12] = 95
        local0[20] = 5
    elseif InsideDir(arg0, arg1, 180, 120) then
        if local3 <= 3 then
            local0[11] = 30
            local0[12] = 30
            local0[20] = 40
        else
            local0[20] = 100
        end
    elseif 30 <= local3 then
        local0[10] = 100
    elseif 10 <= local3 then
        local0[5] = 25
        local0[8] = 25
    elseif 8 <= local3 then
        local0[1] = 20
        local0[5] = 40
        local0[8] = 40
    elseif 6 <= local3 then
        local0[1] = 30
        local0[3] = 15
        local0[4] = 15
        local0[8] = 30
        local0[14] = 0
    elseif 2.5 <= local3 then
        if local4 == 1 then
            local0[3] = 28
            local0[4] = 28
            local0[8] = 20
            local0[14] = 24
        else
            local0[3] = 23
            local0[4] = 22
            local0[8] = 15
            local0[14] = 40
        end
    elseif local4 == 1 then
        local0[2] = 36
        local0[3] = 20
        local0[4] = 20
        local0[8] = 0
        local0[14] = 0
        local0[17] = 12
        local0[18] = 12
    else
        local0[2] = 25
        local0[3] = 12
        local0[4] = 13
        local0[8] = 0
        local0[14] = 40
        local0[17] = 5
        local0[18] = 5
    end
    local0[5] = SetCoolTime(arg0, arg1, 3004, 20, local0[5], 1)
    local0[8] = SetCoolTime(arg0, arg1, 3008, 20, local0[8], 1)
    local0[10] = SetCoolTime(arg0, arg1, 3012, 45, local0[10], 1)
    local0[6] = SetCoolTime(arg0, arg1, 3006, 4, local0[6], 0)
    local0[7] = SetCoolTime(arg0, arg1, 3006, 4, local0[7], 0)
    local0[11] = SetCoolTime(arg0, arg1, 3006, 4, local0[11], 0)
    local0[12] = SetCoolTime(arg0, arg1, 3006, 4, local0[12], 0)
    local0[6] = SetCoolTime(arg0, arg1, 3007, 4, local0[6], 0)
    local0[7] = SetCoolTime(arg0, arg1, 3007, 4, local0[7], 0)
    local0[11] = SetCoolTime(arg0, arg1, 3007, 4, local0[11], 0)
    local0[12] = SetCoolTime(arg0, arg1, 3007, 4, local0[12], 0)
    local0[6] = SetCoolTime(arg0, arg1, 3016, 4, local0[6], 0)
    local0[7] = SetCoolTime(arg0, arg1, 3016, 4, local0[7], 0)
    local0[11] = SetCoolTime(arg0, arg1, 3016, 4, local0[11], 0)
    local0[12] = SetCoolTime(arg0, arg1, 3016, 4, local0[12], 0)
    local0[6] = SetCoolTime(arg0, arg1, 3017, 4, local0[6], 0)
    local0[7] = SetCoolTime(arg0, arg1, 3017, 4, local0[7], 0)
    local0[11] = SetCoolTime(arg0, arg1, 3017, 4, local0[11], 0)
    local0[12] = SetCoolTime(arg0, arg1, 3017, 4, local0[12], 0)
    local0[14] = SetCoolTime(arg0, arg1, 3021, 25, local0[14], 0)
    local0[17] = SetCoolTime(arg0, arg1, 6002, 10, local0[17], 1)
    local0[17] = SetCoolTime(arg0, arg1, 6003, 10, local0[17], 1)
    local0[18] = SetCoolTime(arg0, arg1, 6002, 10, local0[18], 1)
    local0[18] = SetCoolTime(arg0, arg1, 6003, 10, local0[18], 1)
    local0[17] = SpaceCheckBeforeAct(arg0, arg1, -90, 6, local0[17])
    local0[18] = SpaceCheckBeforeAct(arg0, arg1, 90, 6, local0[18])
    local1[1] = REGIST_FUNC(arg0, arg1, Thindarosu_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Thindarosu_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Thindarosu_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Thindarosu_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Thindarosu_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Thindarosu_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Thindarosu_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Thindarosu_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Thindarosu_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Thindarosu_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Thindarosu_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Thindarosu_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Thindarosu_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Thindarosu_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Thindarosu_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Thindarosu_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, Thindarosu_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, Thindarosu_Act18)
    local1[20] = REGIST_FUNC(arg0, arg1, Thindarosu_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, Thindarosu_Act21)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Thindarosu225000_ActAfter_AdjustSpace), local2)
    return 
end

function Thindarosu_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    Approach_Act_Flex(arg0, arg1, 14 - arg0:GetMapHitRadius(TARGET_SELF) - 2.5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 3.5, 50, 0, 3, 3)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetRandam_Int(1, 100) <= 75 then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, local0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, Attack3, TARGET_ENE_0, local0)
    return 0
end

function Thindarosu_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local0 = 3001
    local local1 = 3013
    local local2 = 3015
    local local3 = 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local4 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local local5 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    if local8 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local6, local7)
    elseif local8 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local5)
    end
    return 0
end

function Thindarosu_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    Approach_Act_Flex(arg0, arg1, 6.9 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5, 6.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2.5, 50, 0, 3, 3)
    local local0 = 3002
    local local1 = 3013
    local local2 = 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
    elseif local6 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
    elseif local6 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3)
    end
    return 0
end

function Thindarosu_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    Approach_Act_Flex(arg0, arg1, 6.9 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5, 6.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 6.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2.5, 50, 0, 3, 3)
    local local0 = 3003
    local local1 = 3014
    local local2 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
    elseif local6 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3)
    elseif local6 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3)
    end
    return 0
end

function Thindarosu_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 21 - arg0:GetMapHitRadius(TARGET_SELF) - 3, 21 - arg0:GetMapHitRadius(TARGET_SELF) - 999, 21 - arg0:GetMapHitRadius(TARGET_SELF) - 998, 100, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 45)
    return 0
end

function Thindarosu_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
    return 0
end

function Thindarosu_Act07(arg0, arg1, arg2)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    return 0
end

function Thindarosu_Act08(arg0, arg1, arg2)
    local local0 = 3008
    local local1 = 3009
    local local2 = 3022
    local local3 = 3010
    local local4 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local5 = 1.5
    local local6 = 45
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local local7 = arg0:GetDist(TARGET_ENE_0)
    if 25 <= local7 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    elseif 20 <= local7 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    elseif 15 <= local7 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    elseif 9 <= local7 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    elseif 5 <= local7 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local2, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, 999, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, 999)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local4)
    end
    return 0
end

function Thindarosu_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Thindarosu_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 45)
    return 0
end

function Thindarosu_Act11(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
    return 0
end

function Thindarosu_Act12(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
    return 0
end

function Thindarosu_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Thindarosu_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), -1, 50)
    return 0
end

function Thindarosu_Act15(arg0, arg1, arg2)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, local0, 0, 0)
    local1:TimingSetNumber(0, 1, AI_TIMING_SET__UPDATE_SUCCESS)
    if InsideRange(arg0, arg1, 0, 120, 20, 35) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local0)
    end
    return 0
end

function Thindarosu_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Thindarosu_Act17(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    arg1:AddSubGoal(GOAL_Thindarosu225000_StepAfterAttack, 5, 6002)
    return 0
end

function Thindarosu_Act18(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    arg1:AddSubGoal(GOAL_Thindarosu225000_StepAfterAttack, 5, 6003)
    return 0
end

function Thindarosu_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30)
    return 0
end

function Thindarosu_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, 20, TARGET_SELF, false, -1)
    return 0
end

function Thindarosu_ApproachToEntity(arg0, arg1, arg2, arg3)
    if arg2 == nil then
        return 
    end
    local local0 = 0
    if arg3 == nil then
        local0 = 0
    else
        local0 = arg3
    end
    arg0:SetEventMoveTarget(arg2)
    if arg0:IsLookToTarget(POINT_EVENT, 2) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, local0, POINT_EVENT, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 5, POINT_EVENT, 1)
    end
    return 
end

function Thindarosu_ApproachToEntity2(arg0, arg1, arg2, arg3)
    if arg2 == nil then
        return 
    end
    local local0 = 0
    if arg3 == nil then
        local0 = 0
    else
        local0 = arg3
    end
    arg0:SetEventMoveTarget(arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, local0, TARGET_ENE_0, true, -1)
    return 
end

function Thindarosu_TurnToEntity(arg0, arg1, arg2, arg3)
    local local0 = 0
    if arg2 == nil then
        return 
    elseif arg3 == nil then
        local0 = 2.5
    else
        local0 = arg3
    end
    arg0:SetEventMoveTarget(arg2)
    if arg0:IsLookToTarget(TARGET_ENE_0, local0) then
        if 30 <= arg0:GetAttackPassedTime(3011) then
            Thindarosu_Act16(arg0, arg1, paramTbl)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 5, POINT_EVENT, local0)
    end
    return 
end

function Thindarosu_TurnTonest(arg0, arg1)
    local local0 = 5
    if arg0:IsLookToTarget(TARGET_ENE_0, local0) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, 111)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 5, 111, local0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and arg1:GetDist(TARGET_ENE_0) <= 0.5 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            return Thindarosu_SpecialEffect5028(arg1, arg2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            return Thindarosu_SpecialEffect5025(arg1, arg2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            return Thindarosu_SpecialEffect5026(arg1, arg2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            return Thindarosu_SpecialEffect5027(arg1, arg2)
        end
    end
    return false
end

function Thindarosu_SpecialEffect5025(arg0, arg1)
    if InsideRange(arg0, arg1, 180, 180, -999, 999) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 999)
        return true
    else
        return false
    end
end

function Thindarosu_SpecialEffect5026(arg0, arg1)
    if InsideRange(arg0, arg1, 180, 180, -999, 999) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999)
        return true
    else
        return false
    end
end

function Thindarosu_SpecialEffect5027(arg0, arg1)
    if InsideRange(arg0, arg1, 70, 25, -999, 3.5) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 999)
        return true
    elseif InsideRange(arg0, arg1, 137.5, 85, -999, 3.5) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 999)
        return true
    elseif InsideRange(arg0, arg1, -70, 25, -999, 3.5) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 999)
        return true
    elseif InsideRange(arg0, arg1, -137.5, 85, -999, 3.5) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 999)
        return true
    else
        return false
    end
end

function Thindarosu_SpecialEffect5028(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    if local0 <= 70 and SpaceCheck(arg0, arg1, -180, 5) then
        arg1:AddSubGoal(GOAL_EnemyStepBack, 4, TARGET_ENE_0, -99)
        return true
    elseif local0 <= 70 and SpaceCheck(arg0, arg1, 90, 5) then
        arg1:AddSubGoal(GOAL_EnemyStepRight, 4, TARGET_ENE_0, -99)
        return true
    elseif local0 <= 70 and SpaceCheck(arg0, arg1, -90, 5) then
        arg1:AddSubGoal(GOAL_EnemyStepLeft, 4, TARGET_ENE_0, -99)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Thindarosu225000_StepAfterAttack, "GOAL_Thindarosu225000_StepAfterAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Thindarosu225000_StepAfterAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    if InsideRange(arg1, arg2, 0, 120, -99, 2.3 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local local0 = arg1:GetRandam_Int(1, 100)
        if local0 <= 10 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        elseif local0 <= 45 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 5.7 - arg1:GetMapHitRadius(TARGET_SELF) + 3, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
        elseif local0 <= 65 then
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 5.7 - arg1:GetMapHitRadius(TARGET_SELF) + 3, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5.8 - arg1:GetMapHitRadius(TARGET_SELF) + 3)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 6.5 - arg1:GetMapHitRadius(TARGET_SELF) + 5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
        end
    elseif InsideRange(arg1, arg2, 0, 120, 2.3 - arg1:GetMapHitRadius(TARGET_SELF), 6.9 - arg1:GetMapHitRadius(TARGET_SELF)) then
        if arg2:GetParam(0) == 6002 then
            local local0 = arg1:GetRandam_Int(1, 100)
            if local0 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif local0 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 5.8 - arg1:GetMapHitRadius(TARGET_SELF) + 3, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
            elseif local0 <= 65 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 5.8 - arg1:GetMapHitRadius(TARGET_SELF) + 3, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 5.7 - arg1:GetMapHitRadius(TARGET_SELF) + 3)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 5.8 - arg1:GetMapHitRadius(TARGET_SELF) + 3, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 6.5 - arg1:GetMapHitRadius(TARGET_SELF) + 5)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
            end
        else
            local local0 = arg1:GetRandam_Int(1, 100)
            if local0 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif local0 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 5.7 - arg1:GetMapHitRadius(TARGET_SELF) + 3, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
            elseif local0 <= 65 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 5.7 - arg1:GetMapHitRadius(TARGET_SELF) + 3, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5.8 - arg1:GetMapHitRadius(TARGET_SELF) + 3)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 6.5 - arg1:GetMapHitRadius(TARGET_SELF) + 5, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF))
            end
        end
    elseif InsideRange(arg1, arg2, 0, 120, 6.9 - arg1:GetMapHitRadius(TARGET_SELF), 14 - arg1:GetMapHitRadius(TARGET_SELF)) then
        if fate <= 75 then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        end
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
    else
        return 
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
