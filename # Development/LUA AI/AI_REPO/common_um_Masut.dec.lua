function MSI_AfterAttakAct_Debug(arg0, arg1, arg2)
    local local0 = arg0:GetStringIndexedNumber("BaseDir_AAA")
    if local0 == 1 then
        local0 = 0
    elseif local0 == 2 then
        local0 = 180
    elseif local0 == 3 then
        local0 = -90
    elseif local0 == 4 then
        local0 = 90
    end
    arg1:AddSubGoal(arg2, 20, arg0:GetStringIndexedNumber("DistMin_AAA"), arg0:GetStringIndexedNumber("DistMax_AAA"), local0, arg0:GetStringIndexedNumber("Angle_AAA"), arg0:GetStringIndexedNumber("Odds_Guard_AAA"), arg0:GetStringIndexedNumber("Odds_NoAct_AAA"), arg0:GetStringIndexedNumber("Odds_BackAndSide_AAA"), arg0:GetStringIndexedNumber("Odds_Back_AAA"), arg0:GetStringIndexedNumber("Odds_Backstep_AAA"), arg0:GetStringIndexedNumber("Odds_Sidestep_AAA"), arg0:GetStringIndexedNumber("Odds_BitWait_AAA"), arg0:GetStringIndexedNumber("Odds_BsAndSide_AAA"), arg0:GetStringIndexedNumber("Odds_BsAndSs_AAA"))
    return 
end

function MSI_SetValue(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local local0 = num_0
    local local1 = arg0:GetDist(local0)
    if arg5 < local1 and local1 < arg6 and arg0:IsInsideTarget(local0, arg7, arg8) then
        return arg3
    else
        return arg4
    end
end

function MSI_Probability_Compare_Int(arg0, arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 1
    end
    if arg3 == nil then
        arg3 = 100
    end
    if arg0:GetRandam_Int(arg2, arg3) <= arg1 then
        return true
    else
        return false
    end
end

function MSI_Probability_Compare_Int(arg0, arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 1
    end
    if arg3 == nil then
        arg3 = 100
    end
    if arg0:GetRandam_Float(arg2, arg3) <= arg1 then
        return true
    else
        return false
    end
end

function MSI_InsideDir(arg0, arg1, arg2, arg3, arg4)
    local local0 = 0
    if arg2 == TARGET_SELF then
        local0 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    elseif arg2 == TARGET_ENE_0 then
        local0 = arg0:GetToTargetAngle(TARGET_ENE_0)
    else
        return false
    end
    local local1 = 0
    if arg3 < 0 then
        local1 = -1
    else
        local1 = 1
    end
    if not (arg3 + arg4 / -2 > local0 or local0 > arg3 + arg4 / 2) or arg3 + arg4 / -2 <= local0 + 360 * local1 and local0 + 360 * local1 <= arg3 + arg4 / 2 then
        return true
    else
        return false
    end
end

function MSI_DbgSetaiNumber(arg0, arg1, arg2)
    if arg0:GetNumber(arg2) == 0 then
        return arg0:GetNumber(arg1)
    elseif arg0:GetNumber(arg2) == 1 then
        return arg0:GetNumber(arg1) * -1
    else
        return 
    end
end

function MSI_Dumy(arg0, arg1, arg2)
    return 
end

function MSI_SelectStepAndGuard_FindAttackSimple(arg0, arg1, arg2, arg3)
    if arg0:IsInterupt(INTERUPT_FindAttack) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, 50, 25, 25, arg0:GetRandam_Float(2, 4), 0, 60, 20, 20, 0, 0, 0, 180, 0, 180, -999, 3, false)
    else
        return false
    end
end

function MSI_SelectStepAndGuard_FindAttackNormal(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    if arg0:IsInterupt(INTERUPT_FindAttack) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        if arg4 == nil or arg4 < 0 then
            arg4 = 50
        end
        if arg5 == nil or arg5 < 0 then
            arg5 = 25
        end
        if arg6 == nil or arg6 < 0 then
            arg6 = 25
        end
        if arg7 == nil or arg7 < 0 then
            arg7 = 60
        end
        if arg8 == nil or arg8 < 0 then
            arg8 = 20
        end
        if arg9 == nil or arg9 < 0 then
            arg9 = 20
        end
        if arg10 == nil or arg10 < 0 then
            arg10 = 0
        end
        if arg11 == nil then
            arg11 = 3
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, arg4, arg5, arg6, arg0:GetRandam_Float(2, 4), 0, arg7, arg8, arg9, arg10, 0, 0, 180, 0, 180, -999, arg11, false)
    else
        return false
    end
end

function MSI_SelectStepAndGuard_FindAttack(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16)
    if arg0:IsInterupt(INTERUPT_FindAttack) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        if arg4 == nil or arg4 < 0 then
            arg4 = 50
        end
        if arg5 == nil or arg5 < 0 then
            arg5 = 25
        end
        if arg6 == nil or arg6 < 0 then
            arg6 = 25
        end
        if arg7 == nil then
            arg7 = arg0:GetRandam_Float(2, 4)
        end
        if arg8 == nil or arg8 < 0 then
            arg8 = 60
        end
        if arg9 == nil or arg9 < 0 then
            arg9 = 20
        end
        if arg10 == nil or arg10 < 0 then
            arg10 = 20
        end
        if arg11 == nil or arg11 < 0 then
            arg11 = 0
        end
        if arg12 == nil then
            arg12 = 0
        end
        if arg13 == nil or arg13 < 0 then
            arg13 = 180
        end
        if arg14 == nil then
            arg14 = 0
        end
        if arg15 == nil or arg15 < 0 then
            arg15 = 180
        end
        if arg16 == nil then
            arg16 = 3
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, arg4, arg5, arg6, arg7, 0, arg8, arg9, arg10, arg11, 0, arg12, arg13, arg14, arg15, -999, arg16, false)
    else
        return false
    end
end

function MSI_Interrupt_DamagedAct_Simple(arg0, arg1, arg2, arg3)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, 50, 25, 25, arg0:GetRandam_Float(2, 4), 0, 60, 20, 20, 0, 0, 0, 240, 0, 360, -999, 3, true)
    else
        return false
    end
