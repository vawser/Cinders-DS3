RegisterTableGoal(GOAL_NPC_WhiteGhost_Battle, "GOAL_NPC_WhiteGhost_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_WhiteGhost_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local currentRandomInt = arg1:GetRandam_Int(1, 100)
    local isDoAdmirer = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local isSearchingTarget = arg1:IsSearchTarget(TARGET_ENE_0)
    local currentEventRequest = arg1:GetEventRequest(3)
    local distanceToEnemy = arg1:GetDist(TARGET_ENE_0)
    local distanceToPlayer = arg1:GetDist(TARGET_LOCALPLAYER)
    local currentHP = arg1:GetHpRate(TARGET_SELF)
    
    -- Companion-specific behavior
    if arg1:HasSpecialEffectId(TARGET_SELF, 160800008) then
        -- Leash Range
        if 25 <= distanceToPlayer then
            if isSearchingTarget == false then 
                local0[1] = 100 -- Return to Player
            elseif 10 <= distanceToEnemy then 
                local0[1] = 100 -- Return to Player
            else
                local0[1] = 100 -- Return to Player
            end
        elseif 10 <= distanceToPlayer then
            if isSearchingTarget == false then
                local0[1] = 100 -- Return to Player
            elseif 25 <= distanceToEnemy then
                local0[1] = 100 -- Return to Player
            else
                local0[4] = 100 -- Nothing
            end
        elseif 5 <= distanceToPlayer then
            if isSearchingTarget == false then
                local0[5] = 100 -- Attack
            elseif 25 <= distanceToEnemy then
                local0[5] = 100 -- Attack
            else
                local0[4] = 100 -- Nothing
            end
        elseif isSearchingTarget == false then
            local0[2] = 100 -- Stop Player Follow -> Attack
        elseif 25 <= distanceToEnemy then
            local0[2] = 100 -- Stop Player Follow -> Attack
        else
            local0[4] = 100 -- Nothing
        end
    -- Original behavior
    else
        -- Hawkwood in Archdragon Peak
        if arg1:GetNpcThinkParamID() == 25121 then
            arg1:SetEventMoveTarget(3202931)
            homeDist = arg1:GetDist(POINT_EVENT)
            if isSearchingTarget == false or 30 <= distanceToEnemy then
                if not not arg1:IsInsideTargetRegion(TARGET_SELF, 3202922) or arg1:IsInsideTargetRegion(TARGET_SELF, 3202923) then
                    arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3202920)
                    local0[6] = 100 -- Fogwall
                elseif 12 <= distanceToPlayer then
                    local0[1] = 100 -- Return to Player
                else
                    arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3202930)
                    local0[6] = 100 -- Fogwall
                end
            else
                local0[4] = 100 -- Nothing
            end
        elseif arg1:GetEventRequest() == 10 then
            if distanceToPlayer <= 5 then
                local0[2] = 100 -- Stop Player Follow -> Attack
            else
                local0[3] = 100 -- Fogwall
            end
        elseif 15 <= distanceToPlayer then
            if isSearchingTarget == false then
                local0[1] = 100 -- Return to Player
            elseif 10 <= distanceToEnemy then
                local0[1] = 100 -- Return to Player
            else
                local0[1] = 100 -- Return to Player
            end
        elseif 5 <= distanceToPlayer then
            if isSearchingTarget == false then
                local0[1] = 100 -- Return to Player
            elseif 15 <= distanceToEnemy then
                local0[1] = 100 -- Return to Player
            else
                local0[4] = 100 -- Nothing
            end
        elseif 2 <= distanceToPlayer then
            if isSearchingTarget == false then
                local0[5] = 100 -- Attack
            elseif 15 <= distanceToEnemy then
                local0[5] = 100 -- Attack
            else
                local0[4] = 100 -- Nothing
            end
        elseif isSearchingTarget == false then
            local0[2] = 100 -- Stop Player Follow -> Attack
        elseif 15 <= distanceToEnemy then
            local0[2] = 100 -- Stop Player Follow -> Attack
        else
            local0[4] = 100 -- Nothing
        end
    end
    
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act01) -- Return to Player
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act02) -- Stop Player Follow -> Attack
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act03) -- Fogwall
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act04) -- Nothing
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act05) -- Attack
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act06) -- Fogwall
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act07) -- Nothing
    local1[8] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act08) -- Nothing
    local1[9] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act09) -- Nothing
    local1[10] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act10) -- Nothing
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, WhiteGhost_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_NPC_WhiteGhost_Battle_Act01(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_LOCALPLAYER) <= 4 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 2, TARGET_SELF, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_LOCALPLAYER, -1, 0, 0)
    else
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_LOCALPLAYER, -1, 0, 0)
    end
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_LOCALPLAYER, 999, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_SELF, -1, 0, 0)
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act03(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(arg0:GetStringIndexedNumber("NPC_PointFrontWall"))
    if POINT_EVENT <= 0.3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.3, 141, TARGET_SELF, -1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 0.3, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_SELF, -1, 0, 0)
    end
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act04(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.3, 141, TARGET_SELF, -1, 0, 0)
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act06(arg0, arg1, arg2)
    arg0:SetEventMoveTarget(arg0:GetStringIndexedNumber("NPC_PointFrontWall"))
    if POINT_EVENT <= 0.3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.3, 141, TARGET_SELF, -1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 0.3, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_SELF, -1, 0, 0)
    end
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act07(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act08(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act09(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_WhiteGhost_Battle_Act10(arg0, arg1, arg2)
    return 0
end

function WhiteGhost_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
end

return 
