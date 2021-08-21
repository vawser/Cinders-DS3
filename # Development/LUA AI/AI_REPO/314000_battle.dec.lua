local local0 = {3204300, 3204310, 3204311, 3204312, 3204313, 3204314, 3204315, 3204316, 3204317, 3204318, 3204319, 3204320, 3204321, 3204322, 3204323, 3204324, 3204325, 3204328, 3204329}
RegisterTableGoal(GOAL_Hellkite_314000_Battle, "Hellkite_314000_Battle")
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
    local local4 = arg1:GetEventRequest()
    if InsideRange(arg1, arg2, 180, 180, 3, 10) and arg1:GetRandam_Int(1, 100) <= 75 then
        local0[7] = 100
    elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204350) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204351) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204352) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204353) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204354) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[20] = 100
        elseif 20 <= local3 then
            local0[1] = 100
            local0[2] = 150
            local0[3] = 30
            local0[4] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 0
            local0[8] = 60
            local0[9] = 0
        elseif 13 <= local3 then
            local0[1] = 40
            local0[2] = 80
            local0[3] = 50
            local0[4] = 20
            local0[5] = 20
            local0[6] = 20
            local0[7] = 0
            local0[8] = 80
            local0[9] = 50
        elseif 9 <= local3 then
            local0[1] = 10
            local0[2] = 30
            local0[3] = 150
            local0[4] = 30
            local0[5] = 30
            local0[6] = 30
            local0[7] = 0
            local0[8] = 80
            local0[9] = 80
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 100
            local0[5] = 100
            local0[6] = 100
            local0[7] = 100
            local0[8] = 0
            local0[9] = 80
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204355) then
        if not arg1:IsInsideTargetRegion(TARGET_SELF, 3204354) then
            local0[21] = 100
        elseif local3 <= 12 then
            local0[4] = 30
            local0[5] = 20
            local0[6] = 20
            local0[9] = 40
        elseif local3 <= 20 then
            local0[1] = 10
            local0[2] = 40
            local0[3] = 50
            local0[4] = 10
            local0[9] = 30
        elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3204354) then
            local0[41] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204358) then
        if arg1:IsInsideTargetRegion(TARGET_SELF, 3204340) then
            local0[23] = 100
        else
            local0[24] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204356) then
        if not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204350) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204351) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204352) or arg1:IsInsideTargetRegion(TARGET_SELF, 3204353) then
            local0[21] = 100
        elseif not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204355) or arg1:IsInsideTargetRegion(TARGET_SELF, 3204356) then
            local0[41] = 100
        elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3204354) then
            if arg1:IsInsideTargetRegion(TARGET_SELF, 3204309) then
                local0[37] = 100
            elseif math.abs(arg1:GetToTargetAngle(TARGET_ENE_0)) <= 45 then
                local0[37] = 100
            else
                local0[21] = 100
            end
        elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3204357) then
            local0[21] = 50
            local0[37] = 50
        else
            local0[21] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204357) then
        if arg1:IsInsideTargetRegion(TARGET_SELF, 3204309) then
            if local3 <= 9 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 100
                local0[5] = 100
                local0[6] = 100
                local0[7] = 50
                local0[9] = 80
            elseif local3 <= 15 then
                local0[1] = 10
                local0[2] = 50
                local0[3] = 160
                local0[4] = 10
                local0[5] = 10
                local0[6] = 10
                local0[9] = 100
            elseif local3 <= 20 then
                local0[1] = 70
                local0[2] = 150
                local0[3] = 80
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[9] = 30
            else
                local0[29] = 100
            end
        else
            local0[21] = 100
        end
    elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204359) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204360) then
        if not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204300) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204353) or not not arg1:IsInsideTargetRegion(TARGET_SELF, 3204354) or arg1:IsInsideTargetRegion(TARGET_SELF, 3204355) then
            local0[40] = 100
        else
            local0[21] = 100
        end
    elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204362) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204363) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204364) then
        local0[50] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_SELF, 3204340) then
        local0[22] = 100
    else
        local0[46] = 100
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[24] = SetCoolTime(arg1, arg2, 3000, 10, local0[24], 1)
    local0[26] = SetCoolTime(arg1, arg2, 3000, 10, local0[26], 1)
    local0[29] = SetCoolTime(arg1, arg2, 3000, 10, local0[29], 1)
    local0[32] = SetCoolTime(arg1, arg2, 3000, 10, local0[32], 1)
    local0[35] = SetCoolTime(arg1, arg2, 3000, 10, local0[35], 1)
    local0[38] = SetCoolTime(arg1, arg2, 3000, 10, local0[38], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[25] = SetCoolTime(arg1, arg2, 3001, 10, local0[25], 1)
    local0[27] = SetCoolTime(arg1, arg2, 3001, 10, local0[27], 1)
    local0[30] = SetCoolTime(arg1, arg2, 3001, 10, local0[30], 1)
    local0[33] = SetCoolTime(arg1, arg2, 3001, 10, local0[33], 1)
    local0[36] = SetCoolTime(arg1, arg2, 3001, 10, local0[36], 1)
    local0[39] = SetCoolTime(arg1, arg2, 3001, 10, local0[39], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3008, 15, local0[9], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act14)
    local1[20] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act28)
    local1[29] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act29)
    local1[30] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act32)
    local1[33] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act33)
    local1[34] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act34)
    local1[35] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act35)
    local1[36] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act36)
    local1[37] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act37)
    local1[38] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act38)
    local1[39] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act39)
    local1[40] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act46)
    local1[50] = REGIST_FUNC(arg1, arg2, Hellkite_314000_Act50)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Hellkite_314000_ActAfter_AdjustSpace), local2)
    return 
