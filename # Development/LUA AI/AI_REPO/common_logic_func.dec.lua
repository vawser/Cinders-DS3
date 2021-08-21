function COMMON_EasySetup3(arg0)
    COMMON_EzSetup(arg0)
    return 
end

function COMMON_EzSetup(arg0)
    if ai:GetTimer(15) <= 0 then
        ai:SetNumber(15, 0)
    end
    _COMMON_SetBattleActLogic(ai)
    if ai:IsLadderAct(TARGET_SELF) and not ai:HasGoal(GOAL_COMMON_LadderAct) then
        local topGoal = ai:GetTopGoal()
        if topGoal ~= nil then
            topGoal:AddSubGoal_Front(GOAL_COMMON_LadderAct, -1, 3000, TARGET_SELF, ai:GetLadderDirMove(TARGET_SELF))
        else
            ai:AddTopGoal(GOAL_COMMON_LadderAct, -1, 3000, TARGET_SELF, ai:GetLadderDirMove(TARGET_SELF))
        end
    end
    return 
end

function _COMMON_SetBattleActLogic(ai)
    local local0 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
    local local1 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__nonBattleActLife)
    local local2 = ai:GetMovePointEffectRange()
    if ai:TeamHelp_IsValidReply() then
        ai:AddTopGoal(GOAL_COMMON_TeamReplyHelp, ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ForgetTimeByArrival))
        return true
    elseif ai:IsForceBattleGoal() then
        ai:ClearForceBattleGoal()
        ai:ReqPlatoonState(PLATOON_STATE_Battle)
        _COMMON_AddBattleGoal(ai)
        local local3 = false
        return false
    elseif ai:IsSearchTarget(TARGET_ENE_0) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 12043) and not ai:HasSpecialEffectId(TARGET_ENE_0, 4300) and not ai:HasSpecialEffectId(TARGET_ENE_0, 4310) and 0.75 <= ai:GetHpRate(TARGET_SELF) then
            _COMMON_AddNonBattleGoal(ai, 1, -1, false)
            return true
        elseif ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist) < local2 then
            _COMMON_AddNonBattleGoal(ai, local1, -1, false)
            return true
        elseif ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeDist) < local2 then
            if ai:GetDist(TARGET_ENE_0) < local0 then
                ai:ReqPlatoonState(PLATOON_STATE_Battle)
                _COMMON_AddBattleGoal(ai)
                return true
            else
                _COMMON_AddNonBattleGoal(ai, local1, local0, false)
                return true
            end
        else
            _COMMON_AddBattleGoal(ai)
            return true
        end
    else
        _COMMON_AddNonBattleGoal(ai, local1, -1, true)
        return true
    end
end

function _COMMON_AddBattleGoal(ai)
    local local0 = ai:GetPrevTargetState()
    local local1 = 0
    if ai:IsBattleState() then
        ai:ReqPlatoonState(PLATOON_STATE_Battle)
        ai:AddTopGoal(ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID), -1)
    elseif ai:IsFindState() then
        ai:ReqPlatoonState(PLATOON_STATE_Find)
        _COMMON_AddCautionAndFindGoal(ai, 2)
    elseif ai:IsCautionState() then
        if ai:GetCurrTargetType() == AI_TARGET_TYPE__MEMORY_ENEMY then
            _COMMON_AddCautionAndFindGoal(ai, 0)
        else
            ai:ReqPlatoonState(PLATOON_STATE_Caution)
            _COMMON_AddCautionAndFindGoal(ai, 1)
        end
    else
        _COMMON_AddNonBattleGoal(ai, -1, -1, true)
    end
    return 
end

function _COMMON_AddChangeStateActionGoal(ai, arg1)
    local local0 = 0
    local local1 = 0
    local local2 = TARGET_NONE
    local local3 = 1810
    local local4 = ai:GetRandam_Int(1, 100)
    local local5 = ai:GetDist(TARGET_ENE_0)
    if arg1 == 0 then
        local1 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__changeStateAction_ToNormal)
        local2 = POINT_INITIAL
    else
        local1 = 0
        local2 = TARGET_ENE_0
    end
    if local1 == 1 then
        if 10 <= local5 or local5 == -1 then
            ai:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, local2, DIST_NONE, 0, -1)
        else
            ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, local2)
        end
    elseif local1 == 2 then
        if 10 <= local5 or local5 == -1 then
            ai:AddTopGoal(GOAL_COMMON_Turn, 3, local2)
            ai:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, local2, DIST_NONE, 0, -1)
        else
            ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, local2)
        end
    end
    return 
end

function _COMMON_AddCautionAndFindGoal(ai, arg1)
    local local0 = 0
    local local1 = 0
    local local2 = -1
    local local3 = ai:GetDist(TARGET_ENE_0)
    local local4 = 1
    if arg1 == 0 then
        local1 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToDisappear)
    elseif arg1 == 1 and ai:GetLatestSoundTargetRank() == AI_SOUND_RANK__IMPORTANT then
        local1 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToCautionImportant)
    elseif arg1 == 1 then
        local1 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToCaution)
    elseif arg1 == 2 then
        local1 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToFind)
    end
    if local1 == 1 then
        ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
    elseif local1 == 2 then
        if local4 + 0.5 < local3 then
            ai:AddTopGoal(GOAL_COMMON_MoveToSomewhere, local2, TARGET_ENE_0, AI_DIR_TYPE_CENTER, local4, TARGET_SELF, true)
        else
            ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
        end
    elseif local1 == 3 then
        if local4 + 0.5 < local3 then
            ai:AddTopGoal(GOAL_COMMON_MoveToSomewhere, local2, TARGET_ENE_0, AI_DIR_TYPE_CENTER, local4, TARGET_SELF, false)
        else
            ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
        end
    elseif local1 == 4 then
        ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
    elseif local1 == 5 then
        if local4 <= local3 then
            ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
        elseif local4 / 2 <= local3 then
            ai:AddTopGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, local4, TARGET_ENE_0, true, -1)
        else
            ai:AddTopGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, local4, TARGET_SELF, false, -1)
        end
    else
        _COMMON_AddNonBattleGoal(ai, 1, -1, false)
    end
    return 
end

function _COMMON_AddNonBattleGoal(ai, arg1, arg2, arg3)
    ai:TeamHelp_ValidateCall()
    ai:TeamHelp_ValidateReply()
    if ai:IsChangeState() and not ai:IsBattleState() and not ai:IsFindState() and not ai:IsCautionState() then
        local local0 = 0
        _COMMON_AddChangeStateActionGoal(ai, 0)
    end
    ai:AddTopGoal(GOAL_COMMON_NonBattleAct, arg1, arg2, arg3, false, POINT_INIT_POSE, 0, 0)
    return 
end

function COMMON_Interrupt(ai, arg1)
    local local0 = false
    if ai:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        ai:DecideWalkAroundPos()
        local local1 = ai:GetActTypeOnFailedPathEnd()
        if 0 == local1 then
            local0 = true
        elseif 1 == local1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait_On_FailedPath, -1, 1)
            local0 = true
        elseif 2 == local1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait_On_FailedPath, 2, 1)
            local0 = true
        elseif 3 == local1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_WalkAround_On_FailedPath, -1, 1)
            local0 = true
        elseif 4 == local1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_BackToHome_On_FailedPath, 100, 1, 2)
            local0 = true
        end
    end
    return local0
end

return 
