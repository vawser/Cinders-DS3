function common10010_Logic(arg0)
    if arg0:IsExistReqObjAct() then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_NEAR_OBJ_ACT_POINT, 0.1, TARGET_SELF, false, -1)
        arg0:AddTopGoal(GOAL_COMMON_ObjActTest, 5, OBJ_ACT_TYPE_LEVER)
    else
        COMMON_EasySetup3(arg0)
    end
    return 
end

function common10010_Interupt(arg0, arg1)
    return 
end

return 
