REGISTER_GOAL(GOAL_SanzA6051_Battle, "SanzA6051Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SanzA6051_Battle, 1)
SanzA6051Battle_Activate = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local selfmp = ai:GetMp(TARGET_SELF)
   local timer = ai:GetTimer(0)
   local flag = ai:GetNumber(0)
   if timer >= 0.1 then
      if flag == 1 then
         SanzA6051_Battle_Bow(ai, goal)
      else
         SanzA6051_Battle_Sword(ai, goal)
      end
   else
      SanzA6051_Battle_Normal_Attack(ai, goal)
      ai:SetTimer(0, 4)
   end
   -- Tried to add an 'end' here but it's incorrect
end

SanzA6051_Battle_Normal_Attack = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local nearDist = 4
   if nearDist <= targetDist then
      SanzA6051_Battle_Bow(ai, goal)
      ai:SetNumber(0, 1)
   else
      SanzA6051_Battle_Sword(ai, goal)
      ai:SetNumber(0, 0)
   end
end

SanzA6051_Battle_Bow = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   if targetDist <= 7 then
      if fate <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 45), false, true, -1)
      end
   elseif targetDist <= 12 then
      if fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 45), true, true, -1)
      end
   elseif fate3 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 45), false, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

SanzA6051_Battle_Sword = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local NormalR_Dist = 2.5
   CommonNPC_ChangeWepR1(ai, goal)
   CommonNPC_ChangeWepL1(ai, goal)
   if fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, true, 4)
      SanzA6051_Battle_NormalR_Comb(ai, goal)
   elseif fate <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, NormalR_Dist, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(90, 120), false, true, 4)
      SanzA6051_Battle_NormalR_Comb(ai, goal)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 7, TARGET_ENE_0, false, 4)
   end
   SanzA6051_Battle_Kougeki_Noato(ai, goal)
end

SanzA6051_Battle_NormalR_Comb = function(ai, goal)
   local NR_fate = ai:GetRandam_Int(1, 100)
   local NR_fate2 = ai:GetRandam_Int(1, 100)
   local NR_fate3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   if NR_fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if NR_fate3 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if NR_fate2 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
end

SanzA6051_Battle_Kougeki_Noato = function(ai, goal)
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

SanzA6051Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

SanzA6051Battle_Terminate = function(ai, goal)
end

SanzA6051Battle_Interupt = function(ai, goal)
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


