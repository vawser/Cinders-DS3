RegisterTableGoal(GOAL_NPC_BlackGhost_Battle, "GOAL_NPC_BlackGhost_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_BlackGhost_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    local local6 = arg1:GetHpRate(TARGET_SELF)
    if 15 <= arg1:GetDist(TARGET_LOCALPLAYER) then
        local0[1] = 100
    else
        local0[4] = 100
    end
    local1[1] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, GOAL_NPC_BlackGhost_Battle_Act10)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlackGhost_ActAfter_AdjustSpace), local2)
    return 
end

function GOAL_NPC_BlackGhost_Battle_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 10, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_LOCALPLAYER, -1, 0, 0)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act02(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act03(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act04(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 141, TARGET_SELF, 0, 0, 0)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act06(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act07(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act08(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act09(arg0, arg1, arg2)
    return 0
end

function GOAL_NPC_BlackGhost_Battle_Act10(arg0, arg1, arg2)
    return 0
end

function BlackGhost_ActAfter_AdjustSpace(arg0, arg1, arg2)
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
