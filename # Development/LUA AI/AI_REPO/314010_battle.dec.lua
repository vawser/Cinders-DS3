RegisterTableGoal(GOAL_Hellkite_314010_Battle, "Hellkite_314010_Battle")
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
    local local5 = 0
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202301) then
        local0[25] = 100
        if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202301) and arg1:IsInsideTargetRegion(TARGET_SELF, 3202321) then
            local0[23] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202303) and not arg1:IsInsideTargetRegion(TARGET_SELF, 3202320) then
        local0[26] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202303) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 50
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202304) and not arg1:IsInsideTargetRegion(TARGET_SELF, 3202320) then
        local0[26] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[7] = 100
        local0[20] = 50
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202305) then
        local0[24] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202303) then
        if 17 <= local3 then
            local0[1] = 40
            local0[15] = 60
        elseif 8.5 <= local3 then
            local0[1] = 5
            local0[2] = 110
            local0[3] = 190
            local0[4] = 5
            local0[5] = 5
            local0[6] = 5
            local0[9] = 40
            local0[15] = 10
        elseif 5 <= local3 then
            local0[2] = 30
            local0[3] = 30
            local0[9] = 50
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 100
            local0[5] = 100
            local0[6] = 100
        end
    elseif 20 <= local3 then
        local0[1] = 150
        local0[2] = 80
        local0[3] = 2
        local0[4] = 2
        local0[5] = 2
        local0[6] = 2
        local0[7] = 0
        local0[9] = 0
    elseif 13 <= local3 then
        local0[1] = 70
        local0[2] = 110
        local0[3] = 20
        local0[4] = 1
        local0[5] = 1
        local0[6] = 1
        local0[7] = 0
        local0[9] = 80
    elseif 9 <= local3 then
        local0[1] = 10
        local0[2] = 120
        local0[3] = 180
        local0[4] = 3
        local0[5] = 3
        local0[6] = 3
        local0[7] = 0
        local0[9] = 50
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 100
        local0[5] = 100
        local0[6] = 100
        local0[7] = 20
        local0[9] = 60
    end
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202303) and not arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202306) then
        local0[15] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, Hellkite_314010_Act26)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Hellkite_314010_ActAfter_AdjustSpace), local2)
    return 
end

function Hellkite_314010_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act13(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 52.8 - arg0:GetMapHitRadius(TARGET_SELF), 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9, 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4, 0, 0, 5, 5)
    local local0 = 52.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetEventMoveTarget(3202314)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0.4, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3012, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act15(arg0, arg1, arg2)
    local local0 = 4
    arg0:SetEventMoveTarget(3202350)
    if not arg0:IsLookToTarget(POINT_EVENT, local0) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, local0)
    end
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3013, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, local0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Hellkite_314010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Hellkite_314010_Act21(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    return 
end

function Hellkite_314010_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Hellkite_314010_Act23(arg0, arg1, arg2)
    local local0 = 1
    arg0:SetEventMoveTarget(3202351)
    if not arg0:IsLookToTarget(POINT_EVENT, local0) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 5, POINT_EVENT, local0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE)
    return 
end

function Hellkite_314010_Act24(arg0, arg1, arg2)
    local local0 = 4
    arg0:SetEventMoveTarget(3202350)
    if not arg0:IsLookToTarget(POINT_EVENT, local0) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, local0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE)
    return 
end

function Hellkite_314010_Act25(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3202321)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, -1, POINT_EVENT, true, -1)
    return 
end

function Hellkite_314010_Act26(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(3202320)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, -1, POINT_EVENT, true, -1)
    return 
end

function Hellkite_314010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), TARGET_NONE)
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
    else
        return false
    end
end

return 
