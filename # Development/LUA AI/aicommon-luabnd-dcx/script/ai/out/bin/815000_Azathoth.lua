RegisterTableGoal(GOAL_Azathoth_815000_Battle, "GOAL_Azathoth_815000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Azathoth_815000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    
    if InsideDir(arg1, arg2, 180, 240) then
        if local3 <= 2.5 then
            local0[8] = 80
            local0[20] = 20
        else
            local0[20] = 100
        end
    elseif 8.5 <= local3 then
        local0[4] = 15
        local0[6] = 25
        local0[7] = 50
        local0[11] = 10
    elseif 6 <= local3 then
        local0[1] = 15
        local0[2] = 0
        local0[3] = 0
        local0[4] = 50
        local0[5] = 0
        local0[6] = 45
        local0[7] = 25
        local0[9] = 0
        local0[11] = 25
        local0[10] = 40
    elseif 4 <= local3 then
        local0[1] = 5
        local0[2] = 30
        local0[3] = 5
        local0[4] = 20
        local0[5] = 5
        local0[6] = 0
        local0[7] = 0
        local0[9] = 5
        local0[11] = 15
        local0[10] = 15
    elseif 2 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[3] = 10
        local0[5] = 10
        local0[9] = 15
        local0[10] = 25
    else
        local0[1] = 15
        local0[2] = 35
        local0[3] = 15
        local0[5] = 15
        local0[9] = 10
        local0[10] = 10
    end
    
    local0[1] = SetCoolTime(arg1, arg2, 3000, 6, local0[1], 1)
    local0[1] = SetCoolTime(arg1, arg2, 3001, 6, local0[1], 1)
    local0[1] = SetCoolTime(arg1, arg2, 3002, 6, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 6002, 8, local0[2], 1)
    local0[2] = SetCoolTime(arg1, arg2, 6003, 8, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 15, local0[3], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 15, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3004, 15, local0[4], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 15, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 6, local0[5], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 6, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3006, 6, local0[6], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 6, local0[6], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3010, 15, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3011, 10, local0[10], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, Azathoth_815000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Azathoth_815000_ActAfter_AdjustSpace), local2)
    return 
end

function Azathoth_815000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = ATT_SUCCESSDIST
    local local3 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if local6 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
    elseif local6 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Azathoth_815000_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if InsideRange(arg0, arg1, 90, 180, -99, 99) then
        if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_SideStep")) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_SideStep")) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            return 
        end
    elseif InsideRange(arg0, arg1, -90, 180, -99, 99) then
        if SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_SideStep")) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_SideStep")) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            return 
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Azathoth_815000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.9 - arg0:GetMapHitRadius(TARGET_SELF), 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.5 - arg0:GetMapHitRadius(TARGET_SELF), 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.1 - arg0:GetMapHitRadius(TARGET_SELF), 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(5.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.7 - arg0:GetMapHitRadius(TARGET_SELF))
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 100, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(9 - arg0:GetMapHitRadius(TARGET_SELF), 11.8 - 1 - arg0:GetMapHitRadius(TARGET_SELF))
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.7 - arg0:GetMapHitRadius(TARGET_SELF), 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(4 - arg0:GetMapHitRadius(TARGET_SELF), 7.1 - 1 - arg0:GetMapHitRadius(TARGET_SELF))
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 100, 0, 5, 5)
    local local1 = 3003
    local local2 = 3001
    local local3 = ATT_SUCCESSDIST
    local local4 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    if local7 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local3, local5, local6)
    elseif local7 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local5, local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Azathoth_815000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Azathoth_815000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Azathoth_815000_AfterAttackAct, 5)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and local1 <= 100 then
        arg2:ClearSubGoal()
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and local0 <= 8.5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif local0 <= 2.5 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            elseif local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
    end
    if InsideRange(arg1, arg2, 0, 180, -99, 3.5) and Counter_Act(arg1, arg2, 5, 3015) then
        if arg1:GetRandam_Int(1, 100) <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999)
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999)
        end
        arg2:AddSubGoal(GOAL_Azathoth_815000_AfterAttackAct, 10)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_Azathoth_815000_AfterAttackAct, "Azathoth_815000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Azathoth_815000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 0.5)
    arg1:SetStringIndexedNumber("DistMax_AAA", 5)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 120)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 0.5)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 4)
    if 4 <= local0 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 100)
    else
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_Azathoth_815000_StepAttack, "GOAL_Azathoth_815000_StepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Azathoth_815000_StepAttack, true)

Goal.Activate = function (arg0, arg1, arg2)
    if InsideRange(arg1, arg2, 0, 120, 4 - arg1:GetMapHitRadius(TARGET_SELF), 7.1 - 1 - arg1:GetMapHitRadius(TARGET_SELF)) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    elseif InsideRange(arg1, arg2, 180, 180, -99 - arg1:GetMapHitRadius(TARGET_SELF), 1.7 - arg1:GetMapHitRadius(TARGET_SELF)) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    elseif InsideRange(arg1, arg2, 0, 180, -99 - arg1:GetMapHitRadius(TARGET_SELF), 3.7 - arg1:GetMapHitRadius(TARGET_SELF)) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
