REGISTER_GOAL(GOAL_COMMON_ComboTunable_SuccessAngle180, "ComboTunableSuccessAngle180")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboTunable_SuccessAngle180, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboTunable_SuccessAngle180, 1, "çUåÇëŒè€", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, "ê¨å˜ãóó£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, "çUåÇëOê˘âÒéûä‘ÅyïbÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboTunable_SuccessAngle180, 4, "ê≥ñ îªíËäpìxÅyìxÅz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, "è„çUåÇäpìx", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboTunable_SuccessAngle180, 6, "â∫çUåÇäpìx", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_ComboTunable_SuccessAngle180, 1)
ComboTunableSuccessAngle180_Activate = function(ai, goal)
   local life = goal:GetLife()
   local behaviorNo = goal:GetParam(0)
   local attackTarget = goal:GetParam(1)
   local distType = goal:GetParam(2)
   local successAngle = 180
   local turnTime = goal:GetParam(3)
   local turnFaceAngle = goal:GetParam(4)
   if turnTime < 0 then
      turnTime = 1.5
   end
   if turnFaceAngle < 0 then
      turnFaceAngle = 20
   end
   local isComboAttack = true
   local isMoveCancel = true
   local isGaurdBreakAtk = false
   local isTurn = false
   local angleUpAtt = goal:GetParam(5)
   local angleDownAtt = goal:GetParam(6)
   goal:AddSubGoal(GOAL_COMMON_CommonAttack, life, behaviorNo, attackTarget, distType, successAngle, turnTime, turnFaceAngle, isComboAttack, isMoveCancel, isGaurdBreakAtk, isTurn, angleUpAtt, angleDownAtt)
end

ComboTunableSuccessAngle180_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ComboTunableSuccessAngle180_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComboTunable_SuccessAngle180, true)
ComboTunableSuccessAngle180_Interupt = function(ai, goal)
   return false
end


