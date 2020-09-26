local DEF_MAX_ACT = 20
Common_Clear_Param = function(ActXPer, funcActX, defFuncParamTbl)
   local i = 1
   for i = 1, DEF_MAX_ACT do
      ActXPer[i] = 0
      funcActX[i] = nil
      defFuncParamTbl[i] = {}
   end
end

Common_Battle_Activate = function(ai, goal, ActXPer, funcActX, atkAfterFunc, defFuncParamTbl)
   local funcActArr = {}
   local perActArr = {}
   local totalPerAct = 0
   local defFuncActArr = {function()
      return defAct01(ai, goal, defFuncParamTbl[1])
   end, function()
      return defAct02(ai, goal, defFuncParamTbl[2])
   end, function()
      return defAct03(ai, goal, defFuncParamTbl[3])
   end, function()
      return defAct04(ai, goal, defFuncParamTbl[4])
   end, function()
      return defAct05(ai, goal, defFuncParamTbl[5])
   end, function()
      return defAct06(ai, goal, defFuncParamTbl[6])
   end, function()
      return defAct07(ai, goal, defFuncParamTbl[7])
   end, function()
      return defAct08(ai, goal, defFuncParamTbl[8])
   end, function()
      return defAct09(ai, goal, defFuncParamTbl[9])
   end, function()
      return defAct10(ai, goal, defFuncParamTbl[10])
   end, function()
      return defAct11(ai, goal, defFuncParamTbl[11])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[12])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[13])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[14])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[15])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[16])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[17])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[18])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[19])
   end, function()
      return defAct12(ai, goal, defFuncParamTbl[20])
   end}
   local i = 1
   for i = 1, DEF_MAX_ACT do
      if funcActX[i] ~= nil then
         funcActArr[i] = funcActX[i]
      else
         funcActArr[i] = defFuncActArr[i]
      end
      perActArr[i] = ActXPer[i]
      totalPerAct = totalPerAct + perActArr[i]
   end
   local funcAfterAdjustSpace = nil
   if atkAfterFunc ~= nil then
      funcAfterAdjustSpace = atkAfterFunc
   else
      funcAfterAdjustSpace = function()
      HumanCommon_ActAfter_AdjustSpace(ai, goal, atkAfterOddsTbl)
   end
   end
   local GetWellSpace_Odds = 0
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local forceActIdx = ai:DbgGetForceActIdx()
      if forceActIdx > 0 and forceActIdx <= DEF_MAX_ACT then
         GetWellSpace_Odds = funcActArr[forceActIdx]()
         ai:DbgSetLastActIdx(forceActIdx)
      else
         local fateAct = ai:GetRandam_Int(1, totalPerAct)
         local totalPer = 0
         local i = 1
         for i = 1, DEF_MAX_ACT do
            totalPer = totalPer + perActArr[i]
            if fateAct <= totalPer then
               GetWellSpace_Odds = funcActArr[i]()
               ai:DbgSetLastActIdx(i)
               i = DEF_MAX_ACT
            end
         end
      end
   end
   local fateGWS = ai:GetRandam_Int(1, 100)
   if fateGWS <= GetWellSpace_Odds then
      funcAfterAdjustSpace()
   end
end

defAct01 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct02 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 10, 40, nil, nil, nil, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   return HumanCommon_Approach_and_ComboAtk(ai, goal, tbl)
end

defAct03 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3005, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct04 = function(ai, goal, paramTbl)
   local tbl = {5, 0, 3007, DIST_Middle, 3005, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local GBAID = tbl[3]
   local GBADist = tbl[4]
   local AttID = tbl[5]
   local AttDist = tbl[6]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[7], 100)
   Approach_and_GuardBreak_Act(ai, goal, AppDist, DashDist, Odds_Guard, GBAID, GBADist, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct05 = function(ai, goal, paramTbl)
   local tbl = {4, 6, 0, 3008, DIST_None, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   return HumanCommon_KeepDist_and_ThrowSomething(ai, goal, tbl)
end

defAct06 = function(ai, goal, paramTbl)
   local tbl = {3000, DIST_Far, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[3], 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, tbl[1], TARGET_ENE_0, tbl[2], 0)
   return GetWellSpace_Odds
end

defAct07 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3001, DIST_Middle}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return 100
end

defAct08 = function(ai, goal, paramTbl)
   local tbl = {nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[1], 0)
   Watching_Parry_Chance_Act(ai, goal)
   return GetWellSpace_Odds
end

defAct09 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 10, 40, nil, nil, nil, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   return HumanCommon_Approach_and_ComboAtk(ai, goal, tbl)
end

defAct10 = function(ai, goal, paramTbl)
   local tbl = {3000, 3001, 2, 4, 0}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   return HumanCommon_Shooting_Act(ai, goal, Tbl)
end

defAct11 = function(ai, goal, paramTbl)
   local tbl = {3002, 3003, 2, 4, 0}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   return HumanCommon_Shooting_Act(ai, goal, Tbl)
end

defAct12 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3001, DIST_Middle}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return 100
end

