REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormyKing501000_Battle, true)
RegisterTableGoal(GOAL_SkeletonKing_516000_Default_Battle, "SkeletonKingDefaultBattle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(3, 0)
    arg1:SetNumber(5, 0)
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
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsEventFlag(13804813) == true and arg1:GetNumber(0) == 1 and arg1:GetNumber(1) == 1 and arg1:GetNumber(3) == 1 then
        arg1:SetTimer(1, 20)
        arg1:SetNumber(1, 2)
    end
    if arg1:IsEventFlag(13804813) == true and arg1:IsFinishTimer(1) == true and arg1:GetNumber(1) == 2 then
        local0[12] = 100
    end
    if arg1:IsFinishTimer(2) == true and arg1:GetNumber(0) == 1 and arg1:GetNumber(3) == 0 then
        arg1:SetNumber(1, 1)
        arg1:SetNumber(3, 1)
    end
    if arg1:GetHpRate(TARGET_SELF) <= 0.97 and arg1:GetNumber(0) == 0 then
        local0[12] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12258) and not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:GetNumber(5) == 0 then
        arg1:SetNumber(5, 1)
        local0[13] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12256) then
        if arg1:GetHpRate(TARGET_SELF) <= 0.95 and arg1:GetNumber(0) == 1 and arg1:IsEventFlag(13804813) == false then
            if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 40 <= local3 then
                local0[11] = 100
            elseif local4 <= 40 then
                local0[7] = 100
            else
                if InsideDir(arg1, arg2, 0, 60) and local3 < 25 then
                    local0[10] = 70
                    local0[6] = 30
                end
                if InsideDir(arg1, arg2, -30, 30) then
                    local0[5] = 100
                end
                if InsideDir(arg1, arg2, 90, 140) then
                    local0[1] = 100
                end
                if InsideDir(arg1, arg2, -90, 140) then
                    local0[3] = 100
                end
                if InsideDir(arg1, arg2, -90, 180) then
                    local0[5] = 100
                end
                local0[2] = 60
                local0[6] = 30
                local0[7] = 10
            end
        elseif not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 40 <= local3 then
            local0[11] = 100
        else
            if InsideDir(arg1, arg2, 0, 60) and local3 < 25 then
                local0[10] = 70
                local0[6] = 30
            end
            if InsideDir(arg1, arg2, -30, 30) then
                local0[5] = 100
            end
            if InsideDir(arg1, arg2, 90, 140) then
                local0[1] = 100
            end
            if InsideDir(arg1, arg2, -90, 140) then
                local0[3] = 100
            end
            if InsideDir(arg1, arg2, -90, 180) then
                local0[5] = 100
            end
            local0[2] = 65
            local0[6] = 35
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12257) then
        if arg1:IsEventFlag(13804813) == true then
            if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 40 <= local3 then
                local0[11] = 100
            else
                if InsideDir(arg1, arg2, 0, 60) and local3 < 25 then
                    local0[10] = 70
                    local0[6] = 30
                end
                if InsideDir(arg1, arg2, -30, 30) then
                    local0[5] = 100
                end
                if InsideDir(arg1, arg2, 90, 140) then
                    local0[1] = 100
                end
                if InsideDir(arg1, arg2, -90, 140) then
                    local0[3] = 100
                end
                if InsideDir(arg1, arg2, -90, 180) then
                    local0[5] = 100
                end
                local0[2] = 65
                local0[6] = 35
            end
        elseif not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 40 <= local3 then
            local0[11] = 100
        elseif local4 <= 40 then
            local0[7] = 100
        else
            if InsideDir(arg1, arg2, 0, 60) and local3 < 25 then
                local0[10] = 70
                local0[6] = 30
            end
            if InsideDir(arg1, arg2, -30, 30) then
                local0[5] = 100
            end
            if InsideDir(arg1, arg2, 90, 140) then
                local0[1] = 100
            end
            if InsideDir(arg1, arg2, -90, 140) then
                local0[3] = 100
            end
            if InsideDir(arg1, arg2, -90, 180) then
                local0[5] = 100
            end
            local0[2] = 60
            local0[6] = 30
            local0[7] = 10
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12258) then
        if arg1:IsEventFlag(13804813) == true then
            if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 40 <= local3 then
                local0[11] = 100
            else
                if InsideDir(arg1, arg2, 0, 60) and local3 < 25 then
                    local0[10] = 70
                    local0[6] = 30
                end
                if InsideDir(arg1, arg2, -30, 30) then
                    local0[5] = 100
                end
                if InsideDir(arg1, arg2, 90, 140) then
                    local0[1] = 100
                end
                if InsideDir(arg1, arg2, -90, 140) then
                    local0[3] = 100
                end
                if InsideDir(arg1, arg2, -90, 180) then
                    local0[5] = 100
                end
                local0[2] = 65
                local0[6] = 35
            end
        elseif local4 <= 40 then
            local0[7] = 100
        else
            if InsideDir(arg1, arg2, 0, 60) and local3 < 25 then
                local0[10] = 70
                local0[6] = 30
            end
            if InsideDir(arg1, arg2, -30, 30) then
                local0[5] = 100
            end
            if InsideDir(arg1, arg2, 90, 140) then
                local0[1] = 100
            end
            if InsideDir(arg1, arg2, -90, 140) then
                local0[3] = 100
            end
            if InsideDir(arg1, arg2, -90, 180) then
                local0[5] = 100
            end
            local0[2] = 60
            local0[6] = 30
            local0[7] = 10
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 60, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 60, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 60, local0[3], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 60, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 60, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 60, local0[7], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3010, 60, local0[10], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act03)
    local1[5] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act07)
    local1[10] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_Act13)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SkeletonKingDefaultBattle_ActAfter_AdjustSpace), local2)
    return 
end

function SkeletonKingDefaultBattle_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3000, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    local local0 = 3001
    local local1 = 9999 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 5
    local local3 = 180
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local0, TARGET_ENE_0, local1, local2, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local0, TARGET_ENE_0, 999, local2, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3002, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act06(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3006, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3010, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3011, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act12(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    arg0:SetNumber(3, 0)
    arg0:SetTimer(2, 15)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3003, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SkeletonKingDefaultBattle_Act13(arg0, arg1, arg2)
    arg0:SetNumber(5, 1)
    Approach_Act_Flex(arg0, arg1, 999, 998, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3011, TARGET_ENE_0, 9999 - arg0:GetMapHitRadius(TARGET_SELF), 5, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
