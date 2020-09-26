REGISTER_GOAL(GOAL_Stateless_princess6050_Battle, "Stateless_princess6050Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Stateless_princess6050_Battle, 1)
Stateless_princess6050Battle_Activate = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local selfmp = ai:GetMp(TARGET_SELF)
   if hprate >= 0.5 then
      Stateless_princess6050_Battle_Sword(ai, goal)
      Stateless_princess6050_Battle_Kougeki_Noato(ai, goal)
   elseif selfmp >= 15 then
      Stateless_princess6050_Battle_Magic(ai, goal)
      Stateless_princess6050_Battle_Kougeki_Noato(ai, goal)
   else
      Stateless_princess6050_Battle_Sword(ai, goal)
      Stateless_princess6050_Battle_Kougeki_Noato(ai, goal)
   end
end

Stateless_princess6050_Battle_Sword = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local NormalR_Dist = 2.5
   CommonNPC_ChangeWepR1(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   CommonNPC_ChangeWepL1(ai, goal)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, true, -1)
      Stateless_princess6050_Battle_NormalR_Comb(ai, goal)
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(90, 120), false, true, -1)
      Stateless_princess6050_Battle_NormalR_Comb(ai, goal)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 7, TARGET_ENE_0, false, -1)
   end
end

Stateless_princess6050_Battle_Magic = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local BackDist = 8
   if targetDist <= BackDist then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(2, 4), TARGET_ENE_0, BackDist, TARGET_ENE_0, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   end
end

Stateless_princess6050_Battle_NormalR_Comb = function(ai, goal)
   local NR_fate = ai:GetRandam_Int(1, 100)
   local NR_fate2 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   if NR_fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if NR_fate2 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
end

Stateless_princess6050_Battle_Kougeki_Noato = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local MoveDist = 3
   CommonNPC_ChangeWepL1(ai, goal)
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
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, MoveDist, TARGET_ENE_0, false, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, MoveDist, TARGET_ENE_0, false, -1)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(4, 6), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(25, 50), false, true, -1)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Stateless_princess6050Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Stateless_princess6050Battle_Terminate = function(ai, goal)
end

Stateless_princess6050Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) then
      local MissSwingDist = 1
      local MissSwingAttPer = 50
      if targetDist <= MissSwingDist and fate <= MissSwingAttPer then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local combRunDist = 2
      local combRunPer = 40
      if targetDist < combRunDist and fate <= combRunPer then
         goal:ClearSubGoal()
         if fate2 <= 60 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
         elseif fate2 <= 80 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local shootIntPer = 50
      if fate <= shootIntPer then
         goal:ClearSubGoal()
         if fate2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
         end
         return true
      end
   end
   return false
end


