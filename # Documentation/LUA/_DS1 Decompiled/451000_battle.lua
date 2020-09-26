REGISTER_GOAL(GOAL_BlackDragon451000_Battle, "BlackDragon451000Battle")
local Att3000_Dist_min = 6
local Att3000_Dist_max = 32
local Att3001_Dist_min = 6
local Att3001_Dist_max = 16
local Att3002_Dist_min = -2
local Att3002_Dist_max = 0
local Att3003_Dist_min = 0
local Att3003_Dist_max = 4
local Att3004_Dist_min = 0
local Att3004_Dist_max = 5
local Att3005_Dist_min = 0
local Att3005_Dist_max = 4
local Att3006_Dist_min = 0
local Att3006_Dist_max = 4
local Att3007_Dist_min = -4
local Att3007_Dist_max = 0
local Att3008_Dist_min = -4
local Att3008_Dist_max = 0
local Att3009_Dist_min = 0
local Att3009_Dist_max = 5
local Att3010_Dist_min = 0
local Att3010_Dist_max = 4
local Att3011_Dist_min = 0
local Att3011_Dist_max = 4
local Att3012_Dist_min = 0
local Att3012_Dist_max = 16
local Att3013_Dist_min = 0
local Att3013_Dist_max = 0
local Att3017_Dist_min = 0
local Att3017_Dist_max = 0
local Att3018_Dist_min = 0
local Att3018_Dist_max = 0
local Att3020_Dist_min = 0
local Att3020_Dist_max = 20
local Att3022_Dist_min = 0
local Att3022_Dist_max = 0
REGISTER_GOAL_NO_UPDATE(GOAL_BlackDragon451000_Battle, 1)
OnIf_451000 = function(ai, goal, codeNo)
   if codeNo == 0 then
      BlackDragon451000_ActAfter(ai, goal)
   end
   if codeNo == 1 then
      BlackDragon451000_Turn(ai, goal)
   end
end

