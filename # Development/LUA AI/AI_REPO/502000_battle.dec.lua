RegisterTableGoal(GOAL_CrimsonBat_502000_Battle, "CrimsonBat_502000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrimsonBat_502000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 10)
    arg1:SetStringIndexedNumber("Dist_BackStep", 10)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5404)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15026)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetDist(TARGET_FRI_0)
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg1:GetEventRequest()
    if not arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15045) and not arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            local0[90] = 1000
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15046) and not arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            local0[91] = 1000
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100) and local3 <= 6 then
            local0[42] = 400
            local0[70] = 300
            local0[80] = 300
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) and local3 <= 6 then
            local0[43] = 400
            local0[70] = 300
            local0[79] = 300
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 6 then
            local0[41] = 500
            local0[70] = 200
            local0[78] = 300
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 250) then
            local0[70] = 1000
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15026) and local6 == 1 and (arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 60) and local4 < 5 then
                local0[78] = 800
                local0[1] = 50
                local0[2] = 50
                local0[71] = 100
            elseif 16 < local3 then
                local0[3] = 200
                local0[6] = 50
                local0[40] = 50
                local0[46] = 100
                local0[47] = 100
                local0[48] = 500
            elseif 8 < local3 then
                local0[3] = 250
                local0[6] = 50
                local0[40] = 150
                local0[46] = 150
                local0[47] = 200
                local0[48] = 300
                local0[71] = 50
            elseif 4 < local3 then
                local0[3] = 200
                local0[6] = 50
                local0[40] = 100
                local0[46] = 100
                local0[47] = 200
                local0[48] = 200
                local0[71] = 50
            else
                local0[2] = 250
                local0[6] = 50
                local0[40] = 100
                local0[46] = 100
                local0[47] = 200
                local0[48] = 100
                local0[71] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15026) then
            if 18 < local3 then
                local0[3] = 300
                local0[40] = 100
                local0[48] = 600
            elseif 8 < local3 then
                local0[3] = 300
                local0[6] = 50
                local0[40] = 125
                local0[46] = 125
                local0[47] = 200
                local0[48] = 300
            elseif 4 < local3 then
                local0[3] = 300
                local0[6] = 100
                local0[40] = 100
                local0[46] = 100
                local0[47] = 200
                local0[48] = 200
            else
                local0[2] = 300
                local0[6] = 100
                local0[40] = 100
                local0[46] = 100
                local0[47] = 200
                local0[48] = 200
            end
        elseif local6 == 1 and (arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 80) and local4 < 8 and arg1:GetRandam_Int(1, 100) < 60 then
                local0[78] = 700
                local0[71] = 300
            elseif 40 < local3 then
                local0[73] = 1000
            elseif 26 < local3 then
                local0[28] = 400
            elseif 16 < local3 then
                local0[26] = 250
                local0[27] = 300
                local0[28] = 400
                local0[72] = 0
                local0[73] = 150
                local0[76] = 0
                local0[77] = 0
            elseif 10 < local3 then
                local0[26] = 350
                local0[27] = 450
                local0[28] = 200
                local0[72] = 0
                local0[76] = 0
                local0[77] = 0
            else
                local0[1] = 75
                local0[5] = 75
                local0[6] = 75
                local0[7] = 75
                local0[26] = 250
                local0[27] = 450
                local0[72] = 0
                local0[76] = 0
                local0[77] = 0
            end
        elseif 23 < local3 then
            local0[26] = 100
            local0[27] = 100
            local0[28] = 500
            local0[72] = 0
            local0[73] = 300
        elseif 16 < local3 then
            local0[26] = 250
            local0[27] = 250
            local0[28] = 500
            local0[72] = 0
        elseif 8 < local3 then
            local0[26] = 350
            local0[27] = 400
            local0[28] = 250
            local0[72] = 0
        elseif 4 < local3 then
            local0[26] = 300
            local0[27] = 500
            local0[28] = 200
            local0[72] = 0
        else
            local0[1] = 50
            local0[5] = 50
            local0[6] = 50
            local0[7] = 50
            local0[26] = 250
            local0[27] = 400
            local0[28] = 0
            local0[72] = 150
        end
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        local0[94] = 1500
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.65 and not arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
        local0[55] = 1500
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100) and local3 <= 7 then
        local0[42] = 300
        local0[58] = 300
        local0[70] = 0
        local0[80] = 200
        local0[50] = 200
        local0[55] = 1500
        local0[56] = 1500
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) and local3 <= 7 then
        local0[43] = 300
        local0[59] = 300
        local0[70] = 0
        local0[79] = 200
        local0[50] = 200
        local0[55] = 1500
        local0[56] = 1500
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local3 <= 10 then
        local0[41] = 500
        local0[70] = 100
        local0[78] = 200
        local0[50] = 200
        local0[55] = 1500
        local0[56] = 1500
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 250) then
        local0[70] = 1000
    elseif 24 <= local3 then
        local0[51] = 400
        local0[53] = 400
        local0[49] = 100
        local0[48] = 100
    elseif 19 <= local3 then
        local0[51] = 300
        local0[53] = 350
        local0[49] = 150
        local0[48] = 200
        if arg1:HasSpecialEffectId(TARGET_SELF, 15045) then
            local0[57] = 100
        end
    elseif 16 <= local3 then
        local0[3] = 200
        local0[45] = 50
        local0[46] = 50
        local0[47] = 50
        local0[49] = 450
        local0[48] = 200
    elseif 12 <= local3 then
        local0[3] = 200
        local0[10] = 0
        local0[45] = 0
        local0[46] = 0
        local0[47] = 0
        local0[49] = 300
        local0[48] = 400
        local0[50] = 100
        local0[55] = 5000
        local0[56] = 1500
        if arg1:HasSpecialEffectId(TARGET_SELF, 15045) then
            local0[57] = 300
        end
    elseif 7.5 <= local3 then
        local0[3] = 100
        local0[10] = 150
        local0[45] = 50
        local0[46] = 25
        local0[47] = 75
        local0[49] = 200
        local0[48] = 250
        local0[50] = 150
        local0[55] = 5000
        local0[56] = 1500
        if arg1:HasSpecialEffectId(TARGET_SELF, 15045) then
            local0[57] = 200
        end
    elseif 3 <= local3 then
        local0[3] = 200
        local0[10] = 200
        local0[45] = 75
        local0[46] = 75
        local0[47] = 150
        local0[48] = 200
        local0[50] = 100
        local0[55] = 5000
        local0[56] = 1500
    else
        local0[2] = 200
        local0[45] = 25
        local0[46] = 25
        local0[47] = 50
        local0[48] = 100
        local0[58] = 175
        local0[59] = 175
        local0[50] = 300
        local0[55] = 5000
        local0[56] = 1000
    end
    if arg1:IsFinishTimer(3) == false and not arg1:HasSpecialEffectId(TARGET_SELF, 15047) then
        local0[29] = 0
    end
    if arg1:IsFinishTimer(3) == true and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) and not arg1:HasSpecialEffectId(TARGET_SELF, 5406) and not arg1:HasSpecialEffectId(TARGET_SELF, 15026) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        local0[29] = 50000
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 15047) and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) and not arg1:HasSpecialEffectId(TARGET_SELF, 5406) and not arg1:HasSpecialEffectId(TARGET_SELF, 15026) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        local0[29] = 50000
    end
    if arg1:IsFinishTimer(3) == false then
        local0[4] = 0
    end
    if arg1:IsFinishTimer(4) == true and not arg1:HasSpecialEffectId(TARGET_SELF, 5404) and not arg1:HasSpecialEffectId(TARGET_SELF, 5406) and not arg1:HasSpecialEffectId(TARGET_SELF, 15047) and arg1:HasSpecialEffectId(TARGET_SELF, 15026) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        local0[4] = 50000
    end
    if arg1:IsFinishTimer(6) == false then
        local0[55] = 1
        local0[56] = 1
    end
    if arg1:IsEventFlag(15005840) == true then
        local0[20] = 0
    end
    if arg1:IsEventFlag(15005841) == true or arg1:IsEventFlag(15005842) == true or arg1:IsEventFlag(15005840) == true then
        local0[21] = 0
        local0[57] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3011, 30, local0[10], 1)
    local0[20] = SetCoolTime(arg1, arg2, 3038, 10, local0[20], 0)
    local0[20] = SetCoolTime(arg1, arg2, 3012, 20, local0[20], 0)
    local0[21] = SetCoolTime(arg1, arg2, 3012, 20, local0[21], 0)
    local0[26] = SetCoolTime(arg1, arg2, 3028, 14, local0[26], 1)
    local0[27] = SetCoolTime(arg1, arg2, 3029, 14, local0[27], 1)
    local0[28] = SetCoolTime(arg1, arg2, 3030, 3, local0[28], 1)
    local0[44] = SetCoolTime(arg1, arg2, 3014, 20, local0[44], 1)
    local0[49] = SetCoolTime(arg1, arg2, 3024, 8, local0[49], 1)
    local0[48] = SetCoolTime(arg1, arg2, 3004, 18, local0[48], 1)
    local0[50] = SetCoolTime(arg1, arg2, 3019, 40, local0[50], 1)
    local0[51] = SetCoolTime(arg1, arg2, 3020, 10, local0[51], 1)
    local0[53] = SetCoolTime(arg1, arg2, 3022, 10, local0[53], 1)
    local0[55] = SetCoolTime(arg1, arg2, 3012, 75, local0[55], 1)
    local0[55] = SetCoolTime(arg1, arg2, 3014, 75, local0[55], 1)
    local0[56] = SetCoolTime(arg1, arg2, 3025, 30, local0[56], 1)
    local0[56] = SetCoolTime(arg1, arg2, 3026, 55, local0[56], 1)
    local0[57] = SetCoolTime(arg1, arg2, 3023, 40, local0[57], 1)
    local0[58] = SetCoolTime(arg1, arg2, 3036, 12, local0[58], 1)
    local0[59] = SetCoolTime(arg1, arg2, 3037, 12, local0[59], 1)
    local0[76] = SetCoolTime(arg1, arg2, 6001, 8, local0[76], 1)
    local0[77] = SetCoolTime(arg1, arg2, 6002, 8, local0[77], 1)
    local0[77] = SetCoolTime(arg1, arg2, 6003, 8, local0[77], 1)
    local0[78] = SetCoolTime(arg1, arg2, 6002, 8, local0[78], 1)
    local0[78] = SetCoolTime(arg1, arg2, 6003, 8, local0[78], 1)
    local0[79] = SetCoolTime(arg1, arg2, 6003, 8, local0[79], 1)
    local0[80] = SetCoolTime(arg1, arg2, 6002, 8, local0[80], 1)
    local0[81] = SetCoolTime(arg1, arg2, 3033, 8, local0[81], 1)
    local0[81] = SetCoolTime(arg1, arg2, 3034, 8, local0[81], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act07)
    local1[10] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act10)
    local1[20] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act22)
    local1[25] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act28)
    local1[29] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act29)
    local1[40] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act47)
    local1[48] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act48)
    local1[49] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act49)
    local1[50] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act50)
    local1[51] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act51)
    local1[52] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act52)
    local1[53] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act53)
    local1[54] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act54)
    local1[55] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act55)
    local1[56] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act56)
    local1[57] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act57)
    local1[58] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act58)
    local1[59] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act59)
    local1[70] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act70)
    local1[71] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act71)
    local1[72] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act72)
    local1[73] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act73)
    local1[74] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act74)
    local1[76] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act76)
    local1[77] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act77)
    local1[78] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act78)
    local1[79] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act79)
    local1[80] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act80)
    local1[81] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act81)
    local1[82] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act82)
    local1[83] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act83)
    local1[90] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act90)
    local1[91] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act91)
    local1[92] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act92)
    local1[93] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act93)
    local1[94] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act94)
    local1[98] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act98)
    local1[99] = REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_Act99)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, CrimsonBat_502000_Battle_ActAfter_AdjustSpace), local2)
    return 
