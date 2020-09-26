RegisterTableGoal(GOAL_Halleck526000_Battle, "GOAL_Halleck526000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Halleck526000_Battle, true)
local scriptLocalVar0 = Goal
scriptLocalVar0.Initialize = function(ai, goal, func1_arg2, func1_arg3)
   goal:SetTimer(10, 10)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Activate = function(ai, goal, func2_arg2)
   Init_Pseudo_Global(goal, func2_arg2)
   goal:SetStringIndexedNumber("Dist_SideStep", 3)
   goal:SetStringIndexedNumber("Dist_BackStep", 3)
   local func2localVar3 = {}
   local func2localVar4 = {}
   local func2localVar5 = {}
   Common_Clear_Param(func2localVar3, func2localVar4, func2localVar5)
   if goal:HasSpecialEffectId(TARGET_ENE_0, 100910) == false and goal:HasSpecialEffectId(TARGET_ENE_0, 100911) == false then
      goal:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 100920)
      goal:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 100921)
   end
   goal:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   goal:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
   goal:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
   goal:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
   goal:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
   local func2localVar6 = goal:GetDist(TARGET_ENE_0)
   local func2localVar7 = goal:GetRandam_Int(1, 100)
   local func2localVar8 = goal:GetHpRate(TARGET_SELF)
   if func2localVar8 <= 0.4 and goal:HasSpecialEffectId(TARGET_SELF, 5034) == false and goal:HasSpecialEffectId(TARGET_SELF, 5404) == false then
      func2localVar3[20] = 100
   elseif goal:IsFinishTimer(10) == false then
      func2localVar3[32] = 100
   elseif goal:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
      if goal:IsFinishTimer(1) == true and func2localVar6 <= 8 then
         func2localVar3[16] = 100
         func2localVar3[30] = 5
      else
         func2localVar3[30] = 10
      end
   elseif goal:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and func2localVar6 >= 8 then
      func2localVar3[30] = 10
   elseif goal:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and func2localVar6 >= 5 then
      func2localVar3[30] = 10
   elseif goal:HasSpecialEffectId(TARGET_SELF, 11400) then
      if func2localVar6 >= 15 then
         func2localVar3[6] = 15
         func2localVar3[10] = 10
      elseif func2localVar6 >= 8 then
         func2localVar3[4] = 20
         func2localVar3[6] = 10
         func2localVar3[10] = 10
         func2localVar3[12] = 25
         func2localVar3[17] = 10
         func2localVar3[18] = 25
      elseif func2localVar6 >= 2 then
         func2localVar3[4] = 10
         func2localVar3[8] = 20
         func2localVar3[17] = 15
         func2localVar3[19] = 10
      else
         func2localVar3[1] = 10
         func2localVar3[19] = 10
      end
   elseif func2localVar6 >= 15 then
      func2localVar3[6] = 15
      func2localVar3[10] = 10
   elseif func2localVar6 >= 8 then
      func2localVar3[4] = 20
      func2localVar3[6] = 10
      func2localVar3[10] = 10
   elseif func2localVar6 >= 2 then
      func2localVar3[4] = 10
      func2localVar3[8] = 20
   else
      func2localVar3[1] = 20
      func2localVar3[19] = 10
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func2localVar3[8] = SetCoolTime(goal, func2_arg2, 3013, 10, func2localVar3[8], 1)
   func2localVar3[10] = SetCoolTime(goal, func2_arg2, 3011, 20, func2localVar3[10], 1)
   func2localVar3[12] = SetCoolTime(goal, func2_arg2, 3016, 25, func2localVar3[12], 1)
   func2localVar3[16] = SetCoolTime(goal, func2_arg2, 3008, 15, func2localVar3[16], 1)
   func2localVar3[16] = SetCoolTime(goal, func2_arg2, 3009, 15, func2localVar3[16], 1)
   func2localVar3[16] = SetCoolTime(goal, func2_arg2, 3030, 15, func2localVar3[16], 1)
   func2localVar3[17] = SetCoolTime(goal, func2_arg2, 3018, 15, func2localVar3[17], 1)
   func2localVar3[18] = SetCoolTime(goal, func2_arg2, 3019, 15, func2localVar3[18], 1)
   func2localVar3[19] = SetCoolTime(goal, func2_arg2, 3021, 12, func2localVar3[19], 1)
   func2localVar4[1] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act01)
   func2localVar4[2] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act02)
   func2localVar4[3] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act03)
   func2localVar4[4] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act04)
   func2localVar4[5] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act05)
   func2localVar4[6] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act06)
   func2localVar4[7] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act07)
   func2localVar4[8] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act08)
   func2localVar4[9] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act09)
   func2localVar4[10] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act10)
   func2localVar4[11] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act11)
   func2localVar4[12] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act12)
   func2localVar4[13] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act13)
   func2localVar4[14] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act14)
   func2localVar4[15] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act15)
   func2localVar4[16] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act16)
   func2localVar4[17] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act17)
   func2localVar4[18] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act18)
   func2localVar4[19] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act19)
   func2localVar4[20] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act20)
   func2localVar4[30] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act30)
   func2localVar4[31] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act31)
   func2localVar4[32] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act32)
   func2localVar4[33] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act33)
   func2localVar4[40] = REGIST_FUNC(goal, func2_arg2, Halleck526000_Act40)
   local func2localVar9 = REGIST_FUNC(goal, func2_arg2, Halleck526000_ActAfter_AdjustSpace)
   Common_Battle_Activate(goal, func2_arg2, func2localVar3, func2localVar4, func2localVar9, func2localVar5)