end

function MSI_Interrupt_DamagedAct_Normal(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        if arg4 == nil or arg4 < 0 then
            arg4 = 50
        end
        if arg5 == nil or arg5 < 0 then
            arg5 = 25
        end
        if arg6 == nil or arg6 < 0 then
            arg6 = 25
        end
        if arg7 == nil or arg7 < 0 then
            arg7 = 60
        end
        if arg8 == nil or arg8 < 0 then
            arg8 = 20
        end
        if arg9 == nil or arg9 < 0 then
            arg9 = 20
        end
        if arg10 == nil or arg10 < 0 then
            arg10 = 0
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, arg4, arg5, arg6, arg0:GetRandam_Float(2, 4), 0, arg7, arg8, arg9, arg10, 0, 0, 240, 0, 360, -999, 3, true)
    else
        return false
    end
end

function MSI_Interrupt_DamagedAct(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        if arg4 == nil or arg4 < 0 then
            arg4 = 50
        end
        if arg5 == nil or arg5 < 0 then
            arg5 = 25
        end
        if arg6 == nil or arg6 < 0 then
            arg6 = 25
        end
        if arg7 == nil then
            arg7 = arg0:GetRandam_Float(2, 4)
        end
        if arg8 == nil or arg8 < 0 then
            arg8 = 60
        end
        if arg9 == nil or arg9 < 0 then
            arg9 = 20
        end
        if arg10 == nil or arg10 < 0 then
            arg10 = 20
        end
        if arg11 == nil or arg11 < 0 then
            arg11 = 0
        end
        if arg12 == nil then
            arg12 = 0
        end
        if arg13 == nil or arg13 < 0 then
            arg13 = 240
        end
        if arg14 == nil then
            arg14 = 3
        end
        if arg15 == nil then
            arg15 = false
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, arg4, arg5, arg6, arg7, 0, arg8, arg9, arg10, arg11, 0, arg12, arg13, 0, 360, -999, arg14, true)
    else
        return false
    end
end

function MSI_Interrupt_ReboundByOpponentGuardAct_Simple(arg0, arg1, arg2, arg3)
    if arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil then
            arg3 = false
        end
        return Select_StepAndGuard(arg0, arg1, arg2, 0, 0, 50, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 360, 0, 360, -999, 3, false)
    else
        return false
    end
end