defAct13 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct14 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct15 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct16 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct17 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct18 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct19 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

defAct20 = function(ai, goal, paramTbl)
   local tbl = {1.5, 0, 3000, DIST_Middle, nil}
   if paramTbl[1] ~= nil then
      tbl = paramTbl
   end
   local AppDist = tbl[1]
   local DashDist = tbl[1] + 2
   local Odds_Guard = tbl[2]
   local AttID = tbl[3]
   local AttDist = tbl[4]
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(tbl[5], 100)
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   return GetWellSpace_Odds
end

HumanCommon_KeepDist_and_ThrowSomething = function(ai, goal, paramTbl)
   local LeaDist = paramTbl[1]
   local AppDist = paramTbl[2]
   local DashDist = paramTbl[2] + 2
   local Odds_Guard = paramTbl[3]
   local AttID = paramTbl[4]
   local AttDist = paramTbl[5]
   KeepDist_and_Attack_Act(ai, goal, LeaDist, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(paramTbl[6], 0)
   return GetWellSpace_Odds
end

HumanCommon_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local Odds_Guard = paramTbl[1]
   local Odds_NoAct = paramTbl[2]
   local Odds_BackAndSide = paramTbl[3]
   local Odds_Back = paramTbl[4]
   local Odds_BitWait = paramTbl[5]
   local Odds_Backstep = paramTbl[6]
   GetWellSpace_Act(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
end

HumanCommon_ActAfter_AdjustSpace_IncludeSidestep = function(ai, goal, paramTbl)
   local Odds_Guard = paramTbl[1]
   local Odds_NoAct = paramTbl[2]
   local Odds_BackAndSide = paramTbl[3]
   local Odds_Back = paramTbl[4]
   local Odds_BitWait = paramTbl[5]
   local Odds_Backstep = paramTbl[6]
   local Odds_Sidestep = paramTbl[7]
   GetWellSpace_Act_IncludeSidestep(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep, Odds_Sidestep)
end

HumanCommon_Approach_and_ComboAtk = function(ai, goal, paramTbl)
   local AppDist = paramTbl[1]
   local DashDist = paramTbl[1] + 2
   local Odds_Guard = paramTbl[2]
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   local ID_Att01 = GET_PARAM_IF_NIL_DEF(paramTbl[5], 3000)
   local ID_Att02 = GET_PARAM_IF_NIL_DEF(paramTbl[6], 3001)
   local ID_Att03 = GET_PARAM_IF_NIL_DEF(paramTbl[7], 3002)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= paramTbl[3] then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, ID_Att01, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= paramTbl[3] + paramTbl[4] then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, ID_Att01, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, ID_Att02, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, ID_Att01, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, ID_Att02, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, ID_Att03, TARGET_ENE_0, DIST_Middle, 0)
   end
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(paramTbl[8], 100)
   return GetWellSpace_Odds
end

HumanCommon_Watching_Parry_Chance_Act = function(ai, goal, paramTbl)
   Watching_Parry_Chance_Act(ai, goal)
   local GetWellSpace_Odds = GET_PARAM_IF_NIL_DEF(paramTbl[1], 100)
   return GetWellSpace_Odds
end

HumanCommon_Shooting_Act = function(ai, goal, paramTbl)
   local FirstAttID = paramTbl[1]
   local ComAttID = paramTbl[2]
   local ShootNum = ai:GetRandam_Int(paramTbl[3], paramTbl[4])
   local AfterActID = paramTbl[5]
   Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
   if AfterActID == 0 then
   elseif AfterActID == 1 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   elseif AfterActID == 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
   else
      ai:PrintText("šlogical error, get the manager!š ")
   end
   return 0
end

GET_PARAM_IF_NIL_DEF = function(param, defaultParam)
   if param ~= nil then
      return param
   end
   return defaultParam
end

REGIST_FUNC = function(ai, goal, funcName, paramTbl)
   return function()
      return funcName(ai, goal, paramTbl)
   end
end


