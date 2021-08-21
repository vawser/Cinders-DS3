local local0 = 0
local local1 = 0
local local2 = 2.5
local local3 = 0
local local4 = 1.7
local local5 = 0
local local6 = 2.3
local local7 = 0
local local8 = 0
local local9 = 3.5
function NPCTest_900000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = 1
    if 5 <= arg0:GetNumber(0) then
        local6 = 0
    end
    if arg0:IsTargetGuard(TARGET_ENE_0) == false and arg0:IsBothHandMode(TARGET_SELF) and arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    if 8 <= local5 then
        local0[1] = 15
        local0[3] = 15
        local0[7] = 65
        local0[10] = 5
    elseif 3.5 <= local5 then
        if arg0:IsTargetGuard(TARGET_ENE_0) == true then
            local0[1] = 25
            local0[3] = 25
            local0[4] = 50
        else
            local0[1] = 45
            local0[3] = 50
            local0[10] = 5
        end
    elseif 1.5 <= local5 then
        if arg0:IsTargetGuard(TARGET_ENE_0) == true then
            local0[1] = 13
            local0[3] = 17
            local0[4] = 30
            local0[6] = 20
            local0[9] = 10
        else
            local0[1] = 30
            local0[3] = 30
            local0[6] = 25
            local0[9] = 10
            local0[10] = 5
        end
    elseif arg0:IsTargetGuard(TARGET_ENE_0) == true then
        local0[1] = 15
        local0[3] = 20
        local0[4] = 35
        local0[6] = 20
        local0[9] = 10
    else
        local0[1] = 30
        local0[3] = 30
        local0[6] = 25
        local0[9] = 10
        local0[10] = 5
    end
    local1[1] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, NPCTest_900000_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, NPCTest_900000_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = 1.5
function NPCTest_900000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    CommonNPC_ChangeWepR1(arg0, arg1)
    if arg0:IsTargetGuard(TARGET_ENE_0) == true and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    NPC_Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 50)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_900000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    CommonNPC_ChangeWepR1(arg0, arg1)
    if arg0:IsTargetGuard(TARGET_ENE_0) == true and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    NPC_Approach_Act(arg0, arg1, Guard_NormalR_max, Guard_NormalR_max + 5, 100)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
function NPCTest_900000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    CommonNPC_ChangeWepR1(arg0, arg1)
    if arg0:IsTargetGuard(TARGET_ENE_0) == true and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    NPC_Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 100)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        GetWellSpace_Odds = 100
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = 0.9
function NPCTest_900000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsBothHandMode(TARGET_SELF) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    NPC_Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10
local0 = 5
function NPCTest_900000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetWepCateRight(TARGET_SELF)
    CommonNPC_ChangeWepR2(arg0, arg1)
    if UPVAL0 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, UPVAL0, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    elseif local0 <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, UPVAL1, TARGET_ENE_0, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    arg0:SetNumber(0, arg0:GetNumber(0) + 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1.5
function NPCTest_900000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    CommonNPC_ChangeWepR1(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
    if arg0:IsTargetGuard(TARGET_ENE_0) == true and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    NPC_Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.5
function NPCTest_900000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    CommonNPC_ChangeWepR1(arg0, arg1)
    if arg0:IsTargetGuard(TARGET_ENE_0) == true and not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    end
    NPC_Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPCTest_900000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if 3 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, arg0:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, 4)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NPCTest_900000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NPCTest_900000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NPCTest_900000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 3
    if local0 <= 5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    elseif local0 <= 15 then
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 4)
        end
    end
    return 
end

function NPCTest_900000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function NPCTest_900000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local2
function NPCTest_900000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_FindAttack) then
        local local4 = 3
        if local0 <= 3 and local1 <= 10 then
            arg1:ClearSubGoal()
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            elseif local2 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        end
    end
    if arg0:IsInterupt(INTERUPT_SuccessGuard) and local0 <= 3 and local1 <= 80 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
        return true
    elseif arg0:IsInterupt(INTERUPT_Damaged) and local0 < 3 and local1 <= 10 then
        arg1:ClearSubGoal()
        if local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        elseif local2 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    end
    if arg0:IsInterupt(INTERUPT_GuardBreak) and local0 <= 2 and local1 <= 100 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        return true
    elseif arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        local local5 = 10
        if local0 < 3 then
            if local1 <= local5 then
                arg1:ClearSubGoal()
                if local2 <= local5 then
                    if local2 <= 50 then
                        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                    elseif local2 <= 75 then
                        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                    end
                else
                    arg0:Replaning()
                    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
                    return true
                end
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
                arg0:Replaning()
                return true
            end
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
            arg0:Replaning()
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_Shoot) and local1 <= 50 then
        arg1:ClearSubGoal()
        if local1 <= 50 then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            elseif local2 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        else
            NPC_Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 100)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
        end
        return true
    else
        return false
    end
end

return 
