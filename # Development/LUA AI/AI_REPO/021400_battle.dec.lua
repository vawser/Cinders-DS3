RegisterTableGoal(GOAL_NPC_Heavy_Knight, "GOAL_NPC_Heavy_Knight")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Heavy_Knight, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

function NPC_Heavy_Knight_HasPoisn(arg0)
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
    if arg1:GetNpcThinkParamID() == 21420 then
        if not arg1:IsInsideTargetRegion(TARGET_SELF, 5002807) then
            arg1:SetStringIndexedNumber("NPC_PointFrontWall", 5002805)
            arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
        elseif arg1:IsSearchTarget(TARGET_ENE_0) then
            arg1:SetStringIndexedNumber("NPC_PointFrontWall", 5002805)
            arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
        end
        local2 = 999
    elseif arg1:GetNpcThinkParamID() == 21421 then
        arg1:SetStringIndexedNumber("NPC_PointFrontWall", 5102805)
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
        local2 = 999
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local3 = {}
    local local4 = {}
    local local5 = {}
    Common_Clear_Param(local3, local4, local5)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetDist(TARGET_ENE_0)
    local local8 = arg1:GetMp(TARGET_SELF)
    local local9 = arg1:GetSp(TARGET_SELF)
    local local10 = arg1:GetHpRate(TARGET_ENE_0)
    if arg1:GetHpRate(TARGET_SELF) <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) and not arg1:HasSpecialEffectId(TARGET_SELF, 3150) then
        if 5 <= local7 then
            local3[42] = 1000
        else
            local3[1] = 100
            local3[21] = 0
            local3[22] = 0
            local3[23] = 0
            local3[24] = 300
            local3[40] = 0
            local3[41] = 300
            local3[42] = 200
        end
    elseif local9 <= 40 and local7 <= 3.2 then
        local3[1] = 1
        local3[24] = 1
        local3[40] = 1
        local3[41] = 900
    elseif local9 <= 40 and 3.2 < local7 then
        local3[1] = 1
        local3[40] = 1000
        local3[41] = 1
    elseif arg1:GetNpcThinkParamID() == 21420 and NPC_Heavy_Knight_HasPoisn(arg1) then
        if 7 <= local7 then
            local3[25] = 1000
        else
            local3[1] = 50
            local3[21] = 0
            local3[22] = 0
            local3[23] = 0
            local3[24] = 100
            local3[40] = 0
            local3[41] = 600
            local3[25] = 200
        end
    elseif arg1:GetNpcThinkParamID() == 21420 and arg1:HasSpecialEffectId(TARGET_ENE_0, 15207) then
        local3[9] = 1000
    elseif arg1:GetNpcThinkParamID() == 21420 and (local2 <= arg1:GetDist(TARGET_LOCALPLAYER) or arg1:IsSearchTarget(TARGET_ENE_0) == false or arg1:HasSpecialEffectId(TARGET_SELF, 5034)) then
        local3[9] = 1000
    elseif 7.5 <= local7 then
        local3[1] = 200
        local3[2] = 100
        local3[3] = 0
        local3[4] = 0
        local3[5] = 0
        local3[15] = 0
        local3[20] = 100
        local3[21] = 0
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
        local3[40] = 0
        local3[41] = 0
    elseif 5 <= local7 then
        local3[1] = 150
        local3[2] = 250
        local3[3] = 150
        local3[4] = 0
        local3[5] = 0
        local3[15] = 0
        local3[20] = 0
        local3[21] = 0
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
        local3[40] = 0
        local3[41] = 0
    elseif 3 <= local7 then
        local3[1] = 100
        local3[2] = 50
        local3[3] = 50
        local3[4] = 0
        local3[5] = 300
        local3[15] = 0
        local3[20] = 0
        local3[21] = 0
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
        local3[40] = 200
        local3[41] = 0
    elseif 1 <= local7 then
        local3[1] = 100
        local3[2] = 0
        local3[3] = 0
        local3[4] = 0
        local3[5] = 100
        local3[15] = 0
        local3[20] = 0
        local3[21] = 0
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
        local3[40] = 300
        local3[41] = 100
    else
        local3[1] = 0
        local3[2] = 0
        local3[3] = 0
        local3[4] = 0
        local3[5] = 0
        local3[15] = 0
        local3[20] = 0
        local3[21] = 0
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
        if SpaceCheck(arg1, arg2, 180, 1) == true then
            local3[1] = 25
            local3[15] = 50
            local3[41] = 950
        else
            local3[1] = 75
            local3[5] = 50
            local3[23] = 25
            local3[40] = 850
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) then
            local3[15] = 500
            local3[21] = 0
            local3[41] = 0
        end
        if arg1:GetSp(TARGET_ENE_0) < 19 then
            local3[1] = 300
            local3[15] = 100
            local3[41] = 0
        end
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        local3[21] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local3[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local3[23] = 0
    end
    if SpaceCheck(arg1, arg2, -135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(arg1, arg2, 135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local3[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local3[24] = 0
    end
    if local9 <= 0 then
        local3[21] = 0
        local3[22] = 0
        local3[23] = 0
        local3[24] = 0
    end
    if local9 < 70 then
        local3[4] = 0
        local3[5] = 0
    end
    if arg1:GetNpcThinkParamID() == 21420 then
        local3[15] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local3[25] = 0
    end
    if not arg1:IsFinishTimer(0) then
        local3[4] = 0
        local3[5] = 0
    end
    local4[1] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act01)
    local4[2] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act02)
    local4[3] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act03)
    local4[4] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act04)
    local4[5] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act05)
    local4[15] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act15)
    local4[9] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act09)
    local4[20] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act20)
    local4[21] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act21)
    local4[22] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act22)
    local4[23] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act23)
    local4[24] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act24)
    local4[25] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act25)
    local4[40] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act40)
    local4[41] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act41)
    local4[42] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act42)
    local4[43] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act43)
    local4[44] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act44)
    local4[45] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act45)
    local4[46] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act46)
    local4[47] = REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_Act47)
    Common_Battle_Activate(arg1, arg2, local3, local4, REGIST_FUNC(arg1, arg2, NPC_Heavy_Knight_ActAfter_AdjustSpace), local5)
    return 
