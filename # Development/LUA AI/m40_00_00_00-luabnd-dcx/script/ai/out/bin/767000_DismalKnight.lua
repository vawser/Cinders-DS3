RegisterTableGoal(GOAL_DismalKnight_767000_Battle, "DismalKnight_767000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DismalKnight_767000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_soukishirun", 4)
    arg1:SetStringIndexedNumber("Odds_run", 3.8)
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    
    -- Khocked Down monitor?
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90) 
    
    local curEnemyDist = arg1:GetDist(TARGET_ENE_0)
    local randomInteger = arg1:GetRandam_Int(1, 100)
    local curHP = arg1:GetHpRate(TARGET_SELF)
    local isDoAdmirer = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    
    -- Crossbow Anim Set
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        if 15 <= curEnemyDist then
            actChanceList[31] = 10 -- Turn and Spin - 1500:'Switch to Crossbow'
        else 
            actChanceList[30] = 10 -- Turn and Spin - 3000:'Downwards Right Swing'
        end
    elseif arg1:GetEventRequest() == 10 and arg1:HasSpecialEffectId(TARGET_SELF, 160741409) == false and arg1:HasSpecialEffectId(TARGET_SELF, 160741408) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        actChanceList[24] = 10 -- Add chance for 'Weapon Buff'
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 160741409) == false and arg1:HasSpecialEffectId(TARGET_SELF, 160741408) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false and curHP <= 0.7 and (8 <= curEnemyDist or not not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) or curHP <= 0.55 or arg1:IsFinishTimer(3) == false) and 2.5 <= curEnemyDist then
        actChanceList[24] = 10 -- Add chance for 'Weapon Buff'
    elseif curHP <= 0.45 and 7 <= curEnemyDist and (not not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) or arg1:IsFinishTimer(3) == false) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        actChanceList[7] = 10 -- Add chance for 'Vow of Agony'
    elseif curHP <= 0.7 and 4.5 <= curEnemyDist and (not not arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) or arg1:IsFinishTimer(3) == false) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        actChanceList[7] = 10 -- Add chance for 'Vow of Agony'
    elseif isDoAdmirer == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        actChanceList[20] = 50 -- Leave Target
        actChanceList[21] = 50 -- Move Sidewards
    elseif isDoAdmirer == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        actChanceList[20] = 40 -- Leave Target
        actChanceList[21] = 40 -- Move Sidewards
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if curEnemyDist <= 2 then
            actChanceList[8] = 30 -- Moves: 3011:'Vow of Agony' -  3012:'Step Back and Side Swing'
            actChanceList[20] = 10 -- Leave Target
            actChanceList[21] = 10 -- Move Sidewards
        else
            actChanceList[22] = 10 -- Turn
            actChanceList[21] = 10 -- Move Sidewards
        end
    -- Have 'Body Buff' active
    elseif arg1:IsFinishTimer(0) == false or arg1:HasSpecialEffectId(TARGET_SELF, 160741406) == true then
        if 7 <= curEnemyDist then
            actChanceList[1] = 5 -- Moves: 3000:'Downwards Right Swing' - 3001:'Upwards Left Swing'
            actChanceList[2] = 20 -- Moves: 3003:'Step and Side Swing'
            actChanceList[3] = 20 -- Moves: 3005:'Step and Forward Slam'
            actChanceList[23] = 10 -- Turn and Spin - 3014:'Body Buff'
        elseif 5 <= curEnemyDist then
            actChanceList[1] = 10 -- Moves: 3000:'Downwards Right Swing' - 3001:'Upwards Left Swing'
            actChanceList[2] = 30 -- Moves: 3003:'Step and Side Swing'
            actChanceList[3] = 20 -- Moves: 3005:'Step and Forward Slam'
            actChanceList[4] = 10 -- Moves: 3002:'Forward Slam' -  3013:'Heavy Slam'
            actChanceList[11] = 10 -- Moves: 3012:'Step Back and Side Swing' - 3006:'Shield Bash'
            actChanceList[23] = 10 -- Turn and Spin - 3014:'Body Buff'
        elseif 2.5 <= curEnemyDist then
            actChanceList[1] = 20 -- Moves: 3000:'Downwards Right Swing' - 3001:'Upwards Left Swing'
            actChanceList[2] = 40 -- Moves: 3003:'Step and Side Swing'
            actChanceList[4] = 20 -- Moves: 3002:'Forward Slam' -  3013:'Heavy Slam'
            actChanceList[5] = 5 -- Moves: 3006:'Shield Bash'
            actChanceList[9] = 5 -- Moves: 3009:'Heavy Slam' - 3006:'Shield Bash'
            actChanceList[10] = 5 -- Moves: 3010:'Side Swing' - 3009:'Heavy Slam'
            actChanceList[11] = 20 -- Moves: 3012:'Step Back and Side Swing' - 3006:'Shield Bash'
            actChanceList[15] = 5 -- Slam Combo
        elseif 1 <= curEnemyDist then
            actChanceList[1] = 20 -- Moves: 3000:'Downwards Right Swing' - 3001:'Upwards Left Swing'
            actChanceList[4] = 20 -- Moves: 3002:'Forward Slam' -  3013:'Heavy Slam'
            actChanceList[9] = 5 -- Moves: 3009:'Heavy Slam' - 3006:'Shield Bash'
            actChanceList[10] = 5 -- Moves: 3010:'Side Swing' - 3009:'Heavy Slam'
            actChanceList[11] = 20 -- Moves: 3012:'Step Back and Side Swing' - 3006:'Shield Bash'
            actChanceList[15] = 5 -- Slam Combo
        else
            actChanceList[4] = 10 -- Moves: 3002:'Forward Slam' -  3013:'Heavy Slam'
            actChanceList[6] = 0 -- Moves: 3007:'Affinity'
            actChanceList[11] = 10 -- Moves: 3012:'Step Back and Side Swing' - 3006:'Shield Bash'
        end
    elseif 8 <= curEnemyDist then
        actChanceList[15] = 10 -- Slam Combo
        actChanceList[21] = 10 -- Move Sidewards
        actChanceList[23] = 10 -- Turn and Spin - 3014:'Body Buff'
    elseif 5 <= curEnemyDist then
        actChanceList[15] = 30 -- Slam Combo
        actChanceList[21] = 10 -- Move Sidewards
    elseif 2.5 <= curEnemyDist then
        actChanceList[15] = 20 -- Slam Combo
        actChanceList[21] = 10 -- Move Sidewards
    elseif 1 <= curEnemyDist then
        actChanceList[15] = 10 -- Slam Combo
        actChanceList[21] = 10 -- Move Sidewards
    else
        actChanceList[15] = 10 -- Slam Combo
        actChanceList[21] = 10 -- Move Sidewards
    end
    
    -- Timer: Affinity
    if arg1:IsFinishTimer(1) == false then
        actChanceList[6] = actChanceList[6] + 30 -- Moves: 3007:'Affinity'
    end
    
    -- Timer: Slam Combo
    if arg1:IsFinishTimer(2) == false then
        actChanceList[15] = actChanceList[15] + 35 -- Slam Combo
    end
    
    -- If player is down, increase chance of 'Heavy Slam' and 'Side Swing'
    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        actChanceList[9] = actChanceList[9] + 30 -- Moves: 3009:'Heavy Slam' - 3006:'Shield Bash'
        actChanceList[10] = actChanceList[10] + 30 -- Moves: 3010:'Side Swing' - 3009:'Heavy Slam'
    end
    
    actChanceList[1] = SetCoolTime(arg1, arg2, 3000, 10, actChanceList[1], 1) -- Downwards Right Swing
    actChanceList[2] = SetCoolTime(arg1, arg2, 3003, 10, actChanceList[2], 1) -- Step and Side Swing
    actChanceList[3] = SetCoolTime(arg1, arg2, 3005, 10, actChanceList[3], 1) -- Step and Forward Slam
    actChanceList[4] = SetCoolTime(arg1, arg2, 3002, 15, actChanceList[4], 1) -- Forward Slam
    actChanceList[5] = SetCoolTime(arg1, arg2, 3006, 10, actChanceList[5], 1) -- Shield Bash
    actChanceList[6] = SetCoolTime(arg1, arg2, 3007, 12, actChanceList[6], 1) -- Affinity
    actChanceList[8] = SetCoolTime(arg1, arg2, 3011, 10, actChanceList[8], 1) -- Vow of Agony
    actChanceList[9] = SetCoolTime(arg1, arg2, 3009, 10, actChanceList[9], 1) -- Heavy Slam
    actChanceList[10] = SetCoolTime(arg1, arg2, 3010, 10, actChanceList[10], 1) -- Side Swing
    actChanceList[11] = SetCoolTime(arg1, arg2, 3012, 10, actChanceList[11], 1) -- Step Back and Side Swing
    actChanceList[15] = SetCoolTime(arg1, arg2, 3100, 8, actChanceList[15], 1) -- Step and Shield Bash
    actChanceList[23] = SetCoolTime(arg1, arg2, 3014, 30, actChanceList[23], 1) -- Body Buff
    
    -- Block Body buff move if body buff is already present
    if arg1:HasSpecialEffectId(TARGET_SELF, 160741406) == true then
        actChanceList[23] = 0
    end
    
    actFuncList[1] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act01) -- Moves: 3000:'Downwards Right Swing' - 3001:'Upwards Left Swing'
    actFuncList[2] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act02) -- Moves: 3003:'Step and Side Swing'
    actFuncList[3] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act03) -- Moves: 3005:'Step and Forward Slam'
    actFuncList[4] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act04) -- Moves: 3002:'Forward Slam' -  3013:'Heavy Slam'
    actFuncList[5] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act05) -- Moves: 3006:'Shield Bash'
    actFuncList[6] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act06) -- Moves: 3007:'Affinity'
    actFuncList[7] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act07) -- Moves: 3008:'Vow of Agony'
    actFuncList[8] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act08) -- Moves: 3011:'Vow of Agony' -  3012:'Step Back and Side Swing'
    actFuncList[9] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act09) -- Moves: 3009:'Heavy Slam' - 3006:'Shield Bash'
    actFuncList[10] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act10) -- Moves: 3010:'Side Swing' - 3009:'Heavy Slam'
    actFuncList[11] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act11) -- Moves: 3012:'Step Back and Side Swing' - 3006:'Shield Bash'
    actFuncList[15] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act15) -- Moves: 3100:'Step and Shield Bash' - 3012:'Step Back and Side Swing' - 3006:'Shield Bash' - 3009:'Heavy Slam' - 3001:'Upwards Left Swing' - 3002:'Forward Slam'
    actFuncList[20] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act20) -- Leave Target
    actFuncList[21] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act21) -- Move Sidewards
    actFuncList[22] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act22) -- Turn
    actFuncList[23] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act23) -- Turn and Spin - 3014:'Body Buff'
    actFuncList[24] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act24) -- Turn and Spin - 3015:'Weapon Buff'
    actFuncList[30] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act30) -- Turn and Spin - 1500:'Switch to Crossbow'
    actFuncList[31] = REGIST_FUNC(arg1, arg2, DismalKnight_767000_Act31) -- Turn and Spin - 3000:'Downwards Right Swing'
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, DismalKnight_767000_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Style: Melee
-- Moves: 3000:'Downwards Right Swing' - 3001:'Upwards Left Swing'
function DismalKnight_767000_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 120, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Melee
-- Moves: 3003:'Step and Side Swing'
function DismalKnight_767000_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 7.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 150, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Melee
-- Moves: 3005:'Step and Forward Slam'
function DismalKnight_767000_Act03(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 8.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 120, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Melee
-- Moves: 3002:'Forward Slam' -  3013:'Heavy Slam'
function DismalKnight_767000_Act04(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    local actFuncList = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 120, 0, 0)
    actFuncList:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Melee
-- Moves: 3006:'Shield Bash'
function DismalKnight_767000_Act05(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 120, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Spell
-- Moves: 3007:'Affinity'
function DismalKnight_767000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Spell
-- Moves: 3008:'Vow of Agony'
function DismalKnight_767000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Mixed
-- Moves: 3011:'Vow of Agony' -  3012:'Step Back and Side Swing'
function DismalKnight_767000_Act08(arg0, arg1, arg2)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    local actFuncList = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 360, 0, 0)
    actFuncList:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Melee
-- Moves: 3009:'Heavy Slam' - 3006:'Shield Bash'
function DismalKnight_767000_Act09(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 120, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Melee
-- Moves: 3010:'Side Swing' - 3009:'Heavy Slam'
function DismalKnight_767000_Act10(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    local actFuncList = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 150, 0, 0)
    actFuncList:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: 
-- Moves: 3012:'Step Back and Side Swing' - 3006:'Shield Bash'
function DismalKnight_767000_Act11(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 100, 100, 5, 5)
    local actChanceList = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 120, 0, 0)
    local actFuncList = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
    actFuncList:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: Melee
-- Moves: 3100:'Step and Shield Bash' - 3012:'Step Back and Side Swing' - 3006:'Shield Bash' 
--        3009:'Heavy Slam' - 3001:'Upwards Left Swing' - 3002:'Forward Slam'
function DismalKnight_767000_Act15(arg0, arg1, arg2)
    local actChanceList = arg0:GetDist(TARGET_ENE_0)
    local actFuncList = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local actTblList = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local curEnemyDist = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local randomInteger = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local curHP = 100
    local isDoAdmirer = 5
    local local7 = 5
    if actTblList < actChanceList and arg0:IsFinishTimer(0) == false then
        Approach_Act_Flex(arg0, arg1, actTblList, curEnemyDist, randomInteger, 100, curHP, isDoAdmirer, local7)
    elseif actTblList < actChanceList and arg0:IsFinishTimer(0) == true then
        Approach_Act_Flex(arg0, arg1, actTblList, curEnemyDist, randomInteger, 0, curHP, isDoAdmirer, local7)
    elseif actChanceList < actFuncList then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, actFuncList, TARGET_ENE_0, true, 9910)
    end
    local local8 = 3100
    local local9 = 3012
    local actFuncList0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local actFuncList1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local actFuncList3 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList4 = 0
    local actFuncList5 = 120
    local actFuncList6 = arg0:GetRandam_Int(1, 100)
    if actFuncList6 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, actFuncList0, actFuncList4, actFuncList5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local9, TARGET_ENE_0, actFuncList0, 0, 0)
        local actFuncList7 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
        actFuncList7:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, actFuncList3, 0, 0)
    elseif actFuncList6 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, actFuncList0, actFuncList4, actFuncList5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local9, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, actFuncList3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, actFuncList0, actFuncList4, actFuncList5, 0, 0)
        local actFuncList7 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, actFuncList3, 0, 0)
        actFuncList7:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Style: 
