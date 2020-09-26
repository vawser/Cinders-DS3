CommonNPC_ChangeWepL1 = function(ai, goal)
   local wep = ai:GetEquipWeaponIndex(ARM_L)
   if WEP_Primary ~= wep then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_L1, TARGET_NONE, DIST_None)
   end
end

CommonNPC_ChangeWepR1 = function(ai, goal)
   local wep = ai:GetEquipWeaponIndex(ARM_R)
   if WEP_Primary ~= wep then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_R1, TARGET_NONE, DIST_None)
   end
end

CommonNPC_ChangeWepL2 = function(ai, goal)
   local wep = ai:GetEquipWeaponIndex(ARM_L)
   if WEP_Secondary ~= wep then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_L2, TARGET_NONE, DIST_None)
   end
end

CommonNPC_ChangeWepR2 = function(ai, goal)
   local wep = ai:GetEquipWeaponIndex(ARM_R)
   if WEP_Secondary ~= wep then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_R2, TARGET_NONE, DIST_None)
   end
end

CommonNPC_SwitchBothHandMode = function(ai, goal)
   if not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_SwitchWep, TARGET_NONE, DIST_None)
   end
end

CommonNPC_SwitchOneHandMode = function(ai, goal)
   if ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_SwitchWep, TARGET_NONE, DIST_None)
   end
end

NPC_Approach_Act = function(ai, goal, AppDist, DashDist, Odds_Guard)
   ai:EndDash()
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 4
   end
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if DashDist <= targetDist then
      ai:StartDash()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, AppDist, TARGET_SELF, false, Guard)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, false, Guard)
   end
end

NPC_KATATE_Switch = function(ai, goal)
   if ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_None, 0)
   end
end

NPC_RYOUTE_Switch = function(ai, goal)
   if not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_None, 0)
   end
end

Damaged_StepCount_NPCPlayer = function(ai, goal, combRunDist, combRunPer, combRunCountPer, countAct, bkStepPer, leftStepPer, rightStepPer)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and targetDist < combRunDist and fate <= combRunPer then
      goal:ClearSubGoal()
      if fate2 <= bkStepPer then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
      elseif fate2 <= bkStepPer + leftStepPer then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
      end
      if fate3 <= combRunCountPer then
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, countAct, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
end

FindAttack_Step_NPCPlayer = function(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) and targetDist <= superStepDist and fate <= superStepPer then
      goal:ClearSubGoal()
      if fate2 <= bkStepPer then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
      elseif fate2 <= bkStepPer + leftStepPer then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
      end
      return true
   end
end

FindAttack_Act = function(ai, goal, superStepDist, superStepPer)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) and targetDist <= superStepDist and fate <= superStepPer then
      goal:ClearSubGoal()
      return true
   end
   return false
end

FindAttack_Step = function(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer, safetyDist)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BkStepPer = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
   local LeftStepPer = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
   local RightStepPer = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
   local SafetyDist = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
   if ai:IsInterupt(INTERUPT_FindAttack) and targetDist <= superStepDist and fate <= superStepPer then
      goal:ClearSubGoal()
      if fate2 <= BkStepPer then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, SafetyDist)
      elseif fate2 <= BkStepPer + LeftStepPer then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, SafetyDist)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, SafetyDist)
      end
      return true
   end
end

FindAttack_Guard = function(ai, goal, distGuard, oddsGuard, oddsLeaveAndSide, timeSide, distLeave)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local OddsLeaveAndSide = GET_PARAM_IF_NIL_DEF(oddsLeaveAndSide, 40)
   local TimeSide = GET_PARAM_IF_NIL_DEF(timeSide, 4)
   local DistLeave = GET_PARAM_IF_NIL_DEF(distLeave, 3)
   if ai:IsInterupt(INTERUPT_FindAttack) and targetDist <= distGuard and fate <= oddsGuard then
      goal:ClearSubGoal()
      if fate2 <= OddsLeaveAndSide then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, DistLeave, TARGET_ENE_0, true, 9910)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, DistLeave, TARGET_ENE_0, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, TimeSide, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      end
      return true
   end
end

FindAttack_Step_or_Guard = function(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local BkStepPer = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
   local LeftStepPer = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
   local RightStepPer = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
   local SafetyDist = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
   local OddsLeaveAndSide = GET_PARAM_IF_NIL_DEF(oddsLeaveAndSide, 40)
   local TimeSide = GET_PARAM_IF_NIL_DEF(timeSide, 4)
   local DistLeave = GET_PARAM_IF_NIL_DEF(distLeave, 3)
   if ai:IsInterupt(INTERUPT_FindAttack) and targetDist <= distResponse and fate <= oddsResponse then
      if fate2 <= oddsStep then
         goal:ClearSubGoal()
         if fate3 <= BkStepPer then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, SafetyDist)
         elseif fate3 <= BkStepPer + LeftStepPer then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, SafetyDist)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, SafetyDist)
         end
         return true
      else
         goal:ClearSubGoal()
         if fate3 <= OddsLeaveAndSide then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, DistLeave, TARGET_ENE_0, true, 9910)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, DistLeave, TARGET_ENE_0, true, 9910)
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, TimeSide, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         end
         return true
      end
   end
