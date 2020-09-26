REGISTER_GOAL(GOAL_COMMON_Wait, "Wait")
REGISTER_GOAL(GOAL_COMMON_Stay, "Stay")
REGISTER_GOAL(GOAL_COMMON_MoveToSomewhere, "MoveToSomewhere")
REGISTER_GOAL(GOAL_COMMON_Guard, "Guard")
REGISTER_GOAL(GOAL_COMMON_SidewayMove, "SidewayMove")
REGISTER_GOAL(GOAL_COMMON_KeepDist, "KeepDist")
REGISTER_GOAL(GOAL_COMMON_BackToHome, "BackToHome")
REGISTER_GOAL(GOAL_COMMON_SpinStep, "SpinStep")
REGISTER_GOAL(GOAL_COMMON_LeaveTarget, "LeaveTarget")
REGISTER_GOAL(GOAL_COMMON_ApproachStep, "ApproachStep")
REGISTER_GOAL(GOAL_COMMON_Parry, "Parry")
_COMMON_GetEzStateAnimId = function(ai, animTblParamId)
   ret = {}
   local i = 1
   for i = 1, 30 do
      ret[i] = ai:GetEzStateAnimId(animTblParamId, i - 1)
   end
   return ret
end

_COMMON_GetMinDist = function(ai, animTblParamId)
   ret = {}
   local i = 1
   for i = 1, 30 do
      ret[i] = ai:GetMinDist(animTblParamId, i - 1)
   end
   return ret
end

_COMMON_GetMaxDist = function(ai, animTblParamId)
   ret = {}
   local i = 0
   for i = 0, 29 do
      ret[i] = ai:GetMaxDist(animTblParamId, i - 1)
   end
   return ret
end

_COMMON_GetAtkDistType = function(ai, animTblParamId)
   ret = {}
   local i = 1
   for i = 1, 30 do
      ret[i] = ai:GetAtkDistType(animTblParamId, i - 1)
      if ret[i] == 0 then
         ret[i] = DIST_Near
      elseif ret[i] == 1 then
         ret[i] = DIST_Middle
      elseif ret[i] == 2 then
         ret[i] = DIST_Far
      elseif ret[i] == 3 then
         ret[i] = DIST_Out
      elseif ret[i] == 4 then
         ret[i] = DIST_None
      end
   end
   return ret
end

_COMMON_GetOddsParam = function(ai, oddsParamId)
   ret = {}
   local oddsParamOffset = ai:GetOddsParamIdOffset(100)
   local i = 0
   for i = 0, 99 do
      ret[i] = ai:GetOddsParam(oddsParamOffset + oddsParamId, i)
   end
   return ret
end

_COMMON_MulOddsXWeight = function(inoutAct, inFinal)
   local i = 0
   local bInitFinal = true
   if table.getn(inFinal) == 0 then
      bInitFinal = false
   end
   local totalActVal = 0
   local maxActVal = 0
   for i = 0, 99 do
      if bInitFinal == false then
         inFinal[i] = 1
      end
      inoutAct[i] = inoutAct[i] * inFinal[i]
      if inoutAct[i] < 0 then
         inoutAct[i] = 0
      end
      inoutAct[i] = inoutAct[i] + totalActVal
      totalActVal = inoutAct[i]
      if maxActVal < inoutAct[i] then
         maxActVal = inoutAct[i]
      end
   end
   return maxActVal
end

_COMMON_MulWeightParam = function(ai, final, oddsParamId)
   local zeroTbl = false
   if table.getn(final) == 0 then
      zeroTbl = true
   end
   local oddsParamOffset = ai:GetOddsParamIdOffset(100)
   local i = 0
   for i = 0, 99 do
      if zeroTbl then
         final[i] = 1
      end
      final[i] = final[i] * ai:GetOddsParam(oddsParamOffset + oddsParamId, i)
   end
end


