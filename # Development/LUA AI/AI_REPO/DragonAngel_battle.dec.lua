RegisterTableGoal(GOAL_DragonAngel_209000_Battle, "DragonAngelBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DragonAngel_209000_Battle, true)
local scriptLocalVar0 = Goal
scriptLocalVar0.Initialize = function(ai, goal, func1_arg2, func1_arg3)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Activate = function(ai, goal, func2_arg2)
   Init_Pseudo_Global(goal, func2_arg2)
   goal:SetStringIndexedNumber("Dist_SideStep", 4 + 1)
   goal:SetStringIndexedNumber("Dist_BackStep", 3.8 + 1)
   local func2localVar3 = {}
   local func2localVar4 = {}
   local func2localVar5 = {}
   Common_Clear_Param(func2localVar3, func2localVar4, func2localVar5)
   local func2localVar6 = goal:GetDist(TARGET_ENE_0)
   if goal:GetHpRate(TARGET_SELF) <= 0.7 then
      func2localVar3[10] = 100
   elseif goal:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and func2localVar6 <= 2 then
      func2localVar3[12] = 40
      func2localVar3[20] = 20
      func2localVar3[22] = 40
   elseif goal:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and func2localVar6 <= 5 then
      func2localVar3[12] = 40
      func2localVar3[20] = 40
      func2localVar3[22] = 20
   elseif goal:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and func2localVar6 <= 5 then
      func2localVar3[11] = 15
      func2localVar3[12] = 10
      func2localVar3[13] = 40
      func2localVar3[20] = 15
      func2localVar3[22] = 20
   elseif goal:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and func2localVar6 <= 5 then
      func2localVar3[11] = 15
      func2localVar3[12] = 10
      func2localVar3[14] = 40
      func2localVar3[20] = 15
      func2localVar3[22] = 20
   elseif InsideDir(goal, func2_arg2, 180, 270) then
      func2localVar3[20] = 100
   elseif func2localVar6 >= 15 then
      func2localVar3[1] = 15
      func2localVar3[2] = 15
      func2localVar3[3] = 10
      func2localVar3[5] = 10
      func2localVar3[6] = 10
      func2localVar3[8] = 20
      func2localVar3[21] = 20
   elseif func2localVar6 >= 10 then
      func2localVar3[1] = 20
      func2localVar3[2] = 10
      func2localVar3[3] = 10
      func2localVar3[5] = 20
      func2localVar3[6] = 10
      func2localVar3[8] = 15
      func2localVar3[21] = 15
   elseif func2localVar6 >= 5 then
      func2localVar3[1] = 10
      func2localVar3[2] = 10
      func2localVar3[5] = 20
      func2localVar3[6] = 10
      func2localVar3[7] = 10
      func2localVar3[8] = 10
      func2localVar3[9] = 20
      func2localVar3[11] = 10
   elseif func2localVar6 >= 3.5 then
      func2localVar3[1] = 15
      func2localVar3[2] = 15
      func2localVar3[4] = 15
      func2localVar3[6] = 15
      func2localVar3[7] = 10
      func2localVar3[9] = 15
      func2localVar3[11] = 15
   else
      func2localVar3[7] = 25
      func2localVar3[8] = 15
      func2localVar3[9] = 15
      func2localVar3[11] = 30
      func2localVar3[22] = 15
   end
   func2localVar3[8] = SetCoolTime(goal, func2_arg2, 3008, 5, func2localVar3[8], 0)
   func2localVar3[9] = SetCoolTime(goal, func2_arg2, 3009, 20, func2localVar3[9], 0)
   func2localVar3[22] = SetCoolTime(goal, func2_arg2, 6001, 5, func2localVar3[22], 1)
   func2localVar4[1] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act01)
   func2localVar4[2] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act02)
   func2localVar4[3] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act03)
   func2localVar4[4] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act04)
   func2localVar4[5] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act05)
   func2localVar4[6] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act06)
   func2localVar4[7] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act07)
   func2localVar4[8] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act08)
   func2localVar4[9] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act09)
   func2localVar4[10] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act10)
   func2localVar4[11] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act11)
   func2localVar4[12] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act12)
   func2localVar4[13] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act13)
   func2localVar4[14] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act14)
   func2localVar4[20] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act20)
   func2localVar4[21] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act21)
   func2localVar4[22] = REGIST_FUNC(goal, func2_arg2, DragonAngel_Act22)
   local func2localVar7 = REGIST_FUNC(goal, func2_arg2, DragonAngel_ActAfter_AdjustSpace)
   Common_Battle_Activate(goal, func2_arg2, func2localVar3, func2localVar4, func2localVar7, func2localVar5)
