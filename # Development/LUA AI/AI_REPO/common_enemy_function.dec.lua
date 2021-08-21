function EmagencyEscapeStep(arg0, arg1, arg2)
    if (not not arg1:IsActiveGoal(GOAL_EnemyBeforeAttack) or not not arg1:IsActiveGoal(GOAL_EnemyAfterAttack) or arg1:IsActiveGoal(GOAL_EnemyAfterAction)) and (arg0["FindAttackDist"] == nil or arg0["FindAttackDist"] ~= nil and arg1:GetDist(TARGET_ENE_0) <= arg0["FindAttackDist"]) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_EnemyStepBLR, 2, 6)
    end
    return 
end

function GuardOnProbability(arg0, arg1, arg2)
    if arg0["GuardRateOnDamged"] == nil then
        arg0["GuardRateOnDamged"] = 0
    end
    local local0 = arg1:GetIdTimer(8000)
    if local0 == nil or local0 <= 0 then
        local0 = 100
    end
    local local1 = nil
    local1 = 5 - local0
    if 0 < local1 then
        arg0["GuardRateOnDamged"] = arg0["GuardRateOnDamged"] + local1 * 10 / 2.5
        if 60 < arg0["GuardRateOnDamged"] then
            arg0["GuardRateOnDamged"] = 60
        end
    else
        arg0["GuardRateOnDamged"] = 0
    end
    if arg1:GetRandam_Float(0, 100) < arg0["GuardRateOnDamged"] then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, true, 1)
    end
    arg1:StartIdTimer(8000)
    return 
end

function Interrupt_FindAttack_Default(arg0, arg1, arg2)
    return 
end

function Update_FinishOnNoSubGoal(arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function Interrupt_FindAttack_Guard(arg0, arg1, arg2)
    if arg1:GetDist(TARGET_ENE_0) <= 3 then
        local local0 = 1
        if arg1:GetIdTimer(7000) < 3 then
            local0 = 2
        end
        if arg1:GetRandam_Float(0, 100) < 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, true, 1)
        end
        arg1:StartIdTimer(7000)
    end
    return 
end

function Interrupt_GuardBreak_ClearSubGoal(arg0, arg1, arg2)
    arg2:ClearSubGoal()
    arg1:TurnTo(TARGET_SELF)
    return 
end

function GetDefaultParam(arg0, arg1, arg2, arg3, arg4)
    local local0 = arg2:GetParam(arg3)
    if local0 == nil then
        return arg4
    else
        return local0
    end
end

function GetDistPos(arg0, arg1, arg2, arg3)
    if arg3 <= arg1:GetDistParam(DIST_Near) then
        return 0
    elseif arg3 <= arg1:GetDistParam(DIST_Middle) then
        return 1
    elseif arg3 <= arg1:GetDistParam(DIST_Far) then
        return 2
    else
        return 3
    end
end

function GetAttackRateByDist(arg0, arg1, arg2, arg3, arg4)
    local local0 = 0
    if arg4 == 0 then
        local0 = 0
    elseif arg4 == 1 then
        local0 = 0
    elseif arg4 == 2 then
        local0 = 0
    elseif arg4 == 3 then
        local0 = 0
    end
    if local0 < 0 then
        local0 = 0
    end
    return local0
end

function GetAttackIdOffset(arg0, arg1, arg2, arg3)
    local local0 = nil
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg3 = arg3 - 1000000
        local0 = 1000000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        arg3 = arg3 - 2000000
        local0 = 2000000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg3 = arg3 - 3000000
        local0 = 3000000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5407) then
        arg3 = arg3 - 4000000
        local0 = 4000000
    else
        local0 = 0
    end
    if arg3 < 0 or 1000000 < arg3 then
        arg3 = 9999999
    end
    return arg3, local0
end

function IsValidEnemySelect(arg0, arg1, arg2, arg3, arg4)
    if 0 < 0 and 0 < GetAttackRateByDist(arg0, arg1, arg2, arg3, GetDistPos(arg0, arg1, arg2, arg1:GetDist(arg4))) and arg1:IsOptimalAttackRangeH(TARGET_ENE_0, arg3) then
        if not arg1:IsOptimalAttackDist(arg4, arg3) then

        end
        return true
    else
        return false
    end
end

function SelectDeriveAttack(arg0, arg1, arg2, arg3, arg4, arg5)
    local local0 = arg1:GetDist(arg4)
    local local1 = nil
    local local2 = {}
    local local3 = 0
    local local4 = 1
    for local5 = 1 - local4, 16, local4 do
        local1 = 0
        if local1 > 0 then
            local local6, local7 = GetAttackIdOffset(arg0, arg1, arg2, local1)
            offset = local7
            print("[SELECT DERIVE]" .. "派生候補[" .. local6 .. "]")
        else
            local5 = {}
            local local8 = 0
            local4 = 0
            if local3 == 0 then
                print("[SELECT ENEMY]" .. "<<結果>> 抽選結果[なし]")
                return 9999999
            elseif 1 < local3 then
                local local9 = 1
                for local6 = 1 - local9, local3, local9 do
                    local local10 = arg1:GetAttackPassedTime(local2[local6])
                    if local10 <= 0 then
                        local10 = 0 * 2
                    end
                    local10 = local10 - 0
                    if local10 < 0 then
                        local10 = 1
                    end
                    print("[SELECT DERIVE]" .. "[" .. local2[local6] .. "]　経過時間[" .. local10 .. "]　選択レート[" .. 0 .. "]")
                    local5[local6] = local10 * 0
                    local8 = local5[local6] + local8
                end
                if 0 < local8 then
                    local local7 = 0
                    local local11 = 1
                    for local9 = 1 - local11, local3, local11 do
                        local7 = local7 + local5[local9]
                        if arg1:GetRandam_Float(0, local8) <= local7 then
                            print("[SELECT ENEMY]" .. "<<結果>> 抽選結果[" .. local2[local9] .. "]")
                            return local2[local9]
                        end
                    end
                end
                return 9999999
            else
                print("[SELECT ENEMY]" .. "<<結果>> 抽選結果[" .. local2[1] .. "]")
                return local2[1]
            end
        end
    end
    local5 = {}
    local local8 = 0
    local4 = 0
    if local3 == 0 then
        print("[SELECT ENEMY]" .. "<<結果>> 抽選結果[なし]")
        return 9999999
    elseif 1 < local3 then
        local local9 = 1
        for local6 = 1 - local9, local3, local9 do
            local local10 = arg1:GetAttackPassedTime(local2[local6])
            if local10 <= 0 then
                local10 = 0 * 2
            end
            local10 = local10 - 0
            if local10 < 0 then
                local10 = 1
            end
            print("[SELECT DERIVE]" .. "[" .. local2[local6] .. "]　経過時間[" .. local10 .. "]　選択レート[" .. 0 .. "]")
            local5[local6] = local10 * 0
            local8 = local5[local6] + local8
        end
        if 0 < local8 then
            local local7 = 0
            local local11 = 1
            for local9 = 1 - local11, local3, local11 do
                local7 = local7 + local5[local9]
                if arg1:GetRandam_Float(0, local8) <= local7 then
                    print("[SELECT ENEMY]" .. "<<結果>> 抽選結果[" .. local2[local9] .. "]")
                    return local2[local9]
                end
            end
        end
        return 9999999
    else
        print("[SELECT ENEMY]" .. "<<結果>> 抽選結果[" .. local2[1] .. "]")
        return local2[1]
    end
end

return 