end

function CrimsonBat_502000_Battle_Act01(arg0, arg1, arg2)
    local local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) and arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        local1 = 999
        local2 = 0
    end
    Approach_Act_Flex(arg0, arg1, local0, local0, local1, local2, 0, 2, 5.5)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5404) or arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act02(arg0, arg1, arg2)
    local local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0
    local local2 = local0 + 0
    local local3 = 100
    local local4 = 0
    local local5 = 2
    local local6 = 5.5
    if arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    end
    local local7 = 999
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetRandam_Int(1, 100)
    local local11 = arg0:GetRandam_Int(1, 100)
    local local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 8.5, local8, local9, 0, 0)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5404) or arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        if local10 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9.5 - arg0:GetMapHitRadius(TARGET_SELF), local8, local9, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, local8, local9, 0, 0)
        elseif local10 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, local8, local9, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act03(arg0, arg1, arg2)
    local local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = 100
    if arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) and arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        local1 = 999
        local2 = 0
    end
    Approach_Act_Flex(arg0, arg1, local0, local0, local1, local2, 0, 2, 5.5)
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 8.5, local4, local5, 0, 0)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5404) or arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        if local6 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local4, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, local4, local5, 0, 0)
        elseif local6 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, local4, local5, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15025)
    Approach_Act_Flex(arg0, arg1, 8, 8, 8, 100, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 999, 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.2 - arg0:GetMapHitRadius(TARGET_SELF), 10.2 - arg0:GetMapHitRadius(TARGET_SELF), 999, 0, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act06(arg0, arg1, arg2)
    local local0 = 11.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) and arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 11.5 - arg0:GetMapHitRadius(TARGET_SELF), 11.5 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1, 0, 4, 8)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10 - arg0:GetMapHitRadius(TARGET_SELF), 10 - arg0:GetMapHitRadius(TARGET_SELF), 999, 0, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act10(arg0, arg1, arg2)
    local local0 = 6002
    Approach_Act_Flex(arg0, arg1, 10, 10, 10, 100, 0, 5, 5)
    if arg0:GetRandam_Int(1, 2) == 1 then
        local0 = 6003
    end
    if SpaceCheck(arg0, arg1, 180, 13) == false then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act20(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, local0, local1, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, local0, local1, local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3038, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act26(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 17.5, 19, 999, 0, 0, 2, 2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 7.5
    local local2 = 999
    local local3 = 0
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        local2 = 999
        local3 = 0
    end
    Approach_Act_Flex(arg0, arg1, local1, local1, local2, local3, 0, 2, 2)
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act28(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 32, 0, local0, local1, 0, 2, 2)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
    local3:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act29(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15026)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 30, 30, local0, local1, 0, 2, 5.5)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act29(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15026)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 30, 30, local0, local1, 0, 2, 5.5)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act40(arg0, arg1, arg2)
    local local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local1 = 90
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) and arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local0, local1, 0, 4, RunLife)
    local local2 = 999
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if local5 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, local3, local4, 0, 0)
    elseif local5 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9.5 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act41(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 10.2 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5404) or arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
        if local4 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            if local5 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            elseif local5 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            end
        elseif local4 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act42(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 10.2 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5404) or arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
        if local4 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            if local5 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            elseif local5 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            end
        elseif local4 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act43(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 10.2 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5404) or arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
        if local4 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            if local5 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            elseif local5 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
            end
        elseif local4 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local2, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act45(arg0, arg1, arg2)
    local local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local1 = 90
    if arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) and arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local0, local1, 0, 4, 8)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, local2, local3, 0, 0)
    if local4 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        elseif local5 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        end
    elseif local4 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act46(arg0, arg1, arg2)
    local local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local1 = 90
    if arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) and arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 8 - arg0:GetMapHitRadius(TARGET_SELF), 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local0, local1, 0, 4, 8)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, local2, local3, 0, 0)
    if local4 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, local2, local3, 0, 0)
    elseif local4 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local2, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act47(arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local1 = 90
    if arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5404) and arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        local0 = 999
        local1 = 0
    end
    Approach_Act_Flex(arg0, arg1, 10 - arg0:GetMapHitRadius(TARGET_SELF), 10 - arg0:GetMapHitRadius(TARGET_SELF) + 0, local0, local1, 0, 4, 8)
    local local2 = 999
    local local3 = 0
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 10.2 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
    if local6 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 11.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, local3, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, local3, local4, 0, 0)
    elseif local6 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, local3, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act48(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    Approach_Act_Flex(arg0, arg1, 25, 25, 25, 100, 0, 4, 8)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 1.5, 90)
    if 15 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif 5 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act49(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    Approach_Act_Flex(arg0, arg1, 23, 23, 23, 90, 0, 4, 8)
    local local0 = 999
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 10, 0, 0, 0, 0)
    return 
