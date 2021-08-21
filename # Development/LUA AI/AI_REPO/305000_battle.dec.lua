RegisterTableGoal(GOAL_DaemonOfAsh_305000_Battle, "DaemonOfAshBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DaemonOfAsh_305000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if 6 <= local3 then
            local0[14] = 100
        else
            local0[13] = 60
            local0[14] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
            local0[12] = 100
        elseif 12 <= local3 then
            if InsideDir(arg1, arg2, 0, 180) then
                local0[1] = 20
                local0[8] = 20
                local0[2] = 60
            else
                local0[20] = 100
            end
        elseif 9 <= local3 then
            if InsideDir(arg1, arg2, 0, 90) then
                local0[1] = 40
                local0[8] = 60
            else
                local0[1] = 70
                local0[20] = 30
            end
        elseif 5 <= local3 then
            if InsideDir(arg1, arg2, 0, 270) then
                local0[1] = 100
            else
                local0[1] = 70
                local0[20] = 30
            end
        elseif 3.5 <= local3 then
            if InsideDir(arg1, arg2, 0, 270) then
                local0[1] = 60
                local0[7] = 40
            else
                local0[1] = 40
                local0[7] = 40
                local0[20] = 20
            end
        elseif 1.2 <= local3 then
            if InsideDir(arg1, arg2, 0, 70) then
                local0[3] = 20
                local0[6] = 20
                local0[7] = 30
                local0[11] = 30
            elseif InsideDir(arg1, arg2, 62.5, 55) then
                local0[5] = 60
                local0[7] = 20
                local0[11] = 20
            elseif InsideDir(arg1, arg2, 117.5, 55) then
                local0[5] = 80
                local0[20] = 20
            elseif InsideDir(arg1, arg2, -62.5, 55) then
                local0[4] = 60
                local0[7] = 20
                local0[11] = 20
            elseif InsideDir(arg1, arg2, -117.5, 55) then
                local0[4] = 80
                local0[20] = 20
            else
                local0[20] = 20
            end
        elseif InsideDir(arg1, arg2, 0, 70) then
            local0[7] = 50
            local0[11] = 50
        elseif InsideDir(arg1, arg2, 62.5, 55) then
            local0[5] = 60
            local0[7] = 20
            local0[11] = 20
        elseif InsideDir(arg1, arg2, 117.5, 55) then
            local0[5] = 80
            local0[20] = 20
        elseif InsideDir(arg1, arg2, -62.5, 55) then
            local0[4] = 60
            local0[7] = 20
            local0[11] = 20
        elseif InsideDir(arg1, arg2, -117.5, 55) then
            local0[4] = 80
            local0[20] = 20
        else
            local0[20] = 20
        end
    elseif 15 <= local3 then
        if InsideDir(arg1, arg2, 0, 180) then
            local0[2] = 30
            local0[3] = 5
            local0[6] = 5
            local0[17] = 30
            local0[18] = 30
        else
            local0[20] = 100
        end
    elseif 10 <= local3 then
        if InsideDir(arg1, arg2, 0, 180) then
            local0[1] = 10
            local0[8] = 10
            local0[9] = 40
            local0[10] = 20
            local0[16] = 20
        else
            local0[1] = 5
            local0[8] = 5
            local0[9] = 20
            local0[10] = 10
            local0[16] = 10
            local0[20] = 50
        end
    elseif 5 <= local3 then
        if InsideDir(arg1, arg2, 0, 270) then
            local0[1] = 30
            local0[8] = 20
            local0[9] = 25
            local0[10] = 15
            local0[16] = 10
        else
            local0[1] = 15
            local0[8] = 10
            local0[9] = 15
            local0[10] = 5
            local0[16] = 5
            local0[20] = 50
        end
    elseif 3.5 <= local3 then
        if InsideDir(arg1, arg2, 0, 270) then
            local0[1] = 25
            local0[7] = 15
            local0[8] = 25
            local0[9] = 15
            local0[10] = 10
            local0[16] = 10
        else
            local0[1] = 15
            local0[7] = 10
            local0[8] = 10
            local0[9] = 5
            local0[10] = 5
            local0[16] = 5
            local0[20] = 50
        end
    elseif InsideDir(arg1, arg2, 0, 70) then
        local0[3] = 25
        local0[6] = 25
        local0[7] = 10
        local0[9] = 10
        local0[10] = 10
        local0[11] = 10
        local0[16] = 10
    elseif InsideDir(arg1, arg2, 62.5, 55) then
        local0[5] = 50
        local0[7] = 10
        local0[9] = 10
        local0[10] = 10
        local0[16] = 10
        local0[11] = 10
    elseif InsideDir(arg1, arg2, 117.5, 55) then
        local0[5] = 50
        local0[9] = 25
        local0[10] = 15
        local0[16] = 10
    elseif InsideDir(arg1, arg2, -62.5, 55) then
        local0[4] = 50
        local0[7] = 10
        local0[9] = 10
        local0[10] = 10
        local0[16] = 10
        local0[11] = 10
    elseif InsideDir(arg1, arg2, -117.5, 55) then
        local0[4] = 50
        local0[9] = 25
        local0[10] = 15
        local0[16] = 10
    else
        local0[9] = 15
        local0[10] = 20
        local0[16] = 15
        local0[20] = 50
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 15, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 15, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 10, local0[3], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 15, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3020, 20, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3021, 20, local0[10], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3024, 20, local0[10], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3024, 20, local0[16], 1)
    local0[16] = SetCoolTime(arg1, arg2, 3021, 20, local0[16], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3000, 15, local0[17], 1)
    local0[18] = SetCoolTime(arg1, arg2, 3009, 15, local0[18], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act18)
    local1[20] = REGIST_FUNC(arg1, arg2, DeamonOfAsh_Act20)
    local local4 = REGIST_FUNC(arg1, arg2, DeamonOfAsh_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, local0, local1, 0, local2)
    return 
end

function DeamonOfAsh_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14 - arg0:GetMapHitRadius(TARGET_SELF), 14 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3010
    local local3 = 16 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if local8 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local6, local7)
    elseif local8 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    elseif local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    elseif local8 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 10.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 22.2 - arg0:GetMapHitRadius(TARGET_SELF), 22.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 22.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 1.5, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act04(arg0, arg1, arg2)
    local local0 = 3005
    local local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act05(arg0, arg1, arg2)
    local local0 = 3006
    local local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act06(arg0, arg1, arg2)
    local local0 = 3007
    local local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) - 2, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    local local0 = 3009
    local local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(0.5, 1.5), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act15(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 14 - arg0:GetMapHitRadius(TARGET_SELF) - 5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 14 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 10)
    local local0 = 3000
    local local1 = 3001
    local local2 = 3010
    local local3 = 16 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local5 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if local8 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local5, local6, local7)
    elseif local8 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local5)
    elseif local8 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    elseif local8 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local2, TARGET_ENE_0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local2, TARGET_ENE_0, local5)
    elseif local8 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, local3, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local1, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 10.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1, local6, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act18(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) - 5, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, 13.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 30, 0, 3, 10)
    local local0 = 3009
    local local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), local2, local3)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(20, 40))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeamonOfAsh_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not (arg1:GetSpecialEffectActivateInterruptType(0) ~= 5025 or arg1:GetDist(TARGET_ENE_0) > 7 or not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90)) or not not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90)) then
        arg2:ClearSubGoal()
        DeamonOfAsh_Act15(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