-- Moves: 3013:'Heavy Slam' - 3101:'Parry' - 3002:'Forward Slam'
function DismalKnight_767000_Act16(arg0, arg1, arg2)
    local actChanceList = arg0:GetDist(TARGET_ENE_0)
    local actFuncList = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local actTblList = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5
    local curEnemyDist = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5
    local randomInteger = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local curHP = 100
    local isDoAdmirer = 5
    local local7 = 5
    if actTblList < actChanceList and arg0:IsFinishTimer(0) == false then
        Approach_Act_Flex(arg0, arg1, actTblList, curEnemyDist, randomInteger, 100, curHP, isDoAdmirer, local7)
    elseif actTblList < actChanceList and arg0:IsFinishTimer(0) == true then
        Approach_Act_Flex(arg0, arg1, actTblList, curEnemyDist, randomInteger, 0, curHP, isDoAdmirer, local7)
    elseif actChanceList < actFuncList then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, actFuncList, TARGET_ENE_0, true, 9910)
    end
    local local8 = 3013
    local local9 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local actFuncList0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3101, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 150, 0, 0)
    local actFuncList1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF) - 1, 0, 0)
    actFuncList1:SetTargetRange(0, -99, 6 - arg0:GetMapHitRadius(TARGET_SELF))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Leave Target