end

Damaged_Act = function(ai, goal, distNearRes, oddsNearRes)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and targetDist < distNearRes and fate <= oddsNearRes then
      goal:ClearSubGoal()
      return true
   end
   return false
end

Damaged_Guard = function(ai, goal, distGuard, oddsGuard, oddsLeaveAndSide, timeSide, distLeave)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local OddsLeaveAndSide = GET_PARAM_IF_NIL_DEF(oddsLeaveAndSide, 40)
   local TimeSide = GET_PARAM_IF_NIL_DEF(timeSide, 4)
   local DistLeave = GET_PARAM_IF_NIL_DEF(distLeave, 3)
   if ai:IsInterupt(INTERUPT_Damaged) and targetDist <= distGuard and fate <= oddsGuard then
      goal:ClearSubGoal()
      if fate2 <= OddsLeaveAndSide then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, DistLeave, TARGET_ENE_0, true, 9910)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, DistLeave, TARGET_ENE_0, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, TimeSide, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      end
      return true
   end
end

Damaged_Step = function(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BkStepPer = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
   local LeftStepPer = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
   local RightStepPer = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
   local SafetyDist = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
   if ai:IsInterupt(INTERUPT_Damaged) and targetDist <= distDamagedStep and fate <= oddsDamagedStep then
      goal:ClearSubGoal()
      if fate2 <= BkStepPer then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, SafetyDist)
      elseif fate2 <= BkStepPer + LeftStepPer then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, SafetyDist)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, SafetyDist)
      end
      return true
   end
end

Damaged_Step_or_Guard = function(ai, goal, distResponse, oddsResponse, oddsStep, bkStepPer, leftStepPer, rightStepPer, safetyDist, oddsLeaveAndSide, timeSide, distLeave)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local BkStepPer = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
   local LeftStepPer = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
   local RightStepPer = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
   local SafetyDist = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
   local OddsLeaveAndSide = GET_PARAM_IF_NIL_DEF(oddsLeaveAndSide, 40)
   local TimeSide = GET_PARAM_IF_NIL_DEF(timeSide, 4)
   local DistLeave = GET_PARAM_IF_NIL_DEF(distLeave, 3)
   if ai:IsInterupt(INTERUPT_Damaged) and targetDist <= distResponse and fate <= oddsResponse then
      if fate2 <= oddsStep then
         goal:ClearSubGoal()
         if fate3 <= BkStepPer then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, SafetyDist)
         elseif fate3 <= BkStepPer + LeftStepPer then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, SafetyDist)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, SafetyDist)
         end
         return true
      else
         goal:ClearSubGoal()
         if fate3 <= OddsLeaveAndSide then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, DistLeave, TARGET_ENE_0, true, 9910)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, DistLeave, TARGET_ENE_0, true, 9910)
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, TimeSide, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         end
         return true
      end
   end
end

GuardBreak_Act = function(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_GuardBreak) and targetDist <= distGuardBreak_Act and fate <= oddsGuardBreak_Act then
      goal:ClearSubGoal()
      return true
   end
   return false
end

GuardBreak_Attack = function(ai, goal, distGuardBreak_Attack, oddsGuardBreak_Attack, AttID)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_GuardBreak) and targetDist <= distGuardBreak_Attack and fate <= oddsGuardBreak_Attack then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, AttID, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end

MissSwing_Int = function(ai, goal, distMissSwing_Int, oddsMissSwing_Int)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) and targetDist <= distMissSwing_Int and fate <= oddsMissSwing_Int then
      goal:ClearSubGoal()
      return true
   end
   return false
end

MissSwing_Attack = function(ai, goal, distMissSwing_Attack, oddsMissSwing_Attack, AttID)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) and targetDist <= distMissSwing_Attack and fate <= oddsMissSwing_Attack then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, AttID, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end

UseItem_Act = function(ai, goal, distUseItem_Act, oddsUseItem_Act)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_UseItem) and targetDist <= distUseItem_Act and fate <= oddsUseItem_Act then
      goal:ClearSubGoal()
      return true
   end
   return false
end

Shoot_1kind = function(ai, goal, distResponse, oddsResponse)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local BkStepPer = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
   local LeftStepPer = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
   local RightStepPer = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
   local SafetyDist = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
   if ai:IsInterupt(INTERUPT_Shoot) and targetDist <= distResponse and fate <= oddsResponse then
      goal:ClearSubGoal()
      return true
   end
   return false
