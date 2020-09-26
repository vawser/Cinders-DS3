REGISTER_GOAL(GOAL_Ghost_Female268000_Battle, "Ghost_Female268000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1
local Att3001_Dist_min = 0
local Att3001_Dist_max = 1.4
local Att3002_Dist_min = 0
local Att3002_Dist_max = 3.2
local Att3003_Dist_min = 0
local Att3003_Dist_max = 10
REGISTER_GOAL_NO_UPDATE(GOAL_Ghost_Female268000_Battle, 1)
Ghost_Female268000Battle_Activate = function(ai, goal)
   local DoObserveRegion = 0
   local ObserveRegion01 = 0
   local ObserveRegion02 = 0
   ObserveRegion01 = 1602860
   ObserveRegion02 = 1602860
   DoObserveRegion = 1
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(0)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local Kisou = 0
   if DoObserveRegion == 1 then
      if not ai:IsInsideTargetRegion(TARGET_SELF, ObserveRegion01) and not ai:IsInsideTargetRegion(TARGET_SELF, ObserveRegion02) then
         actPerArr[8] = 100
         Kisou = 1
      elseif not ai:IsInsideTargetRegion(TARGET_ENE_0, ObserveRegion01) and not ai:IsInsideTargetRegion(TARGET_ENE_0, ObserveRegion02) then
         actPerArr[8] = 100
         Kisou = 1
      end
   end
   if Kisou == 0 then
      if ai:IsFinishTimer(0) == true then
         actPerArr[9] = 100
      elseif targetDist >= 8 then
         actPerArr[1] = 0
         actPerArr[7] = 0
         actPerArr[3] = 5
         actPerArr[6] = 95
      elseif targetDist >= 5 then
         actPerArr[1] = 5
         actPerArr[7] = 5
         actPerArr[3] = 25
         actPerArr[6] = 65
      elseif targetDist >= 2.5 then
         actPerArr[1] = 15
         actPerArr[7] = 15
         actPerArr[3] = 30
         actPerArr[6] = 40
      else
         actPerArr[1] = 40
         actPerArr[7] = 40
         actPerArr[3] = 10
         actPerArr[6] = 10
      end
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act01)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act03)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act09)
   local atkAfterOddsTbl = {0, 60, 10, 30, 0, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Ghost_Female268000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Female268000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Female268000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3003, TARGET_ENE_0, DIST_Middle)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 3), TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Female268000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Female268000_Act08 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Female268000_Act09 = function(ai, goal, paramTbl)
   ai:SetTimer(0, 9999)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_SELF, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Female268000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ghost_Female268000Battle_Terminate = function(ai, goal)
end

Ghost_Female268000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local combRunDist = 5
   local combRunPer = 30
   if Damaged_Act(ai, goal, combRunDist, combRunPer) then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, combRunDist, TARGET_ENE_0, false, -1)
      return true
   end
   return false
end


