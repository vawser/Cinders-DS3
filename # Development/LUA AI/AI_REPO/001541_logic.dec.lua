function AutoTest1541_Logic(arg0)
    arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 5, POINT_AutoWalkAroundTest, AI_DIR_TYPE_CENTER, 1, TARGET_LOCALPLAYER, true)
    return 
end

function AutoTest1541_Interupt(arg0, arg1)
    if arg0:DbgAutoRemo_IsWaitCommand() then
        arg1:ClearSubGoal()
        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:DbgAutoRemo_GetWaitCommandTime(), TARGET_NONE, 0, 0, 0)
        arg0:DbgAutoRemo_ResetWaitCommand()
        return true
    else
        return false
    end
end

return 
