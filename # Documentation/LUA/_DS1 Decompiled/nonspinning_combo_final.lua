REGISTER_GOAL(GOAL_COMMON_NonspinningComboFinal, "NonspinningComboFinal")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 0, "EzStateî‘çÜ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 1, "çUåÇëŒè€ÅyTypeÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 2, "ê¨å˜ãóó£ÅyTypeÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 3, "è„çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 4, "â∫çUåÇäpìx", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_NonspinningComboFinal, 1)
ENABLE_COMBO_ATK_CANCEL(GOAL_COMMON_NonspinningComboFinal)
NonspinningComboFinal_Activate = function(ai, goal)
   local life = goal:GetLife()
   local behaviorNo = goal:GetParam(0)
   local attackTarget = goal:GetParam(1)
   local distType = goal:GetParam(2)
   local successAngle = 180
   local turnTime = 0
   local turnFaceAngle = 180
   local isComboAttack = false
   local isMoveCancel = true
   local isGaurdBreakAtk = false
   local isTurn = true
   local angleUpAtt = goal:GetParam(3)
   local angleDownAtt = goal:GetParam(4)
   goal:AddSubGoal(GOAL_COMMON_CommonAttack, life, behaviorNo, attackTarget, distType, successAngle, turnTime, turnFaceAngle, isComboAttack, isMoveCancel, isGaurdBreakAtk, isTurn, angleUpAtt, angleDownAtt)
end

NonspinningComboFinal_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

NonspinningComboFinal_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_NonspinningComboFinal, true)
NonspinningComboFinal_Interupt = function(ai, goal)
   return false
end