end

Shoot_2dist = function(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

MissSwingSelf_Step = function(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BkStepPer = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
   local LeftStepPer = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
   local RightStepPer = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
   local SafetyDist = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
   if ai:IsInterupt(INTERUPT_MissSwingSelf) and fate <= oddsResponse then
      goal:ClearSubGoal()
      if fate2 <= BkStepPer then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, SafetyDist)
      elseif fate2 <= BkStepPer + LeftStepPer then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, SafetyDist)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, SafetyDist)
      end
      return true
   end
end

RebByOpGuard_Step = function(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local BkStepPer = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
   local LeftStepPer = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
   local RightStepPer = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
   local SafetyDist = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) and fate <= oddsResponse then
      goal:ClearSubGoal()
      if fate2 <= BkStepPer then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, SafetyDist)
      elseif fate2 <= BkStepPer + LeftStepPer then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, SafetyDist)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, SafetyDist)
      end
      return true
   end
end

SuccessGuard_Act = function(ai, goal, distSuccessGuard_Act, oddsSuccessGuard_Act)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_SuccessGuard) and targetDist <= distSuccessGuard_Act and fate <= oddsSuccessGuard_Act then
      goal:ClearSubGoal()
      return true
   end
   return false
end

SuccessGuard_Attack = function(ai, goal, distSuccessGuard_Attack, oddsSuccessGuard_Attack, AttID)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_SuccessGuard) and targetDist <= distSuccessGuard_Attack and fate <= oddsSuccessGuard_Attack then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, AttID, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end

FarDamaged_Act = function(ai, goal, farResDist, farResPer)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and farResDist <= targetDist and fate <= farResPer then
      goal:ClearSubGoal()
      return true
   end
   return false
end

MissSwing_Act = function(ai, goal, missSwingDist, missSwingAttPer)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) and targetDist <= missSwingDist and fate <= missSwingAttPer then
      goal:ClearSubGoal()
      return true
   end
   return false
end

FindGuardBreak_Act = function(ai, goal, guardBreakConutDist, guardBreakConutPer)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_GuardBreak) and targetDist <= guardBreakConutDist and fate <= guardBreakConutPer then
      goal:ClearSubGoal()
      return true
   end
   return false
end

FindGuardFinish_Act = function(ai, goal, guardFinishConutDist, guardFinishConutPer)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_GuardFinish) and targetDist <= guardFinishConutDist and fate <= guardFinishConutPer then
      goal:ClearSubGoal()
      return true
   end
   return false
end

FindShoot_Act = function(ai, goal, ShootActPer, ShootActPer2, ShootActPer3, ShootActDist, ShootActDist2, ShootActDist3)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Shoot) then
      if targetDist <= ShootActDist and fate <= ShootActPer then
         goal:ClearSubGoal()
         return 1
      elseif targetDist <= ShootActDist2 and fate <= ShootActPer2 then
         goal:ClearSubGoal()
         return 2
      elseif targetDist <= ShootActDist3 and fate <= ShootActPer3 then
         goal:ClearSubGoal()
         return 3
      else
         goal:ClearSubGoal()
         return 0
      end
   end
   return 0
end

Approach_Act = function(ai, goal, AppDist, DashDist, Odds_Guard)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local Walk = true
   if DashDist <= targetDist then
      Walk = false
   end
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, AppDist, TARGET_SELF, Walk, Guard)
end

BusyApproach_Act = function(ai, goal, AppDist, DashDist, Odds_Guard)
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if DashDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, AppDist, TARGET_SELF, false, Guard)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, AppDist, TARGET_SELF, true, Guard)
   end
end

Approach_and_Attack_Act = function(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist, TurnTime, TurnFaceAngle)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local Walk = true
   if DashDist <= targetDist then
      Walk = false
   end
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   local turnTime = GET_PARAM_IF_NIL_DEF(TurnTime, 1.5)
   local turnFaceAngle = GET_PARAM_IF_NIL_DEF(TurnFaceAngle, 20)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, AppDist, TARGET_SELF, Walk, Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, AttID, TARGET_ENE_0, AttDist, turnTime, turnFaceAngle)
end

KeepDist_and_Attack_Act = function(ai, goal, LeaDist, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local Walk = true
   if DashDist <= targetDist then
      Walk = false
   end
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, LeaDist, AppDist, TARGET_ENE_0, Walk, Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, AttID, TARGET_ENE_0, AttDist, 0)
end

Approach_and_GuardBreak_Act = function(ai, goal, AppDist, DashDist, Odds_Guard, GBAID, GBADist, AttID, AttDist)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local Walk = true
   if DashDist <= targetDist then
      Walk = false
   end
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, AppDist, TARGET_SELF, Walk, Guard)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakAttack, 10, GBAID, TARGET_ENE_0, GBADist, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, AttID, TARGET_ENE_0, AttDist, 0)
end

