RegisterTableGoal(GOAL_DragonAngel_209000_HU_Battle, "DragonAngelHUBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DragonAngel_209000_HU_Battle, true)
local scriptLocalVar0 = Goal
scriptLocalVar0.Initialize = function(ai, goal, func1_arg2, func1_arg3)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Activate = function(ai, goal, func2_arg2)
   Init_Pseudo_Global(goal, func2_arg2)
   goal:SetStringIndexedNumber("Dist_SideStep", 10)
   goal:SetStringIndexedNumber("Dist_BackStep", 8)
   local func2localVar3 = {}
   local func2localVar4 = {}
   local func2localVar5 = {}
   Common_Clear_Param(func2localVar3, func2localVar4, func2localVar5)
   goal:SetNumber(0, 0)
   goal:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   local func2localVar6 = goal:GetDist(TARGET_ENE_0)
   if InsideRange(goal, func2_arg2, 180, 75, -99, 5) then
      func2localVar3[5] = 20
      func2localVar3[6] = 70
      func2localVar3[20] = 10
   elseif InsideRange(goal, func2_arg2, 180, 270, -99, 10) then
      func2localVar3[5] = 90
      func2localVar3[20] = 10
   elseif InsideDir(goal, func2_arg2, 180, 270) then
      func2localVar3[20] = 100
   elseif func2localVar6 >= 17 then
      func2localVar3[4] = 50
      func2localVar3[10] = 50
   elseif func2localVar6 >= 15 then
      func2localVar3[2] = 15
      func2localVar3[4] = 30
      func2localVar3[8] = 25
      func2localVar3[10] = 25
   elseif func2localVar6 >= 10 then
      func2localVar3[1] = 15
      func2localVar3[2] = 20
      func2localVar3[3] = 20
      func2localVar3[7] = 15
      func2localVar3[8] = 15
      func2localVar3[9] = 15
   elseif func2localVar6 >= 5 then
      func2localVar3[1] = 30
      func2localVar3[7] = 30
      func2localVar3[9] = 20
      func2localVar3[11] = 20
   else
      func2localVar3[4] = 20
      func2localVar3[7] = 35
      func2localVar3[11] = 45
   end
   func2localVar3[4] = SetCoolTime(goal, func2_arg2, 3005, 8, func2localVar3[4], 1)
   func2localVar3[5] = SetCoolTime(goal, func2_arg2, 3007, 15, func2localVar3[5], 1)
   func2localVar3[6] = SetCoolTime(goal, func2_arg2, 3008, 30, func2localVar3[6], 1)
   func2localVar3[8] = SetCoolTime(goal, func2_arg2, 3010, 10, func2localVar3[8], 0)
   func2localVar3[8] = SetCoolTime(goal, func2_arg2, 3011, 10, func2localVar3[8], 0)
   func2localVar3[8] = SetCoolTime(goal, func2_arg2, 3012, 10, func2localVar3[8], 0)
   func2localVar3[9] = SetCoolTime(goal, func2_arg2, 3010, 10, func2localVar3[9], 0)
   func2localVar3[9] = SetCoolTime(goal, func2_arg2, 3011, 10, func2localVar3[9], 0)
   func2localVar3[9] = SetCoolTime(goal, func2_arg2, 3012, 10, func2localVar3[9], 0)
   func2localVar3[10] = SetCoolTime(goal, func2_arg2, 3010, 10, func2localVar3[10], 0)
   func2localVar3[10] = SetCoolTime(goal, func2_arg2, 3011, 10, func2localVar3[10], 0)
   func2localVar3[10] = SetCoolTime(goal, func2_arg2, 3012, 10, func2localVar3[10], 0)
   func2localVar4[1] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act01)
   func2localVar4[2] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act02)
   func2localVar4[3] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act03)
   func2localVar4[4] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act04)
   func2localVar4[5] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act05)
   func2localVar4[6] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act06)
   func2localVar4[7] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act07)
   func2localVar4[8] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act08)
   func2localVar4[9] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act09)
   func2localVar4[10] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act10)
   func2localVar4[11] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act11)
   func2localVar4[20] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act20)
   func2localVar4[21] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act21)
   func2localVar4[23] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act23)
   func2localVar4[24] = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_Act24)
   local func2localVar7 = REGIST_FUNC(goal, func2_arg2, DragonAngelHU_ActAfter_AdjustSpace)
   Common_Battle_Activate(goal, func2_arg2, func2localVar3, func2localVar4, func2localVar7, func2localVar5)
