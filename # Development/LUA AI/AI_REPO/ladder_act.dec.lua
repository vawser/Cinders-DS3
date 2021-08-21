REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_LadderAct, true)
function _GetId(arg0, arg1)
    local local0 = false
    if not not arg1:IsNpcPlayer() or arg1:IsLocalPlayer() then
        local0 = true
    end
    local local1 = arg0
    if local0 == true then
        if arg0 == 7210 then
            local1 = NPC_ATK_LadderUp
        elseif arg0 == 7220 then
            local1 = NPC_ATK_LadderDown
        end
    end
    return local1
end

local local0 = -1
local local1 = 0
local local2 = 1
local local3 = 2
local local4 = 3
local local5 = 4
local local6 = 5
local local7 = 6
local local8 = 7
local local9 = 7230
function LadderAct_Activate(arg0, arg1)
    local local0 = arg1:GetParam(0)
    local local1 = arg1:GetParam(1)
    local local2 = arg1:GetParam(2)
    local local3 = 0
    local local4 = arg0:CalcGetNearestLadderActDmyIdByLadderObj()
    if local4 == 191 then
        local3 = _GetId(7210, arg0)
    else
        local3 = _GetId(7220, arg0)
    end
    if arg0:GetLadderActState(TARGET_SELF) == UPVAL0 then
        if arg0:IsChrAroundLadderEdge(2, local4) == false then
            arg0:SetPosAngBy1stNearObjDmyId(local4)
            arg0:SetAttackRequest(local3)
        elseif local4 ~= 192 and local4 == 191 then
            return GOAL_RESULT_Failed
        end
    end
    arg0:OnStartLadderGoal()
    return 
end

local0 = 8
local0 = 9
local0 = 7210
local0 = 7220
local0 = 23
function LadderAct_Update(arg0, arg1)
    local local0 = arg1:GetParam(0)
    if arg0:LastPathFindingIsFailed() == false and arg0:HasPathResult() == false then
        arg0:FollowPath(arg1:GetParam(1), AI_DIR_TYPE_CENTER, 1.5, true, 0)
    end
    arg0:OnUpdateLadderGoal()
    local local1 = arg0:GetLadderDirMove(TARGET_ENE_0)
    arg0:DoEzAction(0, -1)
    local local2 = arg0:GetLadderActState(TARGET_SELF)
    local local3 = false
    if local2 == UPVAL0 or local2 == UPVAL1 then
        local3 = true
    elseif not not arg0:IsFinishAttack() or arg0:IsEnableComboAttack() then
        local3 = true
    end
    if local3 then
        if local2 == UPVAL2 then
            return GOAL_RESULT_Success
        elseif local1 ~= 0 then
            if local1 == 1 then
                arg0:SetAttackRequest(_GetId(UPVAL3, arg0))
            elseif local1 == -1 then
                arg0:SetAttackRequest(_GetId(UPVAL4, arg0))
            end
        end
    end
    arg1:AddLifeParentSubGoal(0.3)
    if arg0:CanLadderGoalEnd() then
        return GOAL_RESULT_Success
    elseif arg0:GetLadderActState(TARGET_SELF) == UPVAL5 then
        return GOAL_RESULT_Failed
    else
        return GOAL_RESULT_Continue
    end
end

function LadderAct_Terminate(arg0, arg1)
    arg0:OnEndLadderGoal()
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LadderAct, true)
function LadderAct_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        return false
    else
        return false
    end
end

return 
