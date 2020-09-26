REGISTER_GOAL(GOAL_HolySwordWolf452000_Battle, "HolySwordWolf452000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.2
local Att3003_Dist_min = 2
local Att3003_Dist_max = 4
local Att3005_Dist_min = 0
local Att3005_Dist_max = 2
local Att3006_Dist_min = 0
local Att3006_Dist_max = 1.5
local Att3007_Dist_min = 0
local Att3007_Dist_max = 2
local Att3008_Dist_min = 0
local Att3008_Dist_max = 1.2
local Att3010_Dist_min = 0
local Att3010_Dist_max = 2
local Att3011_Dist_min = 2
local Att3011_Dist_max = 4.5
local Att13000_Dist_min = 0
local Att13000_Dist_max = 2
local Att13002_Dist_min = 0
local Att13002_Dist_max = 2
local Att13003_Dist_min = 0
local Att13003_Dist_max = 2
local Att13004_Dist_min = 0
local Att13004_Dist_max = 1.2
REGISTER_GOAL_NO_UPDATE(GOAL_HolySwordWolf452000_Battle, 1)
OnIf_452000 = function(ai, goal, codeNo)
   if codeNo == 0 then
      HolySwordWolf452000_ActAfter(ai, goal)
   end
end

HolySwordWolf452000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local fate5 = 1
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if ai:GetNumber(0) < 10 then
      if hpratePC <= 0.3 then
         fate5 = 1
      else
         fate5 = 1
      end
   elseif ai:GetNumber(0) < 20 then
      if hpratePC <= 0.3 then
         fate5 = 1
      else
         fate5 = 3
      end
   elseif ai:GetNumber(0) < 30 then
      if hpratePC <= 0.3 then
         fate5 = 1
      else
         fate5 = 4
      end
   elseif hpratePC <= 0.3 then
      fate5 = 1
   else
      fate5 = 5
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      if targetDist <= 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and fate <= 60 then
         actPerArr[10] = 100
      elseif targetDist <= 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and fate <= 60 then
         actPerArr[11] = 100
      elseif targetDist >= 2 then
         actPerArr[8] = 20
         actPerArr[9] = 20
         actPerArr[14] = 20 * fate5
         actPerArr[15] = 40 * fate5
      else
         actPerArr[8] = 20
         actPerArr[9] = 20
         actPerArr[14] = 20 * fate5
         actPerArr[15] = 40 * fate5
      end
   elseif targetDist <= 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and fate <= 60 then
      actPerArr[5] = 100
   elseif targetDist <= 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and fate <= 60 then
      actPerArr[6] = 100
   elseif targetDist >= 10 then
      actPerArr[1] = 15
      actPerArr[2] = 15
      actPerArr[3] = 0
      actPerArr[12] = 10
      actPerArr[13] = 20
      actPerArr[4] = 0 * fate5
      actPerArr[7] = 0 * fate5
      actPerArr[14] = 30 * fate5
      actPerArr[15] = 10 * fate5
   elseif targetDist >= 5 then
      actPerArr[1] = 20
      actPerArr[2] = 10
      actPerArr[3] = 0
      actPerArr[12] = 15
      actPerArr[13] = 15
      actPerArr[4] = 0 * fate5
      actPerArr[7] = 15 * fate5
      actPerArr[14] = 10 * fate5
      actPerArr[15] = 15 * fate5
   elseif targetDist >= 2 then
      actPerArr[1] = 20
      actPerArr[2] = 10
      actPerArr[3] = 10
      actPerArr[12] = 10
      actPerArr[13] = 10
      actPerArr[4] = 20 * fate5
      actPerArr[7] = 20 * fate5
      actPerArr[14] = 0 * fate5
      actPerArr[15] = 0 * fate5
   else
      actPerArr[1] = 30
      actPerArr[2] = 0
      actPerArr[3] = 20
      actPerArr[12] = 20
      actPerArr[13] = 0
      actPerArr[4] = 20 * fate5
      actPerArr[7] = 10 * fate5
      actPerArr[14] = 0 * fate5
      actPerArr[15] = 0 * fate5
   end
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act08)
   actFuncArr[9] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act09)
   actFuncArr[10] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act10)
   actFuncArr[11] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act11)
   actFuncArr[12] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act12)
   actFuncArr[13] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act13)
   actFuncArr[14] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act14)
   actFuncArr[15] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act15)
   local atkAfterFunc = REGIST_FUNC(ai, goal, HolySwordWolf452000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

HolySwordWolf452000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3000_Dist_max + 0
   local fate = ai:GetRandam_Int(1, 100)
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, -1, 20)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0)
   end
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3003_Dist_max + 0
   local fate = ai:GetRandam_Int(1, 100)
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist, -1, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, AttDist, 0)
   end
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3005_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3006_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 0, 90)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act05 = function(ai, goal, paramTbl)
   local AttDist = Att3007_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, AttDist, 0)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act06 = function(ai, goal, paramTbl)
   local AttDist = Att3008_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, AttDist, 0)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act07 = function(ai, goal, paramTbl)
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att13000_Dist_max
   local DashDist = Att13000_Dist_max + 200
   local Odds_Guard = 0
   local AttDist = Att13000_Dist_max + 0
   local fate = ai:GetRandam_Int(1, 100)
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 10)
   end
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, -1, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist, 0)
   end
   ai:SetNumber(0, ai:GetNumber(0) + 20)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att13002_Dist_max
   local DashDist = Att13002_Dist_max + 200
   local Odds_Guard = 0
   local AttDist = Att13002_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 10)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(0, ai:GetNumber(0) + 20)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act10 = function(ai, goal, paramTbl)
   local AttDist = Att13003_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, AttDist, 0)
   ai:SetNumber(0, ai:GetNumber(0) + 20)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act11 = function(ai, goal, paramTbl)
   local AttDist = Att13004_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, AttDist, 0)
   ai:SetNumber(0, ai:GetNumber(0) + 20)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act12 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3010_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act13 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3011_Dist_max
   local DashDist = Att3011_Dist_max + 0
   local Odds_Guard = 0
   local AttDist = Att3011_Dist_max + 0
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, -1, 20)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act14 = function(ai, goal, paramTbl)
   local bRight = ai:GetRandam_Int(0, 1)
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act15 = function(ai, goal, paramTbl)
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if hpratePC <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_ActAfter = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local KN_fate = ai:GetRandam_Int(1, 100)
   local KN_fate2 = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local hpratePC = ai:GetHpRate(TARGET_LOCALPLAYER)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      if targetDist <= 5 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      elseif targetDist <= 8 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
      elseif KN_fate <= 80 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
      elseif KN_fate <= 20 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      elseif targetDist <= 5 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      elseif targetDist <= 8 then
         if KN_fate <= 10 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
         elseif KN_fate <= 20 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
         elseif KN_fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif KN_fate <= 80 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif KN_fate <= 80 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
end

HolySwordWolf452000_ActAfter_AdjustSpace = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

HolySwordWolf452000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HolySwordWolf452000Battle_Terminate = function(ai, goal)
end

HolySwordWolf452000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if not ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      local superStepDist = 6
      local superStepPer = 100
      if FindAttack_Act(ai, goal, superStepDist, superStepPer) then
         if targetDist <= 2 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif targetDist <= 6 then
            if fate <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            elseif fate <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      local distNearRes = 8
      local oddsNearRes = 100
      if Damaged_Act(ai, goal, distNearRes, oddsNearRes) then
         goal:ClearSubGoal()
         if targetDist <= 2 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif targetDist <= 6 then
            if fate <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            elseif fate <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
      end
      local distResNear = 6
      local distResFar = 25
      local oddsResNear = 100
      local oddsResFar = 100
      local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
      if ResBehavID == 1 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         return true
      elseif ResBehavID == 2 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         return true
      end
   end
   return false
end


