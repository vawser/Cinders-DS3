Approach_Act_Flex = function(ai, goal, func1_arg2, func1_arg3, func1_arg4, func1_arg5, func1_arg6, func1_arg7, func1_arg8)
   if func1_arg7 == nil then
      func1_arg7 = 3
   end
   if func1_arg8 == nil then
      func1_arg8 = 8
   end
   local func1localVar9 = ai:GetDist(TARGET_ENE_0)
   local func1localVar10 = ai:GetRandam_Int(1, 100)
   local func1localVar11 = true
   if func1_arg4 <= func1localVar9 then
      func1localVar11 = false
   elseif func1_arg3 <= func1localVar9 and func1localVar10 <= func1_arg5 then
      func1localVar11 = false
   end
   local func1localVar12 = -1
   local func1localVar13 = ai:GetRandam_Int(1, 100)
   if func1localVar13 <= func1_arg6 then
      func1localVar12 = 9910
   end
   if func1localVar11 == true then
      life = func1_arg7
   else
      life = func1_arg8
   end
   if func1_arg2 <= func1localVar9 then
      if func1localVar11 == true then
         func1_arg2 = func1_arg2 + ai:GetStringIndexedNumber("AddDistWalk")
      else
         func1_arg2 = func1_arg2 + ai:GetStringIndexedNumber("AddDistRun")
      end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, func1_arg2, TARGET_SELF, func1localVar11, func1localVar12)
   end
end

SpaceCheck = function(ai, goal, func2_arg2, func2_arg3)
   local func2localVar4 = ai:GetMapHitRadius(TARGET_SELF)
   if func2_arg3 * 0.95 <= ai:GetExistMeshOnLineDistSpecifyAngleEx(TARGET_SELF, func2_arg2, func2_arg3 + func2localVar4, AI_SPA_DIR_TYPE_TargetF, func2localVar4, 0) then
      return true
   else
      return false
   end
end

InsideRange = function(ai, goal, func3_arg2, func3_arg3, func3_arg4, func3_arg5)
   return YSD_InsideRangeEx(ai, goal, func3_arg2, func3_arg3, func3_arg4, func3_arg5)
end

InsideDir = function(ai, goal, func4_arg2, func4_arg3)
   return YSD_InsideRangeEx(ai, goal, func4_arg2, func4_arg3, -999, 999)
end

YSD_InsideRangeEx = function(ai, goal, func5_arg2, func5_arg3, func5_arg4, func5_arg5)
   local func5localVar6 = ai:GetDist(TARGET_ENE_0)
   if func5_arg4 <= func5localVar6 and func5localVar6 <= func5_arg5 then
      local func5localVar7 = ai:GetToTargetAngle(TARGET_ENE_0)
      local func5localVar8 = 0
      if func5_arg2 < 0 then
         func5localVar8 = -1
      else
         func5localVar8 = 1
      end
      if (func5_arg2 + func5_arg3 / -2 <= func5localVar7 and func5localVar7 <= func5_arg2 + func5_arg3 / 2) or func5_arg2 + func5_arg3 / -2 <= func5localVar7 + 360 * func5localVar8 and func5localVar7 + 360 * func5localVar8 <= func5_arg2 + func5_arg3 / 2 then
         return true
      else
         return false
      end
   else
      return false
   end
end

SetCoolTime = function(ai, goal, func6_arg2, func6_arg3, func6_arg4, func6_arg5)
   if func6_arg4 <= 0 then
      return 0
   elseif ai:GetAttackPassedTime(func6_arg2) <= func6_arg3 then
      return func6_arg5
   end
   return func6_arg4
end

SpaceCheckBeforeAct = function(ai, goal, func7_arg2, func7_arg3, func7_arg4)
   if func7_arg4 <= 0 then
      return 0
   elseif SpaceCheck(ai, goal, func7_arg2, func7_arg3) then
      return func7_arg4
   else
      return 0
   end
end

Counter_Act = function(ai, goal, func8_arg2, func8_arg3)
   local func8localVar4 = 0.5
   if func8_arg2 == nil then
      func8_arg2 = 4
   end
   local func8localVar5 = ai:GetRandam_Int(1, 100)
   local func8localVar6 = ai:GetNumber(15)
   if ai:IsInterupt(INTERUPT_Damaged) then
      ai:SetTimer(15, 5)
      if func8localVar6 == 0 then
         func8localVar6 = func8_arg2
      end
      ai:SetNumber(15, func8localVar6 * 2)
   end
   if func8localVar6 >= 100 then
      ai:SetNumber(15, 100)
   end
   if ai:IsInterupt(INTERUPT_Damaged) and func8localVar5 <= ai:GetNumber(15) and ai:GetTimer(14) <= 0 then
      ai:SetTimer(14, 3)
      ai:SetNumber(15, 0)
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_EndureAttack, func8localVar4, func8_arg3, TARGET_ENE_0, DIST_None, 0, 180, 0, 0)
      return true
   end
   return false
end

