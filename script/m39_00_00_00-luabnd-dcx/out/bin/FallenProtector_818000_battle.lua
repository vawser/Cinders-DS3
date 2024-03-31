RegisterTableGoal(GOAL_FallenProtector_818000_Battle, "GOAL_FallenProtector_818000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FallenProtector_818000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 2)
    arg1:SetNumber(2, 0)
    arg1:SetNumber(3, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local actChanceList = {}
    local actFuncList = {}
    local actTblList = {}
    Common_Clear_Param(actChanceList, actFuncList, actTblList)
    local curEnemyDist = arg1:GetDist(TARGET_ENE_0)
    local isDoAdmirer = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    
    -- Behind player
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        -- Directly behind player
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) and curEnemyDist <= 999 then
            actChanceList[13] = 80
            actChanceList[20] = 20
        -- Behind and player is to the left
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and curEnemyDist <= 999 then
            actChanceList[12] = 80
            actChanceList[20] = 20
        -- Behind and player is to the right
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and curEnemyDist <= 999 then
            actChanceList[11] = 80
            actChanceList[20] = 20
        else
            actChanceList[20] = 100
        end
    -- Medium distance to player
    elseif 8 <= curEnemyDist then
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 10
        actChanceList[6] = 20
        actChanceList[7] = 30
        actChanceList[8] = 5
        actChanceList[9] = 5
        actChanceList[10] = 0
        actChanceList[14] = 0
        actChanceList[15] = 20
        actChanceList[16] = 20
        actChanceList[21] = 0
    -- Close distance to player
    elseif 5 <= curEnemyDist then
        actChanceList[1] = 0
        actChanceList[2] = 0
        actChanceList[3] = 10
        actChanceList[4] = 10
        actChanceList[5] = 20
        actChanceList[6] = 20
        actChanceList[7] = 0
        actChanceList[8] = 0
        actChanceList[9] = 0
        actChanceList[10] = 0
        actChanceList[14] = 0
        actChanceList[15] = 10
        actChanceList[16] = 20
        actChanceList[21] = 20
    -- Fallback
    else
        actChanceList[1] = 25
        actChanceList[2] = 25
        actChanceList[3] = 0
        actChanceList[4] = 0
        actChanceList[5] = 0
        actChanceList[6] = 0
        actChanceList[7] = 0
        actChanceList[8] = 10
        actChanceList[9] = 10
        actChanceList[10] = 20
        actChanceList[14] = 10
        actChanceList[15] = 0
        actChanceList[16] = 0
        actChanceList[21] = 0
    end
    
    -- Fallen Protector - Default
    if arg1:GetHpRate(TARGET_SELF) > 0.8 then
        if arg1:GetNumber(2) == 0 then
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
            actChanceList[1] = 0
            actChanceList[2] = 0
            actChanceList[3] = 0
            actChanceList[4] = 0
            actChanceList[5] = 0
            actChanceList[6] = 0
            actChanceList[7] = 0
            actChanceList[8] = 0
            actChanceList[9] = 100
            actChanceList[10] = 0
            actChanceList[11] = 0
            actChanceList[12] = 0
            actChanceList[13] = 0
            actChanceList[14] = 0
            actChanceList[15] = 0
            actChanceList[16] = 0
            actChanceList[20] = 0
            actChanceList[21] = 0
            actChanceList[22] = 0
            actChanceList[23] = 0
        end
        actChanceList[14] = 0
        actChanceList[15] = 0
        actChanceList[16] = 0
    end
    
    -- Fallen Protector - Heatup
    if arg1:GetHpRate(TARGET_SELF) <= 0.8 then
        if arg1:GetNumber(3) == 0 then
            arg1:SetNumber(3, 1)
            actChanceList[1] = 0
            actChanceList[2] = 0
            actChanceList[3] = 0
            actChanceList[4] = 0
            actChanceList[5] = 0
            actChanceList[6] = 0
            actChanceList[7] = 0
            actChanceList[8] = 0
            actChanceList[9] = 0
            actChanceList[10] = 0
            actChanceList[11] = 0
            actChanceList[12] = 0
            actChanceList[13] = 0
            actChanceList[14] = 0
            actChanceList[15] = 100
            actChanceList[16] = 0
            actChanceList[20] = 0
            actChanceList[21] = 0
            actChanceList[22] = 0
            actChanceList[23] = 0
        end
        if arg1:GetHpRate(TARGET_SELF) <= 0.01 then
            actChanceList[1] = 0
            actChanceList[2] = 0
            actChanceList[3] = 0
            actChanceList[4] = 0
            actChanceList[5] = 0
            actChanceList[6] = 0
            actChanceList[7] = 0
            actChanceList[8] = 0
            actChanceList[9] = 0
            actChanceList[10] = 0
            actChanceList[11] = 0
            actChanceList[12] = 0
            actChanceList[13] = 0
            actChanceList[14] = 0
            actChanceList[15] = 0
            actChanceList[16] = 0
            actChanceList[20] = 0
            actChanceList[21] = 0
            actChanceList[22] = 0
            actChanceList[23] = 100
        end
    end
    
    -- Cooldowns
    actChanceList[1] = SetCoolTime(arg1, arg2, 3000, 9, actChanceList[1], 1)
    actChanceList[2] = SetCoolTime(arg1, arg2, 3011, 9, actChanceList[2], 1)
    actChanceList[3] = SetCoolTime(arg1, arg2, 3005, 18, actChanceList[3], 1)
    actChanceList[3] = SetCoolTime(arg1, arg2, 3032, 18, actChanceList[3], 1)
    actChanceList[4] = SetCoolTime(arg1, arg2, 3006, 9, actChanceList[4], 1)
    actChanceList[5] = SetCoolTime(arg1, arg2, 3007, 9, actChanceList[5], 1)
    actChanceList[6] = SetCoolTime(arg1, arg2, 3013, 18, actChanceList[6], 1)
    actChanceList[7] = SetCoolTime(arg1, arg2, 3035, 9, actChanceList[7], 1)
    actChanceList[8] = SetCoolTime(arg1, arg2, 3018, 20, actChanceList[8], 1)
    actChanceList[8] = SetCoolTime(arg1, arg2, 3033, 20, actChanceList[8], 1)
    actChanceList[9] = SetCoolTime(arg1, arg2, 3003, 20, actChanceList[9], 1)
    actChanceList[9] = SetCoolTime(arg1, arg2, 3004, 20, actChanceList[9], 1)
    actChanceList[10] = SetCoolTime(arg1, arg2, 3022, 30, actChanceList[10], 1)
    actChanceList[10] = SetCoolTime(arg1, arg2, 3036, 30, actChanceList[10], 1)
    actChanceList[11] = SetCoolTime(arg1, arg2, 3008, 9, actChanceList[11], 1)
    actChanceList[12] = SetCoolTime(arg1, arg2, 3009, 9, actChanceList[12], 1)
    actChanceList[13] = SetCoolTime(arg1, arg2, 3019, 9, actChanceList[13], 1)
    actChanceList[14] = SetCoolTime(arg1, arg2, 3015, 20, actChanceList[14], 1)
    actChanceList[15] = SetCoolTime(arg1, arg2, 3023, 20, actChanceList[15], 1)
    actChanceList[16] = SetCoolTime(arg1, arg2, 3034, 9, actChanceList[16], 1)

    actFuncList[1] = REGIST_FUNC(arg1, arg2, FallenProtector_Act01)
    actFuncList[2] = REGIST_FUNC(arg1, arg2, FallenProtector_Act02)
    actFuncList[3] = REGIST_FUNC(arg1, arg2, FallenProtector_Act03)
    actFuncList[4] = REGIST_FUNC(arg1, arg2, FallenProtector_Act04)
    actFuncList[5] = REGIST_FUNC(arg1, arg2, FallenProtector_Act05)
    actFuncList[6] = REGIST_FUNC(arg1, arg2, FallenProtector_Act06)
    actFuncList[7] = REGIST_FUNC(arg1, arg2, FallenProtector_Act07)
    actFuncList[8] = REGIST_FUNC(arg1, arg2, FallenProtector_Act08)
    actFuncList[9] = REGIST_FUNC(arg1, arg2, FallenProtector_Act09)
    actFuncList[10] = REGIST_FUNC(arg1, arg2, FallenProtector_Act10)
    actFuncList[11] = REGIST_FUNC(arg1, arg2, FallenProtector_Act11)
    actFuncList[12] = REGIST_FUNC(arg1, arg2, FallenProtector_Act12)
    actFuncList[13] = REGIST_FUNC(arg1, arg2, FallenProtector_Act13)
    actFuncList[14] = REGIST_FUNC(arg1, arg2, FallenProtector_Act14)
    actFuncList[15] = REGIST_FUNC(arg1, arg2, FallenProtector_Act15)
    actFuncList[16] = REGIST_FUNC(arg1, arg2, FallenProtector_Act16)
    actFuncList[20] = REGIST_FUNC(arg1, arg2, FallenProtector_Act20)
    actFuncList[21] = REGIST_FUNC(arg1, arg2, FallenProtector_Act21)
    actFuncList[22] = REGIST_FUNC(arg1, arg2, FallenProtector_Act22)
    actFuncList[23] = REGIST_FUNC(arg1, arg2, FallenProtector_Act23)
    actFuncList[24] = REGIST_FUNC(arg1, arg2, FallenProtector_Act24)
    Common_Battle_Activate(arg1, arg2, actChanceList, actFuncList, REGIST_FUNC(arg1, arg2, FallenProtector_ActAfter_AdjustSpace), actTblList)
    return 
end

-- Slash Combo
function FallenProtector_Act01(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8, 8, 8 + 999, 0, 0, 2, 2)
    local anim_LeftSlash = 3000
    local anim_RightSlash = 3001
    local local2 = 5.96
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetDist(TARGET_ENE_0)
    
    if chance <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_RightSlash, TARGET_ENE_0, local3, 0, 0)
    elseif chance <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, local2, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, anim_RightSlash, TARGET_ENE_0, 8.42, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, local3, 0, 0)
    else
        arg0:SetNumber(1, 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_LeftSlash, TARGET_ENE_0, 7.11, local4, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, local4, local5, 0, 180)
        arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Warp In: Slash Combo
