REGISTER_GOAL(GOAL_COMMON_NonspinningComboRepeat, "NonspinningComboRepeat")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboRepeat, 0, "EzStateî‘çÜ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboRepeat, 1, "çUåÇëŒè€ÅyTypeÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboRepeat, 2, "ê¨å˜ãóó£ÅyTypeÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboRepeat, 3, "è„çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboRepeat, 4, "â∫çUåÇäpìx", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_NonspinningComboRepeat, 1)
ENABLE_COMBO_ATK_CANCEL(GOAL_COMMON_NonspinningComboRepeat)
NonspinningComboRepeat_Activate = function(ai, goal)
   local life = goal:GetLife()
   local behaviorNo = goal:GetParam(0)
   local attackTarget = goal:GetParam(1)
   local distType = goal:GetParam(2)
   local successAngle = 180
   local turnTime = 0
   local turnFaceAngle = 180
   local isComboAttack = true
   local isMoveCancel = true
   local isGaurdBreakAtk = false
   local isTurn = true
   local angleUpAtt = goal:GetParam(3)
   local angleDownAtt = goal:GetParam(4)
   goal:AddSubGoal(GOAL_COMMON_CommonAttack, life, behaviorNo, attackTarget, distType, successAngle, turnTime, turnFaceAngle, isComboAttack, isMoveCancel, isGaurdBreakAtk, isTurn, angleUpAtt, angleDownAtt)
end

NonspinningComboRepeat_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

NonspinningComboRepeat_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_NonspinningComboRepeat, true)
NonspinningComboRepeat_Interupt = function(ai, goal)
   return false
end


