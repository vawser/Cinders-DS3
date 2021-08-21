RegisterTableLogic(122000)
Logic.Main = function (arg0, arg1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        COMMON_EasySetup3(arg1)
    elseif arg1:GetNpcThinkParamID() == 122000 then
        arg1:AddTopGoal(GOAL_COMMON_NonBattleAct, -1, -1, false, 0, 0, POINT_INIT_POSE, 0)
    else
        COMMON_EasySetup3(arg1)
    end
    return 
end

Logic.Update = function (arg0, arg1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        return 
    end
    local local0 = arg1:GetIdTimer(AGAINST_INTERVAL_EXCRETA)
    if local0 <= 0 then
        local local1 = arg1:GetRandam_Float(5, 20)
        arg1:StartIdTimerSpecifyTime(AGAINST_INTERVAL_EXCRETA, local1)
        local0 = local1
    end
    local local1 = arg1:GetDist(TARGET_LOCALPLAYER)
    if not (local1 >= 3 or math.abs(arg1:GetToTargetAngle(TARGET_LOCALPLAYER)) >= 30 or 50 - 5 >= local0) or 50 < local0 then
        if local1 < 3 and arg1:GetHpRate(TARGET_SELF) < 0.5 and arg1:GetRandam_Int(0, 100) < 30 then
            local local2 = arg1:GetTopGoal()
            local2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle)
        else
            arg1:DoEzAction(2, 3001)
        end
        arg1:StartIdTimerSpecifyTime(AGAINST_INTERVAL_EXCRETA, arg1:GetRandam_Float(5, 20))
    end
    return 
end

return 
