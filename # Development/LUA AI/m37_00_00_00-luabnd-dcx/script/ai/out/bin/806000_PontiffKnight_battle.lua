RegisterTableGoal(GOAL_PontiffKnight_806000_Battle, "GOAL_PontiffKnight_806000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_PontiffKnight_806000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    if local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 60
        local0[11] = 40
    elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[7] = 10
        local0[10] = 55
        local0[11] = 35
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and SpaceCheck(arg1, arg2, 270, arg1:GetStringIndexedNumber("Dist_SideStep")) == true and local3 <= 3 then
        local0[16] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_SideStep")) == true and local3 <= 3 then
        local0[17] = 100
    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
        local0[4] = 100
        local0[1] = 30
    elseif 11 <= local3 then
        local0[1] = 20
        local0[2] = 100
        local0[3] = 10
        local0[4] = 20
        local0[6] = 20
        local0[7] = 120
        local0[8] = 50
    elseif 6 <= local3 then
        local0[1] = 20
        local0[2] = 80
        local0[3] = 30
        local0[4] = 10
        local0[6] = 30
        local0[7] = 50
        local0[8] = 80
    elseif 2 <= local3 then
        local0[1] = 100
        local0[2] = 0
        local0[3] = 60
        local0[4] = 20
        local0[6] = 80
        local0[7] = 0
        local0[8] = 60
    else
        local0[1] = 100
        local0[2] = 0
        local0[3] = 100
        local0[4] = 20
        local0[6] = 70
        local0[7] = 0
        local0[8] = 30
    end
    local0[2] = SetCoolTime(arg1, arg2, 3003, 6, local0[2], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3008, 6, local0[4], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3010, 6, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3013, 6, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3015, 6, local0[8], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act04)
    local1[6] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act11)
    local1[15] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act17)
    local1[20] = REGIST_FUNC(arg1, arg2, PontiffKnight_806000_Act20)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, PontiffKnight_806000_ActAfter_AdjustSpace), local2)
    return 
end

function PontiffKnight_806000_Act01(arg0, arg1, arg2)
    local local0 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 + 2 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, arg0:GetStringIndexedNumber("Dist_BackStep"))
    end
    Approach_Act_Flex(arg0, arg1, local0, 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 4, 8)
    local local1 = 3000
    local local2 = 3001
    local local3 = 3002
    local local4 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local5 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3
    local local7 = 90
    local local8 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local6, local7, 0, 0)
    elseif local8 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5, 45)
    elseif local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 45)
    elseif local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5, 45)
    elseif local8 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 45)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5, 45)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PontiffKnight_806000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11.1 - arg0:GetMapHitRadius(TARGET_SELF), 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), 3, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PontiffKnight_806000_Act03(arg0, arg1, arg2)
    local local0 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 + 2 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, arg0:GetStringIndexedNumber("Dist_BackStep"))
    end
    Approach_Act_Flex(arg0, arg1, local0, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 75, 0, 4, 8)
    local local1 = 3004
    local local2 = 3005
    local local3 = 3006
    local local4 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 3
    local local7 = 90
    local local8 = arg0:GetRandam_Int(1, 100)
    if local8 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, local5, local6, local7, 0, 0)
    elseif local8 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5, 0, 0)
    elseif local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local3, TARGET_ENE_0, local5, 45)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local1, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local3, TARGET_ENE_0, local4, 0, 45)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local5, 45)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PontiffKnight_806000_Act04(arg0, arg1, arg2)
    local local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 + 2 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, arg0:GetStringIndexedNumber("Dist_BackStep"))
    end
    Approach_Act_Flex(arg0, arg1, local0, 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 3.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PontiffKnight_806000_Act06(arg0, arg1, arg2)
    local local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    if local0 + 2 < arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, arg0:GetStringIndexedNumber("Dist_BackStep"))
    end
    Approach_Act_Flex(arg0, arg1, local0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
    local local2 = 1
    for local3 = 1 - local2, arg0:GetRandam_Int(1, 3), local2 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PontiffKnight_806000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PontiffKnight_806000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 5.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 3.4 - arg0:GetMapHitRadius(TARGET_SELF), -1, 60, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PontiffKnight_806000_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function PontiffKnight_806000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function PontiffKnight_806000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    return 
end

function PontiffKnight_806000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, arg0:GetStringIndexedNumber("Dist_SideStep"))
    return 
end

function PontiffKnight_806000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, arg0:GetStringIndexedNumber("Dist_SideStep"))
    return 
end

function PontiffKnight_806000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PontiffKnight_806000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PontiffKnight_806000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and arg1:GetDist(TARGET_ENE_0) <= 5 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999)
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_PontiffKnight_806000_AfterAttackAct, "GOAL_PontiffKnight_806000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PontiffKnight_806000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = {}
    if 5 <= local0 then
        local2[1] = 100
        local2[2] = 0
        local2[3] = 0
        local2[4] = 0
    elseif 3 <= local0 then
        local2[1] = 10
        local2[2] = 30
        local2[3] = 30
        local2[4] = 30
    else
        local2[1] = 10
        local2[2] = 60
        local2[3] = 15
        local2[4] = 15
    end
    local local3 = SelectOddsIndex(arg1, local2)
    if local3 ~= 1 then
        if local3 == 2 then
            PontiffKnight_806000_Act15(arg1, arg2, paramTbl)
        elseif local3 == 3 then
            PontiffKnight_806000_Act16(arg1, arg2, paramTbl)
        elseif local3 == 4 then
            PontiffKnight_806000_Act17(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