end

scriptLocalVar0 = function(ai, goal, func3_arg2)
   local func3localVar3 = 3000
   local func3localVar4 = 3001
   local func3localVar5 = 3004
   local func3localVar6 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func3localVar7 = 11 - ai:GetMapHitRadius(TARGET_SELF) + 10
   local func3localVar8 = 11.6 - ai:GetMapHitRadius(TARGET_SELF) + 10
   local func3localVar9 = 0
   local func3localVar10 = 0
   local func3localVar11 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   if func3localVar11 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func3localVar3, TARGET_ENE_0, func3localVar6, func3localVar9, func3localVar10)
   elseif func3localVar11 <= 80 then
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func3localVar3, TARGET_ENE_0, func3localVar7, func3localVar9, func3localVar10):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func3localVar4, TARGET_ENE_0, func3localVar6)
   else
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func3localVar3, TARGET_ENE_0, func3localVar8, func3localVar9, func3localVar10):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func3localVar5, TARGET_ENE_0, func3localVar6)
   end
   func3localVar11 = ai:GetNumber(0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act01 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func4_arg2)
   local func4localVar3 = 3002
   local func4localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func4localVar5 = 0
   local func4localVar6 = 0
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func4localVar3, TARGET_ENE_0, func4localVar4, func4localVar5, func4localVar6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act02 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func5_arg2)
   local func5localVar3 = 3003
   local func5localVar4 = 3001
   local func5localVar5 = 3004
   local func5localVar6 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func5localVar7 = 11 - ai:GetMapHitRadius(TARGET_SELF) + 10
   local func5localVar8 = 11.6 - ai:GetMapHitRadius(TARGET_SELF) + 10
   local func5localVar9 = 0
   local func5localVar10 = 0
   local func5localVar11 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   if func5localVar11 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, func5localVar3, TARGET_ENE_0, func5localVar6, func5localVar9, func5localVar10)
   elseif func5localVar11 <= 80 then
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func5localVar3, TARGET_ENE_0, func5localVar7, func5localVar9, func5localVar10):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func5localVar4, TARGET_ENE_0, func5localVar6)
   else
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func5localVar3, TARGET_ENE_0, func5localVar8, func5localVar9, func5localVar10):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func5localVar5, TARGET_ENE_0, func5localVar6)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act03 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func6_arg2)
   local func6localVar3 = 23.5 - ai:GetMapHitRadius(TARGET_SELF)
   local func6localVar4 = -999
   local func6localVar5 = -998
   local func6localVar6 = 0
   local func6localVar7 = 0
   local func6localVar8 = 5
   local func6localVar9 = 5
   Approach_Act_Flex(ai, goal, func6localVar3, func6localVar4, func6localVar5, func6localVar6, func6localVar7, func6localVar8, func6localVar9)
   local func6localVar10 = 3005
   local func6localVar11 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func6localVar12 = 1.5
   local func6localVar13 = 45
   goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func6localVar10, TARGET_ENE_0, func6localVar11, func6localVar12, func6localVar13)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act04 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func7_arg2)
   local func7localVar3 = 3007
   local func7localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func7localVar5 = 0
   local func7localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func7localVar3, TARGET_ENE_0, func7localVar4, func7localVar5, func7localVar6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act05 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func8_arg2)
   local func8localVar3 = 3008
   local func8localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func8localVar5 = 0
   local func8localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func8localVar3, TARGET_ENE_0, func8localVar4, func8localVar5, func8localVar6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act06 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func9_arg2)
   local func9localVar3 = 3009
   local func9localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func9localVar5 = 0
   local func9localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func9localVar3, TARGET_ENE_0, func9localVar4, func9localVar5, func9localVar6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act07 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func10_arg2)
   local func10localVar3 = 3010
   local func10localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func10localVar5 = 0
   local func10localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func10localVar3, TARGET_ENE_0, func10localVar4, func10localVar5, func10localVar6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act08 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func11_arg2)
   local func11localVar3 = 3011
   local func11localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func11localVar5 = 0
   local func11localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func11localVar3, TARGET_ENE_0, func11localVar4, func11localVar5, func11localVar6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act09 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func12_arg2)
   local func12localVar3 = 3012
   local func12localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func12localVar5 = 0
   local func12localVar6 = 0
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func12localVar3, TARGET_ENE_0, func12localVar4, func12localVar5, func12localVar6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act10 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func13_arg2)
   local func13localVar3 = 3004
   local func13localVar4 = 3001
   local func13localVar5 = 3004
   local func13localVar6 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func13localVar7 = 11 - ai:GetMapHitRadius(TARGET_SELF) + 10
   local func13localVar8 = 11.6 - ai:GetMapHitRadius(TARGET_SELF) + 10
   local func13localVar9 = 0
   local func13localVar10 = 0
   local func13localVar11 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   if func13localVar11 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func13localVar3, TARGET_ENE_0, func13localVar6, func13localVar9, func13localVar10)
   elseif func13localVar11 <= 70 then
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func13localVar3, TARGET_ENE_0, func13localVar7, func13localVar9, func13localVar10):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func13localVar4, TARGET_ENE_0, func13localVar6)
   else
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, func13localVar3, TARGET_ENE_0, func13localVar8, func13localVar9, func13localVar10):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func13localVar5, TARGET_ENE_0, func13localVar6)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act11 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func14_arg2)
   goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act20 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func15_arg2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Float(3, 4), TARGET_ENE_0, 8, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, ai:GetRadam_Int(6002, 6003), TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_SideStep"))
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act21 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func16_arg2)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act23 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func17_arg2)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngelHU_Act24 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func18_arg2)
end

