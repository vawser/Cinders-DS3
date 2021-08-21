REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ObjActTest, 0.5, 0.6)
function ObjActTest_Activate(arg0, arg1)
    local local0 = arg1:GetParam(0)
    local local1 = arg1:GetParam(1)
    arg0:KickEvent(0)
    return 
end

function ObjActTest_Update(arg0, arg1)
    if arg0:IsFinishObjAct() then
        return GOAL_RESULT_Success
    elseif arg1:GetLife() <= 0 then
        return GOAL_RESULT_Failed
    elseif not arg0:IsExistReqObjAct() then
        arg1:SetNumber(0, 1)
        return GOAL_RESULT_Failed
    else
        return GOAL_RESULT_Continue
    end
end

function ObjActTest_Terminate(arg0, arg1)
    arg0:ClearFinishObjAct()
    return 
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ObjActTest, true)
function ObjActTest_Interupt(arg0, arg1)
    return false
end

return 