end

function NPC_Heavy_Knight_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 2.8
    local local3 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 2.8
        local3 = 0
    end
    if local1 < 20 then
        local3 = 0
    end
    local local4 = NPC_ATK_R1
    NPC_Approach_Act_Flex(arg0, arg1, local2, local2 + 2, local2 + 5, 0, local3, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local3 and local2 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 20 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local4, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 2.8
    local local3 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 2.8
        local3 = 100
    end
    if local1 < 20 then
        local3 = 0
    end
    local local4 = NPC_ATK_R2
    NPC_Approach_Act_Flex(arg0, arg1, local2, local2 + 2, local2 + 5, 0, local3, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local3 and DistToR1 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 35 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local4, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, local4, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act03(arg0, arg1, arg2)
    local local0 = 2.8
    local local1 = 100
    local local2 = arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0 + 4, local0 + 4, 0, local1, 1.8, 2)
    if fate2 <= 50 and 0 < local1 and DistToR1 <= targetDist then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 2.5
    local local4 = 0
    local local5 = local3 - 1
    local local6 = local3 + 2
    local local7 = local3 + 4
    local local8 = 0
    if arg0:GetSp(TARGET_SELF) < 20 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, 2.5 + 2, 0, 0, 100, 0, 1.8, 2)
    local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, 58, TARGET_ENE_0, 999, 0, 0)
    local9:SetLifeEndSuccess(true)
    local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, 58, TARGET_ENE_0, 999, 0, 0)
    local9:SetLifeEndSuccess(true)
    local9 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, -0.5, TARGET_SELF, false, NPC_ATK_L2Hold)
    local9 = local9:SetLifeEndSuccess(true)
    local9:SetTargetRange(0, 1.5, 3.8)
    local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    local9:SetLifeEndSuccess(true)
    arg0:SetTimer(0, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 4
    local local4 = 0
    local local5 = local3
    local local6 = local3 + 2
    local local7 = local3 + 4
    local local8 = 0
    if arg0:GetSp(TARGET_SELF) < 20 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, 4 + 2, 0, 0, 100, 0, 1.8, 2)
    local local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, 58, TARGET_ENE_0, 999, 0, 0)
    local9:SetLifeEndSuccess(true)
    local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, 58, TARGET_ENE_0, 999, 0, 0)
    local9:SetLifeEndSuccess(true)
    local9 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, 58, TARGET_ENE_0, 999, 0, 0)
    local9:SetLifeEndSuccess(true)
    local9 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, -0.5, TARGET_SELF, false, NPC_ATK_L2Hold)
    local9 = local9:SetLifeEndSuccess(true)
    local9:SetTargetRange(0, 1.5, 3.8)
    local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    local9:SetLifeEndSuccess(true)
    arg0:SetTimer(0, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act09(arg0, arg1, arg2)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5034) or isFindTarget == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 4, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act15(arg0, arg1, arg2)
    local local0 = 1.6
    local local1 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local1 = 50
    end
    NPC_Approach_Act_Flex(arg0, arg1, local0, local0, local0 + 3, 70, local1, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act20(arg0, arg1, arg2)
    local local0 = 2.8
    local local1 = 2.8
    if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
        local0 = 2.8
        local1 = 2.8
    end
    if arg0:GetDist(TARGET_ENE_0) <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local0, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local2 = 2.8
        local local3 = 2.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 2.8
            local3 = 2.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetMp(TARGET_SELF)
    if 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) then
        local local1 = 2.8
        local local2 = 2.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2.8
            local2 = 2.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 2.8
        local local2 = 2.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2.8
            local2 = 2.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 0 < arg0:GetSp(TARGET_SELF) and 0 <= arg0:GetMp(TARGET_SELF) then
        local local1 = 2.8
        local local2 = 2.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 2.8
            local2 = 2.8
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 2, TARGET_ENE_0, local1, local2, 60)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act40(arg0, arg1, arg2)
    local local0 = 100
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetSp(TARGET_SELF)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local6 = 1
    end
    local local7 = -1
    if local5 < 4 then
        local7 = NPC_ATK_L1Hold
    end
    if arg0:IsBothHandMode(TARGET_SELF) and 2.5 < local5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), local6, true, local7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act41(arg0, arg1, arg2)
    local local0 = 100
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetSp(TARGET_SELF)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = -1
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local6 = 1
    end
    local local7 = -1
    if local5 < 6 then
        local7 = NPC_ATK_L1Hold
    end
    if arg0:IsBothHandMode(TARGET_SELF) and 2.5 < local5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(0.8, 1.2), TARGET_ENE_0, arg0:GetDist(TARGET_ENE_0) + 2, TARGET_ENE_0, local6, local7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act43(arg0, arg1, arg2)
    arg0:ChangeEquipItem(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_Heavy_Knight_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local0 < 1.5 then
        arg2:ClearSubGoal()
        local local2 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local2:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) and local0 < 1.8 and 0 <= arg1:GetSp(TARGET_SELF) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        if local0 < 3 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_Shoot) and arg1:GetNpcThinkParamID() ~= 21420 then
        arg2:ClearSubGoal()
        if local1 <= 70 then
            NPC_Heavy_Knight_Act01(arg1, arg2, paramTbl)
        elseif local1 <= 100 then
            NPC_Heavy_Knight_Act02(arg1, arg2, paramTbl)
        end
        return true
    else
        return false
    end
end

return 
