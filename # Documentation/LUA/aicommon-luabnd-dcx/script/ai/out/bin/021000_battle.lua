RegisterTableGoal(GOAL_NPC_YUPASAMA, "GOAL_NPC_YUPASAMA")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_YUPASAMA, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

function NPC_Yupa_HasPoisn(arg0)
    local local0 = false
    local local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21000)
    if not local1 then
        local0 = local1
    else
        local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21001)
        if not local1 then
            local0 = local1
        else
            local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21002)
            if not local1 then
                local0 = local1
            else
                local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21003)
                if not local1 then
                    local0 = local1
                else
                    local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21004)
                    if not local1 then
                        local0 = local1
                    else
                        local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21005)
                        if not local1 then
                            local0 = local1
                        else
                            local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21006)
                            if not local1 then
                                local0 = local1
                            else
                                local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21007)
                                if not local1 then
                                    local0 = local1
                                else
                                    local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21008)
                                    if not local1 then
                                        local0 = local1
                                    else
                                        local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21009)
                                        if not local1 then
                                            local0 = local1
                                        else
                                            local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21010)
                                            if not local1 then
                                                local0 = local1
                                            else
                                                local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21011)
                                                if not local1 then
                                                    local0 = local1
                                                else
                                                    local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21012)
                                                    if not local1 then
                                                        local0 = local1
                                                    else
                                                        local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21013)
                                                        if not local1 then
                                                            local0 = local1
                                                        else
                                                            local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21014)
                                                            if not local1 then
                                                                local0 = local1
                                                            else
                                                                local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21015)
                                                                if not local1 then
                                                                    local0 = local1
                                                                else
                                                                    local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21016)
                                                                    if not local1 then
                                                                        local0 = local1
                                                                    else
                                                                        local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21017)
                                                                        if not local1 then
                                                                            local0 = local1
                                                                        else
                                                                            local1 = arg0:HasSpecialEffectId(TARGET_SELF, 21018)
                                                                            if not local1 then
                                                                                local0 = local1
                                                                            else
                                                                                local0 = arg0:HasSpecialEffectId(TARGET_SELF, 21019)
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return local0
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_LOCALPLAYER)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = 15
    if arg1:GetNpcThinkParamID() == 21005 then
        if not arg1:IsInsideTargetRegion(TARGET_SELF, 5002807) then
            arg1:SetStringIndexedNumber("NPC_PointFrontWall", 5002805)
            arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
        elseif arg1:IsSearchTarget(TARGET_ENE_0) then
            arg1:SetStringIndexedNumber("NPC_PointFrontWall", 5002805)
            arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
        end
        local2 = 999
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.6)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local3 = {}
    local local4 = {}
    local local5 = {}
    Common_Clear_Param(local3, local4, local5)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetDist(TARGET_ENE_0)
    local local8 = arg1:GetSp(TARGET_SELF)
    local local9 = arg1:GetHpRate(TARGET_ENE_0)
    if arg1:GetHpRate(TARGET_SELF) <= 0.65 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) then
        if 5 <= local7 then
            local3[42] = 1000
        else
            local3[1] = 1
            local3[2] = 0
            local3[21] = 100
            local3[22] = 0
            local3[23] = 0
            local3[24] = 400
            local3[41] = 400
            local3[42] = 100
        end
    elseif local8 < 40 then
        if 5 <= local7 then
            local3[1] = 1
            local3[2] = 0
            local3[40] = 200
            local3[41] = 800
        else
            local3[1] = 1
            local3[2] = 1
            local3[24] = 300
            local3[40] = 0
            local3[41] = 700
        end
    elseif arg1:GetNpcThinkParamID() == 21005 and NPC_Yupa_HasPoisn(arg1) then
        if 7 <= local7 then
            local3[25] = 1000
        else
            local3[1] = 50
            local3[21] = 0
            local3[22] = 0
            local3[23] = 0
            local3[24] = 400
            local3[40] = 0
            local3[41] = 300
            local3[25] = 200
        end
    elseif arg1:GetNpcThinkParamID() == 21005 and arg1:HasSpecialEffectId(TARGET_ENE_0, 15207) then
        local3[9] = 1000
    elseif local2 <= arg1:GetDist(TARGET_LOCALPLAYER) or arg1:IsSearchTarget(TARGET_ENE_0) == false or arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
        local3[9] = 1000
    elseif 5 <= local7 then
        local3[1] = 400
        local3[2] = 0
        local3[3] = 0
        local3[4] = 200
        local3[5] = 0
        local3[6] = 0
        local3[7] = 400
        local3[8] = 0
        local3[20] = 0
        local3[21] = 0
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
        local3[25] = 0
        local3[40] = 0
        local3[41] = 0
    elseif 2 <= local7 then
        local3[1] = 100
        local3[2] = 100
        local3[3] = 0
        local3[4] = 0
        local3[5] = 100
        local3[6] = 100
        local3[20] = 0
        local3[21] = 200
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
        local3[25] = 0
        local3[40] = 0
        local3[41] = 200
    else
        local3[1] = 200
        local3[2] = 200
        local3[3] = 0
        local3[4] = 0
        local3[5] = 100
        local3[6] = 100
        local3[20] = 0
        local3[21] = 200
        local3[22] = 200
        local3[23] = 0
        local3[24] = 0
        local3[25] = 0
        local3[40] = 0
        local3[41] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local3[25] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        local3[21] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local3[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local3[23] = 0
    end
    if SpaceCheck(arg1, arg2, -135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local3[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local3[24] = 0
    end
    if arg1:IsFinishTimer(1) == false then
        local3[5] = 0
        local3[6] = 0
    end
    if local8 < 20 then
        local3[7] = 0
        local3[8] = 0
        local3[20] = 0
        local3[21] = 0
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
    end
    if local8 <= 50 then
        local3[5] = 0
        local3[6] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 103504000) then
        local3[8] = 0
    end
    local3[8] = 0
    local4[1] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act01)
    local4[2] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act02)
    local4[3] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act03)
    local4[4] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act04)
    local4[5] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act05)
    local4[6] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act06)
    local4[7] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act07)
    local4[8] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act08)
    local4[9] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act09)
    local4[20] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act20)
    local4[21] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act21)
    local4[22] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act22)
    local4[23] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act23)
    local4[24] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act24)
    local4[25] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act25)
    local4[40] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act40)
    local4[41] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act41)
    local4[42] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act42)
    local4[43] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act43)
    local4[44] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act44)
    local4[45] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act45)
    local4[46] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act46)
    local4[47] = REGIST_FUNC(arg1, arg2, NPC_Yupa_Act47)
    Common_Battle_Activate(arg1, arg2, local3, local4, REGIST_FUNC(arg1, arg2, NPC_Yupa_ActAfter_AdjustSpace), local5)
    return 