end

scriptLocalVar0 = function(ai, goal, func3_arg2)
   local func3localVar3 = 8.9 - ai:GetMapHitRadius(TARGET_SELF)
   local func3localVar4 = 8.9 - ai:GetMapHitRadius(TARGET_SELF) + 998
   local func3localVar5 = 8.9 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func3localVar6 = 0
   local func3localVar7 = 0
   local func3localVar8 = 5
   local func3localVar9 = 5
   Approach_Act_Flex(ai, goal, func3localVar3, func3localVar4, func3localVar5, func3localVar6, func3localVar7, func3localVar8, func3localVar9)
   local func3localVar10 = 3000
   local func3localVar11 = 3006
   local func3localVar12 = 8.4 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func3localVar13 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func3localVar14 = 0
   local func3localVar15 = 0
   local func3localVar16 = ai:GetRandam_Int(1, 100)
   if func3localVar16 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func3localVar10, TARGET_ENE_0, func3localVar13, func3localVar14, func3localVar15, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func3localVar10, TARGET_ENE_0, func3localVar12, func3localVar14, func3localVar15, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func3localVar11, TARGET_ENE_0, func3localVar13, 0, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act01 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func4_arg2)
   local func4localVar3 = 11.9 - ai:GetMapHitRadius(TARGET_SELF)
   local func4localVar4 = 11.9 - ai:GetMapHitRadius(TARGET_SELF) + 998
   local func4localVar5 = 11.9 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func4localVar6 = 0
   local func4localVar7 = 0
   local func4localVar8 = 5
   local func4localVar9 = 5
   Approach_Act_Flex(ai, goal, func4localVar3, func4localVar4, func4localVar5, func4localVar6, func4localVar7, func4localVar8, func4localVar9)
   local func4localVar10 = 3001
   local func4localVar11 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func4localVar12 = 0
   local func4localVar13 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func4localVar10, TARGET_ENE_0, func4localVar11, func4localVar12, func4localVar13, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act02 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func5_arg2)
   local func5localVar3 = 19.3 - ai:GetMapHitRadius(TARGET_SELF)
   local func5localVar4 = 19.3 - ai:GetMapHitRadius(TARGET_SELF) + 998
   local func5localVar5 = 19.3 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func5localVar6 = 0
   local func5localVar7 = 0
   local func5localVar8 = 5
   local func5localVar9 = 5
   Approach_Act_Flex(ai, goal, func5localVar3, func5localVar4, func5localVar5, func5localVar6, func5localVar7, func5localVar8, func5localVar9)
   local func5localVar10 = 3002
   local func5localVar11 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func5localVar12 = 0
   local func5localVar13 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func5localVar10, TARGET_ENE_0, func5localVar11, func5localVar12, func5localVar13, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act03 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func6_arg2)
   local func6localVar3 = 3.1 - ai:GetMapHitRadius(TARGET_SELF)
   local func6localVar4 = 3.1 - ai:GetMapHitRadius(TARGET_SELF) + 998
   local func6localVar5 = 3.1 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func6localVar6 = 0
   local func6localVar7 = 0
   local func6localVar8 = 5
   local func6localVar9 = 5
   Approach_Act_Flex(ai, goal, func6localVar3, func6localVar4, func6localVar5, func6localVar6, func6localVar7, func6localVar8, func6localVar9)
   local func6localVar10 = 3003
   local func6localVar11 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func6localVar12 = 0
   local func6localVar13 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func6localVar10, TARGET_ENE_0, func6localVar11, func6localVar12, func6localVar13, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act04 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func7_arg2)
   local func7localVar3 = 10.5 - ai:GetMapHitRadius(TARGET_SELF)
   local func7localVar4 = 10.5 - ai:GetMapHitRadius(TARGET_SELF) + 998
   local func7localVar5 = 10.5 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func7localVar6 = 0
   local func7localVar7 = 0
   local func7localVar8 = 5
   local func7localVar9 = 5
   Approach_Act_Flex(ai, goal, func7localVar3, func7localVar4, func7localVar5, func7localVar6, func7localVar7, func7localVar8, func7localVar9)
   local func7localVar10 = 3004
   local func7localVar11 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func7localVar12 = 0
   local func7localVar13 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func7localVar10, TARGET_ENE_0, func7localVar11, func7localVar12, func7localVar13, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act05 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func8_arg2)
   local func8localVar3 = 15.1 - ai:GetMapHitRadius(TARGET_SELF)
   local func8localVar4 = 15.1 - ai:GetMapHitRadius(TARGET_SELF) + 998
   local func8localVar5 = 15.1 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func8localVar6 = 0
   local func8localVar7 = 0
   local func8localVar8 = 5
   local func8localVar9 = 5
   Approach_Act_Flex(ai, goal, func8localVar3, func8localVar4, func8localVar5, func8localVar6, func8localVar7, func8localVar8, func8localVar9)
   local func8localVar10 = 3005
   local func8localVar11 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func8localVar12 = 0
   local func8localVar13 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func8localVar10, TARGET_ENE_0, func8localVar11, func8localVar12, func8localVar13, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act06 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func9_arg2)
   local func9localVar3 = 3.6 - ai:GetMapHitRadius(TARGET_SELF)
   local func9localVar4 = 3.6 - ai:GetMapHitRadius(TARGET_SELF) + 998
   local func9localVar5 = 3.6 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func9localVar6 = 0
   local func9localVar7 = 0
   local func9localVar8 = 5
   local func9localVar9 = 5
   Approach_Act_Flex(ai, goal, func9localVar3, func9localVar4, func9localVar5, func9localVar6, func9localVar7, func9localVar8, func9localVar9)
   local func9localVar10 = 3007
   local func9localVar11 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func9localVar12 = 0
   local func9localVar13 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func9localVar10, TARGET_ENE_0, func9localVar11, func9localVar12, func9localVar13, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act07 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func10_arg2)
   local func10localVar3 = ai:GetRandam_Int(-99 - ai:GetMapHitRadius(TARGET_SELF), 11.6 - ai:GetMapHitRadius(TARGET_SELF))
   local func10localVar4 = 11.6 - ai:GetMapHitRadius(TARGET_SELF) + 998
   local func10localVar5 = 11.6 - ai:GetMapHitRadius(TARGET_SELF) + 999
   local func10localVar6 = 0
   local func10localVar7 = 0
   local func10localVar8 = 5
   local func10localVar9 = 5
   Approach_Act_Flex(ai, goal, func10localVar3, func10localVar4, func10localVar5, func10localVar6, func10localVar7, func10localVar8, func10localVar9)
   local func10localVar10 = 3008
   local func10localVar11 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func10localVar12 = 0
   local func10localVar13 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func10localVar10, TARGET_ENE_0, func10localVar11, func10localVar12, func10localVar13, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act08 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func11_arg2)
   local func11localVar3 = 3009
   local func11localVar4 = 3005
   local func11localVar5 = 3006
   local func11localVar6 = 3007
   local func11localVar7 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func11localVar8 = 15.1 - ai:GetMapHitRadius(TARGET_SELF) + 0.5
   local func11localVar9 = 8.4 - ai:GetMapHitRadius(TARGET_SELF) + 0.5
   local func11localVar10 = 3.6 - ai:GetMapHitRadius(TARGET_SELF) + 0.5
   local func11localVar11 = 0
   local func11localVar12 = 0
   local func11localVar13 = ai:GetRandam_Int(1, 100)
   if func11localVar13 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func11localVar3, TARGET_ENE_0, func11localVar8, func11localVar11, func11localVar12)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func11localVar4, TARGET_ENE_0, 999)
   elseif func11localVar13 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func11localVar3, TARGET_ENE_0, func11localVar9, func11localVar11, func11localVar12)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func11localVar5, TARGET_ENE_0, 999)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func11localVar3, TARGET_ENE_0, func11localVar10, func11localVar11, func11localVar12)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func11localVar6, TARGET_ENE_0, 999)
   end
   return 0