ReactBackstab_Act = function(ai, goal, func9_arg2, func9_arg3, func9_arg4)
   local func9localVar5 = ai:GetRandam_Int(1, 100)
   local func9localVar6 = ai:GetRandam_Int(1, 100)
   local func9localVar7 = 3
   local func9localVar8 = 6000
   local func9localVar9 = 6002
   local func9localVar10 = 6003
   if func9_arg3 == nil then
      func9_arg4 = 0
   end
   if ai:IsInterupt(INTERUPT_BackstabRisk) then
      if func9localVar5 <= func9_arg4 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_StabCounterAttack, func9localVar7, func9_arg3, TARGET_ENE_0, DIST_None, 0, 180, 0, 0)
      elseif func9_arg2 == 1 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, func9localVar7, func9localVar8, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
      elseif func9_arg2 == 2 then
         goal:ClearSubGoal()
         if func9localVar6 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, func9localVar7, func9localVar9, TARGET_SELF, 0, AI_DIR_TYPE_L, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, func9localVar7, func9localVar10, TARGET_SELF, 0, AI_DIR_TYPE_R, 0)
         end
      elseif func9_arg2 == 3 then
         goal:ClearSubGoal()
         if func9localVar6 <= 33 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, func9localVar7, func9localVar8, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
         elseif func9localVar6 <= 66 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, func9localVar7, func9localVar9, TARGET_SELF, 0, AI_DIR_TYPE_L, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, func9localVar7, func9localVar10, TARGET_SELF, 0, AI_DIR_TYPE_R, 0)
         end
      end
      -- Tried to add an 'end' here but it's incorrect
      return false
   end
end

Init_Pseudo_Global = function(ai, goal)
   ai:SetStringIndexedNumber("Dist_SideStep", 5)
   ai:SetStringIndexedNumber("Dist_BackStep", 5)
   ai:SetStringIndexedNumber("AddDistWalk", 0)
   ai:SetStringIndexedNumber("AddDistRun", 0)
   Init_AfterAttackAct(ai, goal)
end

Init_AfterAttackAct = function(ai, goal)
   ai:SetStringIndexedNumber("DistMin_AAA", -999)
   ai:SetStringIndexedNumber("DistMax_AAA", 999)
   ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
   ai:SetStringIndexedNumber("Angle_AAA", 360)
   ai:SetStringIndexedNumber("Odds_Guard_AAA", 0)
   ai:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
   ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
   ai:SetStringIndexedNumber("Odds_Back_AAA", 0)
   ai:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
   ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
   ai:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
   ai:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
   ai:SetStringIndexedNumber("Odds_BsAndSs_AAA", 0)
   ai:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
   ai:SetStringIndexedNumber("DistMax_Inter_AAA", 999)
   ai:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
   ai:SetStringIndexedNumber("Ang_Inter_AAA", 360)
   ai:SetStringIndexedNumber("BackAndSide_BackLife_AAA", 2)
   ai:SetStringIndexedNumber("BackAndSide_SideLife_AAA", ai:GetRandam_Float(2.5, 3.5))
   ai:SetStringIndexedNumber("BackLife_AAA", ai:GetRandam_Float(2, 3))
   ai:SetStringIndexedNumber("BsAndSide_SideLife_AAA", ai:GetRandam_Float(2.5, 3.5))
   ai:SetStringIndexedNumber("BackAndSide_BackDist_AAA", 1.5)
   ai:SetStringIndexedNumber("BackDist_AAA", ai:GetRandam_Float(2.5, 3.5))
   ai:SetStringIndexedNumber("BackAndSide_SideDir_AAA", ai:GetRandam_Int(45, 60))
   ai:SetStringIndexedNumber("BsAndSide_SideDir_AAA", ai:GetRandam_Int(45, 60))
end

Update_Default_NoSubGoal = function(ai, goal, func12_arg2)
   if func12_arg2:GetSubGoalNum() <= 0 then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

GuardGoalSubFunc_Activate = function(ai, goal, func13_arg2)
   if func13_arg2 > 0 then
      ai:DoEzAction(goal, func13_arg2)
   end
end

GuardGoalSubFunc_Update = function(ai, goal, func14_arg2, func14_arg3, func14_arg4)
   if func14_arg2 > 0 then
      if goal:GetNumber(0) ~= 0 then
         return GOAL_RESULT_Failed
      elseif goal:GetNumber(1) ~= 0 then
         return func14_arg3
      end
   end
   if goal:GetLife() <= 0 then
      if func14_arg4 then
         return GOAL_RESULT_Success
      else
         return GOAL_RESULT_Failed
      end
   end
   return GOAL_RESULT_Continue
end

GuardGoalSubFunc_Interrupt = function(ai, goal, func15_arg2, func15_arg3)
   if func15_arg2 > 0 then
      if ai:IsInterupt(INTERUPT_Damaged) then
         goal:SetNumber(0, 1)
      elseif ai:IsInterupt(INTERUPT_SuccessGuard) and func15_arg3 ~= GOAL_RESULT_Continue then
         goal:SetNumber(1, 1)
      end
   end
   return false
end


