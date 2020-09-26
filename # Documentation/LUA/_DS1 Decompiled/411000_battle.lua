REGISTER_GOAL(GOAL_Go_HawkEye411000_Battle, "Go_HawkEye411000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 1
local Att3001_Dist_min = 0
local Att3001_Dist_max = 1
local Att3002_Dist_min = 0
local Att3002_Dist_max = 2
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2
local Att3004_Dist_min = 0
local Att3004_Dist_max = 2.5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 2.5
local Att3006_Dist_min = 0
local Att3006_Dist_max = 2
local Att3007_Dist_min = 0
local Att3007_Dist_max = 2
local Att3008_Dist_min = 0
local Att3008_Dist_max = 100
REGISTER_GOAL_NO_UPDATE(GOAL_Go_HawkEye411000_Battle, 1)
OnIf_411000 = function(ai, goal, codeNo)
   if codeNo == 0 then
      Go_HawkEye411000_ActAfter_RealTime(ai, goal)
   end
end

Go_HawkEye411000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest(0)
   if eventNo == 10 then
      actPerArr[10] = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
      if targetDist <= 1 then
         actPerArr[7] = 100
      else
         actPerArr[5] = 0
         actPerArr[6] = 0
         actPerArr[7] = 0
         actPerArr[8] = 0
         actPerArr[9] = 0
         if ai:GetNumber(0) == 1 then
            actPerArr[1] = 0
            actPerArr[2] = 50
            actPerArr[3] = 0
            actPerArr[4] = 50
         else
            actPerArr[1] = 50
            actPerArr[2] = 0
            actPerArr[3] = 50
            actPerArr[4] = 0
         end
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
         actPerArr[1] = 33
         actPerArr[2] = 0
         actPerArr[3] = 33
         actPerArr[4] = 0
         actPerArr[5] = 34
         actPerArr[6] = 0
         actPerArr[7] = 0
         actPerArr[8] = 0
         actPerArr[9] = 0
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
         actPerArr[1] = 0
         actPerArr[2] = 33
         actPerArr[3] = 0
         actPerArr[4] = 33
         actPerArr[5] = 0
         actPerArr[6] = 34
         actPerArr[7] = 0
         actPerArr[8] = 0
         actPerArr[9] = 0
      elseif targetDist <= 1 then
         actPerArr[8] = 100
      else
         actPerArr[3] = 0
         actPerArr[4] = 0
         actPerArr[7] = 0
         actPerArr[8] = 0
         actPerArr[9] = 0
         if ai:GetNumber(0) == 1 then
            actPerArr[1] = 0
            actPerArr[2] = 50
            actPerArr[5] = 0
            actPerArr[6] = 50
         else
            actPerArr[1] = 50
            actPerArr[2] = 0
            actPerArr[5] = 50
            actPerArr[6] = 0
         end
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      actFuncArr[1] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act01)
      actFuncArr[2] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act02)
      actFuncArr[3] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act03)
      actFuncArr[4] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act04)
      actFuncArr[5] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act05)
      actFuncArr[6] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act06)
      actFuncArr[7] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act07)
      actFuncArr[8] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act08)
      actFuncArr[9] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act09)
      actFuncArr[10] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act10)
      local atkAfterFunc = REGIST_FUNC(ai, goal, Go_HawkEye411000_ActAfter_AdjustSpace)
      Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Go_HawkEye411000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 45)
      ai:SetNumber(0, 1)
   elseif fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 0)
   elseif fate <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 33 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 2, 45)
      ai:SetNumber(0, 0)
   elseif fate <= 66 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 2, 45)
      ai:SetNumber(0, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 45)
   ai:SetNumber(0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act05 = function(ai, goal, paramTbl)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 0, 360)
   ai:SetNumber(0, 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act06 = function(ai, goal, paramTbl)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, 360)
   ai:SetNumber(0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, 360)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, 360)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act09 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, 360)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act10 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0, TARGET_NONE, false, -1)
end

Go_HawkEye411000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

Go_HawkEye411000_ActAfter_RealTime = function(ai, goal)
end

Go_HawkEye411000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Go_HawkEye411000Battle_Terminate = function(ai, goal)
end

Go_HawkEye411000Battle_Interupt = function(ai, goal)
   return false
end


