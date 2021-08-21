RegisterTableGoal(GOAL_OldmanCrystal_132000_Battle, "OldmanCrystal_132000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldmanCrystal_132000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    if arg1:GetNumber(0) == 0 then
        arg1:SetTimer(0, 15)
        arg1:SetNumber(0, 1)
    end
    arg1:SetNumber(2, 0)
    local local3 = arg1:GetNumber(2)
    if arg1:IsEventFlag(13305894) == true then
        local3 = local3 + 1
    end
    if arg1:IsEventFlag(13305895) == true then
        local3 = local3 + 1
    end
    if arg1:IsEventFlag(13305896) == true then
        local3 = local3 + 1
    end
    arg1:SetNumber(2, local3)
    local local4 = arg1:GetDist(TARGET_ENE_0)
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = arg1:GetMapHitRadius(TARGET_SELF)
    local local7 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local8 = arg1:GetNumber(2)
    if arg1:GetHpRate(TARGET_SELF) <= 0.6 and arg1:GetNpcThinkParamID() == 132000 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10558) and arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false then
        local0[24] = 100
    elseif arg1:GetNpcThinkParamID() == 132000 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:HasSpecialEffectId(TARGET_SELF, 10558) and arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false and arg1:IsFinishTimer(2) == false then
        local0[25] = 100
    elseif arg1:GetNpcThinkParamID() == 132000 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10558) and arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false and arg1:IsFinishTimer(2) == false and (not (local5 > 30 or 8 >= local4) or not (local5 > 50 or 3 >= local4) or local4 <= 3) then
        local0[23] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif arg1:GetNpcThinkParamID() == 132010 then
        if not (3 > local8 or local5 > 60 or 2.5 > local4) or 2 <= local8 and local5 <= 40 and 2.5 <= local4 then
            local0[22] = 10
            local0[21] = 10
        elseif 15 <= local4 then
            local0[1] = 30
            local0[5] = 10
        elseif 8 <= local4 then
            local0[1] = 30
            local0[5] = 10
            local0[9] = 20
        elseif 2.5 <= local4 then
            local0[1] = 30
            local0[9] = 20
        else
            local0[10] = 10
            local0[11] = 10
            local0[21] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) and 1 <= local8 then
        if 16 <= local4 then
            local0[1] = 0
            local0[2] = 20
            local0[5] = 30
            local0[6] = 20
        elseif 10.5 <= local4 then
            local0[1] = 0
            local0[2] = 20
            local0[5] = 30
            local0[6] = 20
        elseif 6 <= local4 then
            local0[1] = 0
            local0[5] = 0
            local0[2] = 20
            local0[22] = 50
        elseif 3 <= local4 then
            local0[1] = 0
            local0[2] = 0
            local0[11] = 10
            local0[21] = 20
        else
            local0[2] = 0
            local0[10] = 10
            local0[11] = 10
            local0[21] = 30
        end
    elseif 16 <= local4 then
        local0[1] = 10
        local0[2] = 20
        local0[5] = 30
        local0[6] = 20
    elseif 10.5 <= local4 then
        local0[1] = 10
        local0[2] = 20
        local0[5] = 30
        local0[6] = 20
    elseif 6 <= local4 then
        local0[1] = 0
        local0[5] = 0
        local0[2] = 20
        local0[22] = 50
    elseif 3 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[11] = 10
        local0[21] = 10
    else
        local0[1] = 0
        local0[2] = 0
        local0[10] = 20
        local0[11] = 20
        local0[21] = 30
    end
    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        local0[1] = local0[1] + 20
        local0[2] = local0[2] + 50
    end
    if arg1:GetNpcThinkParamID() == 132000 then
        if arg1:IsFinishTimer(1) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            local0[1] = local0[1] + 50
        end
        if arg1:IsFinishTimer(3) == false then
            local0[1] = local0[1] + 20
            local0[5] = local0[5] + 20
            local0[6] = local0[6] + 10
        end
        if 2 <= local8 then
            local0[22] = local0[22] - 30
        elseif 1 <= local8 then
            local0[22] = local0[22] - 40
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 5, local6, local6) <= 3.5 then
            local0[6] = local0[6] + 50
            local0[22] = local0[22] + 30
        end
    end
    if arg1:GetNpcThinkParamID() == 132010 and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 5, local6, local6) <= 3.5 then
        local0[22] = local0[22] + 50
    end
    local0[2] = SetCoolTime(arg1, arg2, 3001, 12, local0[2], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 8, local0[5], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3007, 8, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3017, 10, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3021, 10, local0[11], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10559) then
        local0[2] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        local0[5] = 0
    end
    arg1:SetNumber(1, 1)
    local1[1] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act02)
    local1[5] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act06)
    local1[9] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, OldmanCrystal_Act26)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, OldmanCrystal_ActAfter_AdjustSpace), local2)
    return 
end