function MSI_Interrupt_ReboundByOpponentGuardAct_Normal(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    if arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 50
        end
        if arg4 == nil or arg4 < 0 then
            arg4 = 25
        end
        if arg5 == nil or arg5 < 0 then
            arg5 = 25
        end
        if arg6 == nil then
            arg6 = false
        end
        return Select_StepAndGuard(arg0, arg1, arg2, 0, 0, arg3, arg4, arg5, 0, 0, 0, 0, 0, 0, 0, 0, 360, 0, 360, -999, 3, false)
    else
        return false
    end
end

function MSI_Interrupt_ReboundByOpponentGuardAct(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 50
        end
        if arg4 == nil or arg4 < 0 then
            arg4 = 25
        end
        if arg5 == nil or arg5 < 0 then
            arg5 = 25
        end
        if arg6 == nil then
            arg6 = 3
        end
        if arg7 == nil then
            arg7 = false
        end
        return Select_StepAndGuard(arg0, arg1, arg2, 0, 0, arg3, arg4, arg5, 0, 0, 0, 0, 0, 0, 0, 0, 360, 0, 360, -999, arg6, false)
    else
        return false
    end
end

function MSI_Interrupt_ShootAct_Simple(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    if arg0:IsInterupt(INTERUPT_Shoot) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        if arg4 == nil then
            arg4 = 0
        end
        if arg5 == nil then
            arg5 = 0
        end
        if arg6 == nil then
            arg6 = false
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, 0, 50, 50, arg0:GetRandam_Float(2, 4), 100, 0, 0, 0, 0, 0, 0, 120, 0, 90, arg4, arg5, arg6)
    else
        return false
    end
end

function MSI_Interrupt_ShootAct_Normal(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
    if arg0:IsInterupt(INTERUPT_Shoot) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        if arg4 == nil or arg4 < 0 then
            arg4 = 0
        end
        if arg5 == nil or arg5 < 0 then
            arg5 = 50
        end
        if arg6 == nil or arg6 < 0 then
            arg6 = 50
        end
        if arg7 == nil or arg7 < 0 then
            arg7 = 100
        end
        if arg8 == nil or arg8 < 0 then
            arg8 = 0
        end
        if arg9 == nil or arg9 < 0 then
            arg9 = 0
        end
        if arg10 == nil then
            arg10 = 0
        end
        if arg11 == nil then
            arg11 = 0
        end
        if arg12 == nil then
            arg12 = false
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, arg4, arg5, arg6, arg0:GetRandam_Float(2, 4), arg7, 0, 0, 0, arg8, arg9, 0, 120, 0, 90, arg10, arg11, false)
    else
        return false
    end
end

function MSI_Interrupt_ShootAct(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17)
    if arg0:IsInterupt(INTERUPT_Shoot) then
        if arg2 == nil or arg2 < 0 then
            arg2 = 0
        end
        if arg3 == nil or arg3 < 0 then
            arg3 = 0
        end
        if arg4 == nil or arg4 < 0 then
            arg4 = 0
        end
        if arg5 == nil or arg5 < 0 then
            arg5 = 50
        end
        if arg6 == nil or arg6 < 0 then
            arg6 = 50
        end
        if arg7 == nil then
            arg7 = arg0:GetRandam_Float(2, 4)
        end
        if arg8 == nil or arg8 < 0 then
            arg8 = 100
        end
        if arg9 == nil or arg9 < 0 then
            arg9 = 0
        end
        if arg10 == nil or arg10 < 0 then
            arg10 = 0
        end
        if arg11 == nil then
            arg11 = 0
        end
        if arg12 == nil or arg12 < 0 then
            arg12 = 120
        end
        if arg13 == nil then
            arg13 = 0
        end
        if arg14 == nil or arg14 < 0 then
            arg14 = 90
        end
        if arg15 == nil then
            arg15 = 0
        end
        if arg16 == nil then
            arg16 = 0
        end
        if arg17 == nil then
            arg17 = false
        end
        return Select_StepAndGuard(arg0, arg1, arg2, arg3, 0, arg4, arg5, arg6, arg7, arg8, 0, 0, 0, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17)
    else
        return false
    end
end

function Select_StepAndGuard(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21)
    if arg0:IsStartAttack() == false or arg21 == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetToTargetAngle(TARGET_ENE_0)
        local local2 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
        local local3 = 0
        if arg15 < 0 then
            local3 = -1
        else
            local3 = 1
        end
        local local4 = 0
        if arg17 < 0 then
            local4 = -1
        else
            local4 = 1
        end
        if arg19 <= local0 and local0 <= arg20 and (not (arg15 + arg18 / -2 > local1 or local1 > arg15 + arg18 / 2) or arg15 + arg18 / -2 <= local1 + 360 * local3 and local1 + 360 * local3 <= arg15 + arg18 / 2) and (not (arg17 + arg18 / -2 > local2 or local2 > arg17 + arg18 / 2) or arg17 + arg18 / -2 <= local2 + 360 * local4 and local2 + 360 * local4 <= arg17 + arg18 / 2) then
            local local5 = {}
            local local6 = 1
            local5[local6] = arg2
            local6 = local6 + 1
            local5[local6] = arg3
            local6 = local6 + 1
            if arg2 + arg3 < 100 then
                local5[local6] = 100 - arg2 + arg3
                local6 = local6 + 1
            end
            local local7 = SelectOddsIndex(arg0, local5)
            if local7 == 1 then
                arg1:ClearSubGoal()
                return MSI_Select_Step(arg0, arg1, 1, arg4, arg5, arg6, arg7)
            elseif local7 == 2 then
                arg1:ClearSubGoal()
                return MSI_Select_Guard(arg0, arg1, arg8, arg9, arg10, arg11, arg12, arg13, 1, 5, arg14)
            elseif local7 == 3 then
                return false
            end
        end
    end
    return false
end

function MSI_Select_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local local0 = 1
    local local1 = {}
    local local2 = {}
    local local3, local4, local5, local6 = MSI_Probe_Safety(arg0, arg1, TARGET_SELF, arg0:GetStringIndexedNumber("Dist_BackStep"), arg0:GetStringIndexedNumber("Dist_BackStep"), arg0:GetStringIndexedNumber("Dist_SideStep"), arg0:GetStringIndexedNumber("Dist_SideStep"))
    local2[4] = local6
    local2[3] = local5
    local2[2] = local4
    local2[1] = local3
    local3 = {arg3, arg4, arg5, arg6}
    local6 = 1
    local4 = 1 - local6
    goto basicblock_6:
end

function MSI_Select_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    local local0 = 0
    local local1 = {}
    local local2 = {}
    local local3 = {arg3, arg4, arg5, arg6, arg7}
    local local4, local5, local6, local7 = MSI_Probe_Safety(arg0, arg1, TARGET_SELF, 1, 1, 1, 1)
    local2[4] = local7
    local2[3] = local6
    local2[2] = local5
    local2[1] = local4
    local2[5] = 1
    local6 = 1
    local4 = 1 - local6
    goto basicblock_6:
end

function MSI_Probe_Safety(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local local0 = arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    local local4 = 0
    if arg3 <= arg0:GetExistMeshOnLineDistEx(arg2, AI_DIR_TYPE_F, arg3 + 3, local0, local0) then
        local1 = 1
    end
    if arg4 <= arg0:GetExistMeshOnLineDistEx(arg2, AI_DIR_TYPE_B, arg4 + 3, local0, local0) then
        local2 = 1
    end
    if arg5 <= arg0:GetExistMeshOnLineDistEx(arg2, AI_DIR_TYPE_L, arg5 + 3, local0, local0) then
        local3 = 1
    end
    if arg6 <= arg0:GetExistMeshOnLineDistEx(arg2, AI_DIR_TYPE_R, arg6 + 3, local0, local0) then
        local4 = 1
    end
    return local1, local2, local3, local4
end

function MSI_Select_Attack(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23, arg24, arg25, arg26, arg27, arg28, arg29, arg30, arg31)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    local local3 = {}
    local local4 = {}
    local local5 = {}
    local0[1] = arg2
    local1[1] = arg3
    local2[1] = arg4
    local3[1] = arg5
    local4[1] = arg6
    local5[1] = arg7
    local0[2] = arg8
    local1[2] = arg9
    local2[2] = arg10
    local3[2] = arg11
    local4[2] = arg12
    local5[2] = arg13
    local0[3] = arg14
    local1[3] = arg15
    local2[3] = arg16
    local3[3] = arg17
    local4[3] = arg18
    local5[3] = arg19
    local0[4] = arg20
    local1[4] = arg21
    local2[4] = arg22
    local3[4] = arg23
    local4[4] = arg24
    local5[4] = arg25
    local0[5] = arg26
    local1[5] = arg27
    local2[5] = arg28
    local3[5] = arg29
    local4[5] = arg30
    local5[5] = arg31
    local local6 = 1
    local local7 = arg0:GetDist(TARGET_ENE_0)
    local local8 = arg0:GetToTargetAngle(TARGET_ENE_0)
    local local9 = 0
    local local10 = 1
    for local11 = 1 - local10, table.getn(local0), local10 do
        if local2[local11] < local7 and local7 <= local3[local11] and (not (local4[local11] + local5[local11] / -2 > local8 or local8 > local4[local11] + local5[local11] / 2) or local4[local11] + local5[local11] / -2 <= local8 + 360 * flag1 and local8 + 360 * flag1 <= local4[local11] + local5[local11] / 2) and arg0:GetRandam_Int(1, 100) <= local1[local11] then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, local0[local11], TARGET_ENE_0, 999, 0, -1, 180, 180)
            return true
        end
    end
    return false
end

function MSI_Counter_Act(arg0, arg1, arg2, arg3, arg4)
    if arg2 == nil then
        arg2 = 4
    end
    local local0 = arg0:GetNumber(15)
    if arg0:IsFinishTimer(15) == true then
        local0 = arg2
        arg0:SetNumber(15, 0)
    end
    arg0:SetTimer(15, arg4)
    if local0 == 0 then
        local0 = arg2
    end
    arg0:SetNumber(15, local0 * 2)
    if 100 <= local0 then
        arg0:SetNumber(15, 100)
    end
    if arg0:GetRandam_Int(0, 99) < arg0:GetNumber(15) then
        arg0:SetNumber(15, 0)
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 0.5, arg3, TARGET_ENE_0, DIST_None, 0, 180, 180, 180, 180)
        return true
    else
        return false
    end
end

return 