end

function Hellkite_314000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 0, 0, 5, 5)
    local local0 = 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    return 100
end

function Hellkite_314000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 27.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 27.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 27.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 0, 0, 5, 5)
    local local0 = 27.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    return 100
end

function Hellkite_314000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 16.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 16.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 16.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 16.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    return 100
end

function Hellkite_314000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 0, 0, 5, 5)
    local local0 = 8.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    return 100
end

function Hellkite_314000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 0, 0, 5, 5)
    local local0 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    return 100
end

function Hellkite_314000_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 0, 0, 5, 5)
    local local0 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    return 100
end

function Hellkite_314000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 100
end

function Hellkite_314000_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 26.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 26.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 26.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 26.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    return 100
end

function Hellkite_314000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 10.8 - arg0:GetMapHitRadius(TARGET_SELF) + 50, 10.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 10.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 10.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 20, 0, 0)
    return 100
end

function Hellkite_314000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 100
end

function Hellkite_314000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 100
end

function Hellkite_314000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 100
end

function Hellkite_314000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 100
end

function Hellkite_314000_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3012, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 100
end

function Hellkite_314000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    return 100
end

function Hellkite_314000_Act21(arg0, arg1, arg2)
    Hellkite_314000_ApproachToEntity(arg0, arg1, 3204300, -2.2)
    return 0
end

function Hellkite_314000_Act22(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204302)
    if arg0:IsInsideTargetRegion(TARGET_ENE_0, 3204399) then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3015, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    return 0
end

function Hellkite_314000_Act23(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204306, 1)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_NONE, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act24(arg0, arg1, arg2)
    Hellkite_314000_ApproachToEntity(arg0, arg1, 3204340, -2.2)
    return 0
end

function Hellkite_314000_Act25(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204353)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act26(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204301)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act27(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204301)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act28(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204301)
    Hellkite_314000_Approach(arg0, arg1, 16)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act29(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204304)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act30(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204304)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act31(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204304)
    Hellkite_314000_Approach(arg0, arg1, 16)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act32(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204303)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act33(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204303)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act34(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204303)
    Hellkite_314000_Approach(arg0, arg1, 16)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act35(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204355)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act36(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204355)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act37(arg0, arg1, arg2)
    Hellkite_314000_Approach(arg0, arg1)
    return 0
end

function Hellkite_314000_Act38(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204357)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act39(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204357)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act40(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204305)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3014, TARGET_NONE, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act41(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204303, 3)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3014, TARGET_NONE, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 0
end

