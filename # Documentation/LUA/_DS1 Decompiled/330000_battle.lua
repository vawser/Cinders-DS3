REGISTER_GOAL(GOAL_CrystalLizard330000_Battle, "CrystalLizard330000Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_CrystalLizard330000_Battle, 1)
CrystalLizard330000Battle_Activate = function(ai, goal)
   local RUNAWAY_LIFETIME = 6
   if 0 == ai:GetNumber(0) then
      goal:AddSubGoal(GOAL_CrystalLizard330000_Runaway, RUNAWAY_LIFETIME)
   end
   goal:AddSubGoal(GOAL_CrystalLizard330000_Hide, 10)
end

CrystalLizard330000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

CrystalLizard330000Battle_Terminate = function(ai, goal)
end

CrystalLizard330000Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Damaged) or ai:IsInterupt(INTERUPT_Damaged_Stranger) then
      ai:Replaning()
      ai:SetNumber(0, 0)
   end
   return false
end

REGISTER_GOAL(GOAL_CrystalLizard330000_Runaway, "CrystalLizard330000Runaway")
REGISTER_GOAL_NO_INTERUPT(GOAL_CrystalLizard330000_Runaway, true)
CrystalLizard330000Runaway_Activate = function(ai, goal)
   local life_time = goal:GetLife()
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, life_time, TARGET_ENE_0, 100, TARGET_SELF, false, -1)
end

CrystalLizard330000Runaway_Update = function(ai, goal)
   if goal:GetLastSubGoalResult() == GOAL_RESULT_Failed then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

CrystalLizard330000Runaway_Terminate = function(ai, goal)
end

CrystalLizard330000Runaway_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL(GOAL_CrystalLizard330000_Hide, "CrystalLizard330000Hide")
REGISTER_GOAL_NO_UPDATE(GOAL_CrystalLizard330000_Hide, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_CrystalLizard330000_Hide, true)
CrystalLizard330000Hide_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   local life_time = goal:GetLife()
   goal:AddSubGoal(GOAL_COMMON_Wait, life_time, TARGET_ENE_0)
   ai:SetNumber(0, 1)
end

CrystalLizard330000Hide_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

CrystalLizard330000Hide_Terminate = function(ai, goal)
end

CrystalLizard330000Hide_Interupt = function(ai, goal)
   return false
end


