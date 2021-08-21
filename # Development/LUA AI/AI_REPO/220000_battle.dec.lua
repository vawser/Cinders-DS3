RegisterTableGoal(GOAL_Sandworm_220000_Battle, "GOAL_Sandworm_220000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Sandworm_220000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    local local4 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetEventRequest(0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5400)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5404)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) == false then
        if InsideRange(arg1, arg2, 0, 180, 50, 75) then
            local0[5] = 10
        elseif InsideRange(arg1, arg2, 45, 90, 25, 50) then
            local0[1] = 10
        elseif InsideRange(arg1, arg2, -45, 90, 25, 50) then
            local0[2] = 10
        elseif InsideRange(arg1, arg2, 0, 90, 10, 25) then
            local0[3] = 10
            local0[4] = 10
        elseif InsideRange(arg1, arg2, 0, 180, -99, 10) then
            local0[32] = 10
        else
            local0[32] = 10
        end
    elseif InsideRange(arg1, arg2, 0, 360, 60, 999) then
        local0[30] = 10
    elseif InsideRange(arg1, arg2, 0, 360, 40, 60) then
        local0[30] = 10
        local0[31] = 20
    elseif InsideRange(arg1, arg2, 0, 360, 20, 40) then
        local0[30] = 10
        local0[31] = 30
        local0[12] = 10
    elseif InsideRange(arg1, arg2, 0, 360, 10, 20) then
        local0[12] = 10
        local0[13] = 10
    else
        local0[10] = 10
        local0[11] = 10
    end
    local0[1] = SetCoolTime(arg1, arg2, 3010, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3011, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3013, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3012, 10, local0[4], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3020, 10, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3021, 10, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3022, 10, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3023, 10, local0[13], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act05)
    local1[10] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act13)
    local1[30] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, Sandworm_220000_Act32)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, Sandworm_220000_AdjustSpace), local2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

function Sandworm_220000_Act01(arg0, arg1, arg2)
    local local0 = ATT3010_DIST_MAX
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3010, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3011, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3013, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3012, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act10(arg0, arg1, arg2)
    local local0 = ATT3020_DIST_MAX
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3020, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 180, 0, 0)
    SandwormUndergroundWaitTime(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3021, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    SandwormUndergroundWaitTime(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act12(arg0, arg1, arg2)
    local local0 = ATT3022_DIST_MAX
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3022, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    SandwormUndergroundWaitTime(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3023, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    SandwormUndergroundWaitTime(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, ATT_SUCCESSDIST, 0, 360, 0, 0)
    SandwormUndergroundWaitTime(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SandwormUndergroundWaitTime(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sandworm_220000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local local0 = ATT_SUCCESSDIST
        local local1 = 0
        local local2 = 180
        local local3 = arg1:GetDist(TARGET_ENE_0)
        local local4 = arg1:GetRandam_Int(1, 100)
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5400 then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5404 then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5400)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5404)
    end
    return false
end

return 
