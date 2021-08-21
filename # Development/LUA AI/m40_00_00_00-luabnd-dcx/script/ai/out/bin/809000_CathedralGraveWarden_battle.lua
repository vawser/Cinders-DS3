RegisterTableGoal(GOAL_CathedralGraveWarden_809000_Battle, "GOAL_CathedralGraveWarden_809000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CathedralGraveWarden_809000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(1, 10)
    arg1:SetTimer(2, 5)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    
    arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2) 
    
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if local3 < 5 then
            local0[8] = 70
            local0[20] = 30
        else
            local0[20] = 100
        end
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 30
        local0[6] = 10
        local0[7] = 10
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 20
        local0[21] = 0
    elseif 6 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[6] = 20
        local0[7] = 10
        local0[8] = 0
        local0[9] = 10
        local0[10] = 20
        local0[11] = 0
        local0[21] = 0
    elseif 4 <= local3 then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 10
        local0[4] = 20
        local0[5] = 0
        local0[6] = 10
        local0[7] = 10
        local0[8] = 0
        local0[9] = 0
        local0[10] = 10
        local0[11] = 30
        local0[21] = 0
    elseif 1 <= local3 then
        local0[1] = 0
        local0[2] = 30
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 10
        local0[10] = 0
        local0[11] = 30
        local0[21] = 0
    else
        local0[1] = 0
        local0[2] = 20
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 10
        local0[10] = 0
        local0[11] = 40
        local0[21] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 50, local0[1], 0)
    local0[2] = SetCoolTime(arg1, arg2, 3002, 0, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3005, 0, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3009, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3010, 4, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3013, 4, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3014, 8, local0[8], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3015, 8, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3017, 15, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3020, 10, local0[10], 1)
    if arg1:IsFinishTimer(2) == false then
        local0[11] = 0
    end
    local0[21] = SetCoolTime(arg1, arg2, 6002, 8, local0[21], 1)
    local0[21] = SetCoolTime(arg1, arg2, 6003, 8, local0[21], 1)
    local0[22] = SetCoolTime(arg1, arg2, 6001, 5, local0[22], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act11)
    local1[20] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, CathedralGraveWarden_809000_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HinminMoujaElite_ActAfter_AdjustSpace), local2)
    return 
end

function CathedralGraveWarden_809000_Act01(arg0, arg1, arg2)
    local local0 = 3000
    local local1 = 3001
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetDist(TARGET_ENE_0)
    if local5 < 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
        end
    elseif local5 <= 4 - arg0:GetMapHitRadius(TARGET_SELF) + 4 - arg0:GetMapHitRadius(TARGET_SELF) - 1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, 999, local3, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local0, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 999, local3, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local2, 0, 0)
        end
    elseif 50 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local2, local3, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act02(arg0, arg1, arg2)
    arg0:SetTimer(1, 5)
    Approach_Act_Flex(arg0, arg1, 2.3 - arg0:GetMapHitRadius(TARGET_SELF), 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 3, 3)
    local local0 = 3002
    local local1 = 3003
    local local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local local3 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = arg0:GetRandam_Int(1, 100)
    if local7 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local4, local5, 0, 0)
    elseif local7 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpac
end

function CathedralGraveWarden_809000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.7 - arg0:GetMapHitRadius(TARGET_SELF), 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 3, 3)
    local local0 = 3005
    local local1 = 3006
    local local2 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local3 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) < 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 4, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.3 - arg0:GetMapHitRadius(TARGET_SELF), 7.3 - arg0:GetMapHitRadius(TARGET_SELF), 7.3 - arg0:GetMapHitRadius(TARGET_SELF), 100, 0, 2, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF), 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6 - arg0:GetMapHitRadius(TARGET_SELF), 6 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 6 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 50, 0, 2, 8)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act08(arg0, arg1, arg2)
    local local0 = 3014
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local0 = 3014
    else
        local0 = 3015
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3 - arg0:GetMapHitRadius(TARGET_SELF), 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 0, 0, 2, 4)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act11(arg0, arg1, arg2)
    arg0:SetTimer(2, 5)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 90), true, true, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CathedralGraveWarden_809000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
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
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if local0 <= 1.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF), 0)
        elseif local0 <= 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF), 0)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false then
        if local0 < 1.5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and Counter_Act(arg1, arg2, arg1:GetRandam_Int(5, 10), 3012) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif (not not arg1:IsInterupt(INTERUPT_Damaged) or arg1:IsInterupt(INTERUPT_FindAttack)) and local0 <= 5.5 and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if local1 <= 80 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                if local2 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                end
            elseif local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and 5 <= local0 and local1 < 40 then
        if local1 <= 20 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
        end
        return true
    else
        local local3 = 3
        local local4 = 100
        if arg1:IsInterupt(INTERUPT_GuardBreak) and local0 <= 3 then
            if local1 <= 30 then
                arg2:ClearSubGoal()
                CathedralGraveWarden_809000_Act02(arg1, arg2, paramTbl)
            elseif local1 <= 60 then
                arg2:ClearSubGoal()
                CathedralGraveWarden_809000_Act03(arg1, arg2, paramTbl)
            else
                arg2:ClearSubGoal()
                CathedralGraveWarden_809000_Act04(arg1, arg2, paramTbl)
            end
            return true
        else
            return false
        end
    end
end

return 
