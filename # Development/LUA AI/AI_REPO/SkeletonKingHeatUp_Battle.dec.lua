REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormyKing501000_Battle, true)
RegisterTableGoal(GOAL_SkeletonKing_516000_HeatUp_Battle, "SkeletonKingHeatUpBattle")
REGISTER_GOAL_NO_UPDATE(GOAL_SkeletonKing_516000_HeatUp_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(4, 1)
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
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    Init_Pseudo_Global(arg1, arg2)
    if arg1:IsEventFlag(13804813) == true and arg1:GetNumber(0) == 1 and arg1:GetNumber(1) == 1 and arg1:GetNumber(3) == 1 then
        arg1:SetTimer(1, 20)
        arg1:SetNumber(1, 2)
    end
    arg1:SetNumber(4, arg1:GetNumber(4) + 1)
    if 4 <= arg1:GetNumber(4) then
        local0[1] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12258) and not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:GetNumber(5) == 0 then
        local0[12] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12256) then
        if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 50 <= local3 then
            local0[11] = 100
        elseif local4 <= 10 * arg1:GetNumber(4) then
            local0[1] = 100
        else
            if InsideDir(arg1, arg2, 90, 180) then
                local0[4] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -30, 30) and local3 < 25 then
                local0[6] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -10, 20) and 30 < local3 then
                local0[7] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -30, 70) and 30 < local3 then
                local0[10] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            local0[5] = 40
            local0[8] = 20
            local0[9] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12257) then
        if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 50 <= local3 then
            local0[11] = 100
        elseif local4 <= 10 * arg1:GetNumber(4) then
            local0[1] = 100
        else
            if InsideDir(arg1, arg2, 90, 180) then
                local0[4] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -30, 30) and local3 < 25 then
                local0[6] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -10, 20) and 30 < local3 then
                local0[7] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -30, 70) and 30 < local3 then
                local0[10] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            local0[5] = 40
            local0[8] = 20
            local0[9] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12258) then
        if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 50 <= local3 then
            local0[11] = 100
        elseif local4 <= 10 * arg1:GetNumber(4) then
            local0[1] = 100
        else
            if InsideDir(arg1, arg2, 90, 180) then
                local0[4] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -30, 30) and local3 < 25 then
                local0[6] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -10, 20) and 30 < local3 then
                local0[7] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            if InsideDir(arg1, arg2, -30, 70) and 30 < local3 then
                local0[10] = 70
                local0[5] = 10
                local0[8] = 10
                local0[9] = 10
            end
            local0[5] = 40
            local0[8] = 20
            local0[9] = 40
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 60, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3012, 60, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3013, 60, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3001, 60, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3002, 60, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3003, 60, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3004, 60, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3005, 60, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3006, 60, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3007, 60, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3011, 60, local0[11], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act01)
    local1[4] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_Act12)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SkeletonKingHeatUpBattle_ActAfter_AdjustSpace), local2)
    return 
end

function SkeletonKingHeatUpBattle_Act01(arg0, arg1, arg2)
    arg0:SetNumber(4, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3000, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3001, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3002, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act07(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act08(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3006, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3011, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SkeletonKingHeatUpBattle_Act12(arg0, arg1, arg2)
    arg0:SetNumber(5, 1)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3011, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
