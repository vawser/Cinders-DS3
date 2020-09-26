REGISTER_GOAL(GOAL_COMMON_LadderAct, "LadderAct")
_GetId = function(animId, ai)
   local isPlayerType = false
   if ai:IsNpcPlayer() or ai:IsLocalPlayer() then
      isPlayerType = true
   end
   local ret = animId
   if isPlayerType == true then
      if animId == 7210 then
         ret = NPC_ATK_Ladder_10
      elseif animId == 7211 then
         ret = NPC_ATK_Ladder_11
      elseif animId == 7212 then
         ret = NPC_ATK_Ladder_12
      elseif animId == 7213 then
         ret = NPC_ATK_Ladder_13
      elseif animId == 7220 then
         ret = NPC_ATK_Ladder_20
      elseif animId == 7221 then
         ret = NPC_ATK_Ladder_21
      elseif animId == 7222 then
         ret = NPC_ATK_Ladder_22
      elseif animId == 7223 then
         ret = NPC_ATK_Ladder_23
      end
   end
   return ret
end

local DEF_LADDER_ACT_STATE_InValid = -1
local DEF_LADDER_ACT_STATE_BeginBottom = 0
local DEF_LADDER_ACT_STATE_BeginTop = 1
local DEF_LADDER_ACT_STATE_RightHandUp_Up = 2
local DEF_LADDER_ACT_STATE_LeftHandUp_Up = 3
local DEF_LADDER_ACT_STATE_RightHandUp_Down = 4
local DEF_LADDER_ACT_STATE_LeftHandUp_Down = 5
local DEF_LADDER_ACT_STATE_Exit_Up = 6
local DEF_LADDER_ACT_STATE_Exit_Down = 7
local DEF_LADDER_ACT_STATE_RightHandUp_Wait = 8
local DEF_LADDER_ACT_STATE_LeftHandUp_Wait = 9
local DEF_LADDER_ACT_STATE_StaminaFall = 23
local DEF_LADDER_ACT_Up = 7210
local DEF_LADDER_ACT_Down = 7220
local DEF_LADDER_ACT_SlideDown = 7230
LadderAct_Activate = function(ai, goal)
   local behaviorNo = goal:GetParam(0)
   local target = goal:GetParam(1)
   local initDirMove = goal:GetParam(2)
   local ladderDirMove = initDirMove
   local ladderActState = ai:GetLadderActState(TARGET_SELF)
   local animStartId = 0
   local dmyStartId = ai:CalcGetNearestLadderActDmyIdByLadderObj()
   if dmyStartId == 191 then
      animStartId = _GetId(7210, ai)
   else
      animStartId = _GetId(7220, ai)
   end
   if ladderActState == DEF_LADDER_ACT_STATE_InValid then
      if ai:IsChrAroundLadderEdge(2, dmyStartId) == false then
         ai:SetPosAngBy1stNearObjDmyId(ai, dmyStartId)
         ai:SetAttackRequest(animStartId)
      elseif dmyStartId == 192 then
      elseif dmyStartId == 191 then
         return GOAL_RESULT_Failed
   end
end

LadderAct_Update = function(ai, goal)
   local behaviorNo = goal:GetParam(0)
   local target = goal:GetParam(1)
   if ai:LastPathFindingIsFailed() == false and ai:HasPathResult() == false then
      ai:FollowPath(target, AI_DIR_TYPE_CENTER, 1.5, true, 0)
   end
   local ladderDirMove = ai:GetLadderDirMove(TARGET_ENE_0)
   ai:DoEzAction(0, -1)
   local ladderActState = ai:GetLadderActState(TARGET_SELF)
   local isPassNextAnim = false
   if ladderActState == DEF_LADDER_ACT_STATE_RightHandUp_Wait or ladderActState == DEF_LADDER_ACT_STATE_LeftHandUp_Wait then
      isPassNextAnim = true
   elseif ai:IsFinishAttack() or ai:IsEnableComboAttack() then
      isPassNextAnim = true
   end
   if isPassNextAnim then
      if ladderActState == DEF_LADDER_ACT_STATE_InValid then
         return GOAL_RESULT_Success
      elseif ladderDirMove == 0 then
      elseif ladderDirMove == 1 then
         ai:SetAttackRequest(_GetId(DEF_LADDER_ACT_Up, ai))
      elseif ladderDirMove == -1 then
         ai:SetAttackRequest(_GetId(DEF_LADDER_ACT_Down, ai))
      end
   end
   goal:AddLifeParentSubGoal(0.3)
   local ladderActState = ai:GetLadderActState(TARGET_SELF)
   if ladderActState == DEF_LADDER_ACT_STATE_InValid then
      return GOAL_RESULT_Success
   elseif ladderActState == DEF_LADDER_ACT_STATE_StaminaFall then
      return GOAL_RESULT_Failed
   end
   return GOAL_RESULT_Continue
end

LadderAct_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LadderAct, true)
LadderAct_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Damaged) then
      return false
   end
   return false
end


