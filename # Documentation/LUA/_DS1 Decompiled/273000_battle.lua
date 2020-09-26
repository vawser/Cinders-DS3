REGISTER_GOAL(GOAL_Heroine273000_Battle, "Heroine273000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.1
local Att3001_Dist_min = 0
local Att3001_Dist_max = 1.3
local Att3002_Dist_min = 0
local Att3002_Dist_max = 3.9
local Att3003_Dist_min = 0
local Att3003_Dist_max = 1.8
local Att3004_Dist_min = 4.7
local Att3004_Dist_max = 5.7
local Att3005_Dist_min = 4.3
local Att3005_Dist_max = 5.3
local Att3006_Dist_min = -0.2
local Att3006_Dist_max = 0.8
REGISTER_GOAL_NO_UPDATE(GOAL_Heroine273000_Battle, 1)
Heroine273000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   local hprate = ai:GetHpRate(TARGET_SELF)
   local flag = ai:GetNumber(0)
   ai:AddObserveRegion(2, TARGET_ENE_0, 1102700)
   ai:AddObserveRegion(3, TARGET_ENE_0, 1102701)
   ai:AddObserveRegion(4, TARGET_ENE_0, 1102702)
   ai:AddObserveRegion(5, TARGET_ENE_0, 1102703)
   ai:AddObserveRegion(6, TARGET_ENE_0, 1102704)
   ai:AddObserveRegion(7, TARGET_ENE_0, 1102705)
   ai:AddObserveRegion(8, TARGET_ENE_0, 1102706)
   ai:AddObserveRegion(9, TARGET_ENE_0, 1102707)
   ai:AddObserveRegion(10, TARGET_ENE_0, 1102708)
   local Bliz = 0
   if ai:IsFinishTimer(0) == true then
      Bliz = 1
   end
   if flag == 0 then
      actPerArr[7] = 100
   elseif targetDistY < -2 then
      actPerArr[8] = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1102700) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1102701) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1102702) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1102703) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1102704) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1102705) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1102706) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1102707) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1102708) then
      actPerArr[8] = 100
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5162) then
      if targetDist >= 3.6 then
         actPerArr[1] = 0
         actPerArr[2] = 50
         actPerArr[3] = 0
         actPerArr[4] = 0
         actPerArr[5] = 50
         actPerArr[6] = 0
      elseif targetDist >= 0.8 then
         actPerArr[1] = 0
         actPerArr[2] = 30
         actPerArr[3] = 0
         actPerArr[4] = 40
         actPerArr[5] = 30
         actPerArr[6] = 0
      else
         actPerArr[1] = 0
         actPerArr[2] = 0
         actPerArr[3] = 0
         actPerArr[4] = 35
         actPerArr[5] = 0
         actPerArr[6] = 65
      end
   elseif targetDist >= 4.4 then
      actPerArr[1] = 30
      actPerArr[2] = 20
      actPerArr[3] = 30
      actPerArr[4] = 0
      actPerArr[5] = 20
      actPerArr[6] = 0
   elseif targetDist >= 4 then
      actPerArr[1] = 10
      actPerArr[2] = 25
      actPerArr[3] = 40
      actPerArr[4] = 0
      actPerArr[5] = 25
      actPerArr[6] = 0
   elseif targetDist >= 3.6 then
      actPerArr[1] = 10
      actPerArr[2] = 30
      actPerArr[3] = 10
      actPerArr[4] = 0
      actPerArr[5] = 30
      actPerArr[6] = 0
      actPerArr[7] = 20 * Bliz
   elseif targetDist >= 0.8 then
      actPerArr[1] = 5
      actPerArr[2] = 35
      actPerArr[3] = 5
      actPerArr[4] = 0
      actPerArr[5] = 35
      actPerArr[6] = 0
      actPerArr[7] = 10 * Bliz
   else
      actPerArr[1] = 5
      actPerArr[2] = 25
      actPerArr[3] = 5
      actPerArr[4] = 0
      actPerArr[5] = 30
      actPerArr[6] = 25
      actPerArr[7] = 10 * Bliz
   end
   -- Tried to add an 'end' here but it's incorrect
   actFuncArr[1] = REGIST_FUNC(ai, goal, Heroine273000_Act01)
   actFuncArr[2] = REGIST_FUNC(ai, goal, Heroine273000_Act02)
   actFuncArr[3] = REGIST_FUNC(ai, goal, Heroine273000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, Heroine273000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, Heroine273000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, Heroine273000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, Heroine273000_Act07)
   actFuncArr[8] = REGIST_FUNC(ai, goal, Heroine273000_Act08)
   local atkAfterOddsTbl = {0, 70, 0, 30, 0, 0}
   local atkAfterFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

Heroine273000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local DashDist = Att3004_Dist_max + 100
   local AppDist = Att3004_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 3, 30)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Heroine273000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local DashDist = Att3000_Dist_max + 100
   local AppDist = Att3000_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(30, 60)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 15, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 15, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Heroine273000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local DashDist = Att3005_Dist_max + 100
   local AppDist = Att3005_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_Attack, 15, 3005, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Heroine273000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local DashDist = Att3005_Dist_max + 0
   local AppDist = Att3005_Dist_max
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 3.6, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Heroine273000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local DashDist = Att3002_Dist_max + 100
   local AppDist = Att3002_Dist_max
   local Odds_Guard = 0
   local fate = ai:GetRandam_Int(30, 60)
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 15, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 15, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3003, TARGET_ENE_0, DIST_Near, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Heroine273000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local DashDist = Att3006_Dist_max + 100
   local AppDist = Att3006_Dist_max
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_Attack, 15, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Heroine273000_Act07 = function(ai, goal, paramTbl)
   local flag = ai:GetNumber(0)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, 3007, TARGET_ENE_0, DIST_Middle, 0, -1)
   ai:SetNumber(0, 1)
   ai:SetTimer(0, 60)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Heroine273000_Act08 = function(ai, goal, paramTbl)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1102760) then
      ai:SetEventMoveTarget(1102750)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1102761) then
      ai:SetEventMoveTarget(1102751)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
   else
      ai:SetEventMoveTarget(1102752)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Heroine273000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Heroine273000Battle_Terminate = function(ai, goal)
end

Heroine273000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local flag = ai:GetNumber(0)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(2) == true then
      if ai:IsInsideTargetRegion(TARGET_SELF, 1102760) then
         goal:ClearSubGoal()
         ai:SetTimer(2, 1)
         ai:SetEventMoveTarget(1102750)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
         return true
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1102761) then
         goal:ClearSubGoal()
         ai:SetTimer(2, 1)
         ai:SetEventMoveTarget(1102751)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
         return true
      else
         goal:ClearSubGoal()
         ai:SetTimer(2, 1)
         ai:SetEventMoveTarget(1102752)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) and ai:IsFinishTimer(0) == true then
      if fate <= 10 and not ai:HasSpecialEffectId(TARGET_SELF, 5162) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 15, 3007, TARGET_ENE_0, DIST_Middle, 0)
         -- Tried to add an 'end' here but it's incorrect
         return true
         -- Tried to add an 'end' here but it's incorrect
         local distGuardBreak_Act = 3.6
         local oddsGuardBreak_Act = 40
         local targetDist = ai:GetDist(TARGET_ENE_0)
         if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         local distUseItem_Act = 3.6
         local oddsUseItem_Act = 15
         local targetDist = ai:GetDist(TARGET_ENE_0)
         if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         return false
end