end

-- Halleck526000_Act01 
scriptLocalVar0 = function(ai, goal, func3_arg2)
   local func3localVar3 = 3000 -- Smash Down
   local func3localVar4 = 3003 -- Smash Down Behind
   local func3localVar5 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func3localVar6 = 1
   local func3localVar7 = ai:GetRandam_Int(1, 100)
   local func3localVar8 = ai:GetDist(TARGET_ENE_0)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
   ai:SetTimer(1, 5)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1.5, func3localVar4, TARGET_ENE_0, func3localVar5, func3localVar6, 360, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, func3localVar3, TARGET_ENE_0, func3localVar5, func3localVar6, 360, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   else
      Halleck526000_Act30(ai, goal, func3_arg2)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act01 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func4_arg2)
   local func4localVar3 = 3000 -- Smash Down
   local func4localVar4 = 3001 -- Smash Down Side
   local func4localVar5 = 3002 -- Swipe Up
   local func4localVar6 = 3030 -- Forward Swipe
   local func4localVar7 = 2 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func4localVar8 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func4localVar9 = ai:GetRandam_Int(1, 100)
   local func4localVar10 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   ai:SetTimer(1, 5)
   if InsideRange(ai, goal, 0, 120, -1, 2 - ai:GetMapHitRadius(TARGET_SELF)) and func4localVar9 >= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, func4localVar3, TARGET_ENE_0, func4localVar7, 0, 20, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   elseif InsideRange(ai, goal, 180, 150, -1, 1.6 - ai:GetMapHitRadius(TARGET_SELF) + 1) then
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.5, func4localVar4, TARGET_ENE_0, func4localVar7, 0, 360, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   elseif InsideRange(ai, goal, 45, 180, 2 - ai:GetMapHitRadius(TARGET_SELF), 4.1 - ai:GetMapHitRadius(TARGET_SELF) + 1) then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 2, func4localVar5, TARGET_ENE_0, func4localVar8, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   elseif InsideRange(ai, goal, 300, 105, -1, 10.6 - ai:GetMapHitRadius(TARGET_SELF)) and func4localVar9 >= 50 then
      ai:SetTimer(1, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 2, func4localVar6, TARGET_ENE_0, func4localVar8, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   elseif func4localVar10 >= 30 and ai:IsFinishTimer(2) == true then
      Halleck526000_Act19(ai, goal, func4_arg2)
   else
      Halleck526000_Act30(ai, goal, func4_arg2)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act02 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func5_arg2)
   local func5localVar3 = 3003
   local func5localVar4 = 2 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func5localVar5 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func5localVar6 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, func5localVar3, TARGET_ENE_0, func5localVar5, 0, 360, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act03 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func6_arg2)
   local func6localVar3 = 7.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func6localVar4 = 7.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func6localVar5 = 7.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func6localVar6 = 100
   local func6localVar7 = 0
   local func6localVar8 = 5
   local func6localVar9 = 5
   Approach_Act_Flex(ai, goal, func6localVar3, func6localVar4, func6localVar5, func6localVar6, func6localVar7, func6localVar8, func6localVar9)
   local func6localVar10 = 3004
   local func6localVar11 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func6localVar12 = 1
   local func6localVar13 = 120
   local func6localVar14 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func6localVar10, TARGET_ENE_0, DistToAtt1, func6localVar12, func6localVar13, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act04 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func7_arg2)
   local func7localVar3 = 3006
   local func7localVar4 = 3007
   local func7localVar5 = 3005
   local func7localVar6 = 7.8 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func7localVar7 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func7localVar8 = ai:GetRandam_Int(1, 100)
   if InsideRange(ai, goal, 270, 90, 3, 9.8 - ai:GetMapHitRadius(TARGET_SELF) + 1) then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func7localVar3, TARGET_ENE_0, func7localVar6, 0, 360, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   elseif InsideRange(ai, goal, 90, 120, 0, 8.8 - ai:GetMapHitRadius(TARGET_SELF)) then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func7localVar4, TARGET_ENE_0, func7localVar6, 0, 360, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func7localVar5, TARGET_ENE_0, func7localVar7, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act05 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func8_arg2)
   local func8localVar3 = 14.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func8localVar4 = 14.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func8localVar5 = 14.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func8localVar6 = 100
   local func8localVar7 = 0
   local func8localVar8 = 5
   local func8localVar9 = 5
   Approach_Act_Flex(ai, goal, func8localVar3, func8localVar4, func8localVar5, func8localVar6, func8localVar7, func8localVar8, func8localVar9)
   local func8localVar10 = 3010
   local func8localVar11 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func8localVar12 = 1
   local func8localVar13 = 120
   local func8localVar14 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func8localVar10, TARGET_ENE_0, func8localVar11, func8localVar12, func8localVar13, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act06 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func9_arg2)
   local func9localVar3 = 3008
   local func9localVar4 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func9localVar5 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, func9localVar3, TARGET_ENE_0, 0, 0, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act07 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func10_arg2)
   local func10localVar3 = 6.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func10localVar4 = 6.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func10localVar5 = 6.8 - ai:GetMapHitRadius(TARGET_SELF) - 1
   local func10localVar6 = 100
   local func10localVar7 = 0
   local func10localVar8 = 5
   local func10localVar9 = 5
   Approach_Act_Flex(ai, goal, func10localVar3, func10localVar4, func10localVar5, func10localVar6, func10localVar7, func10localVar8, func10localVar9)
   local func10localVar10 = 3013
   local func10localVar11 = 3014
   local func10localVar12 = 3015
   local func10localVar13 = 9.8 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func10localVar14 = 7.8 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func10localVar15 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func10localVar16 = 1
   local func10localVar17 = 150
   local func10localVar18 = ai:GetRandam_Int(1, 100)
   if ai:HasSpecialEffectId(TARGET_SELF, 11400) then
      ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func10localVar10, TARGET_ENE_0, func10localVar13, func10localVar16, func10localVar17, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func10localVar11, TARGET_ENE_0, func10localVar14, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func10localVar12, TARGET_ENE_0, func10localVar15, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act08 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func11_arg2)
   local func11localVar3 = 3014
   local func11localVar4 = 3015
   local func11localVar5 = 7.8 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func11localVar6 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func11localVar7 = ai:GetRandam_Int(1, 100)
   if ai:HasSpecialEffectId(TARGET_SELF, 11400) then
      ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func11localVar3, TARGET_ENE_0, func11localVar5, 0, 0, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func11localVar4, TARGET_ENE_0, func11localVar6, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act09 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func12_arg2)
   local func12localVar3 = 15.8 - ai:GetMapHitRadius(TARGET_SELF) - 1.5
   local func12localVar4 = 15.8 - ai:GetMapHitRadius(TARGET_SELF) - 1.5
   local func12localVar5 = 15.8 - ai:GetMapHitRadius(TARGET_SELF) - 1.5
   local func12localVar6 = 100
   local func12localVar7 = 0
   local func12localVar8 = 5
   local func12localVar9 = 5
   Approach_Act_Flex(ai, goal, func12localVar3, func12localVar4, func12localVar5, func12localVar6, func12localVar7, func12localVar8, func12localVar9)
   local func12localVar10 = 3011
   local func12localVar11 = 3012
   local func12localVar12 = 9.8 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func12localVar13 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func12localVar14 = 1
   local func12localVar15 = 150
   local func12localVar16 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func12localVar10, TARGET_ENE_0, func12localVar13, func12localVar14, func12localVar15, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func12localVar11, TARGET_ENE_0, func12localVar13, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act10 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func13_arg2)
   local func13localVar3 = 3009
   local func13localVar4 = 15.8 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func13localVar5 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func13localVar6 = ai:GetRandam_Int(1, 100)
   ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, func13localVar3, TARGET_ENE_0, func13localVar4, 0, 360, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act11 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func14_arg2)
   local func14localVar3 = 9.8 - ai:GetMapHitRadius(TARGET_SELF) - 1.5
   local func14localVar4 = 9.8 - ai:GetMapHitRadius(TARGET_SELF) - 1.5
   local func14localVar5 = 9.8 - ai:GetMapHitRadius(TARGET_SELF) - 1.5
   local func14localVar6 = 100
   local func14localVar7 = 0
   local func14localVar8 = 5
   local func14localVar9 = 5
   Approach_Act_Flex(ai, goal, func14localVar3, func14localVar4, func14localVar5, func14localVar6, func14localVar7, func14localVar8, func14localVar9)
   local func14localVar10 = 3016
   local func14localVar11 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func14localVar12 = 1
   local func14localVar13 = 120
   local func14localVar14 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func14localVar10, TARGET_ENE_0, 20 - ai:GetMapHitRadius(TARGET_SELF), func14localVar12, func14localVar13, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act12 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func15_arg2)
   local func15localVar3 = 3017
   local func15localVar4 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func15localVar5 = 1
   local func15localVar6 = 150
   local func15localVar7 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(0, 12)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, func15localVar3, TARGET_ENE_0, 9.8 - ai:GetMapHitRadius(TARGET_SELF) + 1, func15localVar5, func15localVar6, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Halleck526000_Act13 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func16_arg2)
   local func16localVar3 = 3011
   local func16localVar4 = 3012
   local func16localVar5 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func16localVar6 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func16localVar3, TARGET_ENE_0, func16localVar5, 0, 180, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func16localVar4, TARGET_ENE_0, func16localVar5, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act14 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func17_arg2)
   local func17localVar3 = 3030
   local func17localVar4 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func17localVar5 = 1
   local func17localVar6 = 360
   local func17localVar7 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func17localVar3, TARGET_ENE_0, 9.8 - ai:GetMapHitRadius(TARGET_SELF) + 1, func17localVar5, func17localVar6, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act15 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func18_arg2)
   local func18localVar3 = ai:GetRandam_Int(1, 100)
   local func18localVar4 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(1, 8)
   if InsideRange(ai, goal, 180, 180, -1, 1 - ai:GetMapHitRadius(TARGET_SELF)) then
      Halleck526000_Act03(ai, goal, func18_arg2)
   elseif InsideRange(ai, goal, 150, 60, 2, 10.8 - ai:GetMapHitRadius(TARGET_SELF)) then
      Halleck526000_Act07(ai, goal, func18_arg2)
   elseif InsideRange(ai, goal, 180, 120, 1, 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
      Halleck526000_Act11(ai, goal, func18_arg2)
   elseif InsideRange(ai, goal, 300, 105, -1, 10.6 - ai:GetMapHitRadius(TARGET_SELF)) and func18localVar3 >= 50 then
      Halleck526000_Act15(ai, goal, func18_arg2)
   elseif InsideRange(ai, goal, 0, 360, -1, 3.5) and func18localVar4 >= 30 and ai:IsFinishTimer(2) == true then
      Halleck526000_Act19(ai, goal, func18_arg2)
   else
      Halleck526000_Act30(ai, goal, func18_arg2)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Halleck526000_Act16 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func19_arg2)
   local func19localVar3 = 11 - ai:GetMapHitRadius(TARGET_SELF) - 2
   local func19localVar4 = 14.8 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func19localVar5 = 14.8 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func19localVar6 = 100
   local func19localVar7 = 0
   local func19localVar8 = 5
   local func19localVar9 = 5
   Approach_Act_Flex(ai, goal, func19localVar3, func19localVar4, func19localVar5, func19localVar6, func19localVar7, func19localVar8, func19localVar9)
   local func19localVar10 = 3018
   local func19localVar11 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func19localVar12 = 1
   local func19localVar13 = 120
   local func19localVar14 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, func19localVar10, TARGET_ENE_0, func19localVar11, func19localVar12, func19localVar13, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act17 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func20_arg2)
   local func20localVar3 = 7 - ai:GetMapHitRadius(TARGET_SELF) - 2
   local func20localVar4 = 7 - ai:GetMapHitRadius(TARGET_SELF) - 2
   local func20localVar5 = 7 - ai:GetMapHitRadius(TARGET_SELF) - 2
   local func20localVar6 = 100
   local func20localVar7 = 0
   local func20localVar8 = 5
   local func20localVar9 = 5
   Approach_Act_Flex(ai, goal, func20localVar3, func20localVar4, func20localVar5, func20localVar6, func20localVar7, func20localVar8, func20localVar9)
   local func20localVar10 = 3019
   local func20localVar11 = 3020
   local func20localVar12 = 9.5 - ai:GetMapHitRadius(TARGET_SELF)
   local func20localVar13 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func20localVar14 = 1
   local func20localVar15 = 90
   local func20localVar16 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func20localVar10, TARGET_ENE_0, func20localVar12, func20localVar14, func20localVar15, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func20localVar11, TARGET_ENE_0, func20localVar13, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act18 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func21_arg2)
   local func21localVar3 = 3021
   local func21localVar4 = 3010
   local func21localVar5 = 14.8 - ai:GetMapHitRadius(TARGET_SELF)
   local func21localVar6 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func21localVar7 = 1
   local func21localVar8 = 180
   local func21localVar9 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(2, 13)
   if ai:HasSpecialEffectId(TARGET_SELF, 11400) then
      ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, func21localVar3, TARGET_ENE_0, func21localVar5, func21localVar7, func21localVar8, 0, 0):SetTargetRange(0, -99, 15.3 - ai:GetMapHitRadius(TARGET_SELF) - 1)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func21localVar4, TARGET_ENE_0, func21localVar6, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, func21localVar3, TARGET_ENE_0, func21localVar6, func21localVar7, func21localVar8, 0, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Halleck526000_Act19 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func22_arg2)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
   ai:SetTimer(10, 10)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Halleck526000_Act20 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func23_arg2)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
   ai:SetTimer(1, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Halleck526000_Act30 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func24_arg2)
   local func24localVar3 = ai:GetDist(TARGET_ENE_0)
   local func24localVar4 = 10
   local func24localVar5 = 12
   if func24localVar4 <= func24localVar3 then
      Approach_Act(ai, goal, func24localVar4, func24localVar5, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, func24localVar4, TARGET_ENE_0, true, -1)