function FallenProtector_Act02(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 6.25, 6.25, 6.25 + 999, 0, 0, 2, 2)
    local anim_RightSlash = 3011
    local anim_LeftSlash = 3012
    local anim_FadeIn_RightSlash = 3027
    local anim_FadeIn_RightSlash2 = 3029
    local local4 = 8.42
    local local5 = 999
    local local6 = 0
    local local7 = 0
    local curDistance = arg0:GetDist(TARGET_ENE_0)
    local chance = arg0:GetRandam_Int(1, 100)
    
    if chance <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSlash, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_LeftSlash, TARGET_ENE_0, local5, 0, 0)
    elseif chance <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSlash, TARGET_ENE_0, local4, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local5, 0, 0)
    elseif chance <= 80 then
        arg0:SetNumber(1, 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSlash, TARGET_ENE_0, 999, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_LeftSlash, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
    elseif chance <= 90 then
        arg0:SetNumber(1, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSlash, TARGET_ENE_0, 6.73, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
    else
        arg0:SetNumber(1, 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_RightSlash, TARGET_ENE_0, 8.94, local6, local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
    end
    
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Standing Downwards Slam
function FallenProtector_Act03(arg0, arg1, arg2)
    local anim_Standing_DownwardsSlam = 3005
    local anim_Standing_DownwardsSlam_WithMagic = 3032
    
    if arg1:GetHpRate(TARGET_SELF) > 0.8 then
        Approach_Act_Flex(arg0, arg1, 8.47, 8.47, 8.47 + 999, 0, 0, 2, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_Standing_DownwardsSlam, TARGET_ENE_0, 999, 0, 0, 0, 0)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    else
        Approach_Act_Flex(arg0, arg1, 8.47, 8.47, 8.47 + 999, 0, 0, 2, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_Standing_DownwardsSlam_WithMagic, TARGET_ENE_0, 999, 0, 0, 0, 0)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
end

-- Forward Slam
function FallenProtector_Act04(arg0, arg1, arg2)
    local anim_ForwardSlam = 3006
    
    Approach_Act_Flex(arg0, arg1, 5.28, 5.28, 5.28 + 999, 0, 0, 2, 2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, anim_ForwardSlam, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local0:SetTargetAngle(1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Forward Thrust
function FallenProtector_Act05(arg0, arg1, arg2)
    local anim_ForwardThrust = 3007
    
    Approach_Act_Flex(arg0, arg1, 7.96, 7.96, 7.96 + 999, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_ForwardThrust, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Upwards Slash
function FallenProtector_Act06(arg0, arg1, arg2)
    local anim_UpwardsSlash = 3013
    
    Approach_Act_Flex(arg0, arg1, 11.75, 11.75, 11.75 + 999, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_UpwardsSlash, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Leaping Slam
function FallenProtector_Act07(arg0, arg1, arg2)
    local anim_LeapingSlam = 3035
    
    Approach_Act_Flex(arg0, arg1, 10.91, 10.91, 10.91 + 999, 0, 0, 2, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, anim_LeapingSlam, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Fade Out for Warp - Numbers 1 to 4
function FallenProtector_Act08(arg0, arg1, arg2)
    local anim_FadeOut_ForWarp = 3002
     
    arg0:SetNumber(1, 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_FadeOut_ForWarp, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Fade Out for Warp - Numbers 1 to 5
function FallenProtector_Act09(arg0, arg1, arg2)
    local anim_FadeOut_ForWarp = 3002
    
    arg0:SetNumber(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_FadeOut_ForWarp, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Fade Out for Warp - Numbers 1 to 6/7
function FallenProtector_Act10(arg0, arg1, arg2)
    local anim_FadeOut_ForWarp = 3002
    
    if arg1:GetHpRate(TARGET_SELF) > 0.8 then
        arg0:SetNumber(1, 6)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_FadeOut_ForWarp, TARGET_ENE_0, 999, 0, 0, 0, 180)
        arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    else
        arg0:SetNumber(1, 7)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_FadeOut_ForWarp, TARGET_ENE_0, 999, 0, 0, 0, 180)
        arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
end

-- Turn Right and Slash
function FallenProtector_Act11(arg0, arg1, arg2)
    local anim_TurnRight_Slash = 3008
    
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_TurnRight_Slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn Left and Slash
function FallenProtector_Act12(arg0, arg1, arg2)
    local anim_TurnLeft_Slash = 3009
    
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_TurnLeft_Slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn Backwards and Slash
function FallenProtector_Act13(arg0, arg1, arg2)
    local anim_TurnBackwards_Slash = 3019
    
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_TurnBackwards_Slash, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Fade Out for Warp - Numbers 1 to 8
function FallenProtector_Act14(arg0, arg1, arg2)
    local anim_Still_FadeOut_ForWarp = 3015
    
    arg0:SetNumber(1, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_Still_FadeOut_ForWarp, TARGET_ENE_0, 999, 0, 0, 0, 180)
    arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Maiden - Crystal Spear
function FallenProtector_Act15(arg0, arg1, arg2)
    local anim_MaidenCast = 3023
    
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Maiden - Crystal Spear - Quick
function FallenProtector_Act16(arg0, arg1, arg2)
    local anim_MaidenCast_Qucik = 3034
    
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

-- Turn
function FallenProtector_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90)
    return 0
end

-- Move Sideways
function FallenProtector_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Approach
function FallenProtector_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Wait
function FallenProtector_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- Fade Out for Warp - Numbers 1 to 99
function FallenProtector_Act24(arg0, arg1, arg2)
    local anim_Still_FadeOut_ForWarp = 3015
    
    arg0:SetNumber(1, 99)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, anim_Still_FadeOut_ForWarp, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local chance = arg1:GetRandam_Int(1, 100)
    local anim_TurnLeft_Slash = 3021
    local anim_TurnRight_Slash = 3020
    local anim_ForwardSlash_FadeOut = 3025
    local anim_LeftSlash_FadeOut = 3024
    
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    else
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetDist(TARGET_ENE_0) <= 4 and chance <= 80 then
            -- Player is to the left
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local local1 = 0
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_TurnLeft_Slash, TARGET_ENE_0, 999, 0)
            else
                local local1 = 0
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, anim_TurnRight_Slash, TARGET_ENE_0, 999, 0)
            end
            return true
        else
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
                local local1 = 0
                arg1:SetNumber(1, 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_ForwardSlash_FadeOut, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
                return true
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
                    local local2 = 0
                    arg1:SetNumber(1, 2)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_TurnRight_Slash, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, anim_LeftSlash_FadeOut, TARGET_ENE_0, 999, 0, 0)
                    arg2:AddSubGoal(GOAL_FallenProtector_WarpAttack1, 10)
                    return true
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
                        if chance <= 30 then
                            arg2:ClearSubGoal()
                            FallenProtector_Act08(arg1, arg2, paramTbl)
                        else
                            arg2:ClearSubGoal()
                            FallenProtector_Act09(arg1, arg2, paramTbl)
                        end
                        return true
                    else
                        return false
                    end
                end
            end
        end
    end
end

RegisterTableGoal(GOAL_FallenProtector_WarpAttack1, "GOAL_FallenProtector_WarpAttack1")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FallenProtector_WarpAttack1, true)
Goal.Activate = function (arg0, arg1, arg2)
    local anim_WarpAttackType = 3016 -- Fade In -> Fall from Sky and Stab Downwards
    local local1 = 0
    local local2 = 1
    local local3 = 0
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = 0
    local local8 = 0
    local local9 = 0
    local local10 = 0
    local local11 = 0
    local local12 = 0
    local local13 = 0
    local local14 = 0
    local local15 = 0
    local local16 = 0
    local local17 = 0
    local local18 = 0
    
    -- Select attack
    if arg1:GetNumber(1) == 1 then
        anim_WarpAttackType = 3028 -- Fade In -> Forward Slam
        local1 = 3018
        local2 = 50
        local3 = 0
        local4 = 0
        local5 = 0
        local6 = 50
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 9.5
        local11 = 0
        local12 = 0
        local13 = 0
        local14 = 8.1
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    elseif arg1:GetNumber(1) == 2 then
        anim_WarpAttackType = 3027 -- Fade In -> Right Slash
        local1 = 0
        local2 = 1
        local3 = 33
        local4 = 33
        local5 = 33
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 6.6
        local11 = 3.6
        local12 = 3.6
        local13 = 3.6
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    elseif arg1:GetNumber(1) == 3 then
        anim_WarpAttackType = 3029 -- Fade In -> Right Slash
        local1 = 0
        local2 = 1
        local3 = 33
        local4 = 33
        local5 = 33
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 6.6
        local11 = 3.6
        local12 = 3.6
        local13 = 3.6
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 1
    elseif arg1:GetNumber(1) == 4 then
        anim_WarpAttackType = 3018 -- Fade In -> Thrust
        local1 = 3033
        local2 = 10
        local3 = 10
        local4 = 10
        local5 = 10
        local6 = 10
        local7 = 10
        local8 = 10
        local9 = 10
        local10 = 3.6
        local11 = 3.6
        local12 = 3.6
        local13 = 3.6
        local14 = 3.6
        local15 = 3.6
        local16 = 3.6
        local17 = 3.6
        local18 = 1
    elseif arg1:GetNumber(1) == 5 then
        anim_WarpAttackType = 3003 -- Fade In -> Forward Slam
        local1 = 3004
        local2 = 10
        local3 = 10
        local4 = 15
        local5 = 15
        local6 = 10
        local7 = 10
        local8 = 15
        local9 = 15
        local10 = 3.6
        local11 = 3.6
        local12 = 3.6
        local13 = 3.6
        local14 = 3.6
        local15 = 3.6
        local16 = 3.6
        local17 = 3.6
        local18 = 1
    elseif arg1:GetNumber(1) == 6 then
        anim_WarpAttackType = 3022 -- Fade In -> Powerful Forward Slam with Magic
        local1 = 0
        local2 = 1
        local3 = 33
        local4 = 33
        local5 = 33
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 15
        local11 = 15
        local12 = 15
        local13 = 15
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    elseif arg1:GetNumber(1) == 7 then
        anim_WarpAttackType = 3036 -- Fade In -> Powerful Forward Slam with Magic
        local1 = 0
        local2 = 85
        local3 = 5
        local4 = 5
        local5 = 5
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 15
        local11 = 15
        local12 = 15
        local13 = 15
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    elseif arg1:GetNumber(1) == 8 then
        anim_WarpAttackType = 3017 -- Fade In -> Wait
        local1 = 0
        local2 = 97
        local3 = 1
        local4 = 1
        local5 = 1
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 15
        local11 = 15
        local12 = 15
        local13 = 15
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    else
        anim_WarpAttackType = 3016 -- Fade In -> Fall from Sky and Stab Downwards
        local1 = 0
        local2 = 25
        local3 = 25
        local4 = 25
        local5 = 25
        local6 = 0
        local7 = 0
        local8 = 0
        local9 = 0
        local10 = 0
        local11 = 0
        local12 = 0
        local13 = 0
        local14 = 0
        local15 = 0
        local16 = 0
        local17 = 0
        local18 = 0
    end
    local local19 = 999
    local local20 = 0
    local local21 = 0
    local curMapHitRadius = arg1:GetMapHitRadius(TARGET_SELF)
    local curDistance = arg1:GetDist(TARGET_ENE_0)
    local curAngleFromTarget = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if local18 ~= 0 then
        if math.abs(curAngleFromTarget) <= 45 then
            local2 = 0
            local6 = 0
        elseif 45 < curAngleFromTarget and curAngleFromTarget < 135 then
            local5 = 0
            local9 = 0
        elseif curAngleFromTarget < -45 and -135 < curAngleFromTarget then
            local4 = 0
            local8 = 0
        else
            local3 = 0
            local7 = 0
        end
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, local10 + curMapHitRadius, curMapHitRadius, 0) <= local10 then
        local2 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, local11 + curMapHitRadius, curMapHitRadius, 0) <= local11 then
        local3 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, local12 + curMapHitRadius, curMapHitRadius, 0) <= local12 then
        local4 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, local13 + curMapHitRadius, curMapHitRadius, 0) <= local13 then
        local5 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, local14 + curMapHitRadius, curMapHitRadius, 0) <= local14 then
        local6 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, local15 + curMapHitRadius, curMapHitRadius, 0) <= local15 then
        local7 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, local16 + curMapHitRadius, curMapHitRadius, 0) <= local16 then
        local8 = 0
    end
    if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, local17 + curMapHitRadius, curMapHitRadius, 0) <= local17 then
        local7 = 0
    end
    local local25 = nil

    local local26 = 1
    for local27 = 0 - local26, 4, local26 do
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, local10, 3902970 + local27) == true then
            local2 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, local11, 3902970 + local27) == true then
            local3 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, local12, 3902970 + local27) == true then
            local4 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, local13, 3902970 + local27) == true then
            local5 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, local14, 3902970 + local27) == true then
            local6 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, local15, 3902970 + local27) == true then
            local7 = 0
        end
        if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, local16, 3902970 + local27) == true then
            local8 = 0
        elseif arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, local17, 3902970 + local27) == true then
            local9 = 0
        end
    end
    local27 = arg1:GetRandam_Int(0, local2 + local3 + local4 + local5 + local6 + local7 + local8 + local9)
    local local28 = AI_DIR_TYPE_F
    local26 = 0
    local local29 = 3016 -- Fade In -> Fall from Sky and Stab Downwards
    local local30 = TARGET_ENE_0
    
    if local2 + local3 + local4 + local5 + local6 + local7 + local8 + local9 == 0 then
        local28 = AI_DIR_TYPE_F
        local26 = 0
        local29 = 3016 -- Fade In -> Fall from Sky and Stab Downwards
    elseif local2 ~= 0 and local27 <= local2 then
        local28 = AI_DIR_TYPE_F
        local26 = local10
        local29 = anim_WarpAttackType
        local30 = TARGET_ENE_0
    elseif local3 ~= 0 and local27 <= local2 + local3 then
        local28 = AI_DIR_TYPE_B
        local26 = local11
        local29 = anim_WarpAttackType
        local30 = TARGET_ENE_0
    elseif local4 ~= 0 and local27 <= local2 + local3 + local4 then
        local28 = AI_DIR_TYPE_L
        local26 = local12
        local29 = anim_WarpAttackType
        local30 = TARGET_ENE_0
    elseif local5 ~= 0 and local27 <= local2 + local3 + local4 + local5 then
        local28 = AI_DIR_TYPE_R
        local26 = local13
        local29 = anim_WarpAttackType
        local30 = TARGET_ENE_0
    elseif local6 ~= 0 and local27 <= local2 + local3 + local4 + local5 + local6 then
        local28 = AI_DIR_TYPE_F
        local26 = local14
        local29 = local1
        local30 = TARGET_ENE_0
    elseif local7 ~= 0 and local27 <= local2 + local3 + local4 + local5 + local6 + local7 then
        local28 = AI_DIR_TYPE_B
        local26 = local15
        local29 = local1
        local30 = TARGET_ENE_0
    elseif local8 ~= 0 and local27 <= local2 + local3 + local4 + local5 + local6 + local7 + local8 then
        local28 = AI_DIR_TYPE_L
        local26 = local16
        local29 = local1
        local30 = TARGET_ENE_0
    else
        local28 = AI_DIR_TYPE_R
        local26 = local17
        local29 = local1
        local30 = TARGET_ENE_0
    end
    
    arg1:SetNumber(2, 1)
    
    -- if arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412890) == false then
        -- arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, local19, 0, 0)
    -- elseif arg1:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 0, 3412860) == true then
        -- arg1:SetEventMoveTarget(3412850)
        -- arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0, 5, -2)
        -- arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, local19, 0, 0)
    -- elseif not not arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412835) or arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412860) then
        -- arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, local19, 0, 0)
    -- else
        -- arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, local28, local26, local30, 5, -2)
        -- arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local29, TARGET_ENE_0, local19, 0, 0)
    -- end
    
    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, local28, local26, local30, 5, -2)
    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, local29, TARGET_ENE_0, local19, 0, 0)
        
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function FallenProtector_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

return 
