REGISTER_GOAL(GOAL_COMMON_ComboAttack_SuccessAngle180, "ComboAttack180")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 1, "çUåÇëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 2, "ê¨å˜ãóó£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 3, "è„çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 4, "â∫çUåÇäpìx", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_ComboAttack_SuccessAngle180, 1)
ComboAttack180_Activate = function(ai, goal)
   local life = goal:GetLife()
   local behaviorNo = goal:GetParam(0)
   local attackTarget = goal:GetParam(1)
   local distType = goal:GetParam(2)
   local successAngle = 180
   local turnTime = 1.5
   local turnFaceAngle = 20
   local isComboAttack = true
   local isMoveCancel = true
   local isGaurdBreakAtk = false
   local isTurn = false
   local angleUpAtt = goal:GetParam(3)
   local angleDownAtt = goal:GetParam(4)
   goal:AddSubGoal(GOAL_COMMON_CommonAttack, life, behaviorNo, attackTarget, distType, successAngle, turnTime, turnFaceAngle, isComboAttack, isMoveCancel, isGaurdBreakAtk, isTurn, angleUpAtt, angleDownAtt)
end

ComboAttack180_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ComboAttack180_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComboAttack_SuccessAngle180, true)
ComboAttack180_Interupt = function(ai, goal)
   return false
end


