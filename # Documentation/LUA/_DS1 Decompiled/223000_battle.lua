REGISTER_GOAL(GOAL_GreaterDemon223000_Battle, "GreaterDemon223000Battle")
local Att3000_Dist_min = 6
local Att3000_Dist_max = 12
local Att3002_Dist_min = 4
local Att3002_Dist_max = 12
local Att3004_Dist_min = 14
local Att3004_Dist_max = 19
local Att3005_Dist_min = -3
local Att3005_Dist_max = 2
local Att3006_Dist_min = 3
local Att3006_Dist_max = 10
local Att3007_Dist_min = -3
local Att3007_Dist_max = 5
REGISTER_GOAL_NO_UPDATE(GOAL_GreaterDemon223000_Battle, 1)
GreaterDemon223000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(0)
   if eventNo == 10 then
      actPerArr[9] = 100
   elseif targetDist >= 14 then
      actPerArr[1] = 10
      actPerArr[2] = 5
      actPerArr[4] = 0
      actPerArr[5] = 20
      actPerArr[6] = 0
      actPerArr[7] = 65
      actPerArr[8] = 0
   elseif targetDist >= 10 then
      actPerArr[1] = 50
      actPerArr[2] = 40
      actPerArr[4] = 0
      actPerArr[5] = 10
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[8] = 0
   elseif targetDist >= 6 then
      actPerArr[1] = 25
      actPerArr[2] = 25
      actPerArr[4] = 0
      actPerArr[5] = 40
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[8] = 10
   elseif targetDist >= 2.5 then
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[4] = 0
      actPerArr[5] = 50
      actPerArr[6] = 15
      actPerArr[7] = 0
      actPerArr[8] = 35
   elseif targetDist >= 0.5 then
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[4] = 10
      actPerArr[5] = 0
      actPerArr[6] = 55
      actPerArr[7] = 0
      actPerArr[8] = 35
   else
      actPerArr[1] = 0
      actPerArr[2] = 0
      actPerArr[4] = 50
      actPerArr[5] = 0
      actPerArr[6] = 25
      actPerArr[7] = 0
      actPerArr[8] = 25
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, GreaterDemon223000_Act01)
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 20, 80}
   actFuncArr[4] = REGIST_FUNC(ai, goal, GreaterDemon223000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, GreaterDemon223000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, GreaterDemon223000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, GreaterDemon223000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, GreaterDemon223000_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, GreaterDemon223000_Act09)
   local atkAfterFunc = REGIST_FUNC(ai, goal, GreaterDemon223000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

GreaterDemon223000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GreaterDemon223000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3005
   local AttDist = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GreaterDemon223000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3006
   local AttDist = DIST_Far
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GreaterDemon223000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3007
   local AttDist = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GreaterDemon223000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3004
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GreaterDemon223000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GreaterDemon223000_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 20, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 2, TARGET_SELF, true)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GreaterDemon223000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 75 then
   elseif fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
      return true
   end
   return false
end

GreaterDemon223000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GreaterDemon223000Battle_Terminate = function(ai, goal)
end

GreaterDemon223000Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local superStepDist = 3
   local superStepPer = 5
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 6
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 5
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 6
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distUseItem_Act = 12
   local oddsUseItem_Act = 15
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 10 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      elseif targetDist >= 6 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif targetDist >= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   return false
end


