REGISTER_GOAL(GOAL_Laughtrec_Helper6390_Battle, "Laughtrec_Helper6390Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Laughtrec_Helper6390_Battle, 1)
Laughtrec_Helper6390Battle_Activate = function(ai, goal)
   Laughtrec_Helper6390_Battle_Approach(ai, goal)
   Laughtrec_Helper6390_Battle_Normal(ai, goal)
   Laughtrec_Helper6390_Battle_Attack_After(ai, goal)
end

Laughtrec_Helper6390_Battle_Approach = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local NormalR_Dist = 2
   if NormalR_Dist <= targetDist then
      if fate <= 50 then
         CommonNPC_ChangeWepR1(ai, goal)
      else
         CommonNPC_ChangeWepR2(ai, goal)
      end
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, false, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, false, -1)
      end
   end
end

Laughtrec_Helper6390_Battle_Normal = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   if fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if fate2 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
end

Laughtrec_Helper6390_Battle_Attack_After = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   if fate <= 50 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      elseif fate2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      end
   elseif fate <= 50 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, MoveDist, TARGET_ENE_0, false, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, MoveDist, TARGET_ENE_0, false, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(4, 6), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(25, 50), false, true, -1)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Laughtrec_Helper6390Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Laughtrec_Helper6390Battle_Terminate = function(ai, goal)
end

Laughtrec_Helper6390Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local FindATKDist = 3
      local FindATKPer = 50
      local MoveDist = 3
      if targetDist <= FindATKDist and fate <= FindATKPer then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, MoveDist, TARGET_ENE_0, true, 4)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local Suc_GuardDist = 3
      local Suc_GuardPer = 100
      if targetDist <= Suc_GuardDist and fate <= Suc_GuardPer then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local combRunDist = 3
      local combRunPer = 50
      if targetDist < combRunDist and fate <= combRunPer then
         goal:ClearSubGoal()
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, combRunDist, TARGET_ENE_0, false, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local shootIntPer = 50
      if fate <= shootIntPer then
         goal:ClearSubGoal()
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   return false
end


