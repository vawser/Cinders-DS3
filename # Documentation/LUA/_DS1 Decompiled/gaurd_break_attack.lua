REGISTER_GOAL(GOAL_COMMON_GuardBreakAttack, "GuardBreakAttack")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakAttack, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakAttack, 1, "çUåÇëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakAttack, 2, "ê¨å˜ãóó£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakAttack, 3, "è„çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakAttack, 4, "â∫çUåÇäpìx", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_GuardBreakAttack, 1)
GuardBreakAttack_Activate = function(ai, goal)
   local life = goal:GetLife()
   local behaviorNo = goal:GetParam(0)
   local attackTarget = goal:GetParam(1)
   local distType = goal:GetParam(2)
   local successAngle = 90
   local turnTime = 1.5
   local turnFaceAngle = 20
   local isComboAttack = true
   local isMoveCancel = true
   local isGaurdBreakAtk = true
   local isTurn = false
   local angleUpAtt = goal:GetParam(3)
   local angleDownAtt = goal:GetParam(4)
   goal:AddSubGoal(GOAL_COMMON_CommonAttack, life, behaviorNo, attackTarget, distType, successAngle, turnTime, turnFaceAngle, isComboAttack, isMoveCancel, isGaurdBreakAtk, isTurn, angleUpAtt, angleDownAtt)
end

GuardBreakAttack_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GuardBreakAttack_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_GuardBreakAttack, true)
GuardBreakAttack_Interupt = function(ai, goal)
   return false
end