function OldmanCrystal_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30, 0, 0)
    arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function OldmanCrystal_Act02(arg0, arg1, arg2)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetMp(TARGET_SELF)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldmanCrystal_Act04(arg0, arg1, arg2)
    local local0 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function OldmanCrystal_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Float(2.5, 4.5)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Int(30, 45)
    local local4 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetDistYSigned(TARGET_ENE_0) <= 1.5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, 3004, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 150, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function OldmanCrystal_Act06(arg0, arg1, arg2)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 1.5
    local local2 = 45
    local local3 = arg0:GetRandam_Int(1, 100)
    if 12 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function OldmanCrystal_Act07(arg0, arg1, arg2)
    local local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function OldmanCrystal_Act08(arg0, arg1, arg2)
    local local0 = 20.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 60, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function OldmanCrystal_Act09(arg0, arg1, arg2)
    local local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, local0, 1.5, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function OldmanCrystal_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function OldmanCrystal_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 999, 999, 0, 0, 2.5, 5)
    local local0 = 3021
    local local1 = 3022
    local local2 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 1.5
    local local5 = 120
    if arg0:GetRandam_Int(1, 100) <= 70 or arg0:GetNpcThinkParamID() == 132010 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local3)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function OldmanCrystal_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    return 
end

function OldmanCrystal_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 6.5, TARGET_ENE_0, true, -1)
    return 
end

function OldmanCrystal_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(0, 1)
    local local1 = arg0:GetNumber(2)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 6)
    if arg0:GetNpcThinkParamID() == 132010 and 3 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(5.5, 7), TARGET_ENE_0, local0, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:GetNpcThinkParamID() == 132010 and 2 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(4, 5.5), TARGET_ENE_0, local0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 4), TARGET_ENE_0, local0, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function OldmanCrystal_Act23(arg0, arg1, arg2)
    arg0:SetTimer(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_NONE, 999, 0, 360, 0, 0)
    arg0:SetTimer(0, 30)
    arg0:SetNumber(1, 1)
    return 
end

function OldmanCrystal_Act24(arg0, arg1, arg2)
    arg0:SetTimer(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3011, TARGET_NONE, 999, 0, 360, 0, 0)
    arg0:SetTimer(0, 40)
    arg0:SetNumber(1, 1)
    return 
end

function OldmanCrystal_Act25(arg0, arg1, arg2)
    arg0:SetTimer(2, 0)
    local local0 = arg0:GetHpRate(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_NONE, 999, 0, 360, 0, 0)
    arg0:SetTimer(0, 30)
    arg0:SetNumber(1, 1)
    return 
end

function OldmanCrystal_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_NONE, 999, 0, 360, 0, 0)
    return 
end

function OldmanCrystal_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_OldmanCrystal_132000_AfterAttackAct, 10)
    return 
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        arg1:DeleteObserve(0)
        return true
    elseif arg1:GetNpcThinkParamID() == 132000 then
        if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 10558) and arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10554) == false then
            arg1:SetTimer(2, 5)
        end
        if arg1:IsInterupt(INTERUPT_UseItem) and 50 <= arg1:GetRandam_Int(1, 100) then
            arg2:ClearSubGoal()
            OldmanCrystal_Act05(arg1, arg2, paramTbl)
            return true
        elseif arg1:IsInterupt(INTERUPT_Shoot) then
            arg1:SetTimer(3, 5)
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetNpcThinkParamID() == 132010 then
        arg2:ClearSubGoal()
        OldmanCrystal_Act26(arg1, arg2, paramTbl)
        return true
    else
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetNpcThinkParamID() == 132010 then
            arg2:ClearSubGoal()
            OldmanCrystal_Act26(arg1, arg2, paramTbl)
            return true
        elseif arg1:GetEventRequest() == 10 and arg1:GetNpcThinkParamID() == 132010 then
            arg2:ClearSubGoal()
            OldmanCrystal_Act26(arg1, arg2, paramTbl)
            return true
        else
            return false
        end
    end
end

RegisterTableGoal(GOAL_OldmanCrystal_132000_AfterAttackAct, "OldmanCrystal_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldmanCrystal_132000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetNumber(2)
    if arg1:IsEventFlag(13305894) == true then
        local2 = local2 + 1
    end
    if arg1:IsEventFlag(13305895) == true then
        local2 = local2 + 1
    end
    if arg1:IsEventFlag(13305896) == true then
        local2 = local2 + 1
    end
    arg1:SetNumber(2, local2)
    arg1:SetStringIndexedNumber("DistMin_AAA", 0)
    arg1:SetStringIndexedNumber("DistMax_AAA", 30)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    if arg1:GetNpcThinkParamID() == 132010 then
        if 20 <= local0 then
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 100)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        elseif 10 <= local0 then
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 30)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 60)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        elseif 2.5 <= local0 then
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 40)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 40)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        else
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 50)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        end
    elseif arg1:GetNpcThinkParamID() == 132000 and 1 <= local2 then
        if 20 <= local0 then
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 80)
        elseif 10 <= local0 then
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 90)
        else
            arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
            arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
        end
    elseif 20 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    elseif 10 <= local0 then
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    else
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
