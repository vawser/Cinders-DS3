RegisterTableGoal(GOAL_GiantNorm628100_dummy_Battle, "GOAL_GiantNorm628100_dummy_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_GiantNorm628100_dummy_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetDist(TARGET_EVENT)
    local local5 = arg1:GetRandam_Int(1, 100)
    local local6 = arg1:GetEventRequest()
    local local7 = arg1:GetToTargetAngle(TARGET_EVENT)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16451) then
        local0[51] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16281) then
        if -22 < local7 and local7 < 23 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 0, 5, 1)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[11] = 1000
            end
        elseif -67 < local7 and local7 < -23 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 45, 5, 1)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[15] = 1000
            end
        elseif 22 < local7 and local7 < 68 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -45, 5, 1)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[16] = 1000
            end
        elseif -112 < local7 and local7 < -68 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 90, 5, 1)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[13] = 1000
            end
        elseif 67 < local7 and local7 < 113 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -90, 5, 1)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[14] = 1000
            end
        elseif -157 < local7 and local7 < -113 then
            local local8 = 0
            local0[GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 135, 5, 1)] = 1000
        elseif 112 < local7 and local7 < 158 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -135, 5, 1)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[18] = 1000
            end
        else
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 180, 5, 1)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[12] = 1000
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16282) then
        if -22 < local7 and local7 < 23 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 0, 5, 2)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[21] = 1000
            end
        elseif -67 < local7 and local7 < -23 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 45, 5, 2)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[25] = 1000
            end
        elseif 22 < local7 and local7 < 68 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -45, 5, 2)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[26] = 1000
            end
        elseif -112 < local7 and local7 < -68 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 90, 5, 2)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[23] = 1000
            end
        elseif 67 < local7 and local7 < 113 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -90, 5, 2)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[24] = 1000
            end
        elseif -157 < local7 and local7 < -113 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 135, 5, 2)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[27] = 1000
            end
        elseif 112 < local7 and local7 < 158 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -135, 5, 2)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[28] = 1000
            end
        else
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 180, 5, 2)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[22] = 1000
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16283) then
        if -22 < local7 and local7 < 23 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 0, 5, 3)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[31] = 1000
            end
        elseif -67 < local7 and local7 < -23 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 45, 5, 3)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[35] = 1000
            end
        elseif 22 < local7 and local7 < 68 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -45, 5, 3)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[36] = 1000
            end
        elseif -112 < local7 and local7 < -68 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 90, 5, 3)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[33] = 1000
            end
        elseif 67 < local7 and local7 < 113 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -90, 5, 3)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[34] = 1000
            end
        elseif -157 < local7 and local7 < -113 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 135, 5, 3)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[37] = 1000
            end
        elseif 112 < local7 and local7 < 158 then
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, -135, 5, 3)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[38] = 1000
            end
        else
            local local8 = 0
            local8 = GiantNorm628100_dummy_SpaceCheck(arg1, arg2, 180, 5, 3)
            if 0 < local8 then
                local0[local8] = 1000
            else
                local0[32] = 1000
            end
        end
    else
        local0[1] = 1000
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act01)
    local1[11] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act18)
    local1[21] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act27)
    local1[28] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act28)
    local1[31] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act32)
    local1[33] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act33)
    local1[34] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act34)
    local1[35] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act35)
    local1[36] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act36)
    local1[37] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act37)
    local1[38] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act38)
    local1[51] = REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_Act51)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, GiantNorm628100_dummy_ActAfter_AdjustSpace), local2)
    return 
end

function GiantNorm628100_dummy_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act11(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act12(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act13(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act14(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act15(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act16(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act17(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act18(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act21(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act22(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act23(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act24(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act25(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act26(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act27(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act28(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act31(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act32(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act33(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act34(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act35(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act36(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act37(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act38(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_Act51(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 180
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, local0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GiantNorm628100_dummy_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GiantNorm628100_dummy_AfterAttackAct, 10)
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
    local local4 = arg1:GetNumber(0)
    return 
end

RegisterTableGoal(GOAL_GiantNorm628100_dummy_AfterAttackAct, "GOAL_GiantNorm628100_dummy_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantNorm628100_dummy_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    local local3 = {}
    local3[2] = 100
    local local4 = SelectOddsIndex(arg1, local3)
    if local4 ~= 1 and local4 == 2 then
        GiantNorm628100_dummy_Act01(arg1, arg2, paramTbl)
    end
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function GiantNorm628100_dummy_SpaceCheck(arg0, arg1, arg2, arg3, arg4)
    local local0 = arg2
    local0 = GiantNorm628100_dummy_CnvDeg360(arg2, 0)
    if SpaceCheck(arg0, arg1, local0, arg3) then
        return GiantNorm628100_dummy_CnvActNo(local0, arg4)
    else
        local0 = GiantNorm628100_dummy_CnvDeg360(arg2, 45)
        if SpaceCheck(arg0, arg1, local0, arg3) then
            return GiantNorm628100_dummy_CnvActNo(local0, arg4)
        else
            local0 = GiantNorm628100_dummy_CnvDeg360(arg2, 315)
            if SpaceCheck(arg0, arg1, local0, arg3) then
                return GiantNorm628100_dummy_CnvActNo(local0, arg4)
            else
                local0 = GiantNorm628100_dummy_CnvDeg360(arg2, 90)
                if SpaceCheck(arg0, arg1, local0, arg3) then
                    return GiantNorm628100_dummy_CnvActNo(local0, arg4)
                else
                    local0 = GiantNorm628100_dummy_CnvDeg360(arg2, 270)
                    if SpaceCheck(arg0, arg1, local0, arg3) then
                        return GiantNorm628100_dummy_CnvActNo(local0, arg4)
                    else
                        local0 = GiantNorm628100_dummy_CnvDeg360(arg2, 135)
                        if SpaceCheck(arg0, arg1, local0, arg3) then
                            return GiantNorm628100_dummy_CnvActNo(local0, arg4)
                        else
                            local0 = GiantNorm628100_dummy_CnvDeg360(arg2, 225)
                            if SpaceCheck(arg0, arg1, local0, arg3) then
                                return GiantNorm628100_dummy_CnvActNo(local0, arg4)
                            else
                                local0 = GiantNorm628100_dummy_CnvDeg360(arg2, 180)
                                if SpaceCheck(arg0, arg1, local0, arg3) then
                                    return GiantNorm628100_dummy_CnvActNo(local0, arg4)
                                else
                                    return -1
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function GiantNorm628100_dummy_CnvActNo(arg0, arg1)
    if arg0 == 0 then
        return 1 + arg1 * 10
    elseif arg0 == 45 then
        return 5 + arg1 * 10
    elseif arg0 == 90 then
        return 3 + arg1 * 10
    elseif arg0 == 135 then
        return 7 + arg1 * 10
    elseif arg0 == 180 then
        return 2 + arg1 * 10
    elseif arg0 == 225 then
        return 8 + arg1 * 10
    elseif arg0 == 270 then
        return 4 + arg1 * 10
    elseif arg0 == 315 then
        return 6 + arg1 * 10
    else
        return -1
    end
end

function GiantNorm628100_dummy_CnvDeg360(arg0, arg1)
    local local0 = arg0 + arg1
    if local0 < 0 then
        local0 = local0 + 360
    end
    if 360 <= local0 then
        local0 = local0 - 360
    end
    return local0
end

return 
