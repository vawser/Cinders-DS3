REGISTER_GOAL(GOAL_SanzB6052_Battle, "SanzB6052Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SanzB6052_Battle, 1)
SanzB6052Battle_Activate = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local selfmp = ai:GetMp(TARGET_SELF)
   if hprate >= 0.5 then
      SanzB6052_Battle_Sword(ai, goal)
   elseif selfmp >= 15 then
      SanzB6052_Battle_Magic(ai, goal)
   else
      SanzB6052_Battle_Sword(ai, goal)
   end
end

SanzB6052_Battle_Sword = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local NormalR_Dist = 2.5
   CommonNPC_ChangeWepR1(ai, goal)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, true, 4)
      SanzB6052_Battle_NormalR_Comb(ai, goal)
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(90, 120), false, true, 4)
      SanzB6052_Battle_NormalR_Comb(ai, goal)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 5, TARGET_ENE_0, false, 4)
   end
   SanzB6052_Battle_Kougeki_Noato(ai, goal)
end

SanzB6052_Battle_Magic = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local NormalR_Dist = 7.5
   CommonNPC_ChangeWepR2(ai, goal)
   if NormalR_Dist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0)
      SanzB6052_Battle_Kougeki_Noato(ai, goal)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0)
      SanzB6052_Battle_Kougeki_Noato(ai, goal)
   end
end

SanzB6052_Battle_NormalR_Comb = function(ai, goal)
   local NR_fate = ai:GetRandam_Int(1, 100)
   local NR_fate2 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   if NR_fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if NR_fate2 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
end

SanzB6052_Battle_Kougeki_Noato = function(ai, goal)
   local KN_fate = ai:GetRandam_Int(1, 100)
   local BackDist = 2.5
   CommonNPC_ChangeWepL1(ai, goal)
   if KN_fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(2, 4), TARGET_ENE_0, BackDist, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 65), false, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(4, 6), TARGET_ENE_0, BackDist, TARGET_ENE_0, true, 4)
   end
end

SanzB6052Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

SanzB6052Battle_Terminate = function(ai, goal)
end

SanzB6052Battle_Interupt = function(ai, goal)
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