function Hellkite_314000_Act42(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3204302)
    if math.abs(arg0:GetToTargetAngle(POINT_EVENT)) <= 90 then
        if arg0:IsInsideTargetRegion(TARGET_SELF, 3204321) then
            Hellkite_314000_TurnToEntity(arg0, arg1, 3204300)
        else
            Hellkite_314000_ApproachToEntity(arg0, arg1, 3204321, -2.2)
        end
    elseif arg0:IsInsideTargetRegion(TARGET_SELF, 3204300) then
        Hellkite_314000_TurnToEntity(arg0, arg1, 3204321)
    else
        Hellkite_314000_ApproachToEntity(arg0, arg1, 3204300, -2.2)
    end
    return 0
end

function Hellkite_314000_Act43(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204307)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3019, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    return 0
end

function Hellkite_314000_Act44(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204308)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3019, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    return 0
end

function Hellkite_314000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    return 100
end

function Hellkite_314000_Act46(arg0, arg1, arg2)
    Hellkite_314000_TurnToEntity(arg0, arg1, 3204354)
    Hellkite_314000_ApproachToEntity(arg0, arg1, 3204340, -2.2)
    return 0
end

function Hellkite_314000_Act50(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    return 0
end

function Hellkite_314000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_Damaged) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204356) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 6, 10, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204365) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204366) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204367) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204368) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204369) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204370) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        return true
    else
        return false
    end
end

function Hellkite_314000_GetMovePontToNearPC(arg0)
    local local0 = 1
    local local1 = {}
    local local2 = 1
    for local3 = 1 - local2, table.getn(UPVAL0), local2 do
        arg0:SetEventMoveTarget(UPVAL0[local3])
        local1[local3] = arg0:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
    end
    local3 = 999
    local local4 = 0
    local local5 = 1
    for local2 = 1 - local5, table.getn(local1), local5 do
        if local1[local2] <= local3 then
            local3 = local1[local2]
            local4 = UPVAL0[local2]
        end
    end
    return local4
end

function Hellkite_314000_Approach(arg0, arg1, arg2)
    local local0 = 0
    if arg2 == nil then
        local0 = 0
    else
        local0 = arg2
    end
    local local1 = Hellkite_314000_GetMovePontToNearPC(arg0)
    arg0:SetEventMoveTarget(local1)
    arg0:DbgSetLastActIdx(local1 - 3204300)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_EVENT, 1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, local0, POINT_EVENT, true, -1)
    return 
end

function Hellkite_314000_ApproachToEntity(arg0, arg1, arg2, arg3)
    if arg2 == nil then
        return 
    end
    local local0 = 0
    if arg3 == nil then
        local0 = 0
    else
        local0 = arg3
    end
    arg0:SetEventMoveTarget(arg2)
    arg0:DbgSetLastActIdx(arg2 - 3204300)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, local0, POINT_EVENT, true, -1)
    return 
end

function Hellkite_314000_TurnToEntity(arg0, arg1, arg2, arg3)
    local local0 = 0
    if arg2 == nil then
        return 
    elseif arg3 == nil then
        local0 = 2.5
    else
        local0 = arg3
    end
    arg0:SetEventMoveTarget(arg2)
    arg0:DbgSetLastActIdx(arg2 - 3204300)
    if arg0:IsLookToTarget(POINT_EVENT, local0) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 5, POINT_EVENT, local0)
    end
    return 
end

function Hellkite_314000_MovePointToPoint(arg0, arg1)
    arg0:SetEventMoveTarget(3204302)
    if math.abs(arg0:GetToTargetAngle(POINT_EVENT)) <= 90 then
        if arg0:IsInsideTargetRegion(TARGET_SELF, 3204321) then
            Hellkite_314000_TurnToEntity(arg0, arg1, 3204300)
        else
            Hellkite_314000_ApproachToEntity(arg0, arg1, 3204321, -2.2)
        end
    elseif arg0:IsInsideTargetRegion(TARGET_SELF, 3204300) then
        Hellkite_314000_TurnToEntity(arg0, arg1, 3204321)
    else
        Hellkite_314000_ApproachToEntity(arg0, arg1, 3204300, -2.2)
    end
    return 
end

return 