DragonAngelHU_ActAfter_AdjustSpace = scriptLocalVar0
scriptLocalVar0 = Goal
scriptLocalVar0.Update = function(ai, goal, func19_arg2)
   return Update_Default_NoSubGoal(ai, goal, func19_arg2)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Terminate = function(ai, goal, func20_arg2)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Interrupt = function(ai, goal, func21_arg2)
   if goal:IsInterupt(INTERUPT_ActivateSpecialEffect) and goal:GetSpecialEffectActivateInterruptType(0) == 5025 and goal:GetNumber(0) == 0 then
      goal:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
      return DragonAngelHU_ExAttack(goal, func21_arg2)
   end
   return false
end

scriptLocalVar0 = function(ai, goal)
   if InsideRange(ai, goal, 180, 270, -99, 10) then
      local func22localVar2 = ai:GetRandam_Int(1, 100)
      if func22localVar2 <= 100 then
         goal:ClearSubGoal()
         local func22localVar3 = ai:GetRandam_Int(1, 100)
         if func22localVar3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         elseif func22localVar3 <= 0 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         end
         return true
      else
         return false
      end
   elseif InsideRange(ai, goal, 0, 90, -99, 10) then
      local func22localVar2 = ai:GetRandam_Int(1, 100)
      if func22localVar2 <= 80 then
         goal:ClearSubGoal()
         local func22localVar3 = ai:GetRandam_Int(1, 100)
         if func22localVar3 <= 20 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         elseif func22localVar3 <= 65 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         end
         return true
      else
         return false
      end
   elseif InsideRange(ai, goal, 0, 180, 10, 18) then
      local func22localVar2 = ai:GetRandam_Int(1, 100)
      if func22localVar2 <= 80 then
         goal:ClearSubGoal()
         local func22localVar3 = ai:GetRandam_Int(1, 100)
         if func22localVar3 <= 0 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         elseif func22localVar3 <= 0 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
         end
         return true
      else
         return false
      end
   else
      return false
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   return false
end

DragonAngelHU_ExAttack = scriptLocalVar0