BlackDragon451000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest(1)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1212057) then
      actPerArr[18] = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1212059) then
      actPerArr[19] = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1212058) then
      actPerArr[18] = 100
   elseif not ai:IsRideLargeSpaceFlag(TARGET_ENE_0) then
      if targetDist >= 4 then
         actPerArr[1] = 50
         actPerArr[2] = 50
      else
         actPerArr[4] = 33
         actPerArr[5] = 33
         actPerArr[10] = 34
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
      actPerArr[17] = 100
   elseif targetDist >= 12 then
      actPerArr[1] = 20
      actPerArr[2] = 10
      actPerArr[3] = 0
      actPerArr[4] = 0
      actPerArr[5] = 30
      actPerArr[6] = 0
      actPerArr[7] = 0
      actPerArr[8] = 0
      actPerArr[9] = 0
      actPerArr[10] = 0
      actPerArr[11] = 0
      actPerArr[12] = 0
      actPerArr[13] = 20
      actPerArr[14] = 0
      actPerArr[15] = 0
      actPerArr[16] = 0
      actPerArr[20] = 20
      if ai:GetNumber(0) >= 1 then
         actPerArr[1] = 0
         actPerArr[20] = 40
      elseif targetDist >= 6 then
         actPerArr[1] = 20
         actPerArr[2] = 30
         actPerArr[3] = 0
         actPerArr[4] = 20
         actPerArr[5] = 20
         actPerArr[6] = 0
         actPerArr[7] = 0
         actPerArr[8] = 0
         actPerArr[9] = 0
         actPerArr[10] = 0
         actPerArr[11] = 0
         actPerArr[12] = 0
         actPerArr[13] = 10
         actPerArr[14] = 0
         actPerArr[15] = 0
         actPerArr[16] = 0
         if ai:GetNumber(0) >= 1 then
            actPerArr[1] = 0
            actPerArr[2] = 0
            actPerArr[4] = 0
         elseif targetDist >= 4 then
            actPerArr[1] = 0
            actPerArr[2] = 0
            actPerArr[3] = 100
            actPerArr[4] = 30
            actPerArr[5] = 50
            actPerArr[6] = 0
            actPerArr[7] = 0
            actPerArr[8] = 0
            actPerArr[9] = 0
            actPerArr[10] = 0
            actPerArr[11] = 0
            actPerArr[12] = 0
            actPerArr[13] = 20
            actPerArr[14] = 0
            actPerArr[15] = 0
            actPerArr[16] = 0
         elseif targetDist >= 2 then
            actPerArr[1] = 0
            actPerArr[2] = 0
            actPerArr[3] = 100
            actPerArr[4] = 20
            actPerArr[5] = 40
            actPerArr[6] = 0
            actPerArr[7] = 0
            actPerArr[8] = 0
            actPerArr[9] = 0
            actPerArr[10] = 25
            actPerArr[11] = 15
            actPerArr[12] = 0
            actPerArr[13] = 0
            actPerArr[14] = 0
            actPerArr[15] = 0
            actPerArr[16] = 100
         elseif targetDist >= 0 then
            actPerArr[1] = 0
            actPerArr[2] = 0
            actPerArr[3] = 100
            actPerArr[4] = 0
            actPerArr[5] = 50
            actPerArr[6] = 0
            actPerArr[7] = 0
            actPerArr[8] = 0
            actPerArr[9] = 0
            actPerArr[10] = 25
            actPerArr[11] = 35
            actPerArr[12] = 0
            actPerArr[13] = 0
            actPerArr[14] = 0
            actPerArr[15] = 0
            actPerArr[16] = 100
         elseif targetDist >= -4 then
            actPerArr[1] = 0
            actPerArr[2] = 0
            actPerArr[3] = 0
            actPerArr[4] = 0
            actPerArr[5] = 0
            actPerArr[6] = 0
            actPerArr[7] = 0
            actPerArr[8] = 30
            actPerArr[9] = 30
            actPerArr[10] = 0
            actPerArr[11] = 40
            actPerArr[12] = 0
            actPerArr[13] = 0
            actPerArr[14] = 0
            actPerArr[15] = 0
            actPerArr[16] = 100
            if ai:GetNumber(1) >= 2 then
               actPerArr[8] = 0
               actPerArr[9] = 0
            else
               actPerArr[1] = 0
               actPerArr[2] = 0
               actPerArr[3] = 0
               actPerArr[4] = 0
               actPerArr[5] = 0
               actPerArr[6] = 0
               actPerArr[7] = 0
               actPerArr[8] = 0
               actPerArr[9] = 0
               actPerArr[10] = 0
               actPerArr[11] = 60
               actPerArr[12] = 0
               actPerArr[13] = 0
               actPerArr[14] = 20
               actPerArr[15] = 20
               actPerArr[16] = 100
            end
            -- Tried to add an 'end' here but it's incorrect
         end
      end
      -- Tried to add an 'end' here but it's incorrect
      if ai:IsFinishTimer(0) == false then
         actPerArr[3] = 0
      end
      if ai:IsFinishTimer(1) == false then
         actPerArr[14] = 0
      end
      if ai:IsFinishTimer(2) == false then
         actPerArr[16] = 0
      end
      actFuncArr[1] = REGIST_FUNC(ai, goal, BlackDragon451000_Act01)
      actFuncArr[2] = REGIST_FUNC(ai, goal, BlackDragon451000_Act02)
      actFuncArr[3] = REGIST_FUNC(ai, goal, BlackDragon451000_Act03)
      actFuncArr[4] = REGIST_FUNC(ai, goal, BlackDragon451000_Act04)
      actFuncArr[5] = REGIST_FUNC(ai, goal, BlackDragon451000_Act05)
      actFuncArr[6] = REGIST_FUNC(ai, goal, BlackDragon451000_Act06)
      actFuncArr[7] = REGIST_FUNC(ai, goal, BlackDragon451000_Act07)
      actFuncArr[8] = REGIST_FUNC(ai, goal, BlackDragon451000_Act08)
      actFuncArr[9] = REGIST_FUNC(ai, goal, BlackDragon451000_Act09)
      actFuncArr[10] = REGIST_FUNC(ai, goal, BlackDragon451000_Act10)
      actFuncArr[11] = REGIST_FUNC(ai, goal, BlackDragon451000_Act11)
      actFuncArr[12] = REGIST_FUNC(ai, goal, BlackDragon451000_Act12)
      actFuncArr[13] = REGIST_FUNC(ai, goal, BlackDragon451000_Act13)
      actFuncArr[14] = REGIST_FUNC(ai, goal, BlackDragon451000_Act14)
      actFuncArr[15] = REGIST_FUNC(ai, goal, BlackDragon451000_Act15)
      actFuncArr[16] = REGIST_FUNC(ai, goal, BlackDragon451000_Act16)
      actFuncArr[17] = REGIST_FUNC(ai, goal, BlackDragon451000_Act17)
      actFuncArr[18] = REGIST_FUNC(ai, goal, BlackDragon451000_Act18)
      actFuncArr[19] = REGIST_FUNC(ai, goal, BlackDragon451000_Act19)
      actFuncArr[20] = REGIST_FUNC(ai, goal, BlackDragon451000_Act20)
      local atkAfterFunc = REGIST_FUNC(ai, goal, BlackDragon451000_ActAfter_AdjustSpace)
      Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

