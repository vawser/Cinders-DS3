RegisterTableGoal(GOAL_MoonLightWitch_524000_Battle, "MoonLightWitch_524000")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = Init_Pseudo_Global
    local local1 = arg1
    local local2 = arg2
    Init_Pseudo_Global(arg1, arg2)
    local1 = arg1
    local0 = arg1["SetStringIndexedNumber"]
    local2 = "Dist_SideStep"
    local local3 = 5
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    local1 = arg1
    local0 = arg1["SetStringIndexedNumber"]
    local2 = "Dist_BackStep"
    local3 = 5
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local0 = {}
    local1 = {}
    local2 = {}
    local3 = Common_Clear_Param
    local local4 = local0
    local local5 = local1
    local local6 = local2
    Common_Clear_Param(local0, local1, local2)
    local4 = arg1
    local3 = arg1["GetDist"]
    local5 = TARGET_ENE_0
    local3 = arg1:GetDist(TARGET_ENE_0)
    local5 = arg1
    local4 = arg1["GetHpRate"]
    local6 = TARGET_SELF
    local4 = arg1:GetHpRate(TARGET_SELF)
    local6 = arg1
    local5 = arg1["GetNpcThinkParamID"]
    local5 = arg1:GetNpcThinkParamID()
    local local7 = arg1
    local6 = arg1["GetMapHitRadius"]
    local local8 = TARGET_SELF
    local6 = arg1:GetMapHitRadius(TARGET_SELF)
    local8 = arg1
    local7 = arg1["GetExistMeshOnLineDistEx"]
    local local9 = TARGET_SELF
    local local10 = AI_DIR_TYPE_F
    local local11 = 3
    local local12 = local6
    local local13 = local6
    local7 = arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 3, local6, local6)
    if 24 < local3 then
        local0[1] = 0
        local0[3] = 10
        local0[5] = 10
        local0[11] = 1
        local0[12] = 10
    elseif 12 < local3 then
        local0[1] = 30
        local0[3] = 10
        local0[5] = 10
        local0[11] = 1
        local0[12] = 1
    elseif 6 < local3 then
        local0[1] = 10
        local0[3] = 10
        local0[4] = 20
        local0[11] = 10
    elseif 3.6 < local3 then
        local0[1] = 10
        local0[4] = 10
        local0[11] = 1
    elseif 1.8 < local3 then
        local0[1] = 10
        local0[11] = 1
    else
        local0[1] = 2
        local0[11] = 1
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local3 < 2.4 - arg1:GetMapHitRadius(TARGET_SELF) then
            local0[9] = 50
            local0[11] = 1
        end
        if 4.6 - arg1:GetMapHitRadius(TARGET_SELF) < local3 and local3 < 6.5 - arg1:GetMapHitRadius(TARGET_SELF) then
            local0[7] = 30
            local0[11] = 1
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 3, local0[1], 0)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 0)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 6, local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 3, local0[5], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3007, 5, local0[7], 0)
    local0[8] = SetCoolTime(arg1, arg2, 3008, 7, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3009, 5, local0[9], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act05)
    local1[7] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, MoonLightWitch524000_Act12)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, MoonLightWitch524000_ActAfter_AdjustSpace), local2)
    return 
end

function MoonLightWitch524000_Act01(arg0, arg1, arg2)
    print("01")
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 40, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act02(arg0, arg1, arg2)
    print("02")
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 40, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act03(arg0, arg1, arg2)
    print("03")
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 40, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act04(arg0, arg1, arg2)
    print("04")
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 40, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act05(arg0, arg1, arg2)
    print("05")
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 40, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act07(arg0, arg1, arg2)
    print("08")
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 32 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act08(arg0, arg1, arg2)
    print("09")
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 32 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act09(arg0, arg1, arg2)
    print("09")
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 32 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act10(arg0, arg1, arg2)
    MoonLightWitch524000_Approach_Act_Flex(arg0, arg1, ATT1003000_DIST_MAX, ATT1003000_DIST_MAX + 20, ATT1003000_DIST_MAX + 40, 0, 0, 8, 8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act11(arg0, arg1, arg2)
    print("11")
    local local0 = 8
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 100, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, local0, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoonLightWitch524000_Act12(arg0, arg1, arg2)
    print("12")
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function MoonLightWitch524000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoonLightWitch_524000_AfterAttackAct, 10)
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
        local local0 = arg1:GetDist(TARGET_ENE_0)
        local local1 = arg1:GetRandam_Int(1, 100)
        return false
    end
end

RegisterTableGoal(GOAL_MoonLightWitch_524000_AfterAttackAct, "MoonLightWitch_524000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoonLightWitch_524000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
    arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

function MoonLightWitch524000_Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg7 == nil then
        arg7 = 3
    end
    if arg8 == nil then
        arg8 = 8
    end
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = true
    if arg4 <= local0 then
        local1 = false
    elseif arg3 <= local0 and arg0:GetRandam_Int(1, 100) <= arg5 then
        local1 = false
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= arg6 then
        local2 = 9910
    end
    if local1 == true then
        life = arg7
    else
        life = arg8
    end
    if arg2 <= local0 then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, local1, local2)
        local3:SetTargetRange(0, -1, 9.4)
    end
    return 
end

return 