end

DragonAngel_Act09 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func12_arg2)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0, 0, 0)
   return 0
end

DragonAngel_Act10 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func13_arg2)
   local func13localVar3 = 3010
   local func13localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func13localVar5 = 0
   local func13localVar6 = 0
   local func13localVar7 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func13localVar3, TARGET_ENE_0, func13localVar4, func13localVar5, func13localVar6, 0, 0)
   return 0
end

DragonAngel_Act11 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func14_arg2)
   local func14localVar3 = 3008
   local func14localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func14localVar5 = 0
   local func14localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func14localVar3, TARGET_ENE_0, func14localVar4, func14localVar5, func14localVar6, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act12 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func15_arg2)
   local func15localVar3 = 3000
   local func15localVar4 = 3006
   local func15localVar5 = 8.4 - ai:GetMapHitRadius(TARGET_SELF) + 1
   local func15localVar6 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func15localVar7 = 0
   local func15localVar8 = 0
   local func15localVar9 = ai:GetRandam_Int(1, 100)
   if func15localVar9 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func15localVar3, TARGET_ENE_0, func15localVar6, func15localVar7, func15localVar8, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func15localVar3, TARGET_ENE_0, func15localVar5, func15localVar7, func15localVar8, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func15localVar4, TARGET_ENE_0, func15localVar6, 0, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act13 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func16_arg2)
   local func16localVar3 = 3007
   local func16localVar4 = 10 - ai:GetMapHitRadius(TARGET_SELF)
   local func16localVar5 = 0
   local func16localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, func16localVar3, TARGET_ENE_0, func16localVar4, func16localVar5, func16localVar6, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act14 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func17_arg2)
   goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngel_Act20 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func18_arg2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Float(3, 4), TARGET_ENE_0, 10, TARGET_SELF, true, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DragonAngel_Act21 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func19_arg2)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, ai:GetStringIndexedNumber("Dist_BackStep"))
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DragonAngel_Act22 = scriptLocalVar0
scriptLocalVar0 = function(ai, goal, func20_arg2)
   goal:AddSubGoal(GOAL_DragonAngel_209000_AfterAttackAct, 10)
