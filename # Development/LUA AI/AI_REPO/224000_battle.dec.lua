RegisterTableGoal(GOAL_Fullarmor224000_Battle, "FullarmorBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Fullarmor224000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(1, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetEventRequest()
    if arg1:GetHpRate(TARGET_SELF) <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, DIST_None, 0, 0, 180, 0)
        return false
    elseif arg1:GetNumber(0) == 0 then
        local0[26] = 100
    elseif arg1:GetNumber(1) == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
        local0[25] = 100
    elseif arg1:IsFinishTimer(0) == true and arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
        local0[25] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 < 4 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            local0[15] = 99
            local0[21] = 1
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[6] = 30
            local0[17] = 60
            local0[20] = 10
        else
            local0[6] = 30
            local0[16] = 60
            local0[20] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and 4 <= local3 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            local0[20] = 100
        else
            local0[20] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 < 5.5 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            local0[20] = 29
            local0[21] = 1
            local0[23] = 69
        else
            local0[8] = 40
            local0[16] = 30
            local0[20] = 30
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local3 < 5.5 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            local0[20] = 29
            local0[21] = 1
            local0[22] = 70
        else
            local0[7] = 40
            local0[17] = 30
            local0[20] = 30
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and 5.5 <= local3 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            local0[20] = 29
            local0[21] = 1
            local0[23] = 70
        else
            local0[8] = 40
            local0[20] = 60
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and 5.5 <= local3 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            local0[20] = 29
            local0[21] = 1
            local0[22] = 70
        else
            local0[7] = 40
            local0[20] = 60
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11923) == false then
        if 15 <= local3 then
            local0[1] = 80
            local0[2] = 5
            local0[3] = 0
            local0[5] = 5
            local0[6] = 5
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[11] = 0
            local0[12] = 0
            local0[14] = 0
            local0[18] = 0
            local0[21] = 5
        elseif 10 <= local3 then
            local0[1] = 50
            local0[2] = 15
            local0[3] = 0
            local0[5] = 15
            local0[6] = 15
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[11] = 0
            local0[12] = 0
            local0[14] = 0
            local0[18] = 0
            local0[21] = 5
        elseif 5 <= local3 then
            local0[1] = 0
            local0[2] = 20
            local0[3] = 0
            local0[5] = 25
            local0[6] = 25
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 10
            local0[11] = 0
            local0[12] = 0
            local0[14] = 0
            local0[18] = 20
            local0[21] = 0
        else
            local0[1] = 0
            local0[2] = 15
            local0[3] = 0
            local0[5] = 10
            local0[6] = 15
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 30
            local0[11] = 0
            local0[12] = 0
            local0[14] = 0
            local0[18] = 30
            local0[21] = 0
        end
    elseif 15 <= local3 then
        local0[1] = 40
        local0[2] = 0
        local0[3] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[14] = 20
        local0[18] = 0
        local0[21] = 0
    elseif 10 <= local3 then
        local0[1] = 25
        local0[2] = 0
        local0[3] = 5
        local0[5] = 0
        local0[6] = 0
        local0[7] = 5
        local0[8] = 5
        local0[9] = 0
        local0[10] = 0
        local0[11] = 10
        local0[12] = 5
        local0[14] = 15
        local0[18] = 0
        local0[21] = 0
    elseif 5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[8] = 20
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10
        local0[14] = 0
        local0[18] = 0
        local0[21] = 0
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 25
        local0[10] = 25
        local0[11] = 25
        local0[12] = 0
        local0[14] = 0
        local0[18] = 0
        local0[21] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 20, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3008, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 20, local0[3], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3010, 15, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3019, 15, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3012, 20, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3013, 20, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3004, 25, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3007, 25, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3003, 15, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3014, 20, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3015, 15, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3016, 15, local0[14], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3005, 10, local0[16], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3006, 10, local0[17], 1)
    local0[18] = SetCoolTime(arg1, arg2, 6001, 15, local0[18], 1)
    local0[19] = SetCoolTime(arg1, arg2, 3018, 30, local0[19], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, FullArmor_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, FullArmor_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, FullArmor_Act03)
    local1[5] = REGIST_FUNC(arg1, arg2, FullArmor_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, FullArmor_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, FullArmor_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, FullArmor_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, FullArmor_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, FullArmor_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, FullArmor_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, FullArmor_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, FullArmor_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, FullArmor_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, FullArmor_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, FullArmor_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, FullArmor_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, FullArmor_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, FullArmor_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, FullArmor_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, FullArmor_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, FullArmor_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, FullArmor_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, FullArmor_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, FullArmor_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, FullArmor_Act26)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, FullArmor_ActAfter_AdjustSpace), local2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function FullArmor_Act01(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 6.1)
    arg0:SetStringIndexedNumber("AddDistRun", 9)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 15.2 - arg0:GetMapHitRadius(TARGET_SELF), 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 15.2 - arg0:GetMapHitRadius(TARGET_SELF), 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 4)
    end
    local local0 = 3000
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if local4 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    elseif local4 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act02(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 6.7 - arg0:GetMapHitRadius(TARGET_SELF), 6.7 - arg0:GetMapHitRadius(TARGET_SELF), 6.7 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 6.7 - arg0:GetMapHitRadius(TARGET_SELF), 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 6.7 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 4)
    end
    local local0 = 3008
    local local1 = 3021
    local local2 = 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local6 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act03(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 2)
    arg0:SetStringIndexedNumber("AddDistRun", 4.1)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF), 13 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 4, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act05(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 10.4 - arg0:GetMapHitRadius(TARGET_SELF), 10.4 - arg0:GetMapHitRadius(TARGET_SELF), 10.4 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 10.4 - arg0:GetMapHitRadius(TARGET_SELF), 10.4 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 10.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 70, 0, 4, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act06(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 2.1)
    arg0:SetStringIndexedNumber("AddDistRun", 4)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 8.6 - arg0:GetMapHitRadius(TARGET_SELF), 8.6 - arg0:GetMapHitRadius(TARGET_SELF), 8.6 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 8.6 - arg0:GetMapHitRadius(TARGET_SELF), 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, Odds_Guard, 4, 4)
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act07(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 1.9)
    arg0:SetStringIndexedNumber("AddDistRun", 4)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF), 7.7 - arg0:GetMapHitRadius(TARGET_SELF), 8.6 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 7.7 - arg0:GetMapHitRadius(TARGET_SELF), 7.7 - arg0:GetMapHitRadius(TARGET_SELF), 7.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 4, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act08(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 2.3)
    arg0:SetStringIndexedNumber("AddDistRun", 4.5)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 6.1 - arg0:GetMapHitRadius(TARGET_SELF), 6.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 70, 0, 4, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act09(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 2)
    arg0:SetStringIndexedNumber("AddDistRun", 4.2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 6.9 - arg0:GetMapHitRadius(TARGET_SELF), 6.9 - arg0:GetMapHitRadius(TARGET_SELF), 6.9 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 6.9 - arg0:GetMapHitRadius(TARGET_SELF), 6.9 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 6.9 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act10(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 1.9)
    arg0:SetStringIndexedNumber("AddDistRun", 3.3)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 4)
    end
    local local0 = 3007
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, DistToAtt1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, DistToAtt1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act11(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 4)
    arg0:SetStringIndexedNumber("AddDistRun", 6)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 16.5 - arg0:GetMapHitRadius(TARGET_SELF), 16.5 - arg0:GetMapHitRadius(TARGET_SELF), 16.5 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 16.5 - arg0:GetMapHitRadius(TARGET_SELF), 16.5 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 16.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act12(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 3)
    arg0:SetStringIndexedNumber("AddDistRun", 5)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 9.5 - arg0:GetMapHitRadius(TARGET_SELF), 9.5 - arg0:GetMapHitRadius(TARGET_SELF), 9.5 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 9.5 - arg0:GetMapHitRadius(TARGET_SELF), 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act13(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 0)
    local local0 = 3015
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 3)
    if local5 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local3, local4, 0, 0)
    elseif local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act14(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        Approach_Act_Flex(arg0, arg1, 31.6 - arg0:GetMapHitRadius(TARGET_SELF), 31.6 - arg0:GetMapHitRadius(TARGET_SELF), 31.6 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    else
        Approach_Act_Flex(arg0, arg1, 31.6 - arg0:GetMapHitRadius(TARGET_SELF), 31.6 - arg0:GetMapHitRadius(TARGET_SELF) + 7, 31.6 - arg0:GetMapHitRadius(TARGET_SELF) + 10, 50, 0, 4, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, -90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 3)
    arg1:AddSubGoal(GOAL_FullArmor_224000_SelectAttack, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FullArmor_Act19(arg0, arg1, arg2)
    local local0 = 3018
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 18 then
        arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 7)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FullArmor_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FullArmor_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepRight, 3, TARGET_ENE_0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FullArmor_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EnemyStepLeft, 3, TARGET_ENE_0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FullArmor_Act24(arg0, arg1, arg2)
    local local0 = 3022
    local local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act25(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg0:SetTimer(0, 47)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 0)
    if arg0:GetDist(TARGET_ENE_0) <= 13.7 then
        arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 3)
    end
    Approach_Act_Flex(arg0, arg1, 13.7 - arg0:GetMapHitRadius(TARGET_SELF), 13.7 - arg0:GetMapHitRadius(TARGET_SELF), 13.7 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
    local local0 = 3015
    local local1 = 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local0, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FullArmor_Act26(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6, TARGET_SELF, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FullArmor_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Fullarmor224000_AfterAttackAct, 10)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local0 = arg1:GetDist(TARGET_ENE_0)
        local local1 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(arg1, arg2, 0, 60, 11, 17) then
            arg2:ClearSubGoal()
            FullArmor_Act24(arg1, arg2, paramTbl)
        end
    end
    return 
end

RegisterTableGoal(GOAL_FullArmor_224000_SelectAttack, "FullArmor_224000_StepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FullArmor_224000_SelectAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 999) then
        return 
    else
        local local1 = arg1:GetRandam_Int(1, 100)
        if local1 <= 40 then
            arg1:SetStringIndexedNumber("AddDistWalk", 2.2)
            arg1:SetStringIndexedNumber("AddDistRun", 4.6)
            Approach_Act_Flex(arg1, arg2, 9.5 - arg1:GetMapHitRadius(TARGET_SELF), 9.5 - arg1:GetMapHitRadius(TARGET_SELF), 9.5 - arg1:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
            local local2 = 3009
            local local3 = 10 - arg1:GetMapHitRadius(TARGET_SELF)
            local local4 = 0
            local local5 = 0
            if arg1:GetRandam_Int(1, 100) <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local2, TARGET_ENE_0, local3, local4, local5, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local2, TARGET_ENE_0, 8.6 - arg1:GetMapHitRadius(TARGET_SELF) + 1, local4, local5, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local3, 0, 0)
            end
            GetWellSpace_Odds = 100
            return GetWellSpace_Odds
        elseif local1 <= 70 then
            arg1:SetStringIndexedNumber("AddDistWalk", 2.2)
            arg1:SetStringIndexedNumber("AddDistRun", 4.8)
            Approach_Act_Flex(arg1, arg2, 10.4 - arg1:GetMapHitRadius(TARGET_SELF), 10.4 - arg1:GetMapHitRadius(TARGET_SELF), 10.4 - arg1:GetMapHitRadius(TARGET_SELF), 100, 0, 4, 4)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 10 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
            GetWellSpace_Odds = 100
            return GetWellSpace_Odds
        else
            arg1:SetStringIndexedNumber("AddDistWalk", 2.1)
            arg1:SetStringIndexedNumber("AddDistRun", 4)
            Approach_Act_Flex(arg1, arg2, 8.6 - arg1:GetMapHitRadius(TARGET_SELF), 8.6 - arg1:GetMapHitRadius(TARGET_SELF), 8.6 - arg1:GetMapHitRadius(TARGET_SELF), 50, 0, 4, 4)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 10 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
            GetWellSpace_Odds = 100
            return GetWellSpace_Odds
        end
    end
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