end

Halleck526000_Act31 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func25_arg2)
   local func25localVar3 = ai:GetRandam_Float(4, 6)
   ai:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 12)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, func25localVar3, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Halleck526000_Act32 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func26_arg2)
   local func26localVar3 = 3021
   local func26localVar4 = 3017
   local func26localVar5 = 3021
   local func26localVar6 = 999
   local func26localVar7 = 999
   local func26localVar8 = 20 - ai:GetMapHitRadius(TARGET_SELF)
   local func26localVar9 = 1.5
   local func26localVar10 = 360
   local func26localVar11 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func26localVar3, TARGET_ENE_0, func26localVar6, func26localVar9, func26localVar10, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func26localVar4, TARGET_ENE_0, func26localVar7, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Halleck526000_Act40 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func27_arg2)
   goal:AddSubGoal(GOAL_Halleck526000_AfterAttackAct, 10)
end

Halleck526000_ActAfter_AdjustSpace = scriptLocalVar0
scriptLocalVar0 = Goal
scriptLocalVar0.Update = function(ai, goal, func28_arg2)
   return Update_Default_NoSubGoal(ai, goal, func28_arg2)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Terminate = function(ai, goal, func29_arg2)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Interrupt = function(ai, goal, func30_arg2)
   if goal:IsInterupt(INTERUPT_Inside_ObserveArea) then
      local func30localVar3 = goal:GetDist(TARGET_ENE_0)
      local func30localVar4 = goal:GetRandam_Int(1, 100)
      if goal:IsInsideObserve(1) then
         goal:SetTimer(10, 0)
         goal:Replaning()
         goal:DeleteObserve(1)
         return true
      end
   end
   if goal:IsInterupt(INTERUPT_TargetOutOfRange) and goal:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(goal, func30_arg2, 0, 90, 15.3 - goal:GetMapHitRadius(TARGET_SELF) - 1.5, 22.8 - goal:GetMapHitRadius(TARGET_SELF)) and goal:HasSpecialEffectId(TARGET_SELF, 11400) and goal:IsFinishTimer(0) == true then
      goal:SetTimer(0, 12)
      func30_arg2:ClearSubGoal()
      Halleck526000_Act13(goal, func30_arg2, paramTbl)
      return true
   end
   if goal:IsInterupt(INTERUPT_ActivateSpecialEffect) then
      local func30localVar3 = goal:GetDist(TARGET_ENE_0)
      local func30localVar4 = goal:GetRandam_Int(1, 100)
      if goal:GetSpecialEffectActivateInterruptType(0) == 5025 and goal:HasSpecialEffectId(TARGET_ENE_0, 90) == false and func30localVar3 <= 5 then
         func30_arg2:ClearSubGoal()
         Halleck526000_Act02(goal, func30_arg2, paramTbl)
         return true
      else
      end
         if goal:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(goal, func30_arg2, 0, 180, 0, 7.8 - goal:GetMapHitRadius(TARGET_SELF)) then
            func30_arg2:ClearSubGoal()
            Halleck526000_Act05(goal, func30_arg2, paramTbl)
            return true
         else
         end
            if goal:GetSpecialEffectActivateInterruptType(0) == 5027 and InsideRange(goal, func30_arg2, 0, 120, 3, 9.8 - goal:GetMapHitRadius(TARGET_SELF) + 1) and func30localVar4 >= 50 then
               func30_arg2:ClearSubGoal()
               Halleck526000_Act09(goal, func30_arg2, paramTbl)
               return true
            else
            end
               if goal:GetSpecialEffectActivateInterruptType(0) == 5028 and InsideRange(goal, func30_arg2, 330, 120, 3, 15.8 - goal:GetMapHitRadius(TARGET_SELF) + 1) then
                  func30_arg2:ClearSubGoal()
                  Halleck526000_Act14(goal, func30_arg2, paramTbl)
                  return true
               else
               end
                  if goal:GetSpecialEffectActivateInterruptType(0) == 5029 and InsideRange(goal, func30_arg2, 330, 75, 4.5, 9.8 - goal:GetMapHitRadius(TARGET_SELF) + 1) then
                     func30_arg2:ClearSubGoal()
                     func30_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 9.8 - goal:GetMapHitRadius(TARGET_SELF) + 1, 0, 0):SetTargetRange(0, -99, 15.3 - goal:GetMapHitRadius(TARGET_SELF) - 1)
                     if goal:HasSpecialEffectId(TARGET_SELF, 11400) then
                        func30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, SuccessDist, 0, 0):SetTargetRange(0, -99, 15.3 - goal:GetMapHitRadius(TARGET_SELF) - 1)
                     end
                     return true
                  else
                  end
                     if goal:GetSpecialEffectActivateInterruptType(0) == 100920 then
                        goal:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 100920)
                        if goal:HasSpecialEffectId(TARGET_SELF, 5033) == true then
                           goal:Replaning()
                           return true
                        -- Tried to add an 'end' here but it's incorrect
                        else
                        end
                           if goal:GetSpecialEffectActivateInterruptType(0) == 100921 then
                              goal:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 100921)
                              if goal:HasSpecialEffectId(TARGET_SELF, 5033) == true then
                                 goal:Replaning()
                                 return true
                              -- Tried to add an 'end' here but it's incorrect
                              -- Tried to add an 'end' here but it's incorrect
                              else
                              end
                                 return false