BlackDragon451000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3000_Dist_max - 1
   local DashDist = Att3000_Dist_max + 2
   local AttDist = Att3000_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 45)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3001_Dist_max - 1
   local DashDist = Att3001_Dist_max + 2
   local AttDist = Att3001_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist, 0, 45)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max - 1
   local DashDist = Att3002_Dist_max + 2
   local AttDist = Att3002_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   ai:SetTimer(0, 60)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 45)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max - 0
   local DashDist = Att3003_Dist_max + 2
   local AttDist = Att3003_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist, 0, 45)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3004_Dist_max - 0
   local DashDist = Att3004_Dist_max + 2
   local AttDist = Att3004_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, AttDist, 0)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max - 1
   local DashDist = Att3005_Dist_max + 2
   local AttDist = Att3005_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   if tailDmgLv ~= PARTS_DMG_FINAL then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, 180)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 0, 180)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max - 1
   local DashDist = Att3006_Dist_max + 2
   local AttDist = Att3006_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   if tailDmgLv ~= PARTS_DMG_FINAL then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 0, 180)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, AttDist, 0, 180)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act08 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3007_Dist_max - 1
   local DashDist = Att3007_Dist_max + 2
   local AttDist = Att3007_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, ai:GetNumber(0) + 1)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3008_Dist_max - 1
   local DashDist = Att3008_Dist_max + 2
   local AttDist = Att3008_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, ai:GetNumber(0) + 1)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3009_Dist_max - 0
   local DashDist = Att3009_Dist_max + 2
   local AttDist = Att3009_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   if tailDmgLv ~= PARTS_DMG_FINAL then
      if AppDist <= targetDist then
         Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
         -- Tried to add an 'end' here but it's incorrect
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, AttDist, 0, 180)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
      end
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
      ai:SetNumber(2, 0)
      GetWellSpace_Odds = 100
      return GetWellSpace_Odds
end

BlackDragon451000_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3010_Dist_max - 1
   local DashDist = Att3010_Dist_max + 2
   local AttDist = Att3010_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act12 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3011_Dist_max - 1
   local DashDist = Att3011_Dist_max + 2
   local AttDist = Att3011_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   if tailDmgLv ~= PARTS_DMG_FINAL then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, 0, 360)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, AttDist, 0, 360)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, ai:GetNumber(2) + 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act13 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3012_Dist_max - 1
   local DashDist = Att3012_Dist_max + 2
   local AttDist = 9999
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, AttDist, 0, 90)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act14 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3013_Dist_max - 0
   local DashDist = Att3013_Dist_max + 2
   local AttDist = 9999
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   ai:SetTimer(1, 60)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, AttDist, 0, 360)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act15 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BlackDragon451000_Act16 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3022_Dist_max - 0
   local DashDist = Att3022_Dist_max + 2
   local AttDist = 9999
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   ai:SetTimer(2, 60)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, AttDist, 0, 360)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act17 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
end

