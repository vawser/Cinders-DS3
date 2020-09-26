REGISTER_GOAL(GOAL_HusiHeavy_Bow255003_Battle, "HusiHeavy_Bow255003Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_HusiHeavy_Bow255003_Battle, 1)
HusiHeavy_Bow255003Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   ai:AddObserveRegion(0, TARGET_ENE_0, 1812101)
   local FirstAttID = 3000
   local ComAttID = 3001
   local ShootNum = ai:GetRandam_Int(2, 5)
   Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
end

HusiHeavy_Bow255003Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiHeavy_Bow255003Battle_Terminate = function(ai, goal)
end

HusiHeavy_Bow255003Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local playerRegion = 1812101
   local newhome = 1812102
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideTargetRegion(TARGET_ENE_0, playerRegion) then
      goal:ClearSubGoal()
      ai:SetEventMoveTarget(newhome)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_EVENT, 1, TARGET_SELF, false, -1)
      return true
   end
   local superStepDist = 3
   local superStepPer = 10
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