end

DragonAngel_ActAfter_AdjustSpace = scriptLocalVar0
scriptLocalVar0 = Goal
scriptLocalVar0.Update = function(ai, goal, func21_arg2)
   return Update_Default_NoSubGoal(ai, goal, func21_arg2)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Terminate = function(ai, goal, func22_arg2)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Interrupt = function(ai, goal, func23_arg2)
   if goal:IsInterupt(INTERUPT_Damaged) then
      local func23localVar3 = goal:GetRandam_Int(1, 100)
      if func23localVar3 <= 25 and goal:GetAttackPassedTime(3009) >= 30 then
         func23_arg2:ClearSubGoal()
         DragonAngel_Act09(goal, func23_arg2, paramTbl)
         return true
      else
         return false
      end
   end
   return false
end

scriptLocalVar0 = RegisterTableGoal
scriptLocalVar0(GOAL_DragonAngel_209000_AfterAttackAct, "GOAL_DragonAngel_209000_AfterAttackAct")
scriptLocalVar0 = REGISTER_GOAL_NO_SUB_GOAL
scriptLocalVar0(GOAL_DragonAngel_209000_AfterAttackAct, true)
scriptLocalVar0 = Goal
scriptLocalVar0.Activate = function(ai, goal, func24_arg2)
   local func24localVar3 = goal:GetDist(TARGET_ENE_0)
   local func24localVar4 = goal:GetToTargetAngle(TARGET_ENE_0)
   goal:SetStringIndexedNumber("DistMin_AAA", -999)
   goal:SetStringIndexedNumber("DistMax_AAA", 10)
   goal:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
   goal:SetStringIndexedNumber("Angle_AAA", 360)
   goal:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
   goal:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
   goal:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
   goal:SetStringIndexedNumber("Ang_Inter_AAA", 360)
   if func24localVar3 >= 10 then
      goal:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
      goal:SetStringIndexedNumber("Odds_BackAndSide_AAA", 90)
   elseif func24localVar3 >= 5 then
      goal:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
      goal:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
      goal:SetStringIndexedNumber("Odds_Backstep_AAA", 30)
   else
      goal:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
      goal:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
      goal:SetStringIndexedNumber("Odds_Backstep_AAA", 40)
   end
   func24_arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
end

scriptLocalVar0 = Goal
scriptLocalVar0.Update = function(ai, goal, func25_arg2)
   return Update_Default_NoSubGoal(ai, goal, func25_arg2)
end