BlackDragon451000_Turn = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local eventNo = ai:GetEventRequest()
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) then
      if targetDist >= -2 and targetDist <= 6 and tailDmgLv ~= PARTS_DMG_FINAL and ai:GetNumber(2) <= 0 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 15) then
         BlackDragon451000_Act12(ai, goal)
      elseif targetDist >= 2 and targetDist <= 6 and fate <= 50 then
         BlackDragon451000_Act06(ai, goal)
      elseif targetDist >= 2 and targetDist <= 6 and fate <= 100 then
         BlackDragon451000_Act07(ai, goal)
      elseif fate2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3029, TARGET_ENE_0, DIST_None, 0, 90)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3028, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         if targetDist >= 0 and targetDist <= 4 and fate <= 75 then
            BlackDragon451000_Act06(ai, goal)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3027, TARGET_ENE_0, DIST_None, 0, 90)
         end
      elseif targetDist >= 0 and targetDist <= 4 and fate <= 75 then
         BlackDragon451000_Act07(ai, goal)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3026, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         if targetDist >= 0 and targetDist <= 4 and fate <= 75 then
            BlackDragon451000_Act07(ai, goal)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3027, TARGET_ENE_0, DIST_None, 0, 90)
         end
      elseif targetDist >= 0 and targetDist <= 4 and fate <= 75 then
         BlackDragon451000_Act06(ai, goal)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3026, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         if targetDist >= 0 and targetDist <= 4 and fate <= 75 then
            BlackDragon451000_Act07(ai, goal)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3027, TARGET_ENE_0, DIST_None, 0, 90)
         end
      elseif targetDist >= 0 and targetDist <= 4 and fate <= 75 then
         BlackDragon451000_Act06(ai, goal)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3026, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3025, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3024, TARGET_ENE_0, DIST_None, 0, 90)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

BlackDragon451000_Act18 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = 9999
   local DashDist = 9999
   local AttDist = 9999
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 3, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, AttDist, 0, 360)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BlackDragon451000_Act19 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = 9999
   local DashDist = 9999
   local AttDist = 9999
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 3, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, AttDist, 0, 360)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BlackDragon451000_Act20 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3020_Dist_max - 1
   local DashDist = Att3020_Dist_max + 2
   local AttDist = 9999
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(1, 100)
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, AttDist, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, AttDist, 0, 90)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_ActAfter = function(ai, goal)
   local GW_fate = ai:GetRandam_Int(1, 100)
   local fate = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 330) then
      BlackDragon451000_Turn(ai, goal)
   elseif targetDist <= 2 then
      if GW_fate <= 50 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif GW_fate <= 100 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            do break end
         end
      elseif targetDist <= 4 then
         if GW_fate <= 25 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         elseif GW_fate <= 100 then
            if fate <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(45, 60), true, true, -1)
            else
               goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
               do break end
            end
         elseif targetDist <= 8 then
            if GW_fate <= 13 then
               if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
               elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
            elseif GW_fate <= 100 then
               if fate <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(60, 75), true, true, -1)
               else
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
                  do break end
               end
            elseif GW_fate <= 0 then
               if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
               elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
            elseif GW_fate <= 100 then
               if fate <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(75, 90), true, true, -1)
               else
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
               end
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
end

BlackDragon451000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 20, 0)
end

BlackDragon451000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BlackDragon451000Battle_Terminate = function(ai, goal)
end

BlackDragon451000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      if fate <= 80 then
         if targetDist >= 0 and targetDist <= 6 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            goal:ClearSubGoal()
            if fate2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, DIST_None, 0, 45)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3004, TARGET_ENE_0, DIST_None, 0, 45)
            end
            return true
         else
            return false
         end
      else
         return false
      end
      -- Tried to add an 'end' here but it's incorrect
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      if fate <= 80 then
         if targetDist <= 4 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            goal:ClearSubGoal()
            if fate2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, DIST_None, 0, 45)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3004, TARGET_ENE_0, DIST_None, 0, 45)
            end
            return true
         elseif targetDist <= 12 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:ClearSubGoal()
            if fate2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3001, TARGET_ENE_0, DIST_None, 0, 45)
            else
               goal:ClearSubGoal()
               if fate3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
               end
            end
            return true
         elseif targetDist <= 20 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
            goal:ClearSubGoal()
            if fate2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3000, TARGET_ENE_0, DIST_None, 0, 45)
            else
               goal:ClearSubGoal()
               if fate3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
               end
            end
            return true
         else
            return false
         end
      else
         return false
      end
      -- Tried to add an 'end' here but it's incorrect
   end
   return false
end


