RegisterTableGoal(GOAL_GiantGolem_302100_Battle, "GiantGolem_302100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantGolem_302100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg2:AddSubGoal(GOAL_GiantGolem_Cathedral_Battle, -1)
    else
        arg2:AddSubGoal(GOAL_GiantGolem_Default_Battle, -1)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

RegisterTableGoal(GOAL_GiantGolem_Default_Battle, "GiantGolem_Default_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantGolem_Default_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetNumber(0)
    local local8 = arg1:GetDist(POINT_EVENT)
    local local9 = arg1:IsSearchTarget(TARGET_ENE_0)
    if arg1:GetNpcThinkParamID() == 302100 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12340) then
            local0[20] = 100
        elseif arg1:IsEventFlag(13500321) == true then
            arg1:SetEventMoveTarget(3502333)
            local8 = arg1:GetDist(POINT_EVENT)
            if local3 <= 7.5 and local8 <= 7.5 and local9 == true then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    local0[1] = 25
                    local0[2] = 25
                    local0[5] = 50
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                    local0[22] = 80
                    local0[17] = 20
                else
                    local0[17] = 100
                end
            elseif -5.4 <= local8 then
                local0[21] = 100
            else
                local0[18] = 100
            end
        elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502320) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502337) then
            arg1:SetEventMoveTarget(3502334)
            if -5.4 <= arg1:GetDist(POINT_EVENT) then
                local0[9] = 100
            else
                local0[18] = 100
            end
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502329) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 4101) then
            arg1:SetEventMoveTarget(3502334)
            if -5.4 <= arg1:GetDist(POINT_EVENT) then
                local0[9] = 100
            else
                local0[18] = 100
            end
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502321) and local9 == true then
            if 30 <= local3 then
                arg1:SetEventMoveTarget(3502334)
                if -5.4 <= arg1:GetDist(POINT_EVENT) then
                    local0[9] = 100
                else
                    local0[18] = 100
                end
            elseif 8 <= local3 then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502329) == false and arg1:IsInsideTargetRegion(TARGET_SELF, 3502329) == true then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                        local0[1] = 0
                        local0[2] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[7] = 100
                    else
                        local0[17] = 100
                    end
                elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502329) == true and arg1:IsInsideTargetRegion(TARGET_SELF, 3502329) == true then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                        local0[1] = 25
                        local0[2] = 25
                        local0[4] = 50
                        local0[5] = 0
                        local0[7] = 0
                    else
                        local0[17] = 100
                    end
                elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502329) == true and arg1:IsInsideTargetRegion(TARGET_SELF, 3502329) == true then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                        local0[1] = 25
                        local0[2] = 25
                        local0[4] = 50
                        local0[5] = 0
                        local0[7] = 0
                    else
                        local0[17] = 100
                    end
                else
                    arg1:SetEventMoveTarget(3502334)
                    if -5.4 <= arg1:GetDist(POINT_EVENT) then
                        local0[9] = 100
                    else
                        local0[18] = 100
                    end
                end
            elseif 4 <= local3 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    local0[1] = 33
                    local0[2] = 33
                    local0[5] = 33
                else
                    local0[17] = 100
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local0[1] = 25
                local0[2] = 25
                local0[5] = 50
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                local0[6] = 80
                local0[17] = 20
            else
                local0[17] = 100
            end
        else
            arg1:SetEventMoveTarget(3502334)
            if -5.5 <= arg1:GetDist(POINT_EVENT) then
                local0[9] = 100
            else
                local0[18] = 100
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12340) then
        local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12345) and local9 == true then
        if 7 <= local3 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local0[1] = 10
                local0[2] = 10
                local0[4] = 70
                local0[5] = 10
            else
                local0[17] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            local0[1] = 25
            local0[2] = 25
            local0[5] = 50
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[6] = 80
            local0[17] = 20
        else
            local0[17] = 100
        end
    elseif arg1:IsEventFlag(13500320) == true then
        arg1:SetEventMoveTarget(3502331)
        local8 = arg1:GetDist(POINT_EVENT)
        if local3 <= 7.5 and local8 <= 7.5 and local9 == true then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local0[1] = 25
                local0[2] = 25
                local0[5] = 50
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                local0[6] = 80
                local0[8] = 20
            else
                local0[8] = 100
            end
        elseif -5.4 <= local8 then
            local0[22] = 100
        else
            local0[18] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12346) and local9 == true then
        if not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502322) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502336) then
            if 7 <= local3 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    local0[1] = 10
                    local0[2] = 10
                    local0[4] = 70
                    local0[5] = 10
                else
                    local0[17] = 100
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local0[1] = 25
                local0[2] = 25
                local0[5] = 50
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                local0[6] = 80
                local0[17] = 20
            else
                local0[17] = 100
            end
        else
            arg1:SetEventMoveTarget(3502307)
            if -5.4 <= arg1:GetDist(POINT_EVENT) then
                local0[13] = 100
            else
                local0[18] = 100
            end
        end
    elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502322) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502336) and local9 == true then
        arg1:SetEventMoveTarget(3502307)
        local8 = arg1:GetDist(POINT_EVENT)
        if 30 <= local3 then
            if -5.4 <= local8 then
                local0[13] = 100
            else
                local0[18] = 100
            end
        elseif 12 <= local3 then
            if local8 <= 39 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    local0[1] = 5
                    local0[2] = 5
                    local0[4] = 40
                    local0[5] = 10
                    local0[7] = 40
                else
                    local0[17] = 100
                end
            elseif local8 <= 48 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    local0[1] = 10
                    local0[2] = 10
                    local0[4] = 60
                    local0[5] = 20
                    local0[7] = 0
                else
                    local0[17] = 100
                end
            else
                arg1:SetEventMoveTarget(3502307)
                if -5.4 <= arg1:GetDist(POINT_EVENT) then
                    local0[13] = 100
                else
                    local0[18] = 100
                end
            end
        elseif 7 <= local3 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local0[1] = 10
                local0[2] = 10
                local0[4] = 70
                local0[5] = 10
            else
                local0[17] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            local0[1] = 25
            local0[2] = 25
            local0[5] = 50
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[6] = 80
            local0[17] = 20
        else
            local0[17] = 100
        end
    else
        arg1:SetEventMoveTarget(3502307)
        if -5.4 <= arg1:GetDist(POINT_EVENT) then
            local0[13] = 100
        else
            local0[18] = 100
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 6, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 6, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 6, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 6, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 6, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 6, local0[6], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act13)
    local1[17] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GiantGolem_Default_Act22)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GiantGolem_Default_ActAfter_AdjustSpace), local2)
    return 