end

function CrimsonBat_502000_Battle_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, SuccessDist, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act51(arg0, arg1, arg2)
    local local0 = 45
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 100, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 1.5, 90, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act53(arg0, arg1, arg2)
    local local0 = 30
    Approach_Act_Flex(arg0, arg1, local0, local0, local0, 100, 0, 4, 8)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(6, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, 15, 1.5, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act55(arg0, arg1, arg2)
    local local0 = 1.5
    local local1 = 90
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 3033
    if arg0:GetRandam_Int(1, 2) == 1 then
        local3 = 3033
    else
        local3 = 3034
    end
    if SpaceCheck(arg0, arg1, 180, 10) == false then
        if SpaceCheck(arg0, arg1, 90, 10) == true and SpaceCheck(arg0, arg1, 270, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, local3, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif SpaceCheck(arg0, arg1, 90, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3034, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3033, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 15046) and arg0:IsEventFlag(15005841) == false and arg0:IsEventFlag(15005842) == false and arg0:IsEventFlag(15005840) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 60, 3013, TARGET_ENE_0, 999, local0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 3025, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 3012, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 60, 3038, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 15045) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 60, 3025, TARGET_ENE_0, 999, local0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 3014, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act56(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, SuccessDist, 1.5, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act57(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 60, 3002, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act58(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act59(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act70(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(20, 30))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act71(arg0, arg1, arg2)
    local local0 = 0
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.2, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(50, 65), true, true, -1)
    local3:SetTargetRange(1, 8, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act72(arg0, arg1, arg2)
    local local0 = 10
    local local1 = 999
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(0.8, 2.5), TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 8, TARGET_ENE_0, true, -1)
    return 
end

function CrimsonBat_502000_Battle_Act73(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 20, TARGET_SELF, true, -1)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act74(arg0, arg1, arg2)
    local local0 = 0
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(50, 65), true, true, -1)
    local3:SetTargetRange(1, 8, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act76(arg0, arg1, arg2)
    local local0 = 6002
    if arg0:GetRandam_Int(1, 2) == 1 then
        local0 = 6003
    end
    if SpaceCheck(arg0, arg1, 180, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg0:GetStringIndexedNumber("Dist_BackStep"))
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act77(arg0, arg1, arg2)
    local local0 = 6002
    if arg0:GetRandam_Int(1, 2) == 1 then
        local0 = 6003
    end
    if SpaceCheck(arg0, arg1, 90, 10) == true and SpaceCheck(arg0, arg1, 270, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif SpaceCheck(arg0, arg1, 90, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(arg0, arg1, 270, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act78(arg0, arg1, arg2)
    local local0 = 6002
    if arg0:GetRandam_Int(1, 2) == 1 then
        local0 = 6003
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) and targetDist <= 14 and SpaceCheck(arg0, arg1, 270, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and targetDist <= 14 and SpaceCheck(arg0, arg1, 90, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(arg0, arg1, 90, 10) == true and SpaceCheck(arg0, arg1, 270, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif SpaceCheck(arg0, arg1, 90, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(arg0, arg1, 270, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act79(arg0, arg1, arg2)
    if SpaceCheck(arg0, arg1, 90, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act80(arg0, arg1, arg2)
    if SpaceCheck(arg0, arg1, 90, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act81(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 0
    local local2 = 0
    local local3 = 3033
    if arg0:GetRandam_Int(1, 2) == 1 then
        local3 = 3033
    else
        local3 = 3034
    end
    if arg0:GetRandam_Int(1, 100) <= 20 then
        if SpaceCheck(arg0, arg1, 90, 15) == true and SpaceCheck(arg0, arg1, 270, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, local3, TARGET_ENE_0, 999, local1, local2)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local3, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif SpaceCheck(arg0, arg1, 90, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3033, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif SpaceCheck(arg0, arg1, 270, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3034, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif SpaceCheck(arg0, arg1, 90, 10) == true and SpaceCheck(arg0, arg1, 270, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local3, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif SpaceCheck(arg0, arg1, 90, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3033, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif SpaceCheck(arg0, arg1, 270, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3034, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local3, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        if SpaceCheck(arg0, arg1, 90, 15) == true and SpaceCheck(arg0, arg1, 270, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, local3, TARGET_ENE_0, 999, local1, local2)
        elseif SpaceCheck(arg0, arg1, 90, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3033, TARGET_ENE_0, 999, local1, local2)
        elseif SpaceCheck(arg0, arg1, 270, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3034, TARGET_ENE_0, 999, local1, local2)
        elseif SpaceCheck(arg0, arg1, 90, 10) == true and SpaceCheck(arg0, arg1, 270, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, local3, TARGET_ENE_0, 999, local1, local2)
        elseif SpaceCheck(arg0, arg1, 90, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3033, TARGET_ENE_0, 999, local1, local2)
        elseif SpaceCheck(arg0, arg1, 270, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3034, TARGET_ENE_0, 999, local1, local2)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, local3, TARGET_ENE_0, 999, local1, local2)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act82(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 90, 7) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act83(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 270, 7) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act90(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(4, 38)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act91(arg0, arg1, arg2)
    arg0:SetTimer(3, 13)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 25, TARGET_SELF, true, -1)
    local0:SetLifeEndSuccess(true)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local2:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act93(arg0, arg1, arg2)
    local local0 = 999
    local local1 = 1
    local local2 = 60
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = 3033
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if arg0:GetRandam_Int(1, 2) == 1 then
        local4 = 3033
    else
        local4 = 3034
    end
    if SpaceCheck(arg0, arg1, 180, 15) == false then
        if SpaceCheck(arg0, arg1, 90, 10) == true and SpaceCheck(arg0, arg1, 270, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local4, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif SpaceCheck(arg0, arg1, 90, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3034, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3033, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    if arg0:GetDist(TARGET_ENE_0) <= 12 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, local0, local1, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, local0, local1, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 60, 3014, TARGET_ENE_0, local0, local1, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act94(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(6, 20)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 280) and not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, arg0:GetRandam_Int(20, 30))
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, SuccessDist, 1.5, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act98(arg0, arg1, arg2)
    local local0 = 3000
    local local1 = 6002
    local local2 = 3006
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 999)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_Act99(arg0, arg1, arg2)
    local local0 = 3018
    local local1 = 3016
    local local2 = 3018
    local local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrimsonBat_502000_Battle_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrimsonBat_502000_AfterAttackAct, 10)
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
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(3) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            arg1:DeleteObserve(3)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if arg1:IsTargetOutOfRangeInterruptSlot(0) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsTargetOutOfRangeInterruptSlot(1) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and 18 <= local0 then
            arg2:ClearSubGoal()
            if arg1:GetAttackPassedTime(3020) <= 200 then
                if local1 <= 60 and local0 <= 42 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                elseif local0 <= 38 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                end
            elseif local1 <= 90 and local0 <= 42 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            elseif local0 <= 38 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            arg2:ClearSubGoal()
            if local0 <= 3 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 9, 0, 0)
                if local1 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                elseif local1 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                end
            elseif local0 <= 14 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9, 0, 0)
                if local1 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                elseif local1 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 80) and local0 <= 7 then
            arg2:ClearSubGoal()
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 9, 0, 0)
            if local1 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and 1 <= local0 and local0 <= 10 then
            arg2:ClearSubGoal()
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            if local1 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0)
                if local2 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0)
                    if arg1:GetRandam_Int(1, 100) <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    end
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 8, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 14, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 80) and local0 <= 7 then
            arg2:ClearSubGoal()
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 9, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9, 0, 0)
            if local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            elseif local1 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and 1 <= local0 then
            arg2:ClearSubGoal()
            if local1 <= 50 and local0 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 10 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                if local2 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 10 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                end
            elseif local1 <= 80 and local0 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            elseif local0 <= 11 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 8, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 14, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and 1 <= local0 and local0 <= 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and 4 <= local0 and local0 <= 8 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and 8 <= local0 and local0 <= 15 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5031 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and local0 <= 10 and local1 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5033 then
            arg2:ClearSubGoal()
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
            if local1 <= 30 and 30 <= arg1:GetAttackPassedTime(3019) then
                if local0 <= 3.5 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                elseif local0 <= 14 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                end
            elseif local1 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5404 and not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            arg2:ClearSubGoal()
            arg1:Replaning()
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 15025 then
            if not not arg1:HasSpecialEffectId(TARGET_SELF, 140393) or arg1:HasSpecialEffectId(TARGET_SELF, 140403) then
                arg1:SetTimer(3, 40)
                arg2:ClearSubGoal()
            else
                arg1:SetTimer(3, 60)
                arg2:ClearSubGoal()
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 15026 then
            if not not arg1:HasSpecialEffectId(TARGET_SELF, 140393) or arg1:HasSpecialEffectId(TARGET_SELF, 140403) then
                arg1:SetTimer(4, 90)
                arg2:ClearSubGoal()
            else
                arg1:SetTimer(4, 60)
                arg2:ClearSubGoal()
                arg1:Replaning()
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 15047 then
            arg2:ClearSubGoal()
            arg1:Replaning()
        end
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_CrimsonBat_502000_AfterAttackAct, "GOAL_CrimsonBat_502000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrimsonBat_502000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = {}
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        local5[1] = 60
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15026) then
        if 10 <= local0 then
            local5[1] = 100
            local5[2] = 0
            local5[3] = 0
            local5[4] = 0
        else
            local5[1] = 40
            local5[2] = 0
            local5[3] = 0
            local5[4] = 60
        end
    elseif 20 <= local0 then
        local5[1] = 0
        local5[2] = 100
        local5[3] = 0
        local5[4] = 0
    elseif 14 <= local0 then
        local5[1] = 20
        local5[2] = 80
        local5[3] = 0
        local5[4] = 0
    else
        local5[1] = 40
        local5[2] = 0
        local5[3] = 0
        local5[4] = 60
    end
    local local6 = SelectOddsIndex(arg1, local5)
    if local6 ~= 1 then
        if local6 == 2 then
            CrimsonBat_502000_Battle_Act74(arg1, arg2, paramTbl)
        elseif local6 == 3 then
            CrimsonBat_502000_Battle_Act76(arg1, arg2, paramTbl)
        elseif local6 == 4 then
            CrimsonBat_502000_Battle_Act71(arg1, arg2, paramTbl)
        end
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
