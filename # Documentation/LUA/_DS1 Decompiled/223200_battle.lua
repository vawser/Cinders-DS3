REGISTER_GOAL(GOAL_MiniGreaterDemon223200_Battle, "MiniGreaterDemon223200Battle")
local Att3000_Dist_min = 7.4
local Att3000_Dist_max = 9.6
local Att3001_Dist_min = 7
local Att3001_Dist_max = 8
local Att3002_Dist_min = 5
local Att3002_Dist_max = 6.6
local Att3003_Dist_min = 4.2
local Att3003_Dist_max = 6.4
local Att3004_Dist_min = 0
local Att3004_Dist_max = 1.7
local Att3005_Dist_min = 0
local Att3005_Dist_max = 1
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.5
local Att3007_Dist_min = 10.5
local Att3007_Dist_max = 11.9
local Att3008_Dist_min = -3
local Att3008_Dist_max = 0
local Att3014_Dist_min = 6
local Att3014_Dist_max = 8
REGISTER_GOAL_NO_UPDATE(GOAL_MiniGreaterDemon223200_Battle, 1)
MiniGreaterDemon223200Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 4, 3)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   local flag = ai:GetNumber(0)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and flag == 0 then
      actPerArr[12] = 100
      ai:SetNumber(0, 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and flag == 1 and ai:GetNumber(1) <= 2 then
      actPerArr[13] = 100
      local StateNo = ai:GetNumber(1)
      ai:SetNumber(1, StateNo + 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812996) and flag == 1 then
      actPerArr[14] = 100
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and flag == 1 and ai:GetNumber(1) == 3 then
      actPerArr[15] = 100
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812351) then
      actPerArr[6] = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812352) then
      actPerArr[6] = 100
   elseif not ai:IsInsideTargetRegion(TARGET_ENE_0, 1812990) then
      actPerArr[16] = 100
   elseif ai:IsInsideObserve(0) then
      actPerArr[4] = 15
      actPerArr[8] = 85
   elseif ai:IsInsideObserve(1) then
      actPerArr[4] = 15
      actPerArr[9] = 85
   elseif targetDist >= 11.5 then
      actPerArr[1] = 70
      actPerArr[2] = 5
      actPerArr[5] = 10
      actPerArr[7] = 10
      actPerArr[11] = 5
   elseif targetDist >= 7 then
      actPerArr[2] = 15
      actPerArr[3] = 0
      actPerArr[5] = 35
      actPerArr[7] = 35
      actPerArr[11] = 15
   elseif targetDist >= 4.2 then
      actPerArr[2] = 45
      actPerArr[3] = 10
      actPerArr[5] = 0
      actPerArr[7] = 0
      actPerArr[11] = 45
   elseif targetDist >= 1.5 then
      actPerArr[2] = 20
      actPerArr[3] = 50
      actPerArr[5] = 5
      actPerArr[7] = 5
      actPerArr[11] = 20
   else
      actPerArr[2] = 0
      actPerArr[3] = 45
      actPerArr[4] = 45
      actPerArr[5] = 0
      actPerArr[7] = 0
      actPerArr[11] = 10
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act11)
   actFuncArr[12] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act12)
   actFuncArr[13] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act13)
   actFuncArr[14] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act14)
   actFuncArr[15] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act15)
   actFuncArr[16] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act16)
   local atkAfterFunc = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

MiniGreaterDemon223200_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3007
   local AttDist = DIST_Middle
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3002
   local AttDist = DIST_Middle
   if fate <= 10 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 20 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3006
   local AttDist = DIST_Middle
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3008_Dist_max
   local DashDist = Att3008_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3008
   local AttDist = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3000
   local AttDist = DIST_Middle
   if fate <= 10 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local waitTime = ai:GetRandam_Float(0.1, 3)
   local AppDist = Att3014_Dist_max
   local DashDist = Att3014_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3014
   local AttDist = DIST_Middle
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3001
   local AttDist = DIST_Middle
   Approach_and_Attack_Act(ai, goal, AppDist, DashDist, Odds_Guard, AttID, AttDist)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3004
   local AttDist = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3005
   local AttDist = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 6
   local Odds_Guard = 0
   local AttID = 3003
   local AttDist = DIST_Middle
   if fate <= 10 then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act12 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3020, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act13 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3021, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act14 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3022, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act15 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3023, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

MiniGreaterDemon223200_Act16 = function(ai, goal, paramTbl)
   ai:SetEventMoveTarget(1812301)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 2, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
end

MiniGreaterDemon223200Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

MiniGreaterDemon223200_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if fate <= 80 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   end
   return false
end

MiniGreaterDemon223200Battle_Terminate = function(ai, goal)
end

MiniGreaterDemon223200Battle_Interupt = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local superStepDist = 3
   local superStepPer = 5
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 6
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 5
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 6
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distUseItem_Act = 15
   local oddsUseItem_Act = 15
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 10.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3007_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      elseif targetDist >= 5.2 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3002_Dist_max, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3006_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   return false
end


