REGISTER_GOAL(GOAL_Husi_Bow250005_Battle, "Husi_Bow250005Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Husi_Bow250005_Battle, 1)
Husi_Bow250005Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   local myThinkId = ai:GetNpcThinkParamID()
   local RunawayArea = 0
   if myThinkId == 250021 then
      ai:AddObserveRegion(0, TARGET_ENE_0, 1812101)
   end
   if targetDist >= 15 then
      actPerArr[1] = 100
      actPerArr[2] = 0
      actPerArr[3] = 0
   elseif targetDist >= 8 then
      actPerArr[1] = 80
      actPerArr[2] = 20
      actPerArr[3] = 0
   elseif targetDist >= 4 then
      actPerArr[1] = 20
      actPerArr[2] = 60
      actPerArr[3] = 20
   else
      actPerArr[1] = 0
      actPerArr[2] = 40
      actPerArr[3] = 60
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Husi_Bow250005_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Husi_Bow250005_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Husi_Bow250005_Act03)
   local atkAfterOddsTbl = {0, 0, 0, 0, 0, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Husi_Bow250005_Act02 = function(ai, goal, paramTbl)
   local FirstAttID = 3000
   local ComAttID = 3001
   local ShootNum = ai:GetRandam_Int(2, 4)
   Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Bow250005_Act01 = function(ai, goal, paramTbl)
   local FirstAttID = 3000
   local ComAttID = 3001
   local ShootNum = ai:GetRandam_Int(1, 2)
   Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Bow250005_Act02 = function(ai, goal, paramTbl)
   local FirstAttID = 3000
   local ComAttID = 3001
   local ShootNum = ai:GetRandam_Int(1, 2)
   Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Bow250005_Act03 = function(ai, goal, paramTbl)
   local FirstAttID = 3000
   local ComAttID = 3001
   local ShootNum = ai:GetRandam_Int(1, 1)
   Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Bow250005Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi_Bow250005Battle_Terminate = function(ai, goal)
end

Husi_Bow250005Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ThinkID = ai:GetNpcThinkParamID()
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ThinkID == 250021 then
      local playerRegion = 1812101
      local newhome = 1812102
      if ai:IsInsideTargetRegion(TARGET_ENE_0, playerRegion) then
         goal:ClearSubGoal()
         ai:SetEventMoveTarget(newhome)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_EVENT, 1, TARGET_SELF, false, -1)
         return true
      end
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 30
   local leftStepPer = 35
   local rightStepPer = 35
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