end

function NPC_Yupa_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 1.6
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 1.8
        local4 = 100
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local1 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 67
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 33
            end
            if local0 <= local5 then
                local4 = 100
                local3 = 1.8
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 25
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 25
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 1.6
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 8, 50, local4, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local4 and local3 <= local1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 61 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 31 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 2
    local local5 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 1.9
        local5 = 100
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local2 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 67
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 + 33
            end
            if local0 <= local6 then
                local5 = 100
                local4 = 1.9
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 25
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 - 25
            end
            if local0 <= local6 then
                local5 = 0
                local4 = 2
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local3 < 50 then
        local5 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local4, local4 + 2, local4 + 8, 50, local5, 1.8, 2)
    if local1 <= 50 and 0 < local5 and local4 <= local2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 60 <= local3 and 67 < local0 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 2
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2
        local4 = 100
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 4, 50, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 3.5
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 3.5
        local4 = 100
    end
    if not arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 2, local3 + 4, 50, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 2.7
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local4 + 2
    local local6 = local4 + 4
    local local7 = 50
    local local8 = 1.8
    local local9 = 2
    arg0:SetTimer(1, 10)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, false, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 3.4
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    local local5 = local4 + 2
    local local6 = local4 + 4
    local local7 = 50
    local local8 = 1.8
    local local9 = 2
    arg0:SetTimer(1, 10)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, false, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act07(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(0)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 10
    local local4 = 80
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 30
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetSp(TARGET_SELF) < 30 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3, local3 + 6, 0, local4, 1.8, 2)
    local local5 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local5:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act08(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 10
    local local5 = 80
    if arg0:IsBothHandMode(TARGET_SELF) then
        local5 = 30
    end
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    local local6 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local6:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act09(arg0, arg1, arg2)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5034) or isFindTarget == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 4, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 2.6
    local local3 = -1
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 2.6
        local3 = 4
    end
    local local4 = local2
    if arg0:GetSp(TARGET_SELF) < 50 then
        local3 = -1
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 2.6
        local local3 = 1
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 2.6
            local3 = 0.2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act22(arg0, arg1, arg2)
    if 5 <= arg0:GetDist(TARGET_ENE_0) and SpaceCheck(arg0, arg1, 0, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local0 = 5.4
        local local1 = 6
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 5.6
            local1 = 5.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local1 = 5.4 - 2
        local local2 = 6 - 2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 5.6 - 2
            local2 = 5.6 - 2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act24(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 and SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local0 = 5.4 - 4
        local local1 = 6 - 4
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 5.6 - 4
            local1 = 5.6 - 4
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetSp(TARGET_SELF)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 4, TARGET_ENE_0, true, NPC_ATK_L1Hold)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Yupa_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetSp(TARGET_SELF)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        if local1 < 1.8 and 20 <= local0 and local2 <= 20 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif local1 < 1.8 and 20 <= local0 and local2 <= 60 then
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
            else
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1Hold)
            end
            return true
        elseif local2 <= 20 and 20 <= local0 then
            arg2:ClearSubGoal()
            NPC_Yupa_Act21(arg1, arg2, paramTbl)
            return true
        elseif local2 <= 60 and 60 <= local0 then
            arg2:ClearSubGoal()
            NPC_Yupa_Act06(arg1, arg2, paramTbl)
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:GetNpcThinkParamID() ~= 21005 and local2 <= 33 and 20 <= local0 and arg1:GetEventRequest(3) ~= 50 then
        arg2:ClearSubGoal()
        NPC_Yupa_Act23(arg1, arg2)
        return true
    elseif arg1:IsInterupt(INTERUPT_SuccessParry) then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    else
        return false
    end
end

return 