function DismalKnight_767000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Move Sidewards
function DismalKnight_767000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn
function DismalKnight_767000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn and Spin - 3014:'Body Buff'
function DismalKnight_767000_Act23(arg0, arg1, arg2)
    arg0:SetTimer(0, 12)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn and Spin - 3015:'Weapon Buff'
function DismalKnight_767000_Act24(arg0, arg1, arg2)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn and Spin - 1500:'Switch to Crossbow'
function DismalKnight_767000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Turn and Spin - 3000:'Downwards Right Swing'
function DismalKnight_767000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DismalKnight_767000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DismalKnight_767000_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    -- NOT in Crossbow mode
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) == false then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            local actChanceList = arg1:GetDist(TARGET_ENE_0)
            
            -- Knocked down
            if arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
                arg1:SetTimer(0, 10)
                arg1:SetTimer(3, 4)
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        end
        
        -- Step and Side Swing
        if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(arg1, arg2, 0, 120, 6 - arg1:GetMapHitRadius(TARGET_SELF), 7.5 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:IsFinishTimer(0) == false then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, SuccessDist, 0, 0)
            return true
        end
        local actFuncList = 3.5 - arg1:GetMapHitRadius(TARGET_SELF)
        
        -- Guard Break
        if GuardBreak_Act(arg1, arg2, 3, 100) then
            arg1:SetTimer(0, 8)
            arg1:SetTimer(3, 3)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
            
        -- Rebound on Guard
        elseif arg1:IsInterupt(INTERUPT_AIReboundByOpponentGuard) and arg1:GetDist(TARGET_ENE_0) <= 2 then
            arg1:SetTimer(0, 5)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
            
        -- Guard Broken
        elseif arg1:IsInterupt(INTERUPT_AIGuardBroken) then
            arg1:SetTimer(0, 6)
            arg1:SetTimer(1, 6)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
            
        -- Used Item
        elseif arg1:IsInterupt(INTERUPT_UseItem) then
            arg1:SetTimer(0, 5)
            arg1:SetTimer(3, 3)
            arg2:ClearSubGoal()
            if 7 <= arg1:GetDist(TARGET_ENE_0) then
                arg1:SetTimer(2, 8)
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
            else
                arg1:Replaning()
            end
            return true
            
        -- Shoot
        elseif arg1:IsInterupt(INTERUPT_Shoot) then
            arg1:SetTimer(0, 10)
            arg1:SetTimer(2, 8)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, false, 9910)
            return true
            
        -- Damanged
        elseif Damaged_Act(arg1, arg2, 7, 100) then
            arg1:SetTimer(0, 0)
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) <= 50 then
                DismalKnight_767000_Act20(arg1, arg2, paramTbl)
            else
                DismalKnight_767000_Act21(arg1, arg2, paramTbl)
            end
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_DismalKnight_767000_AfterAttackAct, "DismalKnight_767000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DismalKnight_767000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local actChanceList = arg1:GetDist(TARGET_ENE_0)
    local actFuncList = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