end

function GiantGolem_Default_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.26, 3.26 + 99, 3.26 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.46, 3.46 + 99, 3.46 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.74, 13.74 + 99, 13.74 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.52, 9.52 + 99, 9.52 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.92, 2.92 + 99, 2.92 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act09(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502334)
    if arg0:GetDist(POINT_EVENT) <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, -5.5, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, -5.5, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, ATT_SUCCESSDIST, 3, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act11(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act12(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502325)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, -5.5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act13(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502307)
    if arg0:GetDist(POINT_EVENT) <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, -5.5, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, -5.5, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act18(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    local0:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act20(arg0, arg1, arg2)
    local local0 = ATT_SUCCESSDIST
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act21(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502333)
    local local0 = arg0:GetDist(POINT_EVENT)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, -5.5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act22(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502331)
    local local0 = arg0:GetDist(POINT_EVENT)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, -5.5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetDist(POINT_EVENT)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
        if arg1:GetNpcThinkParamID() == 302100 then
            if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502329) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 4101) and local0 <= 11 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502322) == true and local0 <= 14 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsSearchTarget(TARGET_ENE_0) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12340) then
        if arg1:GetNpcThinkParamID() == 302100 then
            if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502329) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 4101) then
                if local0 <= 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            end
            arg1:SetEventMoveTarget(3502333)
            if local0 <= 7.5 and arg1:GetDist(POINT_EVENT) <= 7.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        else
            if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502322) == true then
                if local0 <= 14 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            end
            arg1:SetEventMoveTarget(3502331)
            if local0 <= 7.5 and arg1:GetDist(POINT_EVENT) <= 7.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        end
    end
    return false
end

function GiantGolem_Default_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