end

scriptLocalVar0 = RegisterTableGoal
scriptLocalVar0(GOAL_Halleck526000_AfterAttackAct, "Halleck526000_AfterAttackAct")
scriptLocalVar0 = REGISTER_GOAL_NO_SUB_GOAL
scriptLocalVar0(GOAL_Halleck526000_AfterAttackAct, true)
scriptLocalVar0 = Goal
scriptLocalVar0.Activate = function(ai, goal, func31_arg2)
   local func31localVar3 = goal:GetDist(TARGET_ENE_0)
   local func31localVar4 = goal:GetToTargetAngle(TARGET_ENE_0)
   local func31localVar5 = goal:GetRandam_Int(1, 100)
   local func31localVar6 = goal:GetRandam_Float(3, 4)
   local func31localVar7 = goal:GetHpRate(TARGET_SELF)
   if goal:HasSpecialEffectId(TARGET_ENE_0, 100910) == false and goal:HasSpecialEffectId(TARGET_ENE_0, 100911) == false and func31localVar7 >= 0.3 then
      goal:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 9)
      func31_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, func31localVar6, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
   end
end

scriptLocalVar0 = Goal
scriptLocalVar0.Update = function(ai, goal, func32_arg2)
   return Update_Default_NoSubGoal(ai, goal, func32_arg2)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Terminate = function(ai, goal, func33_arg2)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Interrupt = function(ai, goal, func34_arg2)
   if goal:IsInterupt(INTERUPT_Inside_ObserveArea) then
      local func34localVar3 = goal:GetDist(TARGET_ENE_0)
      local func34localVar4 = goal:GetRandam_Int(1, 100)
      if goal:IsInsideObserve(1) then
         goal:Replaning()
         goal:DeleteObserve(1)
         return true
      end
   end
   if goal:IsInterupt(INTERUPT_ActivateSpecialEffect) then
      if goal:GetSpecialEffectActivateInterruptType(0) == 100920 then
         goal:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 100920)
         if goal:HasSpecialEffectId(TARGET_SELF, 5033) == true then
            goal:Replaning()
            return true
         -- Tried to add an 'end' here but it's incorrect
         else
         end
            if goal:GetSpecialEffectActivateInterruptType(0) == 100921 then
               goal:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 100921)
               if goal:HasSpecialEffectId(TARGET_SELF, 5033) == true then
                  goal:Replaning()
                  return true
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
               else
               end
                  return false
end


