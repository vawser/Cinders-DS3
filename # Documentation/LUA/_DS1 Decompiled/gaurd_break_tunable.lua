REGISTER_GOAL(GOAL_COMMON_GuardBreakTunable, "GuardBreakTunable")
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakTunable, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakTunable, 1, "UŒ‚‘ÎÛ", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakTunable, 2, "¬Œ÷‹——£", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakTunable, 3, "UŒ‚‘Où‰ñŠÔy•bz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakTunable, 4, "³–Ê”»’èŠp“xy“xz", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakTunable, 5, "ãUŒ‚Šp“x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakTunable, 6, "‰ºUŒ‚Šp“x", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_GuardBreakTunable, 1)
GuardBreakTunable_Activate = function(ai, goal)
   local life = goal:GetLife()
   local behaviorNo = goal:GetParam(0)
   local attackTarget = goal:GetParam(1)
   local distType = goal:GetParam(2)
   local successAngle = 90
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
   local isGaurdBreakAtk = true
   local isTurn = false
   local angleUpAtt = goal:GetParam(5)
   local angleDownAtt = goal:GetParam(6)
   goal:AddSubGoal(GOAL_COMMON_CommonAttack, life, behaviorNo, attackTarget, distType, successAngle, turnTime, turnFaceAngle, isComboAttack, isMoveCancel, isGaurdBreakAtk, isTurn, angleUpAtt, angleDownAtt)
end

GuardBreakTunable_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GuardBreakTunable_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_GuardBreakTunable, true)
GuardBreakTunable_Interupt = function(ai, goal)
   return false
end