RegisterTableGoal(GOAL_GiantGolem_Cathedral_Battle, "GOAL_GiantGolem_Cathedral_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantGolem_Cathedral_Battle, true)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    arg1:SetEventMoveTarget(3502307)
    if arg1:IsEventFlag(13500320) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12340) then
            local0[22] = 100
        else
            local0[20] = 100
        end
    elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502322) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502336) and arg1:IsSearchTarget(TARGET_ENE_0) == true then
        arg1:SetEventMoveTarget(3502307)
        local local4 = arg1:GetDist(POINT_EVENT)
        if 30 <= local3 then
            if -5.4 <= local4 then
                local0[18] = 100
            else
                local0[30] = 100
            end
        elseif 12 <= local3 then
            if local4 <= 39 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    local0[24] = 5
                    local0[25] = 5
                    local0[27] = 40
                    local0[28] = 10
                    local0[30] = 40
                else
                    local0[31] = 100
                end
            elseif local4 <= 48 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    local0[24] = 10
                    local0[25] = 10
                    local0[27] = 60
                    local0[28] = 20
                    local0[30] = 0
                else
                    local0[31] = 100
                end
            else
                arg1:SetEventMoveTarget(3502307)
                if -5.4 <= arg1:GetDist(POINT_EVENT) then
                    local0[18] = 100
                else
                    local0[30] = 100
                end
            end
        elseif 7 <= local3 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local0[24] = 10
                local0[25] = 10
                local0[27] = 70
                local0[30] = 10
            else
                local0[31] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            local0[24] = 25
            local0[25] = 25
            local0[27] = 50
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[29] = 80
            local0[31] = 20
        else
            local0[31] = 100
        end
    elseif not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502310) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502311) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502312) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502313) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502314) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502315) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502316) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502317) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502319) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502336) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12340) then
            local0[22] = 100
        else
            local0[20] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12340) then
        local0[21] = 100
    elseif -5.5 <= arg1:GetDist(POINT_EVENT) then
        local0[18] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502310) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502315) then
        local0[7] = 10
        local0[9] = 90
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502311) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502312) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502314) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502317) then
        if local3 <= 20 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[7] = 100
            else
                local0[9] = 100
            end
        else
            local0[1] = 50
            local0[4] = 50
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502312) then
        if 20 <= local3 then
            local0[2] = 50
            local0[5] = 50
        else
            local0[6] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502313) then
        local0[3] = 50
        local0[8] = 50
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502314) then
        if 21 <= local3 then
            local0[2] = 50
            local0[5] = 50
        else
            local0[6] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502315) then
        local0[10] = 50
        local0[11] = 50
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502316) then
        local0[12] = 99
        local0[13] = 1
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502317) then
        local0[14] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3502319) then
        local0[16] = 50
        local0[17] = 50
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12340) then
        local0[22] = 100
    else
        arg1:SetEventMoveTarget(3502307)
        if -5.4 <= arg1:GetDist(POINT_EVENT) then
            local0[18] = 100
        else
            local0[20] = 100
        end
    end
    local0[12] = SetCoolTime(arg1, arg2, 3012, 60, local0[12], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act14)
    local1[16] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act28)
    local1[29] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act29)
    local1[30] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_Act31)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GiantGolem_Cathedral_ActAfter_AdjustSpace), local2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function GiantGolem_Cathedral_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act02(arg0, arg1, arg2)
    local local0 = 999
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 30)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act03(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502306)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    flag_LastAttackLeftSlash = false
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act07(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502303)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act08(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502306)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, POINT_EVENT, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act09(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502303)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act10(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502303)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, POINT_EVENT, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act13(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502303)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, POINT_EVENT, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act14(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502303)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, POINT_EVENT, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Default_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3024, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act16(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502303)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, POINT_EVENT, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act17(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502303)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, POINT_EVENT, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act18(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3502307)
    local local0 = arg0:GetDist(POINT_EVENT)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
    local1:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, -5.7, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, POINT_EVENT, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act20(arg0, arg1, arg2)
    local local0 = ATT_SUCCESSDIST
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act21(arg0, arg1, arg2)
    local local0 = ATT_SUCCESSDIST
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act22(arg0, arg1, arg2)
    local local0 = ATT_SUCCESSDIST
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act23(arg0, arg1, arg2)
    local local0 = 3022
    local local1 = ATT_SUCCESSDIST
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act24(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.26, 3.26 + 99, 3.26 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act25(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.46, 3.46 + 99, 3.46 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act26(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.74, 13.74 + 99, 13.74 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act27(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9.52, 9.52 + 99, 9.52 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act28(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.92, 2.92 + 99, 2.92 + 99, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantGolem_Cathedral_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

return 
