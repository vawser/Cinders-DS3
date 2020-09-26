REGISTER_GOAL(GOAL_Ghost_Male267000_Battle, "Ghost_Male267000Battle")
local Att3000_Dist_min = 3.2
local Att3000_Dist_max = 4.1
local Att3001_Dist_min = 3.2
local Att3001_Dist_max = 4.4
local Att3002_Dist_min = 0
local Att3002_Dist_max = 1.5
local Att3003_Dist_min = 2.6
local Att3003_Dist_max = 4
local Att3004_Dist_min = 5
local Att3004_Dist_max = 10
local Att3008_Dist_min = 0
local Att3008_Dist_max = 2
REGISTER_GOAL_NO_UPDATE(GOAL_Ghost_Male267000_Battle, 1)
Ghost_Male267000Battle_Activate = function(ai, goal)
   local myThinkId = ai:GetNpcThinkParamID()
   local DoObserveRegion = 0
   local ObserveRegion01 = 0
   local ObserveRegion02 = 0
   if myThinkId == 267010 or myThinkId == 267011 then
      ObserveRegion01 = 1602850
      ObserveRegion02 = 1602850
      DoObserveRegion = 1
   elseif myThinkId == 267020 or myThinkId == 267021 then
      ObserveRegion01 = 1602851
      ObserveRegion02 = 1602851
      DoObserveRegion = 1
   elseif myThinkId == 267030 or myThinkId == 267031 then
      ObserveRegion01 = 1602852
      ObserveRegion02 = 1602852
      DoObserveRegion = 1
   elseif myThinkId == 267040 or myThinkId == 267041 then
      ObserveRegion01 = 1602853
      ObserveRegion02 = 1602853
      DoObserveRegion = 1
   elseif myThinkId == 267050 then
      ObserveRegion01 = 1602854
      ObserveRegion02 = 1602854
      DoObserveRegion = 1
   end
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
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
      if targetDist >= 8 then
         actPerArr[1] = 20
         actPerArr[2] = 40
         actPerArr[3] = 30
         actPerArr[7] = 10
      elseif targetDist >= 5 then
         if ai:IsTargetGuard(TARGET_ENE_0) == true then
            actPerArr[1] = 30
            actPerArr[2] = 35
            actPerArr[3] = 25
            actPerArr[7] = 10
         else
            actPerArr[1] = 30
            actPerArr[2] = 35
            actPerArr[3] = 25
            actPerArr[7] = 10
         end
      elseif targetDist >= 2.6 then
         if ai:IsTargetGuard(TARGET_ENE_0) == true then
            actPerArr[1] = 15
            actPerArr[2] = 15
            actPerArr[3] = 60
            actPerArr[7] = 10
         else
            actPerArr[1] = 0
            actPerArr[2] = 35
            actPerArr[3] = 30
            actPerArr[7] = 35
         end
      else
         actPerArr[1] = 0
         actPerArr[2] = 50
         actPerArr[7] = 50
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act03)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act08)
   local atkAfterOddsTbl = {0, 60, 20, 10, 10, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Ghost_Male267000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Male267000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, 0)
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Male267000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3003, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Male267000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, true, 0)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3008, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Male267000_Act08 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Male267000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ghost_Male267000Battle_Terminate = function(ai, goal)
end

Ghost_Male267000Battle_Interupt = function(ai, goal)
   return false
end