GetWellSpace_Act = function(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   local GW_fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local friendNum = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + bRight, TARGET_ENE_0, 2)
   if GW_fate <= Odds_NoAct then
   elseif GW_fate <= Odds_NoAct + Odds_BackAndSide and friendNum < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, Guard)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, Guard)
   elseif GW_fate <= Odds_NoAct + Odds_BackAndSide + Odds_Back then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, Guard)
   elseif GW_fate <= Odds_NoAct + Odds_BackAndSide + Odds_Back + Odds_BitWait then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   end
end

GetWellSpace_Act_IncludeSidestep = function(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep, Odds_Sidestep)
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   local GW_fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local friendNum = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + bRight, TARGET_ENE_0, 2)
   if GW_fate <= Odds_NoAct then
   elseif GW_fate <= Odds_NoAct + Odds_BackAndSide and friendNum < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, Guard)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, Guard)
   elseif GW_fate <= Odds_NoAct + Odds_BackAndSide + Odds_Back then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, Guard)
   elseif GW_fate <= Odds_NoAct + Odds_BackAndSide + Odds_Back + Odds_BitWait then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   elseif GW_fate <= Odds_NoAct + Odds_BackAndSide + Odds_Back + Odds_BitWait + Odds_Backstep then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local fate = ai:GetRandam_Int(1, 100)
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Shoot_Act = function(ai, goal, FirstAttID, ComAttID, ShootNum)
   if ShootNum == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, FirstAttID, TARGET_ENE_0, DIST_None, 0)
   elseif ShootNum >= 2 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, FirstAttID, TARGET_ENE_0, DIST_None, 0)
      if ShootNum >= 3 then
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, ComAttID, TARGET_ENE_0, DIST_None, 0)
         if ShootNum >= 4 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, ComAttID, TARGET_ENE_0, DIST_None, 0)
            if ShootNum >= 5 then
               goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, ComAttID, TARGET_ENE_0, DIST_None, 0)
            end
         end
      end
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, ComAttID, TARGET_ENE_0, DIST_None, 0)
   end
end

Approach_Act = function(ai, goal, AppDist, DashDist, Odds_Guard, life)
   if life == nil then
      life = 10
   end
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local Walk = true
   if DashDist <= targetDist then
      Walk = false
   end
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, AppDist, TARGET_SELF, Walk, Guard)
end

Approach_or_Leave_Act = function(ai, goal, LeaveDist, AppDist, DashDist, Odds_Guard)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local Walk = true
   if DashDist ~= -1 and DashDist <= targetDist then
      Walk = false
   end
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   if LeaveDist <= targetDist then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, AppDist, TARGET_SELF, Walk, Guard)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, LeaveDist, TARGET_ENE_0, true, Guard)
   end
end

Watching_Parry_Chance_Act = function(ai, goal)
   FirstDist = ai:GetRandam_Float(2, 4)
   SecondDist = ai:GetRandam_Float(2, 4)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 5, TARGET_ENE_0, FirstDist, FirstDist + 0.5, TARGET_ENE_0, true, 9920)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, 9920)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 5, TARGET_ENE_0, SecondDist, SecondDist + 0.5, TARGET_ENE_0, true, 9920)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, 9920)
end

Parry_Act = function(ai, goal, ParryDist, ParryAng, ParryThrowDist, ParryThrowAng)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

ObserveAreaForBackstab = function(ai, goal, ObserveNo, BackstabDist, BackstabAng)
   ai:AddObserveArea(ObserveNo, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, BackstabAng, BackstabDist)
end

Backstab_Act = function(ai, goal, ObserveNo, ApproachDist, TimerIndex, Time)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsThrowing() == false and ai:IsFinishTimer(TimerIndex) == true and ai:IsInsideObserve(ObserveNo) then
      ai:SetTimer(TimerIndex, Time)
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ApproachDist, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3110, TARGET_ENE_0, 3, 0)
      return true
   end
end

Torimaki_Act = function(ai, goal, Odds_Guard)
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.5, TARGET_SELF, false, -1)
   elseif targetDist >= 6 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
   elseif targetDist >= 3 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, Guard)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4, TARGET_ENE_0, true, Guard)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, Guard)
end

Kankyaku_Act = function(ai, goal, Odds_Guard)
   local Guard = -1
   local G_fate = ai:GetRandam_Int(1, 100)
   if G_fate <= Odds_Guard then
      Guard = 9910
   end
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if targetDist >= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6.5, TARGET_SELF, false, -1)
   elseif targetDist >= 8 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
   elseif targetDist >= 4 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, Guard)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 6, TARGET_ENE_0, true, Guard)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, Guard)
end


