RegisterTableGoal(GOAL_DarknessDragon621000_Battle, "GOAL_DarknessDragon621000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessDragon621000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local local7 = arg1:GetEventRequest()
    local local8 = arg1:GetHpRate(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16218)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16551)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16554)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16552)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16557)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if local4 <= 15 and -15 <= local4 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5029) and InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) then
                if 30 <= local3 then
                    local0[1] = 0
                    local0[2] = 0
                    local0[3] = 0
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 1000
                    local0[7] = 0
                    local0[8] = 0
                    local0[10] = 0
                    local0[11] = 0
                    local0[12] = 0
                    local0[13] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[25] = 0
                else
                    local0[1] = 0
                    local0[2] = 0
                    local0[3] = 0
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 1000
                    local0[7] = 0
                    local0[8] = 0
                    local0[10] = 0
                    local0[11] = 0
                    local0[12] = 0
                    local0[13] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[25] = 0
                end
            elseif InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) then
                if 65 <= local3 then
                    local0[1] = 0
                    local0[2] = 0
                    local0[3] = 0
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 0
                    local0[8] = 0
                    local0[10] = 1000
                    local0[11] = 0
                    local0[12] = 0
                    local0[13] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[25] = 0
                elseif 60 <= local3 then
                    local0[1] = 350
                    local0[2] = 0
                    local0[3] = 0
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 350
                    local0[7] = 0
                    local0[8] = 0
                    local0[10] = 0
                    local0[11] = 300
                    local0[12] = 0
                    local0[13] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[25] = 0
                    if 50 <= arg1:GetAttackPassedTime(3030) then
                        local0[11] = 1000
                    end
                elseif 30 <= local3 then
                    local0[1] = 350
                    local0[2] = 0
                    local0[3] = 0
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 350
                    local0[7] = 0
                    local0[8] = 0
                    local0[10] = 0
                    local0[11] = 300
                    local0[12] = 0
                    local0[13] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[25] = 0
                    if 50 <= arg1:GetAttackPassedTime(3030) then
                        local0[11] = 1000
                    end
                elseif 15 <= local3 then
                    if InsideRange(arg1, arg2, 103 + 180, 154, -1, 999) then
                        local0[1] = 0
                        local0[2] = 0
                        local0[3] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 300
                        local0[7] = 0
                        local0[8] = 700
                        local0[10] = 0
                        local0[11] = 0
                        local0[12] = 0
                        local0[13] = 0
                        local0[20] = 0
                        local0[21] = 0
                        local0[25] = 0
                        local0[28] = 0
                        local0[29] = 0
                    else
                        local0[1] = 0
                        local0[2] = 0
                        local0[3] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 1000
                        local0[7] = 0
                        local0[8] = 0
                        local0[10] = 0
                        local0[11] = 0
                        local0[12] = 0
                        local0[13] = 0
                        local0[20] = 0
                        local0[21] = 0
                        local0[25] = 0
                        local0[7] = SetCoolTime(arg1, arg2, 3007, 45, local0[7], 0)
                    end
                elseif 13 <= local3 then
                    local0[1] = 0
                    local0[2] = 450
                    local0[3] = 250
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 300
                    local0[7] = 0
                    local0[8] = 0
                    local0[10] = 0
                    local0[11] = 0
                    local0[12] = 0
                    local0[13] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[25] = 0
                    if arg1:GetAttackPassedTime(3001) <= 30 and arg1:GetAttackPassedTime(3002) <= 30 and arg1:GetAttackPassedTime(3006) <= 30 and 20 <= arg1:GetAttackPassedTime(3007) then
                        local0[7] = 997
                    end
                    if not arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
                        local0[1] = 0
                        local0[2] = 0
                        local0[3] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 1000
                        local0[8] = 0
                        local0[10] = 0
                        local0[11] = 0
                        local0[12] = 0
                        local0[13] = 0
                        local0[20] = 0
                        local0[21] = 0
                        local0[25] = 0
                    end
                    if local8 <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) and 10 <= arg1:GetAttackPassedTime(3007) then
                        local0[1] = 0
                        local0[2] = 0
                        local0[3] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 1000
                        local0[8] = 0
                        local0[10] = 0
                        local0[11] = 0
                        local0[12] = 0
                        local0[13] = 0
                        local0[20] = 0
                        local0[21] = 0
                        local0[25] = 0
                    end
                elseif 8 <= local3 then
                    local0[1] = 0
                    local0[2] = 600
                    local0[3] = 400
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 0
                    local0[8] = 0
                    local0[10] = 0
                    local0[11] = 0
                    local0[12] = 0
                    local0[13] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[25] = 0
                    if arg1:GetAttackPassedTime(3001) <= 30 and arg1:GetAttackPassedTime(3002) <= 30 and 20 <= arg1:GetAttackPassedTime(3007) then
                        local0[7] = 1000
                    end
                    if not arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
                        local0[1] = 0
                        local0[2] = 0
                        local0[3] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 1000
                        local0[8] = 0
                        local0[10] = 0
                        local0[11] = 0
                        local0[12] = 0
                        local0[13] = 0
                        local0[20] = 0
                        local0[21] = 0
                        local0[25] = 0
                    end
                    if local8 <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) and 10 <= arg1:GetAttackPassedTime(3007) then
                        local0[1] = 0
                        local0[2] = 0
                        local0[3] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 1000
                        local0[8] = 0
                        local0[10] = 0
                        local0[11] = 0
                        local0[12] = 0
                        local0[13] = 0
                        local0[20] = 0
                        local0[21] = 0
                        local0[25] = 0
                    end
                else
                    local0[1] = 0
                    local0[2] = 0
                    local0[3] = 0
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 2
                    local0[8] = 0
                    local0[10] = 0
                    local0[11] = 0
                    local0[12] = 999
                    local0[13] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[25] = 0
                    local0[7] = SetCoolTime(arg1, arg2, 3007, 20, local0[7], 0)
                    if not arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
                        local0[1] = 0
                        local0[2] = 0
                        local0[3] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 1000
                        local0[8] = 0
                        local0[10] = 0
                        local0[11] = 0
                        local0[12] = 0
                        local0[13] = 0
                        local0[20] = 0
                        local0[21] = 0
                        local0[25] = 0
                    end
                    if local8 <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 5023) and 10 <= arg1:GetAttackPassedTime(3007) then
                        local0[1] = 0
                        local0[2] = 0
                        local0[3] = 0
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 1000
                        local0[8] = 0
                        local0[10] = 0
                        local0[11] = 0
                        local0[12] = 0
                        local0[13] = 0
                        local0[20] = 0
                        local0[21] = 0
                        local0[25] = 0
                    end
                end
            elseif InsideRange(arg1, arg2, -35 + 180, 20, -1, 20) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 999
                local0[5] = 0
                local0[6] = 0
                local0[7] = 2
                local0[8] = 0
                local0[10] = 0
                local0[11] = 0
                local0[12] = 0
                local0[13] = 0
                local0[20] = 0
                local0[21] = 0
                local0[25] = 0
                local0[7] = SetCoolTime(arg1, arg2, 3007, 25, local0[7], 0)
            elseif 25 <= local3 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[10] = 0
                local0[11] = 0
                local0[12] = 0
                local0[13] = 0
                local0[20] = 1000
                local0[21] = 0
                local0[25] = 0
            elseif 10 <= local3 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 500
                local0[8] = 0
                local0[10] = 0
                local0[11] = 0
                local0[12] = 0
                local0[13] = 500
                local0[20] = 0
                local0[21] = 0
                local0[25] = 0
                local0[7] = SetCoolTime(arg1, arg2, 3007, 25, local0[7], 0)
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 980
                local0[5] = 0
                local0[6] = 0
                local0[7] = 10
                local0[8] = 0
                local0[10] = 0
                local0[11] = 0
                local0[12] = 0
                local0[13] = 10
                local0[20] = 0
                local0[21] = 0
                local0[25] = 0
                local0[7] = SetCoolTime(arg1, arg2, 3007, 25, local0[7], 0)
            end
            if local8 <= 0.4 and 0.2 < local8 and local3 <= 30 and not arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[10] = 0
                local0[11] = 0
                local0[12] = 0
                local0[13] = 0
                local0[20] = 0
                local0[21] = 0
                local0[25] = 1000
            end
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[10] = 1000
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
            local0[20] = 0
            local0[21] = 0
        end
        local0[1] = SetCoolTime(arg1, arg2, 3000, 13, local0[1], 1)
        local0[1] = SetCoolTime(arg1, arg2, 3028, 13, local0[1], 1)
        local0[1] = SetCoolTime(arg1, arg2, 3007, 15, local0[1], 0)
        local0[1] = SetCoolTime(arg1, arg2, 3020, 15, local0[1], 0)
        local0[2] = SetCoolTime(arg1, arg2, 3001, 5, local0[2], 1)
        local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
        local0[4] = SetCoolTime(arg1, arg2, 3003, 20, local0[4], 1)
        local0[4] = SetCoolTime(arg1, arg2, 3015, 20, local0[4], 1)
        local0[5] = SetCoolTime(arg1, arg2, 3004, 15, local0[5], 1)
        local0[6] = SetCoolTime(arg1, arg2, 3006, 11, local0[6], 1)
        local0[6] = SetCoolTime(arg1, arg2, 3029, 11, local0[6], 1)
        local0[6] = SetCoolTime(arg1, arg2, 3016, 11, local0[6], 0)
        local0[8] = SetCoolTime(arg1, arg2, 3026, 15, local0[8], 1)
        local0[11] = SetCoolTime(arg1, arg2, 3030, 30, local0[11], 0)
        local0[12] = SetCoolTime(arg1, arg2, 3021, 20, local0[12], 1)
        local0[13] = SetCoolTime(arg1, arg2, 3020, 30, local0[13], 1)
        local0[20] = SetCoolTime(arg1, arg2, 3011, 15, local0[20], 1)
        local0[28] = SetCoolTime(arg1, arg2, 3028, 13, local0[28], 1)
        local0[28] = SetCoolTime(arg1, arg2, 3001, 13, local0[28], 1)
        local0[29] = SetCoolTime(arg1, arg2, 3029, 11, local0[29], 1)
        local0[29] = SetCoolTime(arg1, arg2, 3006, 11, local0[29], 1)
    elseif local4 <= -8 and -33 <= local4 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5400) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16558) then
                local0[10] = 0
                local0[31] = 1000
                local0[32] = 0
            else
                if not not InsideRange(arg1, arg2, 47.5 + 180, 85, 63, 999) or -12 <= local4 then
                    local0[10] = 0
                    local0[31] = 1000
                elseif not (not InsideRange(arg1, arg2, -46 + 180, 108, -1, 999) or InsideRange(arg1, arg2, -110 + 180, 140, 60, 999)) or InsideRange(arg1, arg2, -12.5 + 180, 65, 30, 50) and local4 <= -15 then
                    if InsideRange(arg1, arg2, 25 + 180, 130, 23, 29) then
                        local0[10] = 200
                        local0[31] = 0
                        local0[32] = 800
                    else
                        local0[10] = 0
                        local0[31] = 1000
                    end
                else
                    local0[10] = 1000
                    local0[31] = 0
                end
                local0[32] = SetCoolTime(arg1, arg2, 3002, 60, local0[32], 0)
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5405) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) and local4 <= -8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16558) then
                local0[10] = 1000
                local0[33] = 0
            elseif not not InsideRange(arg1, arg2, 47.5 + 180, 85, 63, 999) or -12 <= local4 then
                local0[10] = 1000
                local0[33] = 0
            elseif InsideRange(arg1, arg2, -35 + 180, 130, -1, 999) and not InsideRange(arg1, arg2, -75 + 180, 30, 60, 999) then
                if not not InsideRange(arg1, arg2, 25 + 180, 130, 23, 29) or InsideRange(arg1, arg2, 5 + 180, 20, 55, 999) and (local4 <= -23 or 80 <= local3) then
                    local0[10] = 1000
                    local0[33] = 0
                else
                    local0[10] = 0
                    local0[33] = 1000
                end
            else
                local0[10] = 1000
                local0[33] = 0
            end
        end
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act08)
    local1[10] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act13)
    local1[19] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act21)
    local1[25] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act25)
    local1[28] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act28)
    local1[29] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act29)
    local1[31] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act32)
    local1[33] = REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_Act33)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GOAL_621000_DarknessDragon_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_621000_DarknessDragon_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act02(arg0, arg1, arg2)
    local local0 = 3001
    local local1 = 3002
    local local2 = 3030
    local local3 = 25
    local local4 = 999
    local local5 = 0
    local local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16554)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act03(arg0, arg1, arg2)
    local local0 = 3002
    local local1 = 3021
    local local2 = 3030
    local local3 = 25
    local local4 = 999
    local local5 = 0
    local local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16554)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16552)
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act04(arg0, arg1, arg2)
    local local0 = 3015
    local local1 = 999
    local local2 = 0
    local local3 = 0
    if 10 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3003, TARGET_ENE_0, local1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local0, TARGET_ENE_0, DistToAttNext, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act08(arg0, arg1, arg2)
    local local0 = 3030
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(0.5, 0.8), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3030, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act12(arg0, arg1, arg2)
    local local0 = 3021
    local local1 = 3002
    local local2 = 3030
    local local3 = 25
    local local4 = 999
    local local5 = 0
    local local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16554)
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local0, TARGET_ENE_0, local3, local5, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local1, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16557)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act19(arg0, arg1, arg2)
    local local0 = 3001
    local local1 = 3001
    local local2 = 3003
    local local3 = 3001
    local local4 = 999
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 20, 3017, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act25(arg0, arg1, arg2)
    local local0 = 3025
    local local1 = 3030
    local local2 = 999
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    if not InsideRange(arg0, arg1, 65 + 180, 180, -1, 999) and 10 <= arg0:GetAttackPassedTime(3020) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3020, TARGET_ENE_0, local2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 20, local0, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, local0, TARGET_ENE_0, local2, local3, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3029, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GOAL_621000_DarknessDragon_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
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
    local local1 = arg1:GetDistYSigned(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsInterupt(INTERUPT_Damaged) and local4 <= 0.4 and 0.2 < local4 and local0 <= 30 and not arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        arg2:ClearSubGoal()
        GOAL_621000_DarknessDragon_Act25(arg1, arg2, paramTbl)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 16554 and InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) and 15 <= local0 and local2 <= 65 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5031 and InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3030, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 16552 and InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3030, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 16557 and InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3030, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and InsideRange(arg1, arg2, -135 + 180, 180, 10, 999) then
            local local5 = 3011
            if local2 <= 50 then
                local5 = 3013
            end
            if arg1:GetAttackPassedTime(3011) <= 10 then
                local5 = 3013
            end
            if arg1:GetAttackPassedTime(3013) <= 10 then
                local5 = 3011
            end
            if 9 <= local1 or local1 <= -15 then
                local5 = 3012
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, local5, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) and arg1:GetRandam_Int(1, 100) <= 60 then
            if 30 <= local0 then
                if local2 <= 50 then
                    if 11 <= arg1:GetAttackPassedTime(3016) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3016, TARGET_ENE_0, 999, 0, 0)
                        arg2:AddSubGoal(GOAL_COMMON_Wait, 1.8, TARGET_ENE_0, 0, 0, 0)
                        return true
                    end
                elseif 11 <= arg1:GetAttackPassedTime(3016) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif 15 <= local0 and 45 <= arg1:GetAttackPassedTime(3009) and local2 <= 50 and (not (not arg1:HasSpecialEffectId(TARGET_SELF, 5022) or local4 > 0.8) or local4 <= 0.6) and not InsideRange(arg1, arg2, 103 + 180, 154, 15, 30) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 16551 and InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) and 30 <= local0 and 11 <= arg1:GetAttackPassedTime(3016) and local2 <= 60 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3016, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1.8, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5033 then
            if not InsideRange(arg1, arg2, 65 + 180, 180, -1, 999) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3008, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5023) and local2 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif not (not (not arg1:HasSpecialEffectId(TARGET_SELF, 5022) or local4 > 0.8) or local4 <= 0.6) or not InsideRange(arg1, arg2, 103 + 180, 154, 15, 30) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5034 then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 16218 and arg1:HasSpecialEffectId(TARGET_SELF, 5400) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) and local1 <= -16 and -33 <= local1 and InsideRange(arg1, arg2, -30 + 180, 180, -1, 80) and 30 <= arg1:GetAttackPassedTime(3002) then
            if not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                local2 = 0
            end
            if local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and local1 <= -16 then
        arg2:ClearSubGoal()
        GOAL_621000_DarknessDragon_Act21(arg1, arg2, paramTbl)
        return true
    else
        return false
    end
end

function GOAL_621000_DarknessDragon_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DarknessDragon621000_Battle_AfterAttackAct, 10)
    return 
end

RegisterTableGoal(GOAL_DarknessDragon621000_Battle_AfterAttackAct, "GOAL_DarknessDragon621000_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessDragon621000_Battle_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetHpRate(TARGET_SELF)
    local local1 = {}
    if 30 <= arg1:GetDist(TARGET_ENE_0) then
        local1[1] = 100
        local1[2] = 0
    else
        local1[1] = 100
        local1[2] = 0
    end
    if InsideRange(arg1, arg2, -135 + 180, 180, 10, 999) then
        local1[1] = 100
        local1[2] = 0
    end
    local local2 = SelectOddsIndex(arg1, local1)
    if local2 ~= 1 and local2 == 2 then
        GOAL_621000_DarknessDragon_Act10(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
